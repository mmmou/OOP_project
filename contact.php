<?php session_start();
require_once('functions/function.php');
needLogged();
get_part('header.php');
?> 

              

<div class="col-sm-9">
    <article>
        <h1>Select Your Courses</h1>
        
    </article>

    <div class="contact-us">
        <?php
        if (!empty($_POST)) {
            $subject1 = $_POST['role1'];
            $subject2 = $_POST['role2'];
            $mess = $_POST['message'];   
            $insert = "INSERT INTO teacher_course(teacher,one_id,two_id,conus_mess)"
                    . "VALUES('{$_SESSION['user']}','$subject1','$subject2','$mess')";
            if (mysqli_query($con, $insert)) {
                echo "Thanks! For Taking subjects with Succesffully.";
            } else {
                echo "Message Send Failed!!!";
            }
        }
        
            
            
        
        ?>
        <form action="" method="post">
            <div class="col-sm-6 pl0">
                <div class="form-group">
                    <input type="text" name="name" placeholder="Name" value="<?=$_SESSION['user'];?>" disabled="disabled">                       
                </div><!--form group-->

                <div class="form-group">
                <label for="inputEmail3" class="col-sm-6 pl0 control-label">Semester 1</label>
                <div class="col-sm-5">
                  <select name="role1" class="form-control">
                  <option value="">Select Subject</option>
                  <?php
                        $select="select * from subjects order by one_id desc";
                        $query=mysqli_query($con,$select);
                        while($data=mysqli_fetch_array($query)){
                  ?>
                  <option value="<?=$data['one_id'];?>"><?=$data['subject_name'];?></option> 
                  <?php }; ?>
                  </select>
                </div>
                </div><br><br><br>

              <div class="form-group">
                <label for="inputEmail3" class="col-sm-6 pl0 control-label">Semester 2</label>
                <div class="col-sm-5">
                  <select name="role2" class="form-control">
                  <option value="">Select Subject</option>                 
                  <?php
                        $select="select * from semester_two order by two_id desc";
                        $query=mysqli_query($con,$select);
                        while($data=mysqli_fetch_array($query)){
                  ?>
                  <option value="<?=$data['two_id'];?>"><?=$data['subject_name_two'];?></option> 
                  <?php }; ?>                 
                  </select>
                </div>
              </div>

                

            </div>
            <div class="col-sm-6 pr0">
                <textarea name="message" id=""  rows="7" placeholder="Type Message"></textarea>
                <input type="submit" value="SUBMIT">  
            </div>
        </form>
    </div>

</div>            
</div>
</section></br></br></br></br></br></br></br></br></br></br>
<?php
get_part('footer.php');
?>