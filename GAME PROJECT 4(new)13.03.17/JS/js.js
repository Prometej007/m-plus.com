/**
 * Created by Андрей on 16.02.2017.
 */
function openNav() {
    document.getElementById("mySidenav").style.zIndex = "9";
    document.getElementById("mySidenav").style.width = "40%";
    document.getElementById("mySidenav").style.display = "block";
}
function closeNav() {
    document.getElementById("mySidenav").style.zIndex = "8";
    document.getElementById("mySidenav").style.display = "none";
}
