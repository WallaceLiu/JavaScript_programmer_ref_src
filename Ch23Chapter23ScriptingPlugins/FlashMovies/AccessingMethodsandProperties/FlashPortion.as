import flash.external.ExternalInterface;

// Keeps of record of the current string
var currentText:String = "Your Message Here";

// Sets some text to the control in the movie
function setText(newtext:String):Boolean
{
	// Backup the current value
	currentText = newtext;
	
	// Set the control
	YourMessageHere.text = newtext;
	
	// Return something just for the heck of it
	return true;
}

// Set up the click handler for the button
ClickMeButton.addEventListener(MouseEvent.CLICK, ClickMeButtonClick);

// This handles the click event for the button
function ClickMeButtonClick(evt:MouseEvent):Boolean 
{
	// This reaches out to JavaScript to get the text.
	var newText = ExternalInterface.call("getNewText", "ClickMeButton");
	setText(newText);
	return true;
}

// Expose these properties to the outside world
ExternalInterface.addCallback("setText", setText);
ExternalInterface.addCallback("currentText", function() {return currentText});