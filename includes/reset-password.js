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

function showConfirmPassword(){
    let eyeicon = document.getElementById("confirm-eye-icon");
    let confirmpassword = document.getElementById("confirm-password");

    if(confirmpassword.type == "password"){
        confirmpassword.type = "text";
        eyeicon.src = "../public/images/eye-open.png";
    }else{
        confirmpassword.type = "password";
        eyeicon.src = "../public/images/eye-close.png";
    }
}