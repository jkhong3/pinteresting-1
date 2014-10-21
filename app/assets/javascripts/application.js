// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var slides, slides_total, slide_current;

function changePicture (slide) {
	for(var i=0; i < slides_total; i++) {
		slides[i].style.display = 'none';
	}
	slides[slide].style.display = 'block';
};

//You need to use javascript to be able to get the buttons to do different things

document.addEventListener('DOMContentLoaded', function() {
	slides = document.getElementsByClassName('col-sm-12');
	slides_total = slides.length;
	slide_current = 0; 
	// zero is the first item in the array
	changePicture(slide_current);
	
	window.setInterval(function(){
		if(slide_current >= (slides_total - 1)) {
			slide_current=0;
		} else {
			slide_current++;
		} //adds one to the current slide, makes it next slide
	changePicture(slide_current);
	console.log(slide_current);
	},2000); //miliseconds how fast it changes
});


// This is for the prev button (below)

document.getElementsByClassName('prev')[0]
	.addEventListener("click", function(){
		if(slide_current > 0){
			slide_current--;
		}else{
			slide_current=(slides_total-1);
		}
		changePicture(slide_current);
});

// This is for the next button (below)

document.getElementsByClassName('next')[0]
	.addEventListener("click", function(){
		if(slide_current >=0){
			slide_current++;
		}else{
			slide_current=(slides_total-1);
		}
		changePicture(slide_current);
});

// This is for the reset button (below)

document.getElementsByClassName('reset')[0]
	.addEventListener("click", function(){
		if(slide_current >=0){
			slide_current=0;
		}
		changePicture(slide_current);
	});
