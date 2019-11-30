// A WORKER JAVASCRIPT FILE
onmessage = function(a, b, message) {
	postMessage({message:"Hi from worker!"});

}

postMessage({message:"Hi from worker again."});