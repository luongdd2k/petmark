var hadBlog = $("#hadBlog").val();
var blog = document.getElementById("blog");
var noBlog = document.getElementById("no-blog");
var newBlog = document.getElementById("new-blog");
if (hadBlog == "") {
    $("#blog").addClass("hide");
    $("#no-blog").removeClass("hide");
    $("#new-blog").addClass("hide");
} else {
    $("#blog").removeClass("hide");
    $("#no-blog").addClass("hide");
    $("#new-blog").addClass("hide");
}
$(function() {
    $("a#hidebox").click(function() {
        $("#blog").addClass("hide");
        $("#no-blog").addClass("hide");
        $("#new-blog").removeClass("hide");
    });
    $("a#new").click(function() {
        $("#blog").addClass("hide");
        $("#no-blog").addClass("hide");
        $("#new-blog").removeClass("hide");
    });
})
