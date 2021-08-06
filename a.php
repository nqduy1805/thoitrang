<?php session_start();  include_once("db/connect.php"); include_once("inc/cookie.php"); 
if(isset($_GET['q'])){
							 $search=$_GET['q'];
						 }
						else $search="";
$sql_select=mysqli_query($con,'select * from tbl_sanpham where ten_sanpham  like "%'.$search.'%"');
$count=0;
if($sql_select) $count=mysqli_num_rows($sql_select);
echo $count==0 ? "no suggestion" : 
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
					<?php }?>;
?>	
