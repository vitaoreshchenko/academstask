function Validate(obj) {
  var fname=obj.f_name.value;
    var lname=obj.l_name.value;
  
  var key=obj.key.value;
 
  var day=obj.day.value;
    var mon=obj.mon.value;
   
  

  if (fname=="" || lname=="" || key=="" || calendar1=="" | calendar2=="" )
  {
    alert("Все поля должны быть заполнены!!")
    return false;
  }
    
  
if(mon === "february" && day>=28){
        alert("incorrect number of days for February, enter the number =< 29!!")
    return false;
        
}

    var calendar1=obj.calendar1.value;
   var calendar2=obj.calendar2.value;
    if (calendar1 >calendar2)
  { alert("incorrect reservation dates !!First date must be less second date")
   return false;
  }
    
    
    
}