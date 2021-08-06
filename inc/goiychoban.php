		<!-- NEW ARRIVALS -->
		<section class="new_arrivals padbot50">
			
			<!-- CONTAINER -->
			<div class="container">
				<h2>GỢI Ý CHO BẠN</h2>
						
				<!-- JCAROUSEL -->
				<div class="jcarousel-wrapper">
					
					<!-- NAVIGATION -->
					<div class="jCarousel_pagination">
						<a href="javascript:void(0);" class="jcarousel-control-prev" ><i class="fa fa-angle-left"></i></a>
						<a href="javascript:void(0);" class="jcarousel-control-next" ><i class="fa fa-angle-right"></i></a>
					</div><!-- //NAVIGATION -->
					
					<div class="jcarousel" data-appear-top-offset='-100' data-animated='fadeInUp'>
						<ul>
								<?php if(isset($_SESSION['id_nguoidung']))
							 $id_nguoidung=" where id_nguoidung=".$_SESSION['id_nguoidung'];
						else $id_nguoidung="";
							$sql_id_danhmuc=mysqli_query($con,'SELECT sp.id_danhmuc from tbl_sanpham as sp INNER JOIN tbl_chitietmuahang as ct on sp.id_sanpham=ct.id_sanpham inner join tbl_muahang as mh on mh.id_muahang=ct.id_muahang '.$id_nguoidung.' order by ct.id_chitietmua desc LIMIT 1');
                       if($sql_id_danhmuc)
                            $row_id_danhmuc=mysqli_fetch_array($sql_id_danhmuc);
									 if($row_id_danhmuc['id_danhmuc'])
							 $id_danhmuc=" where id_danhmuc=".$row_id_danhmuc['id_danhmuc'];
						else $id_danhmuc="";				
							echo $id_danhmuc;
							 $sql_sanpham=mysqli_query($con,'select * from tbl_sanpham '.$id_danhmuc.' LIMIT 20');?>
						<?php while($row_sanpham=mysqli_fetch_array($sql_sanpham)){?>
							<li>
								<!-- TOVAR -->
								<div class="tovar_item_new">
									<div class="tovar_img" onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'">
										<img src="images/<?php echo $row_sanpham['hinhanh_sanpham'] ;?>" alt="" />
										<div class="open-project-link"><a onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'" class="open-project tovar_view" href="javascript:void(0);" data-url="!projects/women/1.html" >Xem nhanh</a></div>
									</div>
									<div class="tovar_description clearfix">
										<a class="tovar_title" onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'" href="javascript:void(0);" ><?php echo $row_sanpham['ten_sanpham'] ;?></a>
										<span class="tovar_price"><?php echo $row_sanpham['gia_sanpham'] ;?>vnđ</span>
									</div>
								</div><!-- //TOVAR -->
							</li>
							<?php } ?>
						</ul>
					</div>
				</div><!-- //JCAROUSEL -->
			</div><!-- //CONTAINER -->
		</section><!-- //NEW ARRIVALS -->