function getOffset(currentPage = 1, listPerPage) {
    return (currentPage - 1) * [listPerPage]
}

function empetyOrRows(rows) {
    if (!rows) {
        return []
    }
    return rows
}

module.exports = {
    getOffset,
    empetyOrRows
}