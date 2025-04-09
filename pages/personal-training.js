document.getElementById("training-form").addEventListener("submit", function(event) {
    let name = document.querySelector("input[name='name']").value.trim();
    let email = document.querySelector("input[name='email']").value.trim();
    let contact = document.querySelector("input[name='contact']").value.trim();

    if (name === "" || email === "" || contact === "") {
        event.preventDefault();
        document.getElementById("form-message").textContent = "Please fill out all fields!";
        document.getElementById("form-message").style.color = "red";
    } else if (!/^\d{10}$/.test(contact)) {
        event.preventDefault();
        document.getElementById("form-message").textContent = "Please enter a valid 10-digit contact number.";
        document.getElementById("form-message").style.color = "red";
    } else {
    }
});
