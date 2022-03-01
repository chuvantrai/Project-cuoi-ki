function checkForm(){
    var username= document.getElementById('dk1').value;
    var password= document.getElementById('dk2').value;
    var displayname= document.getElementById('dk3').value;
    if(username==''||username.length <=4){
        alert('Hãy nhập đúng theo yêu cầu!');
        return;
    }
    if(password==''||password.length <=4){
        alert('Hãy nhập đúng theo yêu cầu!');
        return;
    }
    if(displayname==''||displayname.length <=4){
        alert('Hãy nhập đúng theo yêu cầu!');
    }
//    document.getElementById('dk4').style.display = 'block';
//    document.getElementById('dk5').style.display = 'none';
    window.location.href = "http://localhost:8080/Project_He153014/view/registered";
}