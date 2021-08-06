<?php include_once("db/connect.php");
      include_once("cookie.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Glammy Store </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="images/favicon.ico">
<!-- CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/flexslider.css" rel="stylesheet" type="text/css" />
<link href="css/fancySelect.css" rel="stylesheet" media="screen, projection" />
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- FONTS -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
</head>
<body>


<!--ICON PRELOADER -->
<div id="preloader"><img src="images/preloader.gif" alt="" /></div>
<!-- //ICON PRELOADER -->
<div class="preloader_hide"> 
  
  <!-- PAGE -->
  <div id="page"> 
    
    <!-- HEADER -->
    <header> 
      
      <!-- TOP INFO -->
      <div class="top_info"> 
        
        <!-- CONTAINER -->
        <div class="container clearfix">
          <ul class="secondary_menu">
            <li><a href="my-account.php" ><?php if(isset($_SESSION['hoten_nguoidung'])) echo "Xin chào ".$_SESSION['hoten_nguoidung']; else echo 'Đăng nhập';?></a></li>
            <li><a href="my-account.php" ><?php  if(isset($_SESSION['hoten_nguoidung'])) echo "Đăng xuất"; else echo 'Đăng ký';?></a></li>
          </ul>
          <div class="live_chat"><a href="javascript:void(0);" ><i class="fa fa-comment-o"></i> Live chat</a></div>
          <div class="phone_top">Liên hệ với chúng tôi <a href="tel:0924330534" >0924330534</a></div>
        </div>
        <!-- //CONTAINER --> 
      </div>
      <!-- TOP INFO --> 
      
      <!-- MENU BLOCK -->
      <div class="menu_block"> 
        
        <!-- CONTAINER -->
        <div class="container clearfix"> 
          
          <!-- LOGO -->
          <div class="logo"> <a href="index.php" ><img src="images/logo.png" alt="" /></a> </div>
          <!-- //LOGO --> 
          
          <!-- SEARCH FORM -->
          <div class="top_search_form"> <a class="top_search_btn" href="javascript:void(0);" ><i class="fa fa-search"></i></a>
            <form method="get" action="">
              <input type="text" name="search" value="Search" onFocus="if (this.value == 'Search') this.value = '';" onBlur="if (this.value == '') this.value = 'Search';" />
            </form>
          </div>
		
          <!-- SEARCH FORM --> 
          
          <!-- SHOPPING BAG -->
			 <?php $so=0;
			if(isset($_SESSION['id_nguoidung'])){
							 $id_nguoidung=" and id_nguoidung=".$_SESSION['id_nguoidung'];
				  $query="select * from tbl_muahang INNER JOIN tbl_chitietmuahang on  tbl_chitietmuahang.id_muahang= tbl_muahang.id_muahang  INNER JOIN  tbl_sanpham on tbl_chitietmuahang.id_sanpham=tbl_sanpham.id_sanpham    where trangthai_muahang='nhap' ".$id_nguoidung." order by id_chitietmua desc ";
            $sql_giohang=mysqli_query($con,$query);
			$count=mysqli_num_rows($sql_giohang);}
			else $count=count_giohang('o');
			?>
<div class="shopping_bag" > <a class="shopping_bag_btn" href="javascript:void(0);" ><i class="fa fa-shopping-cart" href="shopping-bag.php"></i><span><?php echo $count;?></span></a>
            <div class="cart">
              <ul class="cart-items">
		  <?php if(isset($_SESSION['id_nguoidung'])) while($row_giohang=mysqli_fetch_assoc($sql_giohang)){ if($so>3) break ;
				 ?>
                <li class="clearfix"><a  href="javascript:void(0);" onclick="location='product-PK.php?id_sanpham=<?php echo $row_giohang['id_sanpham']."&id_mua=".$row_giohang['id_chitietmua'];?>'" > <img class="cart_item_product" src="images/<?php echo $row_giohang['hinhanh_sanpham'] ;?> " alt="" /></a> <a  href="product-PK.php?id_sanpham=<?php echo $row_giohang['id_sanpham']."&id_mua=".$row_giohang['id_chitietmua'] ;?>" class="cart_item_title"><?php echo $row_giohang['ten_sanpham'] ;?></a> <span class="cart_item_price"><?php echo $row_giohang['soluongmua_sanpham'];?> x <?php echo $row_giohang['gia_sanpham'] ;?> vnđ</span> </li>
				<?php $so++; } else if(isset($_COOKIE['o'])) { $data=unserialize($_COOKIE['o']);
                    foreach($data as $value) { if($so>3) break ;
				   $dtsp=$value;
				 ?>
                <li class="clearfix"><a  href="javascript:void(0);" onclick="location='product-PK.php?id_sanpham=<?php echo $dtsp['id_sanpham']."&id_mua=-1";?>'" > <img class="cart_item_product" src="images/<?php echo trim($dtsp['hinhanh_sanpham'],"'") ;?> " alt="" /></a> <a  href="product-PK.php?id_sanpham=<?php echo $dtsp['id_sanpham']."&id_mua=-1";?>" class="cart_item_title"><?php echo trim($dtsp['ten_sanpham'],"'") ;?></a> <span class="cart_item_price"><?php echo $dtsp['soluongmua_sanpham'];?> x <?php echo $dtsp['dongia_sanpham']  ;?> vnđ</span> </li>
				<?php $so++;}} ?>
              </ul>
              <div class="cart_total">
                <div class="clearfix"><span class="cart_subtotal"><b> 
					<?php if(isset($_SESSION['id_nguoidung'])){
							 $id_nguoidung=" and id_nguoidung=".$_SESSION['id_nguoidung'];
				  $query="select sum(tbl_sanpham.gia_sanpham*tbl_chitietmuahang.soluongmua_sanpham) from tbl_muahang INNER JOIN tbl_chitietmuahang on  tbl_chitietmuahang.id_muahang= tbl_muahang.id_muahang  INNER JOIN  tbl_sanpham on tbl_chitietmuahang.id_sanpham=tbl_sanpham.id_sanpham  where trangthai_muahang='nhap'   ".$id_nguoidung;
            $sql_giohang=mysqli_query($con,$query);
						$tong = mysqli_fetch_array($sql_giohang)[0];
					}
					else { $tong=0;
					if(isset($_COOKIE['o']))
					{
					$data=unserialize($_COOKIE['o']);
                    foreach($data as $value){ $tong=$tong+$value['dongia_sanpham']*$value['soluongmua_sanpham']; }}}  echo $tong."vnđ";?></b></span></div>
				  <?php if(isset($_COOKIE['o']))
                  echo "<a class='btn active' href='shopping-bag.php'>Chi tiết giỏ hàng</a> </div>";
				  else
				  echo "<a class='btn active' href='my-account.php'>Chi tiết giỏ hàng</a> </div>";;?>
            </div>
          </div>
          <!-- //SHOPPING BAG --> 
          
          <!-- MENU -->
          <ul class="navmenu center">
            <li class="sub-menu"><a href="index.php" >Trang chủ</a> </li>
            <li class="sub-menu"><a href="SP_All.php?danhmuc=&size=&trang=0" >Sản phẩm</a> 
              <!-- MEGA MENU -->
                 <ul class="mega_menu megamenu_col1 clearfix">
				<li class="col">  <ol> 
                 <li><a href="SP_All.php?danhmuc=Áo&size=&trang=0" >Áo</a></li> 
			     <li><a href="SP_All.php?danhmuc=Đầm&size=&trang=0" >Đầm</a></li> 
                 <li><a href="SP_All.php?danhmuc=Quần&size=&trang=0" >Quần</a></li> 
				</ol>   </li>
                </ul>
              <!-- //MEGA MENU --> 
            </li>
            <li class="sub-menu"><a href="SP_All.php?danhmuc=i&size=&trang=0" >PHỤ KIỆN</a> 
              <!-- MEGA MENU -->
              <ul class="mega_menu megamenu_col1 clearfix">
                <li class="col">
                  <ol>
				   <li><a href="SP_All.php?danhmuc=Giày&size=&trang=0" >Giày</a></li>
				   <li><a href="SP_All.php?danhmuc=Túi+xách&size=&trang=0" >Túi xách</a></li>
                  </ol>
                </li>
              </ul>
              <!-- //MEGA MENU --> 
            </li>
            <li class="sub-menu"><a href="javascript:void(0);" >BỘ SƯU TẬP</a> 
              <!-- MEGA MENU -->
              <ul class="mega_menu megamenu_col1 clearfix">
                <li class="col">
                  <ol>
                     <li><a href="SP_All.php?danhmuc=Giày&size=&trang=0" >Công sở</a></li>
				   <li><a href="SP_All.php?danhmuc=Túi+xách&size=&trang=0" >Dự tiệc</a></li>
                  </ol>
                </li>
              </ul>
              <!-- //MEGA MENU --> 
            </li>
            <li class="sub-menu"><a href="blog.php?trang=0" href="javascript:void(0);" >Blog</a> 
              <!-- MEGA MENU -->
              <ul class="mega_menu megamenu_col1 clearfix">
                <li class="col">
                  <ol>
                        <li><a href="blog.php?trang=0" >Blog</a></li>
				   <li><a href="blog-post.php?id_blog=0" >Blog post</a></li>
                  </ol>
                </li>
              </ul>
              <!-- //MEGA MENU --> 
            </li>
            <li class="last sale_menu"><a href="sale.php?trang=0" >Sale</a></li>
          </ul>
          <!-- //MENU --> 
        </div>
        <!-- //MENU BLOCK --> 
      </div>
      <!-- //CONTAINER --> 
    </header>
    <!-- //HEADER --> 
		<!-- HOME -->