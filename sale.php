<?php session_start();  include('inc/header.php')?>	
    <section class="breadcrumb parallax margbot30"></section>
    
    <!-- BANNER SECTION -->
    <section class="banner_section"> 
      
      <!-- CONTAINER -->
      <div class="container"> 
        
        <!-- ROW -->
        <div class="row">
          <div class="top_sale_banners center">
            <div class="col"><a class="banner nobord margbot30" href="javascript:void(0);" ><img src="images/banner/10381619595122.png" alt="" /></a></div>
          </div>
        </div>
        <!-- //ROW --> 
      </div>
      <!-- //CONTAINER --> 
    </section>
    <!-- //BANNER SECTION -->
    
    <section class="portfolio">
      <div class="container">
        <div>
          <button class="btn btn-default filter-button" data-filter="all">Tất cả</button>
          <button class="btn btn-default filter-button" data-filter="50">50%</button>
          <button class="btn btn-default filter-button" data-filter="20">20%</button>
          <button class="btn btn-default filter-button" data-filter="10">10%</button>
        </div>
        
        <!-- ROW -->
        <div class="row"> 
          
          <!-- TOVAR WRAPPER -->
          <div class="tovar_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'> 
            <?php
						     if(isset($_GET['search'])){
							 $search=' and ten_sanpham like "%'.$_GET['search'].'%"  ';
						 }
						else $search="";
                              if(isset($_GET['trang'])) 
							$trang=$_GET['trang'];
	                         else  $trang=0;
					    $trang=$trang*20;
					    $query="select * from tbl_sanpham  where sale_sanpham  IS NOT NULL ".$search." limit ".$trang.",20";
						$sql_sanpham=mysqli_query($con,$query);
						while($row_sanpham=mysqli_fetch_array($sql_sanpham)){?>
            <!-- TOVAR1 -->
            <div class="col-lg-3 col-xs-6 padbot40 filter center <?php echo $row_sanpham['sale_sanpham'];?> ">
              <div class="tovar_item tovar_sale_<?php echo $row_sanpham['sale_sanpham'];?>">
                <div class="tovar_img"  onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'">
                  <div class="tovar_img_wrapper"> <img class="img" src="images/<?php echo $row_sanpham['hinhanh_sanpham'] ?>" alt="50" /> <img class="img_h" src="images/<?php echo $row_sanpham['hinhanhphu1_sanpham']; ?>" alt="" /> </div>
                  <div class="tovar_item_btns">
                    <div class="open-project-link"><a onclick="location='product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>'" class="open-project tovar_view" href="javascript:void(0);" data-url="!projects" >Xem nhanh</a></div>
                    <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a> </div>
                </div>
                <div class="tovar_description clearfix"> <a class="tovar_title" href="product-PK.php?id_sanpham=<?php echo $row_sanpham['id_sanpham'] ;?>" ><?php echo $row_sanpham['ten_sanpham'] ?> </a> <span class="tovar_price"><?php echo $row_sanpham['gia_sanpham'] ;?>vnđ</span> </div>
              </div>
            </div>    
			   <!-- //TOVAR1 --> 
            <?php }?>
            <!-- TOVAR2 -->
          </div>
          <!-- //TOVAR WRAPPER --> 
        </div>
        <!-- //ROW --> 
		   <hr>
            <div class="clearfix"> 
              <!-- PAGINATION -->
              <ul class="pagination">
				   <li><a href="javascript:void(0);" >...</a></li>
				  <?php 
				   $query="select * from tbl_sanpham  where sale_sanpham  IS NOT NULL ".$search;
						$sql_sanpham=mysqli_query($con,$query);
				  $tongsanpham=mysqli_num_rows($sql_sanpham);
				  if(isset($_GET['trang'])&&$_GET['trang']>3) 
                     $trang=$_GET['trang'];
				  else $trang=3;	
				  for($i=$trang-3;$i>=0&&$i<= $trang+3&&$i<$tongsanpham/5+1;$i++){
				  ?>
                <li><a href="?trang=<?php echo $i; ?> " href="javascript:void(0);" ><?php echo $i;?></a></li> <?php } ?>
                <li><a href="javascript:void(0);" >...</a></li>
              </ul>
              <!-- //PAGINATION -->
              <a  class="show_all_tovar" href="javascript:void(0);"  >Hiển thị tất cả</a> </div>
            <hr>
      </div>
    </section>

    <?php include('inc/goiychoban.php')?>	
   <?php include('inc/sanphambanchay.php')?>	

    <!-- BANNER SECTION -->
    <section class="banner_section"> 
      
      <!-- CONTAINER -->
      <div class="container"> </div>
      <!-- //CONTAINER --> 
    </section>
    <!-- //BANNER SECTION --> 
	<?php include('inc/footer.php')?>
