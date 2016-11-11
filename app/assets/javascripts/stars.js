$(document).ready(function(){
  $(".rating-input").click(function(event){
     $('#rate').val(event.target.id.split("-").pop())
  })
})

