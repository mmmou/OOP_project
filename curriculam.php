<?php
	require_once('functions/function.php');
	get_part('header.php');

?>  
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
                $sel = 'SELECT * FROM cit_news NATURAL JOIN cit_news_category WHERE ncate_id="5"';
                $qry = mysqli_query($con, $sel);
                $data = mysqli_fetch_array($qry);
            ?>                          
                      <h1><?= $data['news_title'];?></h1>
                      <p><?= $data['news_details'];?> </p>
                       
                        <h1>Junior School</h1>
                      <p>
                       In the Junior school, from Playgroup to Kindergarten II, we encourage children to observe their surroundings, think independently, ask questions and freely express themselves without fear or inhibition, thereby honing their observation, listening, verbal and comprehension skills. We create an environment that is conducive to oral participation and expression so that each individual is able to interpret and respond to all forms of external stimuli.. </p>
                        <p>Students gradually develop a love of learning just by handling everyday objects and utilizing their own five senses. They start to identify letters and develop a love of reading. They also grow in confidence and are eventually able to independently hold their pencils and develop their writing skills.</p>

                       
                        <h1>Middle School</h1>
                        <p>From Class I onwards, our curriculum exposes students to more subjects in a formal classroom setting. The curriculum focuses on developing numeracy, literacy and an understanding of the environment and our surroundings. Learning in these classes is designed to develop positive attitudes. Students learn not only from their texts but also from their surroundings. We encourage the little observers to open their eyes, to look around and acquire knowledge from their friends, their teachers and elders, and their environment. Students build key skills and explore concepts in language (both English and Bangla), maths, science, Islamiat/moral science, art, physical education, music and drama. When they enter Class III, they also start to study social studies—history, geography and Bangladesh studies. </p>
                       
                        <h1>High School</h1>
                        <h6>
                       Scholastica's O' Level program encourages students to engage, invent, manage and compete - equipping them for eventual success in the public examinations under Cambridge International Examinations. Years of experience teaching the O' Levels has allowed us to understand the needs of the international examinations board - our mock results very closely mirror the actual results of our students. </h6> 
                    </article>
                </div>
                
            </div>
      </section>
<?php
	get_part('photo.php');
	get_part('footer.php');
?>   