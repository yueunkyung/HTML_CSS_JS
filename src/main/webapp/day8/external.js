
function f1() {
	var output = "<ul>";

	console.log(score);
	console.log(window.score);
	for (let prop in window) {
		output += "<li>" + prop + "==>>>>>>" + window[prop] + "</li>";
	}
	output += "</ul>";
	here.innerHTML += output;
	function innerF() {

	}
}