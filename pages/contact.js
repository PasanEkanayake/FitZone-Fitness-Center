function validateForm() {
    let name = document.getElementById("name").value.trim();
    let email = document.getElementById("email").value.trim();
    let subject = document.getElementById("subject").value.trim();
    let message = document.getElementById("message").value.trim();
    let formMessage = document.getElementById("form-message");

    if (name === "" || email === "" || subject === "" || message === "") {
        formMessage.textContent = "All fields are required!";
        formMessage.style.color = "red";
        return false;
    }

    // Email validation
    let pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

    if (!email.match(pattern)) {
        formMessage.textContent = "Invalid email address!";
        formMessage.style.color = "red";
        return false;
    }

    formMessage.textContent = "Sending...";
    formMessage.style.color = "#2ECC71";
    return true;
}
