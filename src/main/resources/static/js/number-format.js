function numberWithCommas(x) {
    var parts = x.toString().split(".");
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return parts.join(".");
}

function myFunction() {
    var x = document.getElementById("price").textContent;
    var str =  numberWithCommas(x);
    document.getElementById("price").innerHTML = "";
    document.getElementById("price").innerHTML = str +" đ";
}

function numberWithoutCommas(y){
    var parts = y.toString().split(",");
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return parts.join(",");
}
function trimDau(){
    var y = document.getElementById("price").textContent;
    //var str =  numberWithoutCommas(y);
    var stc = y.replace(/,/g,"");
    var std = stc.substring(0, stc.length - 2);
    document.getElementById("demo").innerHTML = std;
}