
          function validateform(){  
		
             var firstname=document.myform.f_name.value;
             var sirname=document.myform.l_name.value;
             var rollnum=document.myform.roll.value;
             var mobileNum=document.myform.mobile.value;
             var password=document.myform.pass.value;
             var typee=document.myform.user_t.value;
            
              //roll number
           if(rollnum==null || rollnum==""){  
		  alert("Roll number can't be blank");  
		  return false;  
		  }
          else if(isNaN(rollnum))
             {
		    alert("Enter the valid Roll Number(Like : 044-42046569)");
		    return false;
		   } 
          
		 //first name validation  
	    if(firstname==null || firstname==""){  
		  alert("Name can't be blank");  
		  return false;  
		  }
		else if(firstname.length<3){  
		  alert("user name must be 3 character");  
		  return false;  
		  }  
		else if(firstname.length>20)
		  {
		    alert("user name must be less than 20 character");
		    return false;
		  }
		else if(!isNaN(firstname))
             {
		    alert("Please Enter Only Characters");
		    return false;
		   }
	      //second name validtion
            
           if(sirname==null || sirname==""){  
		  alert("Second Name can't be blank");  
		  return false;  
		  }
		else if(sirname.length<3){  
		  alert("Second name must be 3 character");  
		  return false;  
		  }  
		else if(sirname.length>20)
		  {
		    alert("Second user name must be less than 20 character");
		    return false;
		  }
		else if(!isNaN(sirname))
             {
		    alert("Please Enter Only Characters");
		    return false;
		   } 
          //mobile number vlidation
          
          if (mobileNum==null || mobileNum==""){  
		  alert("Mobile number can't be blank");  
		  return false;  
		  }
          else if(isNaN(mobileNum))
             {
		    alert("Enter the valid Mobile Number(Like : 991235478)");
		    return false;
		   } 
          else if(mobileNum.length<10){  
		  alert("mobile number must be 10 digits");  
		  return false;  
		  }  
          else if(mobileNum.length>10){  
		  alert("mobile number must be 10 digits");  
		  return false;  
		  }         
          
         //password
         
          if(password==null || password==""){  
		  alert("Password can't be blank");  
		  return false;  
		  }
            
           else if(password.length<5){  
		  alert("password length should be 5 characters");  
		  return false;  
		  }       
          
          else if(password.length>15){  
		  alert("password length must be less than 15 characters");  
		  return false;  
		  }  
           //user type
           if(typee==null || typee==""){  
		  alert("User type can't be blank");  
		  return false;  
		  } 
          
          }
       