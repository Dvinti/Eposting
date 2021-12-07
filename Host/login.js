function passwordVisibility(){
    var visibility = document.getElementById("password-visibility")
    if(visibility.type === "password"){
        visibility.tpye = "text";
    } else{
        visibility.type = "password"
    }
}