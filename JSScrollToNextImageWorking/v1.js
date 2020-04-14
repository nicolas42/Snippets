var imgs2 = document.body.querySelectorAll('img');

var imgs = [];
var i;
for(i=0;i<imgs2.length;i+=1){
	var img = imgs2[i];
	//or however you get a handle to the IMG
	var width = img.clientWidth;
	var height = img.clientHeight;
	
	if((width>=100) && (height>=100)){
		imgs.push(img);
	}
}


var imgIndex = 0;

var bodyRect;
var elemRect;
var offset;
var element;

addEventListener("keypress", function (e) {
	// http://stackoverflow.com/questions/14542062/eventlistener-enter-key
    var key = e.which || e.keyCode;
    if (key === 39) { // http://keycode.info
		// right arrow
		imgIndex += 1;
    }
	if (key === 37){
		// left arrow
		imgIndex -= 1;
	}
	element = imgs[imgIndex];
	bodyRect = document.body.getBoundingClientRect();
	elemRect = element.getBoundingClientRect();
	offset   = elemRect.top - bodyRect.top;
	alert('Element is ' + offset + ' vertical pixels from <body>');
	// http://stackoverflow.com/questions/442404/retrieve-the-position-x-y-of-an-html-element
	
	window.scrollTo(0,offset);
	
});



var imgIndex = 0;

addEventListener("keypress", function (e) {
	// http://stackoverflow.com/questions/14542062/eventlistener-enter-key
    var key = e.which || e.keyCode;
    if (key === 39) { // http://keycode.info
		// right arrow
		imgIndex += 1;
    }
	if (key === 37){
		// left arrow
		imgIndex -= 1;
	}
	console.log(imgIndex);
});


var imgs = document.querySelectorAll('img');
imgs[3].scrollIntoView(); // Equivalent to element.scrollIntoView(true)
