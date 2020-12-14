let maTp = $("#city");
let maQh = $("#district");
let maXa = $("#village");

let cityValue = maTp.options[maTp.selectedIndex].value;
let districtValue = maQh.options[maQh.selectedIndex].value;
let villageValue = maXa.options[maXa.selectedIndex].value;

$.ajax({
    url: 'show-qh',
    type: 'GET',
    dataType: 'html',
    data: {
    	"matp" :cityValue
    }
})
    .done(function(res) {
        if (res) {
            let brands = $.parseJSON(res);
            brands.forEach(item => {
                $('#district').append(`<option value="${item.getMaqh() }">${item.getName() }</option>`)
            })


// let villageValue = maXa.options[maXa.selectedIndex].value;

function city(obj){
    let cityValue1 = obj.value;
    $.ajax({
        url: 'show-qh',
        type: 'get',
        dataType: 'html',
        data: {
           "matp": cityValue1
        }
    })
        .done(function(res) {
            if (res) {
                let district = $.parseJSON(res);
                $('#district').html(`<option value="none">---- Chọn Quận / Huyện ----</option>`);

                district.forEach(item => {
                    $('#district').append(`<option value="${item.getMaqh()}">${item.getName() }</option>`)
                })
            }
            })
        .fail(function() {
            console.log("error city js");
        });
};

function district(obj){
    let districtValue1 = obj.value;
    $.ajax({
        url: 'show-xa',
        type: 'get',
        dataType: 'html',
        data:{
            "maqh":districtValue1
        }
    })
        .done(function(res) {
            if (res) {
                let village = $.parseJSON(res);
                $('#village').html(`<option value="none">---- Chọn Xã / Phường / Thị trấn ----</option>`);
                village.forEach(item => {
                    $('#village').append(`<option value="${item.getXaid() }">${item.getName() }</option>`);
                })
            }
        })
        .fail(function() {
            console.log("error village js");
        });
}

function village(obj){
    let villageValue = obj.value;
    let maTp = document.getElementById("city");
    let maQh = document.getElementById("district");

    let cityValue = maTp.options[maTp.selectedIndex].value;
    let districtValue = maQh.options[maQh.selectedIndex].value;

    document.getElementById("city-id").value = cityValue;
    document.getElementById("city-id").innerHTML = cityValue;
    document.getElementById("district-id").value = districtValue;
    document.getElementById("district-id").innerHTML = districtValue;
    document.getElementById("village-id").value = villageValue;
    document.getElementById("village-id").innerHTML = villageValue;
    console.log(cityValue, districtValue, villageValue);
}

