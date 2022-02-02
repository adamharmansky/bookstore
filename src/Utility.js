export function get_query() {
	const params = new URLSearchParams(window.location.search);
	if (params.has('q')) return params.get('q');
	else return '';
}

export function get_page() {
	const params = new URLSearchParams(window.location.search);
	if (params.has('page')) return params.get('page');
	else return 0;
}
