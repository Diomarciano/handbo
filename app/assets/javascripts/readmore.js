$(document).ready(function() {
  
    var cutCount = 2;
  
    $("#testID p").each(function (i) {
        i++;
        if(i == cutCount) {
            $(this).append(' <a href="javascript:void(1)" onclick="$(\'#testID p\').show(); $(this).hide()">Read more</b>')   
        }
        if(i > cutCount) {
           $(this).hide();
        }
    });
});
    