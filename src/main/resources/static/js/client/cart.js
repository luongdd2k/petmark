$('input.input-qty').each(function() {
    var $this = $(this),
        qty = $this.parent().find('.is-form'),
        min = Number($this.attr('min')),
        max = Number($this.attr('max')),
        x = Number($this.val())

    $(qty).on('click', function() {
        if ($(this).hasClass('minus')) {
            if (x > min) x--
        } else if ($(this).hasClass('plus')) {
            if (x < max) x++
        }
        $this.val(x)
        tinhTong();
    })
});
tinhTong();
function tinhTong(){
    let tien = document.getElementsByClassName("product-price-origin");
    let amount = document.getElementsByClassName("input-qty");
    let tong =  document.getElementsByClassName("total-price");
    let tongOri = document.getElementsByClassName("total-price-origin");
    for (let i = 0 ; i<tien.length; i++){
        let tong1 = parseInt(tien[i].value) * parseInt(amount[i].value);
        tong[i].innerHTML = tong1 +" đ";
        tongOri[i].value = tong1;
    }
    thanhTien();
    formartN();
}
thanhTien();
function thanhTien(){
    let tong2 = document.getElementsByClassName("total-price-origin");
    let tam = document.getElementById("tam-tinh");
    let thanh = document.getElementById("thanh-tien");
    let sum =0;
    for (let i =0; i<tong2.length; i++){
        sum = parseInt(sum) + parseInt(tong2[i].value);
        console.log(sum);
        tam.innerHTML = sum +" đ";
        thanh.innerHTML = sum + " đ";
    }
}
formartN();
function formartN(){
    let tien = document.getElementsByClassName("product-price");
    let tong =  document.getElementsByClassName("total-price");
    let tam = document.getElementById("tam-tinh");
    let thanh = document.getElementById("thanh-tien");
    for (let i=0; i<tien.length; i++){
        let tien1 = tien[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
        tien[i].innerHTML = tien1;
        let tong1 = tong[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
        tong[i].innerHTML = tong1;
        let tam1 = tam.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
        tam.innerHTML = tam1;
        let thanh1 = thanh.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
        thanh.innerHTML = thanh1;
    }
}
