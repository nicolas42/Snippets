// ScrollToNextImage 14-feb-2017
//
// To Do List
// 1. Needs to update when sites like imgur.com load more images
// on.changeToDocument reExecute code or something like that I imagine
// 
// 2. Scroll to center on image
// again for site like imgur which has an omnipresent header bar 
// which obscures the top of the image
// it'll probably require using el.getBoundingClientRect()



// Get Images (imgs) that are larger or equal to minWidth, minHeight
var imgs = [];
var imgIndex = 0;
var minWidth = 100;
var minHeight = 100;
var allImgs = document.body.querySelectorAll('img');

allImgs.forEach(function(img){
	if((img.width >= minWidth) && (img.height >= minHeight)){
		imgs.push(img);
	}
})

window.addEventListener("keypress", function (e) {
    if (e.keyCode === 110 || e.keyCode === 13) { 
		if(imgIndex<imgs.length-1){
			imgIndex += 1;
			imgs[imgIndex].scrollIntoView();
		}
    }
	if (e.keyCode === 112){
		if(imgIndex>0){
			imgIndex -= 1;
			imgs[imgIndex].scrollIntoView();
		}
	}
});

/*

http://stackoverflow.com/questions/8922107/javascript-scrollintoview-middle-alignment

const element = document.getElementById('middle');
const elementRect = element.getBoundingClientRect();
const absoluteElementTop = elementRect.top + window.pageYOffset;
const middle = absoluteElementTop - (window.innerHeight / 2);
window.scrollTo(0, middle);






addEventListener("keypress", function (e) {
	alert(e.keyCode);
});

imgIndex += 1;
imgs[imgIndex].scrollIntoView();



window.addEventListener("keypress", function (e) {
	// http://stackoverflow.com/questions/14542062/eventlistener-enter-key
	alert(e.keyCode);
});


if (imgIndex < 0){
	imgIndex = 0
}

*/

