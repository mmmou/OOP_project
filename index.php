<?php
    require_once('functions/function.php');
    get_part('header.php');
?>
<section class="slider-main">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <?php
                $sel = 'SELECT * FROM s_banner ORDER BY ban_id DESC LIMIT 0,3';
                $qry = mysqli_query($con, $sel);
                while ($data = mysqli_fetch_array($qry)) {
            ?>
            <div class="item <?php if($data['ban_active']==1){echo 'active';} ?>">
                <img data-animation="animated pulse" src="admin/uploads/<?= $data['ban_image']; ?>" alt="...">
                <div class="carousel-caption text-center">
                    <h3 data-animation="animated bounceInLeft"><?= $data['ban_title']; ?></h3>
                    <p data-animation="animated bounceInRight"><?= $data['ban_subtitle']; ?></p>
                    <a data-animation="animated flipInX" href="<?= $data['ban_url']; ?>"><?= $data['ban_text']; ?></a>
                </div>
            </div>
                <?php } ?>
        </div>

        <!-- Controls -->
        <a class="left left-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <img src="img/left-slider.png" class="img-responsive" alt="">
        </a>
        <a class="right right-control" href="#carousel-example-generic" role="button" data-slide="next">
            <img src="img/right-slider.png" class="img-responsive" alt="">
        </a>
    </div>
</section>


     
        
  
       
  
       
  
<!--homepage end-->        
 

<?php
    get_part('photo.php');
    get_part('footer.php');
?>