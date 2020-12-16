function getUrl(url){
    document.getElementById("pic").src = url;
};

a();
function a(){
    let u = document.getElementById("usernameBE").value;
    if(u == ""){
        document.getElementById("btn-action").classList.add("hide");
        document.getElementById("btn-modal").classList.remove("hide");
    }else{
        document.getElementById("btn-modal").classList.add("hide");
        document.getElementById("btn-action").classList.remove("hide");
    }
}

$('input.input-qty').each(function() {
    var $this = $(this),
        qty = $this.parent().find('.is-form'),
        min = Number($this.attr('min')),
        max = Number($this.attr('max'))
    if (min == 0) {
        var d = 0
    } else d = min
    $(qty).on('click', function() {
        if ($(this).hasClass('minus')) {
            if (d > min) d += -1
        } else if ($(this).hasClass('plus')) {
            var x = Number($this.val()) + 1
            if (x <= max) d += 1
        }
        $this.attr('value', d).val(d);
        changePrice();
    })
});

function b(){
    let sl = document.getElementById("so-luong").value;
    let cl = document.getElementById("color");
    console.log(sl);
    let slF = document.getElementById("so-luong-form");
    let clF = document.getElementById("mau-sac-form");
    slF.value = sl;
    let clValue = cl.options[cl.selectedIndex].value;
    clF.value = clValue;
}

function maxAmount() {
    var x = parseInt(document.getElementById("so-luong").value);
    var y = parseInt(document.getElementById("so-luong").max);
    if(x > y){
        document.getElementById("so-luong").value = y;
    }
}
function changePrice(){
    var p = parseInt(document.getElementById("so-luong").value);
    var pA = document.getElementById("price-a").value.replace(/\./g,'');
    var pF = parseInt(pA);
    console.log(p,pF);
    var total = pF * p;
    document.getElementById("price").innerHTML = total;
    fomartNumber();
}

fomartNumber();

function fomartNumber(){
    let p = document.getElementById("price");
    let p1 = p.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
    p.innerHTML = p1 +" đ";
}
fomartNumber1();
function fomartNumber1(){
    let p = document.getElementById("price-a");
    let p1 = p.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
    p.innerHTML = p1 +" đ";
}

function validateForm(){
    let check = true;
    let userName = document.getElementById("name");
    let phone = document.getElementById("phone");
    let mail = document.getElementById("email");
    let c = document.getElementById("city2");
    let d = document.getElementById("district2");
    let v = document.getElementById("village2");
    let address = document.getElementById("address");

    let city = c.options[c.selectedIndex].value;
    let district = d.options[d.selectedIndex].value;
    let village = v.options[v.selectedIndex].value;

    let nameRegex = /^[a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+$/;
    let mailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    let errorName = document.getElementById("error1");
    let errorPhone = document.getElementById("error2");
    let errorEmail = document.getElementById("error3");
    let errorCity= document.getElementById("error4");
    let errorDistrict = document.getElementById("error5");
    let errorVillage = document.getElementById("error6");
    let errorAddress= document.getElementById("error7");

    if( userName.value.trim()== "" ){
        errorName.classList.remove("hide");
        userName.style.borderColor="red";
        errorName.innerHTML="Không để trống tên";
        check = false;
    }else if(!nameRegex.test(userName.value.trim())){
        errorName.classList.remove("hide");
        userName.style.borderColor="red";
        errorName.innerHTML="Tên không có ký tự đặc biệt hoặc số";
        check = false;
    }else if(userName.value.trim().length > 50 ){
        errorName.classList.remove("hide");
        userName.style.borderColor="red";
        errorName.innerHTML="Tên không quá 50 ký tự";
        check = false;
    }else{
        errorName.classList.add("hide");
        userName.style.borderColor="green";
    }
    if(phone.value.trim()==""){
        errorPhone.classList.remove("hide");
        phone.style.borderColor="red";
        errorPhone.innerHTML="Không để trống số điện thoại";
        check = false;
    }else if(isNaN(phone.value.trim())){
        errorPhone.classList.remove("hide");
        phone.style.borderColor="red";
        errorPhone.innerHTML="Số điện thoại phải là số";
        check = false;
    }else if(phone.value.trim().length != 10){
        errorPhone.classList.remove("hide");
        phone.style.borderColor="red";
        errorPhone.innerHTML="Số điện thoại phải có 10 ký tự";
        check = false;
    }else{
        errorPhone.classList.add("hide");
        phone.style.borderColor="green";
    }
    if(mail.value.trim()==""){
        errorEmail.classList.remove("hide");
        mail.style.borderColor="red";
        errorEmail.innerHTML="Không để trống Mail";
        check = false;
    }else if(!mailRegex.test(mail.value.trim())){
        errorEmail.classList.remove("hide");
        mail.style.borderColor="red";
        errorEmail.innerHTML="Mail không đúng định dạng! example@gamil.com";
        check = false;
    }else{
        errorEmail.classList.add("hide");
        mail.style.borderColor="green";
    }
    if(city=="none"){
        errorCity.classList.remove("hide");
        c.style.borderColor="red";
        c.focus;
        errorCity.innerHTML="Vui lòng chọn Tỉnh/Thành phố";
        check=false;
    }else{
        errorCity.classList.add("hide");
        c.style.borderColor="green";
    }
    if(district=="none"){
        errorDistrict.classList.remove("hide");
        d.style.borderColor="red";
        errorDistrict.innerHTML="Vui lòng chọn Quận/Huyện";
        check=false;
    }else{
        errorDistrict.classList.add("hide");
        d.style.borderColor="green";
    }
    if(village=="none"){
        errorVillage.classList.remove("hide");
        v.style.borderColor="red";
        errorVillage.innerHTML="Vui lòng chọn Phường/Xã/Thị trấn";
        check=false;
    }else{
        errorVillage.classList.add("hide");
        v.style.borderColor="green";
    }
    if(address.value.trim()==""){
        errorAddress.classList.remove("hide");
        address.style.borderColor="red";
        errorAddress.innerHTML="Không để trống địa chỉ";
        check = false;
    }else if(address.value.trim().length<255){
        errorAddress.classList.remove("hide");
        address.style.borderColor="red";
        errorAddress.innerHTML="Địa chỉ không quá 255 ký tự";
        check = false;
    }else{
        errorAddress.classList.add("hide");
        address.style.borderColor="green";
    }
    return check;
}
