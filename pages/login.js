function showPassword(){
    let eyeicon = document.getElementById("eye-icon");
    let password = document.getElementById("password");

    if(password.type == "password"){
        password.type = "text";
        eyeicon.src = "../public/images/eye-open.png";
    }else{
        password.type = "password";
        eyeicon.src = "../public/images/eye-close.png";
    }
}