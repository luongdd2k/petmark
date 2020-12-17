

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
                $('#district2').html(`<option value="none"> Quận / Huyện </option>`);

                district.forEach(item => {
                    $('#district2').append(`<option value="${item.maqh}">${item.name }</option>`)
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
                $('#village2').html(`<option value="none"> Xã / Phường / Thị trấn </option>`);
                village.forEach(item => {
                    $('#village2').append(`<option value="${item.xaid }">${item.name}</option>`);
                })
            }
        })
        .fail(function() {
            console.log("error village js");
        });
}

function village(obj){
    let villageValue = obj.value;
    let maTp = document.getElementById("city2");
    let maQh = document.getElementById("district2");

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

