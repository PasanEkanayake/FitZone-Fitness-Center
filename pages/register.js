function showPassword(){
    let eyeicon = document.getElementById("eye-icon");
    let password = document.getElementById("password");
    let confirmpassword = document.getElementById("confirm-password");

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

document.addEventListener("DOMContentLoaded", function () {
    document.querySelector(".register-form").addEventListener("submit", function (event) {
        let isValid = true;

        // Get input values
        let firstName = document.getElementById("first-name").value.trim();
        let lastName = document.getElementById("last-name").value.trim();
        let email = document.getElementById("email").value.trim();
        let username = document.getElementById("username").value.trim();
        let password = document.getElementById("password").value;
        let confirmPassword = document.getElementById("confirm-password").value;

        // Error message elements
        let emailError = document.getElementById("errormessage");
        let usernameError = document.getElementById("usernameerror");
        let passwordError = document.getElementById("passworderror");

        // Reset previous error messages
        emailError.textContent = "";
        usernameError.textContent = "";
        passwordError.textContent = "";

        // First Name & Last Name Validation
        if (firstName === "" || lastName === "") {
            alert("First Name and Last Name are required!");
            isValid = false;
        }

        // Email Validation
        let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            emailError.textContent = "Invalid email format!";
            emailError.style.color = "red";
            isValid = false;
        }

        // Username Validation
        if (username.length < 5) {
            usernameError.textContent = "Username must be at least 5 characters!";
            usernameError.style.color = "red";
            isValid = false;
        }

        // Password Validation
        if (password.length < 8) {
            passwordError.textContent = "Password must be at least 8 characters!";
            passwordError.style.color = "red";
            isValid = false;
        }

        // Confirm Password Match
        if (password !== confirmPassword) {
            alert("Passwords do not match!");
            isValid = false;
        }

        // Prevent form submission if validation fails
        if (!isValid) {
            event.preventDefault();
        }
    });
});
