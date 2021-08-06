	
		 <!-- FOOTER -->
    <footer> 
      
      <!-- CONTAINER -->
      <div class="container" data-animated='fadeInUp'> 
        
        <!-- ROW -->
        <div class="row">
          <div class="col-lg-2 col-md-2 col-sm-3 col-xs-6 col-ss-12 padbot30">
            <h4>Contacts</h4>
            <div class="foot_address"><span>Glammy Shop</span>279 Nguyễn Tri Phương, Q10, TP.HCM</div>
            <div class="foot_phone"><a href="#" >0924330534</a></div>
            <div class="foot_mail"><a href="mailto:info@glamyshop.com" >glamyshop@gmail.com</a></div>
            <div class="foot_live_chat"><a href="javascript:void(0);" ><i class="fa fa-comment-o"></i> Chat ngay</a></div>
          </div>
          <div class="col-lg-2 col-md-2 col-sm-3 col-xs-6 col-ss-12 padbot30">
            <h4>Thông tin</h4>
            <ul class="foot_menu">
              <li><a href="javascript:void(0);" >Giao hàng</a></li>
              <li><a href="javascript:void(0);" >Chính sách</a></li>
              <li><a href="file:///C|/xampp/htdocs/glammy/blog.html" >Blog</a></li>
            </ul>
          </div>
          <div class="respond_clear_480"></div>
          <div class="col-lg-4 col-md-4 col-sm-6 padbot30">
            <h4>Về chúng tôi</h4>
            <p>We ask for your name, telephone number, home address, email address and age for competitions, prize draws or newsletter sign ups. When a purchase is made on our site, in addition to the above, we also ask for delivery address, and payment method details.</p>
            <p>We may obtain information about your usage of our website to help us develop and improve it further through online surveys and other requests.</p>
          </div>
          <div class="respond_clear_768"></div>
          <div class="col-lg-4 col-md-4 padbot30">
            <h4>Thành viên với</h4>
            <form class="newsletter_form clearfix" action="javascript:void(0);" method="get">
              <input type="text" name="newsletter" value="Enter E-mail & Get 10% off" onFocus="if (this.value == 'Enter E-mail & Get 10% off') this.value = '';" onBlur="if (this.value == '') this.value = 'Enter E-mail & Get 10% off';" />
              <input class="btn newsletter_btn" type="submit" value="ĐĂNG KÝ">
            </form>
            <h4>Liên hệ với chúng tôi</h4>
            <div class="social"> <a href="javascript:void(0);" ><i class="fa fa-twitter"></i></a> <a href="javascript:void(0);" ><i class="fa fa-facebook"></i></a> <a href="javascript:void(0);" ><i class="fa fa-google-plus"></i></a> <a href="javascript:void(0);" ><i class="fa fa-instagram"></i></a> </div>
          </div>
        </div>
        <!-- //ROW --> 
      </div>
      <!-- //CONTAINER --> 
      
      <!-- COPYRIGHT -->
      <div class="copyright"> 
        
        <!-- CONTAINER -->
        <div class="container clearfix">
          <div class="foot_logo"><a href="index.php" ><img src="images/foot_logo.png" alt="" /></a></div>
          <div class="copyright_inf"> <span>Glammy Shop K44© 2021</span> | <span>Theme by Group BI-K44</span> | <a class="back_top" href="javascript:void(0);" >Lên đầu trang <i class="fa fa-angle-up"></i></a> </div>
        </div>
        <!-- //CONTAINER --> 
      </div>
      <!-- //COPYRIGHT --> 
    </footer>
    <!-- //FOOTER --> 
		
	</div><!-- //PAGE -->
</div>
	


	<!-- SCRIPTS -->
	<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if IE]><html class="ie" lang="en"> <![endif]-->
	
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.sticky.js" type="text/javascript"></script>
	<script src="js/parallax.js" type="text/javascript"></script>
	<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.js" type="text/javascript"></script>
	<script src="js/fancySelect.js"></script>
	<script src="js/animate.js" type="text/javascript"></script>
	<script src="js/myscript.js" type="text/javascript"></script>
	<script>
		if (top != self) top.location.replace(self.location.href);
	</script>
	 <script>
	$(document).ready(function(){
	$(".filter-button").click(function(){
		var value=$(this).attr('data-filter');
		if(value=="all")
	$('.filter').show('1000');
		else
			{
				$(".filter").not('.'+value).hide('3000');
				$(".filter").filter('.'+value).show('3000');
			}
	});
		if($(".filter-button").removeClass("active"))
			{
				$(this).removeClass("active");
			}
		$(this).addClass("active");
	});		
	</script>
</body>
</html>