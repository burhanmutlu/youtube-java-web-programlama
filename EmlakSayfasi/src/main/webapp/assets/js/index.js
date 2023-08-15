function hideShowPassword() {
    let element = document.getElementById("password");
    let eyeImage = document.getElementById("eyePass");
    if(element.type == 'password') {
        // göz açık
        eyeImage.src = "assets/images/eye.png"
        element.type = 'text';
    } else {
        eyeImage.src = "assets/images/hidden.png"
        element.type = 'password';
    }
}

function formControl() {
    let email = document.getElementById("email");
    let password = document.getElementById("password");
    let button = document.getElementsByClassName("button");

    if(email.value == "" || email.value == null || password.value == "" || password.value == null) {
        button[0].disabled = true;
        button[0].backgroundColor = "black"
    } else {
        button[0].disabled = false;
        button[0].backgroundColor = "white"
    }

}