b();
function b(){
    let nav = document.getElementsByClassName("nav-aside");
    let p = document.getElementsByClassName("nav-p");
    let active = document.getElementById("active").value;
    console.log(nav);
    console.log(p);
    for(let i=0; i<p.length; i++){
        console.log(p[i].innerHTML);
        if( p[i].innerHTML == active){
            nav[i].classList.add("active");
        }
    }
}