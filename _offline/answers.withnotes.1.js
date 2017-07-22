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
// I ended up using areYouSure with the included shim for IOS. 2017-05-16_Tue_10.50-AM.

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/*
http://stackoverflow.com/questions/9006823/rails-asset-pipeline-standard-way-for-including-all-vendor-assets-javascripts

take the spaces out and one or the other in application.js
a)
/ / = r equire_tree ../../../vendor/assets/javascripts/.
b)
// this one will get the files from app/assets/ not vendor/assets..
/ / = a reyousure/jquery.are-you-sure
/ / = a reyousure/ays-beforeunload-shim

*/

/* global $ */

$(document).ready(function(){
  // are you sure jquery plugin https://github.com/codedance/jquery.AreYouSure
  // use https://github.com/codedance/jquery.AreYouSure/blob/master/ays-beforeunload-shim.js for IOS.
  //
  $('form').areYouSure();
  
  console.log( $(this).val() ); 
  console.log("answers.js! 721 s");
  
  //$(".issue-action-fields").hide();
  $(".required-if-no").prop("required", false);
  $(".required-if-no").prop("disabled", false);

  $("input.c_yesno").change(function() {
    console.log( $(this).val() ); 
    if (this.value == 'No' && this.checked) {
      //$(".issue-action-fields").show();
      $( this ).parent().css( "background-color", "red" );
      $(this).parent().next(".issue_action_fields").show();
      $(this).parent().next(".issue_action_fields").find('*').prop("required", true).css( "background-color", "blue" );
      //$(this).parent().next(".issue_action_fields").nextAll('.required-if-no').css( "background-color", "blue" );
      //$('div.MenuItemSelected').nextAll('.MenuItem:first');  $( this ).parent().next(".required-if-no").css( "background-color", "blue" );
      //$(this).next(".required-if-no").prop("required", true);
      //$(this).next(".required-if-no").prop("disabled", true);
      $(this).css( "background-color", "orange" );

    } else {
      //$(".issue-action-fields").hide();
      //$(this).next(".required-if-no").prop("required", false);
      //$(this).next(".required-if-no").prop("disabled", true);
      $(this).parent().next(".issue_action_fields").hide().prop("required", false).css( "background-color", "yellow" );
    }
  });  
  
});


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


// $("input[name='radio-required-no']").change(function() {
// $(".issue-action-fields").toggle
// });
// $("input[name='radio-required-no']:checked").change();

    //   jQuery("input[class=radio-required-no]").change(function(){          
          
          
    //       if ($(this).val() == "Yes") {
    //       jQuery("#issue-action-fields").slideDown()
    //       }
    //       else {
    //       jQuery("#issue-action-fields").slideUp();
    //       }                                                            
    // });   


// $(".relat__atu").on("change", function(){
//   $("#issue-action-fields").toggle($(this).hasClass("relat__atu_yes"));
// });


/*
(function($) {
    // Enable on all forms
    $('form').areYouSure();
})(jQuery);
*/

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Other attempts I made below... 

// David Gleba 2017-05-16_Tue_10.47-AM

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/*
// put this in applicaton.js
// put dirtyforms in vendor/assets/javascripts/jquery.dirtyforms/
// // = r equire jquery.dirtyforms/jquery.dirtyforms.min.js
//
$(document).ready(function(){
  //https://github.com/snikch/jquery.dirtyforms
  // didn't work in I\iOS
  // $('form').dirtyForms();
});
*/


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


//https://blog.driftingruby.com/form-check-modified/
//
// works everywhere but iOS

/*
var msg, unsaved;
msg = "Changes you made may not be saved!!";
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
*/

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// http://stackoverflow.com/questions/158673/onbeforeunload-support-detection/18137334#18137334
// http://jsfiddle.net/pmorch/tW827/

/*

// alert step7 never runs. It should in IOS.

(function($) {

    var field = 'beforeunloadSupported';
    if (window.localStorage &&
        window.localStorage.getItem &&
        window.localStorage.setItem &&
        ! window.localStorage.getItem(field)) {
        $(window).on('beforeunload', function () {
            window.localStorage.setItem(field, 'yes');
        });
        $(window).on('unload', function () {
            // If unload fires, and beforeunload hasn't set the field,
            // then beforeunload didn't fire and is therefore not
            // supported (cough * iPad * cough)
            if (! window.localStorage.getItem(field)) {
                window.localStorage.setItem(field, 'no');
            }
        });
    }
    window.isBeforeunloadSupported = function () {
        if (window.localStorage &&
            window.localStorage.getItem &&
            window.localStorage.getItem(field) &&
            window.localStorage.getItem(field) == "yes" ) {
            return true;
        } else {
            return false;
        }
    }
    
    if ( isBeforeunloadSupported() ) {
      $(window).bind('beforeunload', function() {
        alert("step5 in beforeunload");
        if (unsaved) {
          return msg;
        }
      });
    } else {
    
      alert("step6 before unload");

      $(window).bind('unload', function() {

        alert("step7 in unload");

        if (unsaved) {
          return msg;
        }
      });      
    }
    
})(jQuery);
*/

 
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

//
// tests, these work..
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
// $(document).ready(function(){
//   $('.tryme2').click(function(){
//     alert("You clicked: " + $(this).data('id'));
//   });
// });

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


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

