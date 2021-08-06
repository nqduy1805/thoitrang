	<?php session_start();  include('inc/header.php')?>	
<!-- BREADCRUMBS -->
    <section class="breadcrumb margbot30"> 
      
      <!-- CONTAINER -->
      <div> </div>
      <!-- //CONTAINER --> 
      
    </section>
    <!-- //BREADCRUMBS --> 
    <!-- SHOP BLOCK -->
    <section class="shop"> 
      <!-- CONTAINER -->
      <div class="container"> 
        
        <!-- ROW -->
        <div class="row"> 
          
          <!-- SIDEBAR -->
          <div id="sidebar" class="col-lg-3 col-md-3 col-sm-3 padbot50"> 
            
            <!-- CATEGORIES -->
            <div class="sidepanel widget_categories">
		            <?php if(isset($_GET['danhmuc']))
							 $danhmuc=$_GET['danhmuc'];
						else $danhmuc="";
					  $query='select tenphu_danhmuc from tbl_danhmuc  where ten_danhmuc like "%'.$danhmuc.'%" ';
						$sql_sanpham=mysqli_query($con,$query);
						while($row_sanpham=mysqli_fetch_array($sql_sanpham)){
				$tenphu_danhmuc=$row_sanpham['tenphu_danhmuc'];?>
				
              <h3><?php echo $tenphu_danhmuc  ;?></h3>
              <ul>
				    <?php 
				 $query='select * from tbl_danhmuc  where tenphu_danhmuc like "%'. $tenphu_danhmuc.'%"  order by ten_danhmuc asc ';
						$sql_sanpham=mysqli_query($con,$query);
						while($row_sanpham=mysqli_fetch_array($sql_sanpham)){?>
                <li><a href="SP_All.php?danhmuc=<?php echo $row_sanpham['ten_danhmuc'] ;?>&size=" > <?php echo $row_sanpham['ten_danhmuc'] ;?> nữ thời trang</a></li>
               <?php } } ?>
              </ul>
            </div>
            <!-- //CATEGORIES --> 
            
            <!-- PRICE RANGE -->
          <div class="sidepanel widget_pricefilter">
			     <form action="?danhmuc=<?php if(isset($_GET['danhmuc'])) echo $_GET['danhmuc'];  ?>&size=<?php if(isset($_GET['size'])) echo $_GET['size'];  ?> " method="post">
              <h3>LỌC THEO GIÁ</h3>
                <div class="tovar_view_btn" style="width: 170px">
                <select  class="basic" name='gia'>
				<option></option>
				<option value="k1">0 - 1 triệu</option>
            	<option value="k2">1 triệu - 2 triệu</option>
				<option value="k3">2 triệu - 3 triệu</option>
				<option value="k4">3 triệu - 4 triệu</option>
				<option value="k5">4 triệu - 5 triệu</option>
				<option value="k6">5 triệu - 6 triệu</option>
				<option value="k7">6 triệu trở lên</option>
                </select>
              </div>
			    <!-- TOVAR FILTER -->
				 <h3>sắp xếp</h3>

                <div class="tovar_view_btn">
                <select class="basic" name='sapxep'>
				<option></option>
				<option value="moinhat">Mới nhất</option>
               <!-- <option value="banchay">Bán chạy</option> -->
                <option value="thap">Giá thấp đến cao</option>
                <option value="cao">Giá cao đến thấp</option>
                </select>
					   <input type="submit" value="Tìm theo yêu cầu">
					<br></br>
              </div>
			  				  </form>

              <!-- //TOVAR FILTER --> 
            </div>
            <!-- //PRICE RANGE --> 
               
            <!-- SHOP BY SIZE -->
            <div class="sidepanel widget_sized">
              <h3>LỌC THEO SIZE</h3>
              <ul>
                <li><a onclick="location='?danhmuc=<?php echo $danhmuc;?>&size=XS&trang=0'" class="sizeXS" href="javascript:void(0);" >XS</a></li>
                <li><a onclick="location='?danhmuc=<?php echo $danhmuc;?>&size=S&trang=0'" class="sizeS" href="javascript:void(0);" >S</a></li>
                <li><a onclick="location='?danhmuc=<?php echo $danhmuc;?>&size=M&trang=0'" class="sizeM" href="javascript:void(0);" >M</a></li>
                <li><a onclick="location='?danhmuc=<?php echo $danhmuc;?>&size=L&trang=0'" class="sizeL" href="javascript:void(0);" >L</a></li>
                <li><a onclick="location='?danhmuc=<?php echo $danhmuc;?>&size=XL&trang=0'" class="sizeXL" href="javascript:void(0);" >XL</a></li>
              </ul>
            </div>
            <!-- //SHOP BY SIZE --> 
            
          </div>
          <!-- //SIDEBAR --> 
          
          <!-- SHOP PRODUCTS -->
          <div class="col-lg-9 col-sm-9 col-sm-9 padbot20"> 
            
            <!-- SHOP BANNER -->
            <div class="banner_block margbot15"> <a class="banner nobord" href="javascript:void(0);" ><img src="images/Sản phẩm/bannersp.jpg" alt="" /></a> </div>
            <!-- //SHOP BANNER --> 
            
            <!-- SORTING TOVAR PANEL -->
            <div class="sorting_options clearfix"> 
              
              <!-- COUNT TOVAR ITEMS -->
              <div class="count_tovar_items">
                <p>TẤT CẢ</p>
                <p><?php  if(isset($_GET['search']))
							 $sanpham=' and ten_sanpham like "%'.$_GET['search'].'%"  ';
	                          else
		                     $sanpham='';
			         	if(isset($_GET['danhmuc']))
							 $danhmuc='and ten_danhmuc like "%'.$_GET['danhmuc'].'%"  ';
	                         else
	                     	 $danhmuc='';	
	                    if(isset($_GET['size'])) 
							$size='and size_sanpham like "%'.$_GET['size'].'%" ';
	                         else  $size='';
					if(isset($_POST['sapxep'])) {
						if($_POST['sapxep']=='moinhat')
							$sapxep='order by id_sanpham desc ';
						if($_POST['sapxep']=='banchay')
							$sapxep='order by id_sanpham desc ';
						if($_POST['sapxep']=='thap')
							$sapxep='order by gia_sanpham asc ';
						if($_POST['sapxep']=='cao')
							$sapxep='order by gia_sanpham desc ';
						if($_POST['sapxep']=='')
							$sapxep=' ';
					}
					else   $sapxep='';
						if(isset($_POST['gia'])) {
						if($_POST['gia']=='k1')
							$gia='and gia_sanpham <=1000000   ';
						if($_POST['gia']=='k2')
							$gia='and gia_sanpham >=1000000 and gia_sanpham <=2000000 ';
						if($_POST['gia']=='k3')
							$gia='and gia_sanpham >=2000000 and gia_sanpham <=3000000 ';
						if($_POST['gia']=='k4')
							$gia='and gia_sanpham >=3000000 and gia_sanpham <=4000000 ';
					    if($_POST['gia']=='k5')
							$gia='and gia_sanpham >=4000000 and gia_sanpham <=5000000 ';
						if($_POST['gia']=='k6')
							$gia='and gia_sanpham >=5000000 and gia_sanpham <=6000000 ';
						if($_POST['gia']=='k7')
							$gia='and gia_sanpham >=6000000 ';
						if($_POST['gia']=='')
							$gia=' ';
					}
					else   $gia='';
					
				        if(isset($_GET['trang'])) 
							$trang=$_GET['trang'];
	                         else  $trang=0;
					$trang=$trang*6;
					 $query="select * from tbl_sanpham,tbl_danhmuc where tbl_sanpham.id_danhmuc =tbl_danhmuc.id_danhmuc   ".$sanpham.$danhmuc.$size.$gia.$sapxep;
						$sql_tongsanpham=mysqli_query($con,$query);
					    $tongsanpham = mysqli_num_rows($sql_tongsanpham); 				        if(isset($_GET['search'])) 
						{ if($tongsanpham>0) echo "Có ".($tongsanpham-1)." kết quả tìm kiếm với từ khóa: ".$_GET['search']; else echo 'Không tìm thấy sản phẩm với từ khóa: '.$_GET['search']; } else $tongsanpham." Sản phẩm"?></p>  </div>
              <!-- //COUNT TOVAR ITEMS -->        
              <!-- PRODUC SIZE -->
              <div id="toggle-sizes"> <a class="view_box active" href="javascript:void(0);"><i class="fa fa-th-large"></i></a> <a class="view_full" href="javascript:void(0);"><i class="fa fa-th-list"></i></a> </div>
              <!-- //PRODUC SIZE --> 
            </div>
            <!-- //SORTING TOVAR PANEL --> 
            
            <!-- ROW -->
            <div class="row shop_block"> 
              <!--ĐẦM--> 
              <!-- TOVAR1 -->
                 
						<?php 
				 $query="select * from tbl_sanpham,tbl_danhmuc where tbl_sanpham.id_danhmuc =tbl_danhmuc.id_danhmuc   ".$sanpham.$danhmuc.$size.$gia.$sapxep." limit ".$trang.",7";
						$sql_sanpham=mysqli_query($con,$query);
				if(mysqli_fetch_array($sql_sanpham)){while($row_sanpham=mysqli_fetch_array($sql_sanpham)){?>
              <div class="tovar_wrapper dam col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12 padbot40">
                <div class="tovar_item clearfix">
                  <div class="tovar_img"  onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'" >
                    <div class="tovar_img_wrapper"> <img class="img" src="images/<?php echo $row_sanpham['hinhanh_sanpham'] ;?>" alt="" /> <img class="img_h" src="images/<?php echo $row_sanpham['hinhanhphu1_sanpham'] ;?>" alt="" /> </div>
                    <div class="tovar_item_btns">
                      <div class="open-project-link"><a onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'"  class="open-project tovar_view" href="javascript:void(0);" data-url="!projects/women/1.html" ><span>Xem nhanh</span></a></div>
                      <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a> <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a> </div>
                  </div>
                  <div class="tovar_description clearfix"> <a class="tovar_title" href="product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>" ><?php echo $row_sanpham['ten_sanpham'] ;?></a> <span class="tovar_price"><?php echo $row_sanpham['gia_sanpham'] ;?>vnđ</span> </div>
                  <div class="tovar_content"><?php echo $row_sanpham['chitiet_sanpham'];?></div>
                </div>
              </div>
				<?php }?>
              <!-- //TOVAR1 -->               
            </div>
            <!-- //ROW -->
            
            <hr>
            <div class="clearfix"> 
              <!-- PAGINATION -->
              <ul class="pagination">
				   <li><a href="javascript:void(0);" >...</a></li>
				  <?php 
				  if(isset($_GET['trang'])&&$_GET['trang']>3) 
                     $trang=$_GET['trang'];
				  else $trang=3;	
				  for($i=$trang-3;$i>=0&&$i<= $trang+3&&$i<$tongsanpham/5+1;$i++){
				  ?>
                <li><a href="?danhmuc=<?php if(isset($_GET['danhmuc'])) echo $_GET['danhmuc'];  ?>&size=<?php if(isset($_GET['size'])) echo $_GET['size'];  ?>&trang=<?php echo $i; ?> " href="javascript:void(0);" ><?php echo $i;?></a></li> <?php }} ?>
                <li><a href="javascript:void(0);" >...</a></li>
              </ul>
              <!-- //PAGINATION -->
              <a  class="show_all_tovar" href="javascript:void(0);"  >Hiển thị tất cả</a> </div>
            <hr>
          </div>
          <!-- //SHOP PRODUCTS --> 
        </div>
        <!-- //ROW --> 
      </div>
      <!-- //CONTAINER --> 
    </section>
    <!-- //SHOP --> 
    <?php include('inc/footer.php')?>