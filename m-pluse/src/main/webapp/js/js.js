/**
 * Created by Андрей on 16.02.2017.
 */
function openNav() {
	document.getElementById("mySidenav").style.display = "block";
	document.getElementById("mySidenav").style.zIndex = "9";
	var start = Date.now(); // сохранить время начала

	var timer = setInterval(function() {
		// вычислить сколько времени прошло из opts.duration
		var timePassed = Date.now() - start;

		document.getElementById("mySidenav").style.width = (timePassed / 30)
				+ "%";

		if (timePassed > 1000)
			clearInterval(timer);

	}, 1);

}
function animation(i) {
	// for (var i = 0; i < 40; i++) {

	document.getElementById("mySidenav").style.zIndex = "9";
	document.getElementById("mySidenav").style.width = i + "%";
	document.getElementById("mySidenav").style.display = "block";

	// }
}

function open(i) {

	document.getElementById("mySidenav").style.zIndex = "9";
	document.getElementById("mySidenav").style.width = i + "%";
	document.getElementById("mySidenav").style.display = "block";

}
function closeNav() {

	document.getElementById("mySidenav").style.zIndex = "8";
	document.getElementById("mySidenav").style.width = "0px";
	//
	// var start = Date.now(); // сохранить время начала
	//
	// var timer = setInterval(
	// function() {
	// // вычислить сколько времени прошло из opts.duration
	// var timePassed = Date.now() - start;
	//
	// document.getElementById("mySidenav").style.width = (200 - (timePassed /
	// 10))
	// + "%";
	//
	// if (timePassed < 2000)
	// clearInterval(timer);
	//
	// }, 20);

	// document.getElementById("mySidenav").style.display = "none";

}
