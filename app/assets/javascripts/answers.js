
/* global $ */

$(document).ready(function(){
  // are you sure jquery plugin https://github.com/codedance/jquery.AreYouSure
  // use https://github.com/codedance/jquery.AreYouSure/blob/master/ays-beforeunload-shim.js for IOS.
  //
  $('form').areYouSure();
  
  
  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //
  // yes/no question validation. require issue and action if answer is no.
  //
  
  console.log( $(this).val() ); 
  console.log("answers.js.. 7 25 h");
  
  //$(".issue-action-fields").hide();
  $(".required-if-no").prop("required", true);
  //$(".required-if-no").prop("disabled", false);

  $("input.c_yesno").change(function() {
    console.log( $(this).val() ); 
    if (this.value == 'No' && this.checked) {
      // show..
      $( this ).parent().css( "background-color", "rgb(244, 254, 255)" ); //light blue
      $(this).closest('div.well').css( "background-color", "beige" );
      //
      // use closest to search UP the dom by class and then - some combination of children,nextAll,find,first - to find the item by class within that div...
      //  https://jsfiddle.net/dgable/ddvb3h0p/
      //
      $(this).closest('div.well').children().find("div.issue_action_fields").first().show();
      //worked only with the next object.. $(this).parent().next("div.issue_action_fields").show();
      
      // make required...
      //$(this).parent().next(".issue_action_fields").find('*').prop("required", true).css( "background-color", "rgb(255, 255, 245)" ); //light yellow
      $(this).closest('div.well').children().find("div.issue_action_fields").css( "background-color", "peachpuff" ); // color it to see it working.
      $(this).closest('div.well').children().find("div.issue_action_fields").find('*').prop("required", true).css( "background-color", "rgb(255, 255, 245)"  );
      //$(this).next(".required-if-no").prop("disabled", true);
    } else {
      // hide..
      $( this ).parent().css( "background-color", "rgb(249, 255, 249)" ); //light green
      $(this).closest('div.well').children().find("div.issue_action_fields").first().hide();
      //$(this).parent().next(".issue_action_fields").hide().css( "background-color", "yellow" );
      
      // make not required..
      //$(this).parent().next(".issue_action_fields").find('*').prop("required", false).css( "background-color", "blue" );
      $(this).closest('div.well').children().find("div.issue_action_fields").css( "background-color", "DarkKhaki" ); // color it to see it working.
      $(this).closest('div.well').children().find("div.issue_action_fields").find('*').prop("required", false); 
    }
  }); 
  
  
  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //
  // show/hide help texts..
  //
  
  $(".c_whatto_help_txts").hide();
  $("a.a_whatto_help_txts").click(function(){
     console.log("answers.js, toggle help .. 7 7 24 g");
     $(this).next("div.c_whatto_help_txts").slideToggle(300);
  });

});

