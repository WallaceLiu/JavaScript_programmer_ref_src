// A WORKER JAVASCRIPT FILE
var wp = google.gears.workerPool;
wp.onmessage = function(a, b, message) {
	while (true) {
		wp.sendMessage("Hi from worker!", message.sender);
	}
}

