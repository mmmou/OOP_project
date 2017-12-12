<?php
	require_once('functions/function.php');
	get_part('header.php');

?>
<!--about us page-->        
    <section class="about-banner">
        <div class="about-opacity">
           <div class="container">
               <h2>scholastica school</h2>
               <p>Providing excellent education since 1977</p>
           </div> 
        </div>
    </section>
<?php
	get_part('bread.php');
	get_part('sidebar.php');
?> 
                <div class="col-sm-9">
                    <article>
            <?php
                $sel = 'SELECT * FROM cit_news NATURAL JOIN cit_news_category WHERE ncate_id="2"';
                $qry = mysqli_query($con, $sel);
                $data = mysqli_fetch_array($qry);
            ?> 
                      <h1><?= $data['news_title'];?></h1>
                      <p> <img src="admin/uploads/<?= $data['news_image'];?>" class="img-responsive" alt="about image">
                        <?= $data['news_details'];?>
                      </p>    
                    </article>
                </div>
                
            </div>
      </section> 
<?php
	get_part('photo.php');
	get_part('footer.php');
?>  