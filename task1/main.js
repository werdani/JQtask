$("#conti").hover(function(){
  $("#conti").css("left","0")
},function(){
  $("#conti").css("left" ,"-180px")
})
$("#first").click(function(){
    $("#firstt").slideToggle("slow");
    // $(this).removeClass("active");
    // $(this).slideUp("slow");
    // $(this).slideToggle("#firstt"); 
    // return false;

  });

  
$("#second").click(function(){
    $("#secondd").slideToggle("slow");
   
  });

$("#third").click(function(){
    $("#thirdd").slideToggle("slow");
   
  });

$("#fourth").click(function(){
    $("#fourthh").slideToggle("slow");
   
  });




//   $('.code-question').click(function(){
//     //Close all which are open
//     $('.code-answer').slideUp();
//     // check if clicking on active one
//     if ($(this).next().is(':visible')) { 
//         //Close it if open
//         $(this).next().slideUp('fast');     
//     } else {
//         //Open it if not
//         $(this).next().slideDown('fast');       
//     }

// });

  // $('li.menu-item-has-children').parent().closest('.sub-menu').toggle();