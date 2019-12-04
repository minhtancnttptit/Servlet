function validateForm(form) {
    // validate the username
    var username = form.username;
    if (username.value == "" || username.value == "Write the username") {
            alert("You must provide a username");
            username.focus();
            username.select();
            return false;
    }

    //validate the password
    var password = form.password;
    if(password.value == "" || password.value.length < 3) {
        alert("You must provide a password of at least 3 characters");
        password.focus();
        password.select();
        return false;
    }

    //validate the technologies of interest
    var technologies = form.technology;
    var selectedCheck = false;
    for (var i = 0; i < technologies.length; i++) {
        if (technologies[i].checked) {
            selectedCheck = true;
            break;
        }
    }
    if (!selectedCheck) {
        alert("You must provide a technology");
        return false;
    }

    //validate the gender
    var genders = form.gender;
    var selectedRadio = false;
    for (var i = 0; i < genders.length ; i++) {
        if (genders[i].checked) {
            selectedRadio = true;
            break;
        }
    }
    if (!selectedRadio) {
        alert("You must select the gender");
        return false;
    }

    //validate the occupation
    var occupation = form.occupation;
    if (occupation.value == "") {
        alert("You must select an occupation");
        return false;
    }

    //validated form
    alert("Valid form, sending data to server");
    return true;
}

function display(category){
    var menu = document.getElementById(category);
    if(menu.className == "show_menu"){
        menu.className = "hide_menu";
    }
    else{
        menu.className = "show_menu";
    }
}