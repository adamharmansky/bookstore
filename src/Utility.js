export function get_query(q) {
	const params = new URLSearchParams(window.location.search);
	if (params.has(q)) return params.get(q)
	else return ''
}
