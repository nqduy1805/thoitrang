<?php $id_sanpham=$_GET['id_sanpham'];?>	
	<?php session_start();  include_once("db/connect.php"); include_once("inc/cookie.php");  $data;?>	
    <!-- code -->
<?php if(isset($_POST['noidung_danhgia'])){
	if(isset($_SESSION['id_nguoidung'])){
						$query_gdg="
	INSERT INTO tbl_danhgia (id_danhgia, id_sanpham, id_nguoidung, noidung_danhgia, ngay_danhgia) VALUES (NULL, '".$_GET['id_sanpham']."', '".$_SESSION['id_nguoidung']."', '".$_POST['noidung_danhgia']." ', '".date('Y-m-d H:i:s')."')";
						$d=mysqli_query($con,$query_gdg); 
						if($d)echo "<h3>gửi thành công</h3>";  else echo "<h3>gửi thất bại</h3>";}    
else {
	$query_gdg="
	INSERT INTO tbl_danhgia (id_danhgia, id_sanpham, id_nguoidung, noidung_danhgia, ngay_danhgia) VALUES (NULL, '".$_GET['id_sanpham']."', '13', '".$_POST['noidung_danhgia']." ', '".date('Y-m-d H:i:s')."')";
						$a=mysqli_query($con,$query_gdg); 
						if($a)echo "<h3>gửi thành công</h3>";  else echo "<h3>gửi thất bại</h3>";} }  ?>
	<?php $query="select * from tbl_danhmuc,tbl_sanpham  where tbl_danhmuc.id_danhmuc = tbl_sanpham.id_danhmuc and id_sanpham = $id_sanpham order by ten_danhmuc asc";
                               	$sql_sanpham=mysqli_query($con,$query);
                      $row_sanpham=mysqli_fetch_array($sql_sanpham)?>
<?php if(isset($_SESSION['id_nguoidung'])){
	               $id_nguoidung=" and nd.id_nguoidung = '".$_SESSION['id_nguoidung']."'";
					$queryid="select mh.id_muahang from tbl_muahang as mh inner join tbl_nguoidung as nd on mh.id_nguoidung=nd.id_nguoidung where trangthai_muahang='nhap' ".$id_nguoidung;
						$sql_id_ct=mysqli_query($con,$queryid);
					$row_id_ct=mysqli_fetch_array($sql_id_ct);
					if(isset($_POST['mau'])){				
						if(isset($_GET['id_mua'])&&$_GET['id_mua']>0)
						$query_is="UPDATE tbl_chitietmuahang SET soluongmua_sanpham=".$_POST['sl_sp'].",mau_sanpham='".$_POST['mau']."',sizemua_sanpham='".$_POST['size']."' WHERE id_chitietmua=".$_GET['id_mua'];
						else {
						$qr_sp1="select * from tbl_chitietmuahang where id_sanpham=".$row_sanpham['id_sanpham']." and id_muahang=".$row_id_ct['id_muahang']." and mau_sanpham='".$_POST['mau']."' and sizemua_sanpham='".$_POST['size']."'";
						$sql_sp1=mysqli_query($con,$qr_sp1);
							if(mysqli_num_rows($sql_sp1)>0){
					    $row_sp1=mysqli_fetch_array($sql_sp1);
					    $sl=$_POST['sl_sp']+$row_sp1['soluongmua_sanpham'];
						$query_is="UPDATE tbl_chitietmuahang SET soluongmua_sanpham=".$sl." WHERE id_chitietmua=".$row_sp1['id_chitietmua'];
							}
						else
						$query_is="INSERT INTO tbl_chitietmuahang VALUES ('',".$row_id_ct['id_muahang'].",".$row_sanpham['id_sanpham'].",'".$_POST['sl_sp']."',".$row_sanpham['gia_sanpham'].",'".$_POST['mau']."','".$_POST['size']."')";
						}
						$a=mysqli_query($con,$query_is); 
						 };
                        } else
					  {
						   if(isset($_POST['mau'])){
							   if(isset($_COOKIE['o'])){
							  $dt=unserialize($_COOKIE['o']);
							  if(array_key_exists($id_sanpham,$dt)&&$dt[$id_sanpham]['sizemua_sanpham']=$_POST['size']&&$dt[$id_sanpham]['mau_sanpham']=$_POST['mau']){
addData('o',$row_sanpham['id_sanpham'],$_POST['sl_sp']+$dt[$id_sanpham]['soluongmua_sanpham'],$row_sanpham['gia_sanpham'],"'".$_POST['mau']."'","'".$_POST['size']."'","'".$row_sanpham['hinhanh_sanpham']."'","'".$row_sanpham['ten_sanpham']."'");
																		header('Location:shopping-bag.php');}else{
addData('o',$row_sanpham['id_sanpham'],$_POST['sl_sp'],$row_sanpham['gia_sanpham'],"'".$_POST['mau']."'","'".$_POST['size']."'","'".$row_sanpham['hinhanh_sanpham']."'","'".$row_sanpham['ten_sanpham']."'");
																		header('Location:shopping-bag.php');
							   }
							
							   }else{
addData('o',$row_sanpham['id_sanpham'],$_POST['sl_sp'],$row_sanpham['gia_sanpham'],"'".$_POST['mau']."'","'".$_POST['size']."'","'".$row_sanpham['hinhanh_sanpham']."'","'".$row_sanpham['ten_sanpham']."'");
																		header('Location:shopping-bag.php');
							   }
						   }
					  }
					?>
