function validateForm() {
    let check = true;
    let username = document.forms["myForm"]["username"];
    let pass = document.forms["myForm"]["password"];
    let passCon = document.forms["myForm"]["password_2"];
    let name = document.forms["myForm"]["name"];
    let email = document.forms["myForm"]["email"];
    let city = document.getElementById("city2");
    let district = document.getElementById("district2");
    let village = document.getElementById("village2");
    let phone = document.forms["myForm"]["phone"];
    let address = document.forms["myForm"]["address"];

    let cityVal = city.options[city.selectedIndex].value;
    let districtVal = district.options[district.selectedIndex].value;
    let villageVal = village.options[village.selectedIndex].value;


    let mailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    let errorUser = document.getElementById("error1");
    let errorPass = document.getElementById("error2");
    let errorPassCon = document.getElementById("error3");
    let errorName = document.getElementById("error4");
    let errorMail= document.getElementById("error5");
    let errorCity= document.getElementById("error6");
    let errorDistrict = document.getElementById("error7");
    let errorVillage = document.getElementById("error8");
    let errorPhone = document.getElementById("error9");
    let errorAddress = document.getElementById("error10");

    if(username.value == ""){
        errorUser.classList.remove("hide");
        username.style.borderColor= "red";
        username.focus;
        errorUser.innerHTML="Không để trống tên đăng nhập";
        check = false;
    }else if(username.value.length < 4 || username.value.length > 15){
        errorUser.classList.remove("hide");
        username.style.borderColor= "red";
        username.focus;
        errorUser.innerHTML="Tên đăng nhập phải từ 4-15 ký tự";
        check = false;
    }else{
        username.style.borderColor= "green";
        errorUser.classList.add("hide");
    }
    if(pass.value==""){
        errorPass.classList.remove("hide");
        pass.style.borderColor="red";
        pass.focus;
        errorPass.innerHTML="Không để trống mật khẩu";
        check = false;
    }else if(pass.value.length <8){
        errorPass.classList.remove("hide");
        pass.style.borderColor="red";
        pass.focus;
        errorPass.innerHTML="Mật khẩu phải từ 8 ký tự trở lên";
        check = false;
    }else{
        errorPass.classList.add("hide");
        pass.style.borderColor="green";
    }
    if(passCon.value==""){
        errorPassCon.classList.remove("hide");
        passCon.style.borderColor="red";
        passCon.focus;
        errorPassCon.innerHTML="Không được để trống mật khẩu";
        check = false;
    }else if(passCon.value != pass.value){
        errorPassCon.classList.remove("hide");
        passCon.style.borderColor="red";
        passCon.focus;
        errorPassCon.innerHTML="Mật khẩu phải trùng mật khẩu đã nhập";
        check = false;
    }else{
        errorPassCon.classList.add("hide");
        passCon.style.borderColor="green";
    }
    if( name.value== "" ){
        errorName.classList.remove("hide");
        name.style.borderColor="red";
        name.focus;
        errorName.innerHTML="Không để trống tên";
        check = false;
    }else if(name.value.length > 50 ){
        errorName.classList.remove("hide");
        name.style.borderColor="red";
        name.focus;
        errorName.innerHTML="Tên không quá 50 ký tự";
        check = false;
    }else{
        errorName.classList.add("hide");
        name.style.borderColor="green";
    }
    if(email.value==""){
        errorMail.classList.remove("hide");
        email.style.borderColor="red";
        email.focus;
        errorMail.innerHTML="Không để trống Mail";
        check = false;
    }else if(!mailRegex.test(email.value)){
        errorMail.classList.remove("hide");
        email.style.borderColor="red";
        email.focus;
        errorMail.innerHTML="Mail không đúng định dạng! example@gamil.com";
        check = false;
    }else{
        errorMail.classList.add("hide");
        email.style.borderColor="green";
    }
    if(cityVal=="none"){
        errorCity.classList.remove("hide");
        city.style.borderColor="red";
        city.focus;
        errorCity.innerHTML="Vui lòng chọn Tỉnh/Thành phố";
        check=false;
    }else{
        errorCity.classList.add("hide");
        city.style.borderColor="green";
    }
    if(districtVal=="none"){
        errorDistrict.classList.remove("hide");
        district.style.borderColor="red";
        district.focus;
        errorDistrict.innerHTML="Vui lòng chọn Quận/Huyện";
        check=false;
    }else{
        errorDistrict.classList.add("hide");
        district.style.borderColor="green";
    }
    if(villageVal=="none"){
        errorVillage.classList.remove("hide");
        village.style.borderColor="red";
        village.focus;
        errorVillage.innerHTML="Vui lòng chọn Phường/Xã/Thị trấn";
        check=false;
    }else{
        errorVillage.classList.add("hide");
        village.style.borderColor="green";
    }
    if(phone.value==""){
        errorPhone.classList.remove("hide");
        phone.style.borderColor="red";
        phone.focus;
        errorPhone.innerHTML="Không để trống số điện thoại";
        check= false;
    }else if(isNaN(phone.value)){
        errorPhone.classList.remove("hide");
        phone.style.borderColor="red";
        phone.focus;
        errorPhone.innerHTML="Số điện thoại phải là số";
        check= false;
    }else if(phone.value.length != 10){
        errorPhone.classList.remove("hide");
        phone.style.borderColor="red";
        phone.focus;
        errorPhone.innerHTML="Số điện thoại phải có 10 ký tự";
        check= false;
    }else{
        errorPhone.classList.add("hide");
        phone.style.borderColor="green";
    }
    if(address.value==""){
        errorAddress.classList.remove("hide");
        address.style.borderColor="red";
        address.focus;
        errorAddress.innerHTML="Không để trống địa chỉ";
        check = false;
    }else if(address.value.length<255){
        errorAddress.classList.remove("hide");
        address.style.borderColor="red";
        address.focus;
        errorAddress.innerHTML="Địa chỉ không quá 255 ký tự";
        check = false;
    }else{
        errorAddress.classList.add("hide");
        address.style.borderColor="green";
    }
    return check;
}
