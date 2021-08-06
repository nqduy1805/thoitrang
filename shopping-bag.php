	<?php session_start();  include_once("db/connect.php");?>			
<?php if(isset($_POST['thanhtoan'])){
	if(isset($_SESSION['id_nguoidung']))
	{
							$qr_tt="select id_muahang from tbl_muahang as mh inner join tbl_nguoidung as nd on nd.id_nguoidung=mh.id_nguoidung where trangthai_muahang='nhap' and  nd.id_nguoidung=".$_SESSION['id_nguoidung'];
							$sql_tt=mysqli_query($con,$qr_tt);
				            $row_tt=mysqli_fetch_array($sql_tt);
							$id_muahang=$row_tt['id_muahang'];
							$qr_cntt="UPDATE tbl_muahang set trangthai_muahang='hoàn tất' where id_muahang=".$id_muahang;
							$a=mysqli_query($con,$qr_cntt);
                            $qr_ismh="INSERT INTO tbl_muahang(id_muahang, id_nguoidung, thoigian_muahang, trangthai_muahang) VALUES ('','".$_SESSION['id_nguoidung']."','".date('Y-m-d')."','nhap')";
				            $b=mysqli_query($con,$qr_ismh);
                           }	
							
	else {
		header('Location: my-account.php');
	}
								  } ?>		
<?php  	
	if(isset($_GET['id_spxoa'])) {
		if(isset($_SESSION['id_nguoidung']))
           	{               $xoa=$_GET['id_spxoa'];
							$qr_x="DELETE FROM tbl_chitietmuahang WHERE id_chitietmua=".$xoa;
							$a=mysqli_query($con,$qr_x); 
			}
		else {
			if(isset($_COOKIE['o'])){
		$data=unserialize($_COOKIE['o']);
			unset($data[$_GET['id_spxoa']]);
			setcookie($cookiename,serialize($data),time()+3600);
		}
		}
}
	

