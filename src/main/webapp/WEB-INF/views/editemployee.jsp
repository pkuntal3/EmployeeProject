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
<body style="background-image: url('https://c4.wallpaperflare.com/wallpaper/866/795/795/light-grey-curves-wallpaper-preview.jpg'); background-repeat: no-repeat; background-size: cover;">
 
 
<nav class="navbar navbar-expand-sm bg-info navbar-dark">         
   
   <div class="container-fluid">
     <img src="https://lh3.googleusercontent.com/kwx2xddM9Fh6lT3-s1-bpwY0uE_EGu5wkH0JFx-2J7mTSvIWXt3v6TYxuFVoiZ-2RFq8bJX2WhzPrGP8-nlab5HUI0WQnknzDrufrZkHN1JOaQth0tCjaGjJUuQrlazUXAtDAMktCQ=w355-h131-p-k"
   width="150" 
     height="60" />
    <a class="navbar-brand" href="/paramsix/home">Home</a> 
  </div>
   
    <span class="nav navbar-nav navbar-left text-center">
     <a class="navbar-brand" href="/paramsix">SignOut</a>      
     </span>  
    
  </nav>
  
   <div style="margin-left: 33%; margin-top: 8%">
   
    <h1>Edit Employee</h1> 
   </br>
   <form:form method="post" action="/paramsix/editsave">
   <form:hidden  path="id" />    
   <div class="form-group row">
    <label for="Name" class="col-sm-2 col-form-label"><b>Name</b></label>
    <div class="col-sm-10">
      <form:input path="name"  />
    </div>
  </div>
  <div class="form-group row">
    <label for="Salary" class="col-sm-2 col-form-label"><b>Salary</b></label>
    <div class="col-sm-10">
   	 <form:input path="salary" />      
    </div>
  </div>
  
   <div class="form-group row">
    <label for="Designation" class="col-sm-2 col-form-label"><b>Designation</b></label>
    <div class="col-sm-10">
   	 <form:input path="designation" />     
    </div>
  </div>
  
  <div class="form-group row col-sm-6">
   <input type="submit" value="Save" class="btn btn-primary btn-sm"/>
   <div class="col-sm-10">
   	  <input type="button" value="Reset" class="btn btn-primary btn-sm"/>    
    </div>
   
     </div>
     </form:form>
     </div>
  
  <!-- 
  <div style="margin-left: 33%">
        <h1>Edit Employee</h1>  
        </br>
       <form:form method="POST" action="/MvcCrudExample/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
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
          <td><input type="submit" value="Save" class="btn btn-primary btn-sm"/></td>    
         </tr>    
        </table>    
       </form:form>  
       </div>
       
       -->
       
   <footer id="footer" class="flex-shrink-0 py-4 bg-info navbar-dark text-white-50;">
    <div class="container text-center">
      <small>Copyright &copy; Param 6 Group</small>
    </div>
  </footer>
</body>
</html>

