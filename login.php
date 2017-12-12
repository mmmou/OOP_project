<?php session_start();
require_once('functions/function.php');
get_part('header.php');
//{$_SESSION['user']}
?> 

    <div class="container login">
  <h2>Login Form</h2>
  <?php
        if(!empty($_POST)){
        $name=$_POST['username'];
        $pass=md5($_POST['password']);
        $sel="SELECT * FROM r_user NATURAL JOIN user_role WHERE username='$name' AND password='$pass'";
        $qry=mysqli_query($con, $sel);
        $res=mysqli_fetch_array($qry);
        if($res){
                $_SESSION['name']=$res['name'];
                $_SESSION['user']=$res['username'];
                $_SESSION['role']=$res['role_id'];
                $_SESSION['photo']=$res['photo'];
                header('location: contact.php');
        }else{
                echo "Username and Password incorrect!!!";	
                }
        }
  ?>
  <form class="form-horizontal" action="" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">User Name:</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" id="email" placeholder="Enter Username" name="username">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
    
<?php
    get_part('footer.php');
?>   