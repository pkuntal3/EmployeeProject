<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <a class="navbar-brand" href="home">Home</a> 
  </div>
   
    <span class="nav navbar-nav navbar-left text-center">
     <a class="navbar-brand" href="/paramsix">SignOut</a>      
     </span>  
    
  </nav>
  
  
 </br>
 
 <div class="container-fluid" style="border:1px solid black; width: 18%; height:62%; margin-left: 39%; margin-top: 7%;" >
 
	<div >
    <div class="row">                                           
      <!-- Need to add theme, buttons -->                       
      <div class="col-xs-12" style="margin-left: 22%; margin-top: 25%; margin-bottom: 45%"> 
      <a href="addemployee" class="btn btn-primary btn-lg">Add Employee</a> 
       </div>          
    </div>  
    </br>
	</br>                                                    
    <div class="row">                                           
      <!-- Need to add theme, buttons -->                       
      <div class="col-xs-12"style="margin-left: 20%; margin-top: -38%; margin-bottom: 10%"> 
      <a href="viewemployee" class="btn btn-primary btn-lg">View Employees</a> 
       </div>               
    </div>
    
	</div>
	
    </div> 
 
 <!-- 
 <div style="margin-left: 40%; margin-top: 10%;">
 <div class="container-fluid d-lg-inline-block">
<a href="empform" class="btn btn-primary btn-lg">Add Employee</a>  
</br>
</br>
<a href="viewemp" class="btn btn-primary btn-lg">View Employees</a> 
</div>
</div> 
 -->

 <footer id="footer" class="flex-shrink-0 py-4 bg-info navbar-dark text-white-50;">
    <div class="container text-center">
      <small>Copyright &copy; Param 6 Group</small>
    </div>
  </footer>
</body>

</html>