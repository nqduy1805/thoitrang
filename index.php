<?php session_start(); include('inc/header.php');?>
 <?php include('inc/slider.php');?>	
		<!-- TOVAR SECTION -->
		<section class="tovar_section">
			<?php if(isset($_GET['search'])){
							 $search=$_GET['search'];
						 }
						else $search="";
					  $query='select * from tbl_sanpham  where ten_sanpham like "%'.$search.'%" order by id_sanpham desc limit 24 ';
						$sql_sanpham=mysqli_query($con,$query); 
			$count=mysqli_num_rows($sql_sanpham); ?>
			<!-- CONTAINER -->
			<div class="container">
				<h2>Mới nhất |      <?php if(isset($_GET['search'])) echo  "Có " .$count." kết quả tìm kiếm với từ khóa:  ".$_GET['search'];  ?>     </h2>
				
				<!-- ROW -->
				<div class="row">
					
					<!-- TOVAR WRAPPER -->
					<div class="tovar_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>
						<?php
						while($row_sanpham=mysqli_fetch_array($sql_sanpham)){?>
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
							<div class="tovar_item">
								<div  onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'"  class="tovar_img">
									<div class="tovar_img_wrapper">
								<img  class="img" src="images/<?php echo $row_sanpham['hinhanh_sanpham'] ;?>" alt="" />
										<img class="img_h" src="images/<?php echo $row_sanpham['hinhanhphu1_sanpham'] ;?>" alt="" />
									</div>
									<div  class="tovar_item_btns">
										<div class="open-project-link"><a onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'" class="open-project tovar_view" href="javascript:void(0);" data-url="!projects/women/2.php">Xem nhanh</a> 										<a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                       </div>
									</div>
								</div>
								<div class="tovar_description clearfix">
									<a class="tovar_title" href="product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>"><?php echo $row_sanpham['ten_sanpham'] ;?></a>
									<span class="tovar_price"><?php echo $row_sanpham['gia_sanpham'] ;?> VNĐ</span>
								</div>
							</div>
						</div>
					<?php }?>
				<!-- ROW -->
				<div class="row">
					
					<!-- BANNER WRAPPER -->
					<div class="banner_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>
						<!-- BANNER -->
						<div class="col-lg-9 col-md-9">
							<a class="banner type4 margbot40" href="javascript:void(0);" ><img src="images/banner/thietkehaithanh-banner1.jpg"alt="" /></a>
						</div><!-- //BANNER -->
						
						<!-- BANNER -->
						<div class="col-lg-3 col-md-3">
							<a class="banner nobord margbot40" href="javascript:void(0);" ><img src="images/banner/thietkehaithanh-banner.jpg"alt="" /></a>
						</div><!-- //BANNER -->
					</div><!-- //BANNER WRAPPER -->
				</div><!-- //ROW -->
									</div><!-- //CONTAINER -->

								</section><!-- //TOVAR SECTION -->
<?php include('inc/goiychoban.php')?>
 <?php include('inc/sanphambanchay.php')?>	
<?php include('inc/blog.php')?>	
<?php include('inc/footer.php')?>
				

	