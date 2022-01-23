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
        
       
		.table-responsive {
    max-height:370px;
	}
		
    </style>

</head>
<body style="background-image: url('https://c4.wallpaperflare.com/wallpaper/866/795/795/light-grey-curves-wallpaper-preview.jpg'); background-repeat: no-repeat; background-size: cover;">
 
 
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
  
<h1>EMPLOYEE DETAILS</h1> 
<div class="table-responsive" id="collapse1">
<table class="table table-striped thead-dark" border="2" width="70%" cellpadding="2" >
<tr><th>ID</th><th>NAME</th><th>DESIGNATION</th><th>BASIC PAY</th><th>HRA</th><th>DA</th><th>GROSS</th><th>TAX</th><th>NET SALARY</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>HCL${emp.id}</td>  
   <td>${emp.name}</td>
   <td>${emp.designation}</td> 
   <td>${String.format("%.2f",emp.salary)}</td> 
   <td>${String.format("%.2f",emp.hra)}</td> 
   <td>${String.format("%.2f",emp.da)}</td>
   <td>${String.format("%.2f",emp.grosssalary)}</td>
   <td>${String.format("%.2f", emp.tax)}</td>
   <td>${String.format("%.2f",emp.net)}</td>
   <td><a href="editemployee/${emp.id}">Edit</a></td>  
   <td><a href="deleteemployee/${emp.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>
   </div>   
   <br/>  
   <a href="addemployee" class="btn btn-primary" style="margin-left: 1%">ADD NEW EMPLOYEE</a> 
   
    <footer id="footer" class="flex-shrink-0 py-4 bg-info navbar-dark text-white-50;">
    <div class="container text-center">
      <small>Copyright &copy; Param 6 Group</small>
    </div>
  </footer>
</body>
</html>