<?php include('inc/header.php') ?>
    <!-- BREADCRUMBS -->
    <section class="breadcrumb parallax margbot30"></section>
    <!-- //BREADCRUMBS --> 
    
    <!-- TOVAR DETAILS -->
    <section class="tovar_details padbot70"> 
      
      <!-- CONTAINER -->
      <div class="container"> 
        
        <!-- ROW -->
          <div class="row"> 
          
          <!-- SIDEBAR TOVAR DETAILS -->
          <div class="col-lg-3 col-md-3 sidebar_tovar_details">
		 <?php $query="select tbl_danhmuc.id_danhmuc,ten_danhmuc from tbl_sanpham,tbl_danhmuc  where tbl_danhmuc.id_danhmuc = tbl_sanpham.id_danhmuc and id_sanpham=$id_sanpham";
            $sql_id_danhmuc=mysqli_query($con,$query);
            while($row_danhmuc=mysqli_fetch_array($sql_id_danhmuc)){
	        $id_danhmuc = $row_danhmuc['id_danhmuc'];
			 $ten_danhmuc = $row_danhmuc['ten_danhmuc'];}?>
            <h3><b><?php echo $ten_danhmuc; ?></b></h3>
            <ul class="tovar_items_small clearfix">
		 <?php  $query="select * from tbl_sanpham where id_danhmuc=$id_danhmuc order by id_sanpham desc limit 4";
                               	$sql_sanphamkhac=mysqli_query($con,$query);
				                 while($row_sanphamkhac=mysqli_fetch_array($sql_sanphamkhac)){?>
              <li class="clearfix"><a  href="javascript:void(0);" onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanphamkhac['id_sanpham'] ;?>'" > <img  class="tovar_item_small_img"   src="images/<?php echo $row_sanphamkhac['hinhanh_sanpham']; ?>" alt="" /></a> <a  href="?id_sanpham=<?php echo $row_sanphamkhac['id_sanpham'] ;?>" class="tovar_item_small_title"><?php echo $row_sanphamkhac['ten_sanpham']; ?></a> <span class="tovar_item_small_price"><?php echo $row_sanphamkhac['gia_sanpham']; ?>vnđ</span> </li>
          			  <?php }?>
            </ul>
          </div>
          <!-- //SIDEBAR TOVAR DETAILS --> 
          
          <!-- TOVAR DETAILS WRAPPER -->
          <div class="col-lg-9 col-md-9 tovar_details_wrapper clearfix">
            <div class="tovar_details_header clearfix margbot35">
              <h3 class="pull-left"><b><?php echo  $row_sanpham['ten_danhmuc'] ; ?></b></h3>
              <div class="tovar_details_pagination pull-right"> <span><h3>Số lượng sẩn phẩm : <?php echo $row_sanpham['soluong_sanpham'] ?> cái </h3></span> </div>
            </div>
            
            <!-- CLEARFIX -->
            <div class="clearfix padbot40">
              <div class="tovar_view_fotos clearfix">
                <div id="slider2" class="flexslider">
                  <ul class="slides">
                    <li><a  href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanh_sanpham'];?>" alt="" /></a></li>
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanhphu1_sanpham'];?>" alt="" /></a></li>
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanhphu2_sanpham'];?>" alt="" /></a></li>
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanhphu3_sanpham'];?>" alt="" /></a></li>
                  </ul>
                </div>
                <div id="carousel2" class="flexslider">
                  <ul class="slides">
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanh_sanpham'] ;?>" alt="" /></a></li>
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanhphu1_sanpham'];?>" alt="" /></a></li>
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanhphu2_sanpham'];?>" alt="" /></a></li>
                    <li><a href="javascript:void(0);" ><img src="images/<?php echo $row_sanpham['hinhanhphu3_sanpham'];?>" alt="" /></a></li>
                  </ul>
                </div>
              </div>
              <div class="tovar_view_description">
                <div class="tovar_view_title"><?php echo $row_sanpham['ten_sanpham'];?></div>
                <div class="tovar_article">id sản phẩm : <?php echo $row_sanpham['id_sanpham'];?></div>
                <div class="clearfix tovar_brend_price">
                  <div class="pull-left tovar_brend">Việt Nam</div>
                  <div class="pull-right tovar_view_price"><?php echo $row_sanpham['gia_sanpham'];?>vnđ</div>
                </div>
			  <form action="?id_sanpham=<?php echo $_GET['id_sanpham'];?>&id_mua=<?php if(isset($_GET['id_mua'])) echo $_GET['id_mua'];?>" method="post">
                <div class="tovar_color_select"> <div class="clearfix">
                    <p class="pull-left">Chọn màu</p></div>
                  <div id="variant-swatch-0" class="borderImgRadius color_each swatch clearfix" data-option="option1" data-option-index="0">
                    <div class="select-swap" >
                      <div data-value="Xanh" class=" n-sd swatch-element color  xanh  col-lg-3">
                        <input class="variant-0" id="swatch-0-xanh" type="radio" name="mau" value="Xanh" data-vhandle="xanh" data-trigger="xanh"/>
                        <label ng-click="selectColor($event, 'Xanh')" data-handle="xanh" class="Color class-remove xanh" for="swatch-0-xanh" > <img src="images/xanh.webp" alt="Xanh" /> </label>
                      </div>
                      <div data-value="Đen" class=" n-sd swatch-element color  den  col-lg-3">
                        <input class="variant-0" id="swatch-0-den" type="radio" name="mau" value="Đen" data-vhandle="den" data-trigger="den"/>
                        <label ng-click="selectColor($event, 'Đen')" data-handle="den" class="Color class-remove den" for="swatch-0-den" > <img src="images/den.webp" alt="Đen" /> </label>
                      </div>
                      <div data-value="Kem" class=" n-sd swatch-element color  kem  col-lg-3">
                        <input class="variant-0" id="swatch-0-kem" type="radio" name="mau" value="Kem" data-vhandle="kem" data-trigger="kem"/>
                        <label ng-click="selectColor($event, 'Kem')" data-handle="kem" class="Color class-remove kem" for="swatch-0-kem" > <img src="images/kem.webp" alt="Kem" /> </label>
                      </div>
                      <div data-value="N&#226;u" class=" n-sd swatch-element color  nau  col-lg-3">
                        <input class="variant-0" id="swatch-0-nau" type="radio" name="mau" value="N&#226;u" data-vhandle="nau" data-trigger="nau"/>
                        <label ng-click="selectColor($event, 'N&#226;u')" data-handle="nau" class="Color class-remove nau" for="swatch-0-nau" > <img src="images/nau.webp" alt="Nâu" /> </label>
                      </div>
                    </div>
                  </div>

                  <!--
                  <p>Select color</p>
                  <a class="color1" href="javascript:void(0);" ></a> 
				  <a class="color2 active" href="javascript:void(0);"></a> 
				  <a class="color3" href="javascript:void(0);" ></a>
				  <a class="color4" href="javascript:void(0);" ></a>
