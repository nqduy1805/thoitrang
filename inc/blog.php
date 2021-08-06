		<hr class="container">
		
<!-- RECENT POSTS -->
		<section class="recent_posts padbot40">
			
			<!-- CONTAINER -->
			<div class="container">
				<h2>BLOG MỚI NHẤT</h2>
				
				<!-- ROW -->
				<div class="row" data-appear-top-offset='-100' data-animated='fadeInUp'>
						 <?php if(isset($_GET['search'])){
							 $search='where ten_blog like "%'.$_GET['search'].'%"';
						 }
						else $search='';
	                  $query="select * from tbl_blog ".$search." order by id_blog desc limit 2";
						$sql_blog=mysqli_query($con,$query);
                   while($row_blog=mysqli_fetch_array($sql_blog)){?>
					<div class="col-lg-6 col-xs-6 padbot30">
						<div class="recent_post_item clearfix">
							<div class="recent_post_date"><?php echo $row_blog['ngay_blog'] ;?><span><?php echo $row_blog['thang_blog'] ;?></span></div>
							<a class="recent_post_img" href="blog-post.php?id_blog=<?php echo $row_blog['id_blog'] ;?>" ><img src="images/blog/<?php echo $row_blog['hinhanh_blog'] ;?>" alt="" /></a>
						</div>
					</div>
												<?php } ?>

					
					</div>
				</div><!-- //ROW -->
			</div><!-- //CONTAINER -->
		</section><!-- //RECENT POSTS -->
