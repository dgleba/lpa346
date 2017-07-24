
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
  console.log("answers.js.. 7 23 p");
  
  //$(".issue-action-fields").hide();
  $(".required-if-no").prop("required", true);
  //$(".required-if-no").prop("disabled", false);

  $("input.c_yesno").change(function() {
    console.log( $(this).val() ); 
    if (this.value == 'No' && this.checked) {
      $( this ).parent().css( "background-color", "rgb(244, 254, 255)" ); //light blue
      //$( this ).parent().css( "background-color", "Bee Yellow" ); // Can't use color name like this. 
      //$(this).parent().nextALL().find("div.issue_action_fields").show();
      $(this).parent().next("div.issue_action_fields").show();
      $(this).parent().next(".issue_action_fields").find('*').prop("required", true).css( "background-color", "rgb(255, 255, 245)" ); //light yellow
      //$(this).next(".required-if-no").prop("disabled", true);

    } else {
      $( this ).parent().css( "background-color", "rgb(249, 255, 249)" ); //light green
      $(this).parent().next(".issue_action_fields").hide().css( "background-color", "yellow" );
      $(this).parent().next(".issue_action_fields").find('*').prop("required", false).css( "background-color", "blue" );
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