--> 
                </div>
                <div class="tovar_size_select">
                  <div class="clearfix">
                    <p class="pull-left">Chọn số lượng</p>
                    </div>
                  <div class="buttons_added" >
                    <input aria-label="quantity" class="input-qty" max="999999" min="1" name="sl_sp" type="number" value="1">
                  </div>
                  
                  <!--
									<a class="sizeXS" href="javascript:void(0);" >XS</a>
									<a class="sizeS active" href="javascript:void(0);" >S</a>
									<a class="sizeM" href="javascript:void(0);" >M</a>
									<a class="sizeL" href="javascript:void(0);" >L</a>
									<a class="sizeXL" href="javascript:void(0);" >XL</a>
									<a class="sizeXXL" href="javascript:void(0);" >XXL</a>
									<a class="sizeXXXL" href="javascript:void(0);" >XXXL</a>
--> 
                </div>
                <div class="tovar_view_btn">
                  <select class="basic" name='size'>
				 <?php  $chitiet=explode(',',$row_sanpham['size_sanpham']);
				     for($i=0;$i<count($chitiet);$i++)
						  echo "<option  value='".$chitiet[$i]."'  >".$chitiet[$i]."</option>";
					?>
                  </select>
				<?php	if(isset($_GET['id_mua'])&&$_GET['id_mua']>-2)
               echo "<input type='submit' name='' value='Cập nhật'>";
					else  echo "<input type='submit' name='' value='Mua'>";	?>
				  </div>
                </form>
				<h3> <?php if(isset($a))
	                       if($a)
                        echo "thêm vào giỏ hàng thành công"; else echo "Bạn hãy chọn màu";
					      else echo "Bạn hãy chọn màu";?>  </h3>

                <div class="tovar_shared clearfix col-lg-12">
                  <p>Chia sẻ với bạn bè</p>
					<ul>
                    <li><a class="facebook" href="javascript:void(0);" ><i class="fa fa-facebook"></i></a></li>
                    <li><a class="twitter" href="javascript:void(0);" ><i class="fa fa-twitter"></i></a></li>
                    <li><a class="linkedin" href="javascript:void(0);" ><i class="fa fa-linkedin"></i></a></li>
                    <li><a class="google-plus" href="javascript:void(0);" ><i class="fa fa-google-plus"></i></a></li>
					<li><a class="tumblr" href="javascript:void(0);" ><i class="fa fa-tumblr"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- //CLEARFIX --> 
            
            <!-- TOVAR INFORMATION -->
            <div class="tovar_information">
              <ul class="tabs clearfix">
                <li class="current">Chi tiết</li>
                <li>Thông tin</li>
				  <?php if(isset($_GET['id_sanpham']))
							 $id_sanpham="  dg.id_sanpham = '".$_GET['id_sanpham']."'";
	                          else
		                    $id_sanpham='';
					$querydg="select * from tbl_danhgia as dg inner join tbl_nguoidung as sp on dg.id_nguoidung=sp.id_nguoidung  where ".$id_sanpham;
						$sql_id_dg=mysqli_query($con,$querydg);
				  		$count_dg=mysqli_num_rows($sql_id_dg);?>
                <li>Đánh giá(<?php if(isset($count_dg)) echo   $count_dg; else echo 0; ?>)</li>
              </ul>
              <div class="box visible">
                <?php  $chitiet=explode('.',$row_sanpham['chitiet_sanpham']);
				     for($i=0;$i<count($chitiet);$i++)
						  echo "<p> $chitiet[$i] </p>";
					?>
              </div>
              <div class="box">
                <p><?php $chitiet=explode('.',$row_sanpham['thongtin_sanpham']);
				     for($i=0;$i<count($chitiet);$i++)
						  echo "<p> $chitiet[$i] </p>";?></p>
  
              </div>
              <div class="box">
                <ul class="comments">

			<?php	while($row_id_dg=mysqli_fetch_array($sql_id_dg)){ ?>
                  <li>
                    <div class="clearfix">
                      <p class="pull-left"><strong><a href="javascript:void(0);" ><?php echo $row_id_dg['hoten_nguoidung'];?>
                      </a></strong></p>
                      <span class="date"><?php echo $row_id_dg['ngay_danhgia'];?></span>
                      <div class="pull-right rating-box clearfix"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                    </div>
                    <p><?php echo $row_id_dg['noidung_danhgia'];?></p>
                  </li>
					<?php } ?>
				  </ul>
                <h3>Tạo 1 đánh giá</h3>
                <p>Hãy điền đánh giá của mình vào bên dưới</p>
			 <form action="?id_sanpham=<?php if(isset($_GET['id_sanpham'])) echo $_GET['id_sanpham']; ?>" method="post">
                <div class="clearfix">
                  <textarea id="review-textarea" name="noidung_danhgia"></textarea>
                  <label class="pull-left rating-box-label">Đánh giá của bạn:</label>
                  <div class="pull-left rating-box clearfix"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                  <input type="submit" class="dark-blue big" value="gửi bài đánh giá">
                </div>
			 </form>
              </div>
            </div>
            <!-- //TOVAR INFORMATION --> 
          </div>

          <!-- //TOVAR DETAILS WRAPPER --> 
        </div>
        <!-- //ROW --> 
      </div>
      <!-- //CONTAINER --> 
    </section>
    <!-- //TOVAR DETAILS --> 
    <!-- BANNER SECTION -->
    <!-- //BANNER SECTION --> 
  <?php include('inc/goiychoban.php')?>	
    <!-- NEW ARRIVALS -->
   <?php include('inc/sanphambanchay.php')?>	
    <!-- //NEW ARRIVALS --> 
  <?php include('inc/blog.php')?>	

   <?php include('inc/footer.php')?>	