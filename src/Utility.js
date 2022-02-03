export function get_query(q) {
    const params = new URLSearchParams(window.location.search);
    if (params.has(q)) return params.get(q);
    else return "";
}

export function minutesToReadableTime(minutes) {
    return (minutes >= 60 ? Math.floor(minutes / 60) + "h " : "") + (minutes % 60 !== 0 ? (minutes % 60) + "m" : "");
}
