<?php include_once("db/connect.php") ?>
<?php session_start(); unset($_SESSION['id_nguoidung']);unset($_SESSION['hoten_nguoidung']);
	if(isset($_GET['username'])){if(isset($_GET['password'])){
	$username="email_nguoidung='".$_GET['username']."'";
	$password=" and password_nguoidung='".$_GET['password']."'";
	$query="select * from tbl_nguoidung where ".$username.$password."";
            $sql_taikhoan=mysqli_query($con,$query);
		    $row_taikhoan=mysqli_fetch_array($sql_taikhoan);
            if($row_taikhoan){
		        $_SESSION['id_nguoidung'] = $row_taikhoan['id_nguoidung'];
			    $_SESSION['hoten_nguoidung'] = $row_taikhoan['hoten_nguoidung'];
				$qr_th="select * from tbl_muahang as mh inner join tbl_nguoidung as nd on mh.id_nguoidung=nd.id_nguoidung where mh.trangthai_muahang='nhap' and nd.id_nguoidung=".$row_taikhoan['id_nguoidung'];
				$sql_th=mysqli_query($con,$qr_th);
				if(mysqli_num_rows($sql_th)===0){
					$qr_ismh="INSERT INTO tbl_muahang(id_muahang, id_nguoidung, thoigian_muahang, trangthai_muahang) VALUES ('','".$row_taikhoan['id_nguoidung']."','".date('Y-m-d')."','nhap')";
				$a=mysqli_query($con,$qr_ismh);
				}
		  if(isset($_COOKIE['o'])){
	       $qr_tt="select id_muahang from tbl_muahang as mh inner join tbl_nguoidung as nd on nd.id_nguoidung=mh.id_nguoidung where trangthai_muahang='nhap' and  nd.id_nguoidung=".$row_taikhoan['id_nguoidung'];
							$sql_tt=mysqli_query($con,$qr_tt);
				            $row_tt=mysqli_fetch_array($sql_tt);
							$id_muahang=$row_tt['id_muahang'];
			  		    $qr_dl="delete from tbl_chitietmuahang where id_muahang=".$id_muahang;
			           	mysqli_query($con,$qr_dl);
                        $data=unserialize($_COOKIE['o']);
							  foreach($data as $value){
			$query_is="INSERT INTO tbl_chitietmuahang VALUES ('',".$id_muahang.",".$value['id_sanpham'].",".$value['soluongmua_sanpham'].",".$value['dongia_sanpham'].",".$value['mau_sanpham'].",".$value['sizemua_sanpham'].")";
			mysqli_query($con,$query_is); 
	}
		}
				header('Location:index.php');
			}}}?>
<?php include('inc/header.php')?>	
    <!-- HOME -->
    <!-- MY ACCOUNT PAGE -->
    <section class="my_account parallax">
      <!-- CONTAINER -->
      <div class="container">
        <div class="my_account_block clearfix">
          <div class="login">
            <h2>????NG NH???P</h2>
			 <h3>M???i b???n nh???p t??i kho???n v?? m???t kh???u</h3>
            <form class="login_form" method="get">
              <input type="text" name="username" value="Username or email" onFocus="if (this.value == 'Username or email') this.value = '';" onBlur="if (this.value == '') this.value = 'Username or email';" />
              <input class="last"  type="text" name="password" value="Password" onFocus="if (this.value == 'Password') this.value = '';" onBlur="if (this.value == '') this.value = 'Password';" />
              <div class="clearfix">
                <div class="pull-left">
                  <input type="checkbox" id="categorymanufacturer1" />
                  <label for="categorymanufacturer1">Nh??? t??i kho???n</label>
                </div>
                <div class="pull-right"><a class="forgot_pass" href="javascript:void(0);" >Qu??n m???t kh???u</a></div>
              </div>
              <div class="center">
                <input type="submit" action="" value="????ng nh???p">
              </div>
            </form>
          </div>
          <div class="new_customers">
            <h2>KH??CH H??NG M???I</h2>
            <p>????ng k?? v???i Glammy Shop ????? nh???n ??u ????i nhanh nh???t nh??!</p>
            <div class="clearfix">
              <li><a href="javascript:void(0);" >???  Online Order Status</a></li>
              <li><a href="javascript:void(0);" >???  Love List</a></li>
              <li><a href="javascript:void(0);" >???  Sign up to receive exclusive news and private </a></li>
              <li><a href="javascript:void(0);" >???  Place Test Orders</a></li>
              <li><a href="javascript:void(0);" >???  Quick and easy checkout</a></li>
            </div>
            <div class="center"><a class="btn active" href="javascript:void(0);" >????ng k?? </a></div>
          </div>
        </div>
        <div class="my_account_note center">Li??n h??? v???i ch??ng t??i <b>0924330534</b></div>
      </div>
      <!-- //CONTAINER -->
    </section>
    <!-- //MY ACCOUNT PAGE -->
    	<?php include('inc/footer.php')?>
