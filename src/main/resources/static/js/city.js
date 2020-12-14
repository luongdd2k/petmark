let maTp = document.getElementById("city");
let maQh = document.getElementById("district");
let maXa = document.getElementById("village");

let cityValue = maTp.options[maTp.selectedIndex].value;
let districtValue = maQh.options[maQh.selectedIndex].value;
let villageValue = maXa.options[maXa.selectedIndex].value;

function city(obj){
    let cityValue1 = obj.value;
    console.log(cityValue1);
    $.ajax({
        url: 'show-qh',
        type: 'get',
        dataType: 'html',
        data: cityValue1
    })
        .done(function(abc) {
            // console.log(abc);
            // if (res) {
            //     //let brands = $.parseJSON(res);
            //     res.forEach(item => {
            //         $('#district').append(`<option value="${item.getMaqh() }">${item.getName() }</option>`)
            //     })
            // }
        })
        .fail(function() {
            console.log("error city js");
        });
};

function district(obj){
    let districtValue1 = obj.value;
    console.log(districtValue1);
    $.ajax({
        url: 'show-qh',
        type: 'get',
        dataType: 'html',
        data: districtValue
    })
        .done(function(res) {
            // console.log(res);
            // if (res) {
            //     //let brands = $.parseJSON(res);
            //     res.forEach(item => {
            //         $('#village').append(`<option value="${item.getXaid() }">${item.getName() }</option>`)
            //     })
            // }
        })
        .fail(function() {
            console.log("error village js");
        });
}

