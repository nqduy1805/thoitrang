	<?php session_start();  include('inc/header.php');?>	
		<!-- BREADCRUMBS -->
		<section class="breadcrumb parallax margbot30"></section>
		<!-- //BREADCRUMBS -->
		

		<!-- PAGE HEADER -->
		<section class="page_header">
<?php   $query="select * from tbl_blog ";
						$sql_blog=mysqli_query($con,$query);
			                $count_blog=mysqli_num_rows($sql_blog)?>
			<!-- CONTAINER -->
			<div class="container">
				<h3 class="pull-left"><b><?php echo $count_blog; ?> Bài viết</b></h3>
				
				<div class="pull-right">
					<a href="index.php" >Trở lại trang chủ<i class="fa fa-angle-right"></i></a>
				</div>
			</div><!-- //CONTAINER -->
		</section><!-- //PAGE HEADER -->
		
		
		<!-- BLOG BLOCK -->
		<section class="blog">
			
			<!-- CONTAINER -->
			<div class="container">
			
				<!-- ROW -->
				<div class="row">
					
					<!-- BLOG LIST -->
					<div class="col-lg-12 col-sm-12 padbot30">
									 <?php if(isset($_GET['search'])){
							 $search='where ten_blog like "%'.$_GET['search'].'%"';
						 }
						else $search='';
                    if(isset($_GET['trang'])) 
							$trang=$_GET['trang']*2;
	                         else  $trang=0;
	                  $query="select * from tbl_blog ".$search." order by id_blog asc limit ".$trang.",3";
						$sql_blog=mysqli_query($con,$query);
                   while($row_blog=mysqli_fetch_array($sql_blog)){?>
						
						<article class="post margbot40 clearfix" data-appear-top-offset='-100' data-animated='fadeInUp'>
							<a class="post_image pull-left" href="blog-post.php?id_blog=<?php echo $row_blog['id_blog'] ;?>" >
								<div class="recent_post_date"><?php echo $row_blog['ngay_blog'] ;?><span><?php echo $row_blog['thang_blog'] ;?></span></div>
								<img src="images/blog/<?php echo $row_blog['hinhanh_blog'] ;?>" alt="" />
							</a>
							<a class="post_title" href="blog-post.php?id_blog=<?php echo $row_blog['id_blog'] ;?>" ><?php echo $row_blog['ten_blog'] ;?></a>
							<div class="post_content"><?php echo $row_blog['noidung_blog'] ;?></div>
							<ul class="post_meta">
								<li><i class="fa fa-user"></i><a href="javascript:void(0);" ><?php echo $row_blog['nguoitao_blog'] ;?></a></li>
								<li><i class="fa fa-comments"></i>Commetcs <span class="sep">|</span> <?php echo $row_blog['comments_blog'] ;?></li>
								<li><i class="fa fa-eye"></i>views <span class="sep">|</span> <?php echo $row_blog['view_blog'] ;?></li>
							</ul>
						</article>
					<?php } ?>

						
						<hr>
						
		    <!-- PAGINATION -->
              <ul class="pagination">
				   <li><a href="javascript:void(0);" >...</a></li>
				  <?php 
				  if(isset($_GET['trang'])&&$_GET['trang']>3) 
                     $trang=$_GET['trang'];
				  else $trang=3;	
				  for($i=$trang-3;$i>=0&&$i<= $trang+3&&$i<$count_blog/2;$i++){
				  ?>
                <li><a href="?trang=<?php echo $i;?> " href="javascript:void(0);" ><?php echo $i;?></a></li> <?php } ?>
                <li><a href="javascript:void(0);" >...</a></li>
              </ul>
              <!-- //PAGINATION --> 
              
					</div><!-- //BLOG LIST -->
					
					
					<!-- SIDEBAR -->
					<div id="sidebar" class="col-lg-3 col-md-3 col-sm-3 padbot50">
						
						
					</div><!-- //SIDEBAR -->
				</div><!-- //ROW -->
			</div><!-- //CONTAINER -->
		</section><!-- //BLOG BLOCK -->
		
	<?php include('inc/footer.php')?>
