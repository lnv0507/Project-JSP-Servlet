function search() {
    let search = document.getElementsByClassName('search');

    if (search) {
        document.getElementById('input-search').style.display = 'block';
        document.getElementById('mainmenu').style.display = 'none';
    }


}

function searchOut() {
    let search = document.getElementsByClassName('search');
    if (search) {
        document.getElementById('input-search').style.display = 'none';
        document.getElementById('mainmenu').style.display = 'block';
    }
}