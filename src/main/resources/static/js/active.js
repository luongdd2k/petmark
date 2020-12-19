b();
function b(){
    let nav = document.getElementsByClassName("nav-aside");
    let p = document.getElementsByClassName("nav-p");
    let active = document.getElementById("active").value;
    for(let i=0; i<p.length; i++){
        if( p[i].innerHTML == active){
            nav[i].classList.add("active");
        }
    }
}

