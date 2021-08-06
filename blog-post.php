	<?php session_start();  include('inc/header.php')?>	
		<!-- BREADCRUMBS -->
		<section class="breadcrumb parallax margbot30"></section>
		<!-- //BREADCRUMBS -->
		
		
		<!-- PAGE HEADER -->
		<section class="page_header">
			
			<!-- CONTAINER -->
			<div class="container">
				<h3 class="pull-left"><b>Blog Post</b></h3>
				
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
					<div class="col-lg-12  col-sm-12">
						<?php if(isset($_GET['id_blog']))
							 $search='where id_blog like "%'.$_GET['id_blog'].'%"';
						else $search='';
	                     $query="select * from tbl_blog ".$search."" ;
						 $sql_blog=mysqli_query($con,$query);
                         while($row_blog=mysqli_fetch_assoc($sql_blog)){
						?>
						<article class="post blog_post clearfix margbot20" data-appear-top-offset='-100' data-animated='fadeInUp'>
							<div class="post_title" href="blog-post.html" ><?php echo $row_blog['ten_blog'] ;?></div>
							<ul class="post_meta">
								<li><i class="fa fa-user"></i><a href="javascript:void(0);" ><?php echo $row_blog['nguoitao_blog'] ;?></a></li>
								<li><i class="fa fa-comments"></i>Commetcs <span class="sep">|</span> <?php echo $row_blog['comments_blog'] ;?></li>
								<li><i class="fa fa-eye"></i>views <span class="sep">|</span></i><?php echo $row_blog['view_blog'] ;?></li>
							</ul>
							<div class="post_large_image">
								<div class="recent_post_date"></i><?php echo $row_blog['ngay_blog'] ;?><span></i><?php echo $row_blog['thang_blog'] ;?></span></div>
								<img src="images/blog/<?php echo $row_blog['hinhanh_blog'] ;?>" alt="" />
							</div>
							
							<div class="blog_post_content">
								  <?php  $chitiet=explode('|',$row_blog['noidung_blog']); ?>
								<h3> <?php echo $chitiet[0] ?></h3>
								<h2><?php echo $chitiet[1] ?></h2>								
								<p><?php echo $chitiet[2] ?></p>
								<p><?php echo $chitiet[3] ?></p>
								<blockquote>
								<i><?php echo $chitiet[4] ?></i>
								</blockquote>
								<?php }?>
							</div>
							
						</article>
						
						<div class="shared_tags_block clearfix" data-appear-top-offset='-100' data-animated='fadeInUp'>
							<div class="pull-right tovar_shared clearfix">
								<p>chia sẻ</p>
								<ul>
									<li><a class="facebook" href="javascript:void(0);" ><i class="fa fa-facebook"></i></a></li>
									<li><a class="twitter" href="javascript:void(0);" ><i class="fa fa-twitter"></i></a></li>
									<li><a class="linkedin" href="javascript:void(0);" ><i class="fa fa-linkedin"></i></a></li>
									<li><a class="google-plus" href="javascript:void(0);" ><i class="fa fa-google-plus"></i></a></li>
									<li><a class="tumblr" href="javascript:void(0);" ><i class="fa fa-tumblr"></i></a></li>
								</ul>
							</div>
						</div>
						
						
					</div><!-- //SIDEBAR -->
				</div><!-- //ROW -->
			</div><!-- //CONTAINER -->
		</section><!-- //BLOG BLOCK -->
<?php include('inc/footer.php')?>
