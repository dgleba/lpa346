//#app/assets/javascripts/question.js

$(function() {

    // https://teamtreehouse.com/community/how-to-require-fields-if-a-certain-radio-button-is-checked
    $("#radio-required-yes").click(function() {
        $("#required-if-no").prop("required", false);
        $("#required-if-no").prop("disabled", true);
    });
    $("#radio-required-no").click(function() {
        $("#required-if-no").prop("required", true);
        $("#required-if-no").prop("disabled", false);
        $("#required-if-no").focus();
    });

    $("#required-if-no").prop("required", true);
    $("#required-if-no").prop("disabled", false);
    
});