
document.getElementById("chooseFile1").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        document.getElementById("image1").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
document.getElementById("chooseFile2").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        document.getElementById("image2").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
document.getElementById("chooseFile3").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        document.getElementById("image3").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};


function chall_period1(){
var chall_period = document.getElementsByName('chall_period');
var chall_periodChoice; // 여기에 선택된 radio 버튼의 값이 담기게 된다.
for(var i=0; i<chall_period.length; i++) {
    if(chall_period[i].checked) {
        chall_periodChoice = chall_period[i].value;
    }
}
	
}
