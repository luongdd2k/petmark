abcd();
function abcd() {
    let page = document.getElementsByClassName("my-acount-section__header-title");
    for (let i = 0; i < page.length; i++) {
        console.log(page[i].innerHTML);
        if(page[i].innerHTML == "Hồ sơ của tôi"){
            document.getElementById("order-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("ho-so").style.color="orange";
        }else if(page[i].innerHTML == "Đổi mật khẩu"){
            document.getElementById("order-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("change-pass").style.color="orange";
        }else if(page[i].innerHTML == "Tất cả đơn hàng"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("all-order").style.color="orange";
        }else if(page[i].innerHTML == "Đơn hàng chờ xác nhận"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("waiting").style.color="orange";
        }else if(page[i].innerHTML == "Đơn hàng chờ giao"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("wait-delevery").style.color="orange";
        }else if(page[i].innerHTML == "Đơn hàng đang giao"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("delevering-order").style.color="orange";
        }else if(page[i].innerHTML == "Đơn hàng đã giao"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("done-order").style.color="orange";
        }else if(page[i].innerHTML == "Đơn hàng đã huỷ"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("cancel-order").style.color="orange";
        }else if(page[i].innerHTML == "Đơn đặt cọc thành công"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("order-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("all-depost").style.color="orange";
        }else if(page[i].innerHTML == "Đơn đặt cọc đã huỷ"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("order-hide").classList.add("hide");
            document.getElementById("blog-hide").classList.add("hide");
            document.getElementById("cancel-depost").style.color="orange";
        }else if(page[i].innerHTML == "Blog của tôi"){
            document.getElementById("acount-hide").classList.add("hide");
            document.getElementById("order-hide").classList.add("hide");
            document.getElementById("depost-hide").classList.add("hide");
            document.getElementById("all-blog").style.color="orange";
        }
    }
}
