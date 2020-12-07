$(function (){
    let userVal = $("#usernameBE").val();
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
    let giaPK = $("#giaPK-input").val();
    let sL = $("#inputnumber").val();
    let giapk = $("#giaPK-span").text();
    let resultTongTien = parseInt(giaPK) * parseInt(sL);
    $("#tongTien").prepend('<span> '+ resultTongTien + ' đ </span>');
    $("#tamTinh").prepend('<span class="pricesvalue">'+ resultTongTien + ' đ </span>');
    $("#tongTienFinal").prepend('<span class="pricesvalue pricesvalue-final">'+ resultTongTien + ' đ </span>');
})

function cong(){
    let t =  document.getElementById("inputnumber").value;
    document.getElementById("inputnumber").value = parseInt(t) + 1;
}

function tru(){
    let t =  document.getElementById("inputnumber").value;
    if(t>1){
        document.getElementById("inputnumber").value = parseInt(t) - 1;
    }
}
$(function(){
    let giaTriAmount = $(".checkout-product-ordered-list-itemheader--amount").html();
    let giaTriTongTien = $(".checkout-product-ordered-list-itemheader--subtotal").html();
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