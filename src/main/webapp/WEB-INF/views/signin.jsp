<html>
  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    
    
    <style>
      
      body {
        background-image: url("./signin.jpg");
        width: 100%;
        height: 100%;
      }

      .container {
        width: 50%;
        margin: auto;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #signindiv {
        margin-top: 270px;
        height: 640px;
        margin-top: 70px;
        background-color: white;
        border: 1px solid black;
        text-align: center;
        font-family: "Roboto Condensed", sans-serif;
        color: gray;
        font-size: 25px;
        padding: 25px;
        box-sizing: border-box;
      }
      h1 {
        font-weight: normal;
        color: black;
        font-size: 23px;
      }
      #img {
        width: 150px;
        height: 80px;
        margin-top: 1px;
        border: 0;
        margin: auto;
      }
      #email,
      #pass {
        width: 95%;
        height: 45px;
        padding: 20px;
        box-sizing: border-box;
        font-size: 25px;
        margin-top: 3%;
      }
      span {
        text-decoration: underline;
      }
      button {
        width: 70%;
        height: 40px;
        background-color: rgb(0, 103, 172);
        color: white;
        font-size: 18px;
        padding: 10px;
        border: 0;
        border-radius: 4px;
        box-sizing: border-box;
        border: 1px solid teal;
      }
      i {
        font-size: 45px;
        color: black;
      }
      span {
        color: black;
      }
      #a {
        color: rgb(168, 161, 161);
        margin-left: 15px;
        font-size: 20px;
      }
      @media screen and (min-width: 400px) and (max-width: 800px) {
        div {
          height: 600px;
        }
      }
      #img {
        width: 300px;
        height: 200px;
        margin-top: 1px;
        border: 0;
      }
      img {
        width: 100%;
        height: 100%;
      }
      #checkbox {
          width: 250px;
          height: 25px;
          margin-right: -100px;
          margin-left: -100px;
      }
      #signin {
        background-color: #066bb6;
        color: #ffffff;
        width: 150px;
        height: 50px;
        border-radius: 10px;
        font-size: 25px;

      }
    </style>
    
    <title>Employee Management System</title>
  </head>
  <body class="bg-info">
    <div class="container">
      <div id="signindiv">
        <div id="img">
          <a href="index.jsp"
            ><img
              src="https://lh3.googleusercontent.com/kwx2xddM9Fh6lT3-s1-bpwY0uE_EGu5wkH0JFx-2J7mTSvIWXt3v6TYxuFVoiZ-2RFq8bJX2WhzPrGP8-nlab5HUI0WQnknzDrufrZkHN1JOaQth0tCjaGjJUuQrlazUXAtDAMktCQ=w355-h131-p-k"
          /></a>
        </div>

        <input type="email" placeholder="Email Address" id="email" /><br /><br />
        <input type="password" placeholder="Password" id="pass" /><br /><br />
        <input type="checkbox" id="checkbox" />Keep me sign in <a href="forget" id="a">Forgotten Password?</a><br /><br />
         <span>Privacy Policy</span> and <span> Terms of Use.</span><br /><br />
        <input type="button" id="signin"  placeholder="signin" value="Sign in"/>
      </div>
    </div>
  </body>
</html>
<script>
  var alldata = JSON.parse(localStorage.getItem("EmployeeInfo"));
  document.getElementById("signin").addEventListener("click", function () {
    var email = document.getElementById("email").value;
    var pass = document.getElementById("pass").value;
    
   // window.location.href = "Home";
    
    
    var data = 'employeeData='
                    + encodeURIComponent(email+";"+pass); 

    $.ajax({
        url:"http://localhost:8081/paramsix/home",
        type:"POST",         
        data: data,            
        success:function(data){
        	if(data == "true")
        	 window.location.href = "home";
        	else
        		alert("Invalid credentials");
        }
     });
    /*
    var count = 0;
    alldata.map(function (item) {
      if (item.Email == email && item.Pass == pass) {
        count++;
      }
    });
    if (count > 0) {
      alert("SIGN IN SUCCESSFUL");
      window.location.href = "Home";
    } else if (count == 0) {
      alert("Email Password Wrong");
    }
    */
    
  });
</script>
