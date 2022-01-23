<html>
  <style>
    body {
      background-color: #066bb6;
    }
    div {
      width: 27%;
      height: 600px;
      border: solid 1px black;
      text-align: center;
      font-family: "Roboto Condensed", sans-serif;
      color: gray;
      margin: auto;
      background-color: #ffffff;
      margin-top: 70px;
      font-size: 17px;
    }
    h1 {
      font-weight: normal;
      color: black;
      font-size: 23px;
    }
    #email,
    #pass,
    #pass2 {
      width: 70%;
      height: 35px;
      padding: 12px;
      box-sizing: border-box;
      font-size: 15px;
    }
    span {
      text-decoration: underline;
    }
    button {
      width: 70%;
      height: 35px;
      background-color: black;
      color: white;
      font-size: 18px;
      border: 0;
      border-radius: 4px;
      margin-top: 5px;
    }
    i {
      font-size: 45px;
      color: black;
    }
    @media screen and (max-width: 800px) {
      div {
        height: 500px;
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
    #reset {
      background-color: #066bb6;
        color: #ffffff;
        width: 150px;
        height: 40px;
        border-radius: 10px;
        font-size: 25px;
    }
  </style>

    <script
      src="https://kit.fontawesome.com/ea5026738a.js"
      crossorigin="anonymous"
    ></script>
  <body>
    <div>
      <div id="img">
        <a href="index.jsp"
          ><img
            src="https://imagingsolution.in/wp-content/uploads/2019/03/hcl-logo.jpg"
        /></a>
      </div>
      <h1>RESET PASSWORD</h1>
      <br ><br/>
      Enter your email to receive instructions on how to <br >reset your
      password.<br><br>
      <input type="email" id="email" placeholder="Email Address" /><br /><br />
      <section></section>
      <input type="button" id="reset" placeholder="reset" value="RESET" /><br /><br />
      Or return to<a href="signin" style="color: black">Log In</a>
    </div>
  </body>
</html>
<script>
  var alldata = JSON.parse(localStorage.getItem("UserInfo"));
  document.getElementById("reset").addEventListener("click", function () {
    var count = 0;
    alldata.map(function (item) {
      var email = document.getElementById("email").value;
      if (item.Email == email) {
        count++;
      }
    });
    if (count == 0) {
      alert("Email Incorrect");
    } else {
      var input = document.createElement("input");
      input.setAttribute("type", "Password");
      input.setAttribute("id", "pass");
      input.setAttribute("placeholder", "New Password");
      var input2 = document.createElement("input");
      input2.setAttribute("type", "Password");
      input2.setAttribute("id", "pass2");
      input2.setAttribute("placeholder", "Confirm Password");
      var button = document.createElement("button");
      button.setAttribute("id", "confirm");
      button.textContent = "Confirm Password";
      var sec = document.querySelector("section");
      sec.append(input, input2, button);

      document.getElementById("confirm").addEventListener("click", function () {
        var pass1 = document.getElementById("pass").value;
        var pass2 = document.getElementById("pass2").value;
        if (pass1.length < 8) {
          alert("Enter Strong Password");
        } else if (pass1 !== pass2) {
          alert("Password Do Not Match");
        } else {
          alert("Password Updated Please SignIn");
          var alldata = [];
          var email = document.getElementById("email").value;
          var data = {
            Email: email,
            Pass: pass1,
          };
          alldata.push(data);
          localStorage.setItem("UserInfo", JSON.stringify(alldata));
          window.location.href = "signin.html";
        }
      });
    }
  });
</script>
