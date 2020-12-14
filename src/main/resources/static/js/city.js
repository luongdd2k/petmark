let maTp = $("#city");
let maQh = $("#district");
let maXa = $("#village");

let cityValue = maTp.options[maTp.selectedIndex].value;
let districtValue = maQh.options[maQh.selectedIndex].value;
let villageValue = maXa.options[maXa.selectedIndex].value;

$.ajax({
    url: '',
    type: 'GET',
    dataType: 'html',
    data: cityValue
})
    .done(function(res) {
        if (res) {
            let brands = $.parseJSON(res);
            brands.forEach(item => {
                $('#district').append(`<option value="${item.getMaqh() }">${item.getName() }</option>`)
            })
        }
    })
    .fail(function() {
        console.log("error city js");
    });


$.ajax({
    url: '',
    type: 'GET',
    dataType: 'html',
    data: districtValue
})
    .done(function(res) {
        if (res) {
            let brands = $.parseJSON(res);
            brands.forEach(item => {
                $('#village').append(`<option value="${item.getXaid() }">${item.getName() }</option>`)
            })
        }
    })
    .fail(function() {
        console.log("error village js");
    });
