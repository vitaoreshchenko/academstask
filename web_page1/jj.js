var myDiv = document.getElementById("myDiv");

//Create array of options to be added
var array = [];
var date = 1949;
for (var i = 0; date < 2000; i++) {
    array[i] = date + 1;
    date+=1;
}

//Create and append select list
var selectList = document.createElement("select");
selectList.setAttribute("id", "mySelect");
myDiv.appendChild(selectList);

//Create and append the options
for (var i = 0; i < array.length; i++) {
    var option = document.createElement("option");
    option.setAttribute("value", array[i]);
    option.text = array[i];
    selectList.appendChild(option);
}