?>
<?php  include('inc/header.php')?>	

		<!-- BREADCRUMBS -->
		<section class="breadcrumb parallax margbot30"></section>
		<!-- //BREADCRUMBS -->
				<!-- PAGE HEADER -->
		<section class="page_header">
			
			<!-- CONTAINER -->
			<div class="container">
			<?php if(isset($_SESSION['id_nguoidung']))
{							 $id_nguoidung=" and id_nguoidung=".$_SESSION['id_nguoidung'];
				  $query="select * from tbl_muahang INNER JOIN tbl_chitietmuahang on  tbl_chitietmuahang.id_muahang= tbl_muahang.id_muahang  INNER JOIN  tbl_sanpham on tbl_chitietmuahang.id_sanpham=tbl_sanpham.id_sanpham    where trangthai_muahang='nhap' ".$id_nguoidung." order by id_chitietmua desc ";
            $sql_giohang=mysqli_query($con,$query);
			$count=mysqli_num_rows($sql_giohang)?>
				<h3 class="pull-left"><b>Giỏ hàng | bạn có  <?php echo  $count; ?> sản phẩm</b></h3>
				<div class="pull-right">
					<a href="index.php" >Quay trang chủ<i class="fa fa-angle-right"></i></a>
				</div>
			</div><!-- //CONTAINER -->
		</section><!-- //PAGE HEADER -->		
		<!-- SHOPPING BAG BLOCK -->
		<section class="shopping_bag_block">
			
			<!-- CONTAINER -->
			<div class="container">
			
				<!-- ROW -->
				<div class="row">
					
					<!-- CART TABLE -->
					<div class="col-lg-9 col-md-9 padbot40">

						<table class="shop_table">
							<thead>
								<tr>
									<th class="product-thumbnail"></th>
									<th class="product-name">Sản Phẩm</th>
									<th class="product-price">Giá</th>
									<th class="product-quantity">Số lượng</th>
									<th class="product-subtotal">Tổng</th>
									<th class="product-remove"></th>
								</tr>
							</thead>
							<tbody>
                                <?php while($row_giohang=mysqli_fetch_assoc($sql_giohang)){ ;?>
								<tr class="cart_item">
									<td class="product-thumbnail"><a href="product-pk.php?id_sanpham=<?php echo $row_giohang['id_sanpham'] ;?>&id_mua=<?php echo $row_giohang['id_chitietmua'] ;?>" ><img src="images/<?php echo $row_giohang['hinhanh_sanpham'] ;?>" href="product-page.php?<?php echo $row_giohang['id_sanpham'] ;?>"width="100px" alt="" /></a></td>
									<td class="product-name">
										<a href="product-page.php?<?php echo $row_giohang['id_sanpham'] ;?>"><?php echo $row_giohang['ten_sanpham'] ;?></a>
										<ul class="variation">
											<li style="font-size:90%" class="variation-Color">Màu sắc: <span><?php echo $row_giohang['mau_sanpham'] ;?></span></li>
											<li style="font-size:90%" class="variation-Size">Size: <span><?php echo $row_giohang['sizemua_sanpham'] ;?></span></li>
										</ul>
									</td>

									<td class="product-price"><?php echo $row_giohang['gia_sanpham'] ;?>vnđ</td>

									<td class="product-quantity">
										<input aria-label="quantity" class="input-qty" max="999999" min="1" name="" type="number" value="<?php echo $row_giohang['soluongmua_sanpham'] ;?>">
					
									</td>
									
									<td class="product-subtotal"><?php echo $row_giohang['gia_sanpham']*$row_giohang['soluongmua_sanpham'] ;?>vnđ</td>

                	<td class="product-remove"><a style="font-size:120%" href="product-PK.php?id_sanpham=<?php echo $row_giohang['id_sanpham'] ;?>&id_mua=<?php echo $row_giohang['id_chitietmua'] ;?> " href="javascript:void(0);" ><span>Chỉnh Sửa </span></a><a style="font-size:120%" href="?id_spxoa=<?php echo $row_giohang['id_chitietmua'] ;?>" href="javascript:void(0);" ><span> | Xóa</span></a></td>	                
                              </tr>
									<?php }} else { $data=unserialize($_COOKIE['o']);?>
								<h3 class="pull-left"><b>Giỏ hàng | bạn có  <?php echo count(unserialize($_COOKIE['o'])); ?> sản phẩm</b></h3>
				<div class="pull-right">
					<a href="index.php" >Quay trang chủ<i class="fa fa-angle-right"></i></a>
				</div>
			</div><!-- //CONTAINER -->
		</section><!-- //PAGE HEADER -->		
		<!-- SHOPPING BAG BLOCK -->
		<section class="shopping_bag_block">
			
			<!-- CONTAINER -->
			<div class="container">
			
				<!-- ROW -->
				<div class="row">
					
					<!-- CART TABLE -->
					<div class="col-lg-9 col-md-9 padbot40">

						<table class="shop_table">
							<thead>
								<tr>
									<th class="product-thumbnail"></th>
									<th class="product-name">Sản Phẩm</th>
									<th class="product-price">Giá</th>
									<th class="product-quantity">Số lượng</th>
									<th class="product-subtotal">Tổng</th>
									<th class="product-remove"></th>
								</tr>
							</thead>
							<tbody><?php foreach($data as $value) {
				                       $dtsp=$value;      ?>
								<tr class="cart_item">
									<td class="product-thumbnail"><a href="product-pk.php?id_sanpham=<?php echo $dtsp['id_sanpham'] ;?>&id_mua=-1" ><img src="images/<?php echo trim($dtsp['hinhanh_sanpham'],"'") ;?>" href="product-pk.php?<?php echo $dtsp['id_sanpham'] ;?>"width="100px" alt="" /></a></td>
									<td class="product-name">
										<a href="product-pk.php?id_sanpham=<?php echo $dtsp['id_sanpham'] ;?>&id_mua=-1"><?php echo trim($dtsp['ten_sanpham'],"'") ;?></a>
										<ul class="variation">
											<li style="font-size:120%" class="variation-Color">Màu sắc: <span><?php echo trim($dtsp['mau_sanpham'],"'") ;?></span></li>
											<li style="font-size:120%" class="variation-Size">Size: <span><?php echo trim($dtsp['sizemua_sanpham'],"'") ;?></span></li>
										</ul>
									</td>

									<td class="product-price"><?php echo $dtsp['dongia_sanpham'] ;?>vnđ</td>

									<td class="product-quantity">
										<input aria-label="quantity" class="input-qty" max="999999" min="1" name="" type="number" value="<?php echo $dtsp['soluongmua_sanpham'] ;?>">
					
									</td>
									
									<td class="product-subtotal"><?php echo $dtsp['dongia_sanpham']*$dtsp['soluongmua_sanpham'] ;?>vnđ</td>

                	<td class="product-remove"><a style="font-size:120%" href="product-PK.php?id_sanpham=<?php echo $dtsp['id_sanpham'] ;?>&id_mua=-1" href="javascript:void(0);" ><span>Chỉnh Sửa </span></a><a style="font-size:120%" href="?id_spxoa=<?php echo $dtsp['id_sanpham'] ;?>" href="javascript:void(0);" ><span> | Xóa</span></a></td>	                
                              </tr>
								<?php }} ?>

								
                           				</tbody>
								
						</table>
					</div><!-- //CART TABLE -->
					
					
					<!-- SIDEBAR -->
					<div id="sidebar" class="col-lg-3 col-md-3 padbot50">
						
						<!-- BAG TOTALS -->
						<?php if(isset($_SESSION['id_nguoidung'])){
							 $id_nguoidung="  and id_nguoidung=".$_SESSION['id_nguoidung'];
				  $query="select sum(tbl_sanpham.gia_sanpham*tbl_chitietmuahang.soluongmua_sanpham) from tbl_muahang INNER JOIN tbl_chitietmuahang on  tbl_chitietmuahang.id_muahang= tbl_muahang.id_muahang  INNER JOIN  tbl_sanpham on tbl_chitietmuahang.id_sanpham=tbl_sanpham.id_sanpham  where trangthai_muahang='nhap'  ".$id_nguoidung;
            $sql_giohang=mysqli_query($con,$query);
						$tong = mysqli_fetch_array($sql_giohang)[0] ;}
						else {$tong=0;
							$data=unserialize($_COOKIE['o']);
							  foreach($data as $value){
								  $tong=$tong+$value['dongia_sanpham']*$value['soluongmua_sanpham'];
							  }
							 }?>
						<div class="sidepanel widget_bag_totals">
							<h3>TỔNG GIỎ HÀNG</h3>
							<table class="bag_total">
								<tr class="cart-subtotal clearfix">
									<th>TỔNG</th>
									<td><?php echo $tong;?> vnđ</td>
								</tr>
								<tr class="shipping clearfix">
									<th>PHÍ SHIP</th>
									<td>Free</td>
								</tr>
								<tr class="total clearfix">
									<th>TỔNG CỘNG</th>
									<td><?php echo $tong;?>vnđ</td>
								</tr>
							</table>
							<form class="coupon_form" action="javascript:void(0);" method="get">
								<input style="width:200px" type="text" name="coupon" value="" onFocus="if (this.value == 'Nhập vào mã giảm giá') this.value = '';" onBlur="if (this.value == '') this.value = 'Nhập vào mã giảm giá?';" />
								<input type="submit" value="Nhận mã">
							</form>
							<form action="" method="post" >
							<a class="btn active" href="my-account.php" >THOÁT</a>
								<input class="btn active" name="thanhtoan" type="submit" value="thanh toán">
								</form>
							<a style="font-size:125%;color: red" ><?php 	if(isset($_SESSION['id_nguoidung']))
echo "";else echo "Bạn phải đăng nhập để thanh toán"; ?></a>
							<Br></br>
							<Br></br>
				

						</div><!-- //REGISTRATION FORM -->
					</div><!-- //SIDEBAR -->
				</div><!-- //ROW -->
			</div><!-- //CONTAINER -->
		</section><!-- //SHOPPING BAG BLOCK -->
			<?php include('inc/footer.php')?>
