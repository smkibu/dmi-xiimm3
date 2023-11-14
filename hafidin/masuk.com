<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>My First Bootstrap Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>

</body>
</html>

<html>
<head>
    <title>Form Login Sederhana</title>
    <script>
        function Login() {
            var user = document.getElementById("username").value;
            var pass = document.getElementById("password").value;

            if (user === "admin" && pass === "123") {
                alert("Selamat Anda berhasil login!");
                // Ganti URL berikut dengan tautan yang diinginkan
                window.location.href = "https://smkibu.github.io/dmi-xiimm3/index.html";
            } else {
                alert("Username dan password Anda salah!");
            }
        }
    </script>
</head>
<body>
    <form>
        <table width="225" cellpadding="4">
            <tr>
                <td>Username</td>
                <td><input type="text" id="username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" id="password"></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <input type="button" value="Login" onClick="Login()">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
