    
<script>
//
//
//
$(document).ready(function() {

$("input[class='radio-required-no']").change(function() {
  $(".issue-action-fields").toggle(this.value == "Yes");
});
$("input[class='radio-required-no']:checked").change();
  
});
</script>


