function Validate(obj) {
  var fname=obj.f_name.value;
    var lname=obj.l_name.value;
  
  var key=obj.kay.value;
 
  var date=obj.date.value.split('-');
  var errors="";
  if (fname=="" || lname=="" || key=="" )
  {
    alert("Все поля должны быть заполнены!!");
    return false;
  }
  
  
  
  if (day[0]<1)
  {
    errors+="Указана неверная дата рождения!!\n";
  }
  if(errors=="")
    return true;
  else
  {
    alert(errors);
    return false;
  }
}