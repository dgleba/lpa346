//  2017-05-08_Mon_16.30-PM  didn't load in production after git pull and puma restart. hmmm. copied it manually and it worked. hmm.
//
//  asks before leaving page of edited/unsaved form..
//
//  \\10.4.1.227\rt\srv\share\lpa346\app\assets\javascripts\answers.js
//
// https://blog.driftingruby.com/form-check-modified/
// others..
// http://stackoverflow.com/questions/16322042/jquery-warn-if-leaving-page-without-clicking-the-save-button
// http://stackoverflow.com/questions/10591378/confirm-leave-page-unless-they-clicked-the-save-button
//
// see also \\10.4.1.227\rt\srv\share\lpa346\docs\app,views,pfeatures,_form.html___rails,erb,ask-before-leaving-edited-form-page,javascript-in-view-template,know.erb
//   I had to put this code in answers.js to get it to run when taking a survey.
//


var msg, unsaved;
 
msg = "Changes you made may not be saved.";
 
unsaved = false;
 
$(document).on('change', 'form[role="check-unsaved-form1"]:not([data-remote]) :input', function() {
  return unsaved = true;
});
 
$(document).on('turbolinks:load', function() {
  return unsaved = false;
});
 
$(document).on('submit', 'form[role="check-unsaved-form1"]', function() {
  unsaved = false;
});
 
$(window).bind('beforeunload', function() {
  if (unsaved) {
    return msg;
  }
});
 
$(document).on('turbolinks:before-visit', function(event) {
  if (unsaved && !confirm(msg)) {
    return event.preventDefault();
  }
});


//
// tests..
//

/*
Add this to view template..
<br>
<hr>
JS: test to see js is working for me.
<button onclick="myFunction()"> Tryme:  popup javascript alert for a test</button>
<p class="tryme2"> Tryme2 </p>
*/

// works.. pops up when tryme2 is clicked..
$(document).ready(function(){
  $('.tryme2').click(function(){
    alert("You clicked: " + $(this).data('id'));
  });
});

/*
// works.. it pops up tryme3 on page load.
$(document).ready(function(){
    alert("tryme3 ");
});
*/

// works.. pops up when tryme button is clicked.
function myFunction() {
    alert("I am an alert box!");
}

