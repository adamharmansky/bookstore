const express = require('express')
const mysql = require('mysql')
const util = require('util')
const url = require('url')
const fs = require('fs')

allowed_websites = 'http://bookstore.harmansky.xyz'
const port = 3001

var sql_connection = mysql.createConnection({ socketPath: '/run/mysqld/mysqld.sock', user: 'root' })
const server = express()

server.get('/book', (req, res) => {
	res.setHeader('Access-Control-Allow-Origin', allowed_websites);
	const urlObject = url.parse(req.url, true)
	if (!urlObject.query.book) {
		res.send(404)
		return
	}
	sql_connection.query("SELECT isbn, title, year_pub, description, author_name FROM books LEFT JOIN authors USING (author_id) WHERE isbn=" + urlObject.query.book, (err, result) => {
		try {
			if (err) throw 400
			if (result.length == 0) throw 404
			res.send(result)
		} catch (err) {
			res.send(err)
		}
	})
})

server.get('/list', (req, res) => {
	res.setHeader('Access-Control-Allow-Origin', allowed_websites);
	const urlObject = url.parse(req.url, true)
	var sql_command = "SELECT isbn, title, year_pub, description, author_name FROM books LEFT JOIN authors USING (author_id) ORDER BY "

	if (urlObject.query.order_by) sql_command += urlObject.query.order_by
	else                          sql_command += "year_pub"

	sql_command += " "

	if (urlObject.query.order) sql_command += urlObject.query.order
	else                       sql_command += "DESC"

	sql_connection.query(sql_command, (err, result) => {
		if (err) res.send(500)
		res.send(result)
	})
})

// SQL connection
// requires unix socket authentication - script MUST be run as root!!!!
sql_connection.connect((err) => {
	if (err) throw err
	console.log('Connected to SQL database')
	sql_connection.query("USE bookstore", (err, result) => {
		if (err) throw err
		console.log('Selected database: ' + JSON.stringify(result))
	})
})

server.listen(port, () => {
	console.log('Server started successfully')
})
