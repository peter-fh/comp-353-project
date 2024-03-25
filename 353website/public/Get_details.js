const inputBox16 = document.getElementById("inputBox16");
function buttonClick(n) {
    if (n == 7) {
        fetch("/getAllEmployees")
        window.location.reload();
    }
    
}