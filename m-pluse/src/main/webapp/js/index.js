$(function() {
    new WOW().init();
});
function adjustHeight(el){
    el.style.height = (el.scrollHeight > el.clientHeight) ? (el.scrollHeight)+"px" : "60px";
}
$(function() {
   $('#bs').click(function(e) {
        e.preventDefault();
        $.ajax({
            url: "https://formspree.io/de11romik@gmail.com", 
            method: "POST",
            data: {
                firstName:    $('#name').val(),
                lastName:     $('#sname').val(),
                comment:      $('#text').val()
            },
            dataType: "json"
        }).done(function() {
            $('form').html('<h1>I appreciate your opinion!</h1><p>Thank you for feedback</p>')
        });
   }); 
});