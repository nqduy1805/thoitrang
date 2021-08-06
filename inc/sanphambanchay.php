		<!-- NEW ARRIVALS -->
		<section class="new_arrivals padbot50">
			
			<!-- CONTAINER -->
			<div class="container">
				<h2>Sản phẩm bán chạy</h2>
						
				<!-- JCAROUSEL -->
				<div class="jcarousel-wrapper">
					
					<!-- NAVIGATION -->
					<div class="jCarousel_pagination">
						<a href="javascript:void(0);" class="jcarousel-control-prev" ><i class="fa fa-angle-left"></i></a>
						<a href="javascript:void(0);" class="jcarousel-control-next" ><i class="fa fa-angle-right"></i></a>
					</div><!-- //NAVIGATION -->
					
					<div class="jcarousel" data-appear-top-offset='-100' data-animated='fadeInUp'>
						<ul>
								<?php 
							$qr="select ct.id_sanpham,sp.ten_sanpham,sp.gia_sanpham,sp.hinhanh_sanpham,sum(soluongmua_sanpham) as soluong from tbl_chitietmuahang as ct inner join tbl_sanpham as sp on ct.id_sanpham=sp.id_sanpham GROUP by ct.id_sanpham order by soluongmua_sanpham desc";
							 $sql_sanpham=mysqli_query($con,$qr);?>
						<?php while($row_sanpham=mysqli_fetch_array($sql_sanpham)){?>
							<li>
								<!-- TOVAR -->
								<div class="tovar_item_new">
									<div class="tovar_img" onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'" >
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