$(function(){
    $("#one").hide();
    $("img").mousemove(function(e){
    $("#one").show();
    $("#one").attr("src",$(this).attr("src"));
    $("#one").css({
        "top":e.pageY-200,
        "left":e.pageX,
    });
    }). mouseleave(function(){
        $('#one').hide();
    })
      
})

