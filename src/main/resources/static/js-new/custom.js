$(function (){
    var userVal = $("#usernameBE").val();
    if(userVal == ""){
        $("#row-login").removeClass("hide");
        $("#row-logout").addClass("hide");
        $("#cart").addClass("hide");
        $("#location").addClass("hide");
    }else{
        $("#row-login").addClass("hide");
        $("#row-logout").removeClass("hide");
        $("#hello-name").html("Xin chào, " + userVal);
        $("#cart").removeClass("hide");
        $("#location").removeClass("hide");
        $("#search-box").addClass("hide");
    }
});

$(function(){
    var giaPK = $("#giaPK-input").val();
    var sL = $("#input__number").val();
    var giapk = $("#giaPK-span").text();
    var resultTongTien = parseInt(giaPK) * parseInt(sL);
    $("#tongTien").prepend('<span> '+ resultTongTien + ' đ </span>');
    $("#tamTinh").prepend('<span class="prices__value">'+ resultTongTien + ' đ </span>');
    $("#tongTienFinal").prepend('<span class="prices__value prices__value-final">'+ resultTongTien + ' đ </span>');
})

function cong(){
    var t =  document.getElementById("input__number").value;
    document.getElementById("input__number").value = parseInt(t) + 1;
}

function tru(){
    var t =  document.getElementById("input__number").value;
    if(t>1){
        document.getElementById("input__number").value = parseInt(t) - 1;
    }
}

$(function(){
    var giaTriAmount = $(".checkout-product-ordered-list-item__header--amount").html();
    var giaTriTongTien = $(".checkout-product-ordered-list-item__header--subtotal").html();
    $("._2hlLyg").prepend('Tổng số tiền ( ' + giaTriAmount + ' sản phẩm ) :');
    $("._7IQQY9").prepend(giaTriTongTien);
    $("._34fUBg").prepend(giaTriTongTien);
    $('._2ghey').prepend(giaTriTongTien);

    console.log(giaTriTongTien);
    
})

function doiDiaChi(){
    $("#checkout-adress").addClass("hide");
    $("#edit-checkout-adress").removeClass("hide");
}

function anDoiDiaChi(){
    $("#checkout-adress").removeClass("hide");
    $("#edit-checkout-adress").addClass("hide");
}

$(function(){
   let value = $("#valuePetOrAccessori").val();
    if(value == "cho"){
        $("#phuKien").addClass("hide");
        $("#cho").removeClass("hide");
        $("#thuCung").removeClass("hide");
        $("#phu-kien").addClass("hide");
    }else if(value == "phuKien"){
        $("#phuKien").removeClass("hide");
        $("#cho").addClass("hide");
        $("#thuCung").addClass("hide");
        $("#phu-kien").removeClass("hide");
    }
})


