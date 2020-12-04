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
$(function () {

    $('.input-images-1').imageUploader();



    $('form').on('submit', function (event) {

        // Stop propagation
//             event.preventDefault();
        event.stopPropagation();

        // Get some vars
        let $form = $(this),
            $modal = $('.modal');

        // Set name and description
        $modal.find('#display-name span').text($form.find('input[id^="name"]').val());
        $modal.find('#display-description span').text($form.find('input[id^="description"]').val());

        // Get the input file
        let $inputImages = $form.find('input[name^="images"]');
        if (!$inputImages.length) {
            $inputImages = $form.find('input[name^="photos"]')
        }

        // Get the new files names
        let $fileNames = $('<ul>');
        for (let file of $inputImages.prop('files')) {
            $('<li>', {text: file.name}).appendTo($fileNames);
        }

        // Set the new files names
        $modal.find('#display-new-images').html($fileNames.html());
        let fName1 =  $fileNames.html().replace("<li>", "");
        let fName2 =  fName1.replace("</li>", "");
        document.getElementById("add_img").value=fName2;

        // Get the preloaded inputs
        let $inputPreloaded = $form.find('input[name^="old"]');
        if ($inputPreloaded.length) {
            // Get the ids
            let $preloadedIds = $('<ul>');
            for (let iP of $inputPreloaded) {
                $('<li>', {text: '#' + iP.value}).appendTo($preloadedIds);
            }
            // Show the preloadede info and set the list of ids
            $modal.find('#display-preloaded-images').show().html($preloadedIds.html());
        } else {
            // Hide the preloaded info
            $modal.find('#display-preloaded-images').hide();
        }
        // Show the modal
        $modal.css('visibility', 'visible');
    });

    // Input and label handler
    $('input').on('focus', function () {
        $(this).parent().find('label').addClass('active')
    }).on('blur', function () {
        if ($(this).val() == '') {
            $(this).parent().find('label').removeClass('active');
        }
    });
});