<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<title>Employee Management System</title>

<style>
        #footer {
            position: fixed;
            padding: 10px 10px 0px 10px;
            bottom: 0;
            width: 100%;
            /* Height of the footer*/ 
            height: 40px;
            background: grey;
        }
    </style>
  
</head>
<body
 style="background-image: url('https://c4.wallpaperflare.com/wallpaper/866/795/795/light-grey-curves-wallpaper-preview.jpg'); 
 background-repeat: no-repeat; background-size: cover;" >
 
 
<nav class="navbar navbar-expand-sm bg-info navbar-dark">         
   
   <div class="container-fluid">
     <img src="https://lh3.googleusercontent.com/kwx2xddM9Fh6lT3-s1-bpwY0uE_EGu5wkH0JFx-2J7mTSvIWXt3v6TYxuFVoiZ-2RFq8bJX2WhzPrGP8-nlab5HUI0WQnknzDrufrZkHN1JOaQth0tCjaGjJUuQrlazUXAtDAMktCQ=w355-h131-p-k"
   width="150" 
     height="60" />
    <a class="navbar-brand" href="home">Home</a> 
  </div>
   
    <span class="nav navbar-nav navbar-left text-center">
     <a class="navbar-brand" href="/paramsix">SignOut</a>      
     </span>  
    
  </nav>
  
  <div style="margin-left: 33%; margin-top: 4%">
   
   <h1>Add New Employee</h1>  
   </br>
   <form:form method="post" action="save">    
   <div class="form-group row">
    <label for="Name" class="col-sm-2 col-form-label"><b>Name</b></label>
    <div class="col-sm-10">
     <form:input path="name" style="text-transform:uppercase" required="required" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode==32)"
					placeholder="Al least 3 characters"/> </div>
					<form:errors cssClass="myErr" path="name" />
  </div>
  <div class="form-group row">
    <label for="Salary" class="col-sm-2 col-form-label"><b>Salary</b></label>
    <div class="col-sm-10">
   	 <form:input path="salary" type="number" min="10000" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))" />      
    </div>
  </div> 
   <div class="form-group row">
    <label for="Designation" class="col-sm-2 col-form-label"><b>Designation</b></label>
    <div class="col-sm-10">
   	<form:input path="designation" required="required" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode==32)"
					placeholder="Al least 3 characters" /> </div>
					<form:errors cssClass="myErr" path="designation" />    
	</div>
 <div class="form-group row">
    <label for="Contact No" class="col-sm-2 col-form-label"><b>Contact No</b></label>
    <div class="col-sm-10">
   	 <input id="mobile" required="required" name="mobile" type="tel" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit" value="" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"     
    					placeholder="Enter 10 digits"/></div>
  </div>
  
   <div class="form-group row">
    <label for="Email ID" class="col-sm-2 col-form-label"><b>Email ID</b></label>
    <div class="col-sm-10">
   	 <input id="email id" required="required" name="email id" type="email" value=""
   	 					placeholder="abc@gmail.com"/>     
    </div>
  </div>
  
   <div class="form-group row">
    <label for="Designation" class="col-sm-2 col-form-label"><b>Date Of Joining</b></label>
    <div class="col-sm-10">
   	 <input id="date of joining"required="required"  name="date of joining " type="date" >     
    </div>
  </div>
  
   <div class="form-group row">
    <label for="Designation" class="col-sm-2 col-form-label"><b>Country</b></label>
    <div class="col-sm-10">
   	 <select name="" id="country">
          <option value="India">India</option>
          <option value="Austrailia">Austrailia</option>
          <option value="England">England</option>
          <option value="Afganistan">Afganistan</option>
          <option value="Singapore">Singapore</option>
          <option value="China">China</option>
          <option value="Russia">Russia</option>
          <option value="Canada">Canada</option>
          <option value="Cuba">Cuba</option>
          <option value="Ecuado">Ecuador</option>
          <option value="Chile">Chile</option>
          <option value="Italy">Italy</option>
          <option value="Kenya">Kenya</option>
          <option value="Laos">Laos</option>
          <option value="Japan">Japan</option>
          <option value="Iraq">Iraq</option>
          <option value="Indonesia">Indonesia</option>
          <option value="Kuwait">Kuwait</option>
          <option value="Ireland">Ireland</option>
          <option value="USA">USA</option>
          <option value="Latvia">Latvia</option>
          <option value="Turkey">Turkey</option>
          <option value="Sudan">Sudan</option>
          <option value="Suriname">Suriname</option>
          <option value="Sweden">Sweden</option>
          <option value="Switzerland">Switzerland</option>
          <option value="Syria">Syria</option>
          <option value="Togo">Togo</option>
          <option value="Tonga">Tonga</option>
          <option value="Ukrain">Ukrain</option>
          <option value="Tuavalu">Tuavalu</option></select>    
    </div>
  </div>
  
  <div class="form-group row col-sm-6" style="margin-left: 12%; margin-top: 4%">
   <input type="submit" value="Save" class="btn btn-primary btn-sm"/></div>
   <div class="col-sm-10"  style="margin-left: 20%; margin-top: -4%"">
   	  <input type="button" value="Reset" class="btn btn-primary btn-sm"/>    
    
   
     </div>
      
  <!-- 
  </form:form> 
  
  
        <h1>Add New Employee</h1>  
        </br>
       <form:form method="post" action="save">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>Salary :</td>    
          <td><form:input path="salary" /></td>  
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><form:input path="designation" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td>
          </br>
          <input type="submit" value="Save" class="btn btn-primary btn-sm"/>
          <input type="button" value="Reset" class="btn btn-primary btn-sm"/>
          </td>    
             
         </tr>    
        </table>    
       </form:form>   
       
        --> 
         
    </div>
    
   <footer id="footer" class="flex-shrink-0 py-4 bg-info navbar-dark text-white-50;">
    <div class="container text-center">
      <small>Copyright &copy; Param 6 Group</small>
    </div>
  </footer>
</body>
</html>