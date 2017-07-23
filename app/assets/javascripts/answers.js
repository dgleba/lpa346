
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
  console.log("answers.js.. 7 23 k");
  
  //$(".issue-action-fields").hide();
  $(".required-if-no").prop("required", true);
  //$(".required-if-no").prop("disabled", false);

  $("input.c_yesno").change(function() {
    console.log( $(this).val() ); 
    if (this.value == 'No' && this.checked) {
      $( this ).parent().css( "background-color", "#f2fcfb" );
      //$(this).parent().nextALL().find("div.issue_action_fields").show();
      $(this).parent().next("div.issue_action_fields").show();
      $(this).parent().next(".issue_action_fields").find('*').prop("required", true).css( "background-color", "rgb(255, 255, 245)" );
      //$(this).next(".required-if-no").prop("disabled", true);

    } else {
      $( this ).parent().css( "background-color", "#f2ffea" );
      $(this).parent().next(".issue_action_fields").hide().css( "background-color", "yellow" );
      $(this).parent().next(".issue_action_fields").find('*').prop("required", false).css( "background-color", "blue" );
    }
  });  
  
});

