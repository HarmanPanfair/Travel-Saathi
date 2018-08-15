
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Contacts</title>
		<meta charset="utf-8">
		<meta name="format-detection" content="telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/form.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/TMForm.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
				<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
 <script type="text/javascript">
      function googleTranslateElementInit()
      {
     new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
      }
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12397497-8']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>               
	</head>
        <body style="background-color: whitesmoke">
<!--==============================header=================================-->
<header style="background-color: whitesmoke">
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li class="current"><a href="index.jsp">HOME</a></li>
								<li><a href="adminloginpage.jsp">ADMIN LOGIN</a></li>
								<li><a href="customerloginpage.jsp">CUSTOMER LOGIN</a></li>
								<li><a href="history.jsp">HISTORY</a></li>
								<li><a href="contactus.jsp">CONTACTS</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div><div id="google_translate_element"></div>
				<div class="grid_12">
					<h1>
						<a href="index.jsp">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
<!--==============================Content=================================-->
		<div class="content"><div class="ic"></div>
			<div class="container_12">
				<div class="grid_5">
					<h3>CONTACT INFORMATION-Travel Saathi Pvt Ltd</h3>
					<div class="map">
						<p><p>One of the oldest and reputed travel agency for Tourism. We provide all type of travel related services in India. </p>
						<p>If you have a question for us, please be in touch. Whether you prefer to email or mobile, we look forward to hearing from you. You can also be in touch using the form given a side. </p>
						<div class="clear"></div>
						<figure class="">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1721.77128056275!2d76.38282715801341!3d30.335526760413593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3910297155508d0b%3A0x1ec1d6307cc4cae0!2sTravel+Saathi!5e0!3m2!1sen!2sin!4v1525770014131" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>	
                                                </figure>
						<address>
							<dl>
								<dt>Travel Saathi Pvt. Ltd. <br>
									SCO 29, Surya Complex,<br>
									Patiala, 147001.
								</dt>
								<dd><span>Mobile:</span>09041505077</dd>
								<dd><span>Telephone:</span></dd>
								<dd><span>FAX:</span></dd>
								<dd>E-mail: <a href="#" class="col1">TravelSaathi.com</a></dd>
							</dl>
						</address>
					</div>
				</div>
				<div class="grid_6 prefix_1">
					<h3>GET IN TOUCH</h3>
                                        <form id="form"  action="addquery" method="post">
                                                
						<label class="name">
							<input type="text" name="t1" placeholder="Name:" data-constraints="@Required @JustLetters" />
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*This is not a valid name.</span>
						</label>
						<label class="email">
							<input type="email" name="t2" placeholder="Email:" data-constraints="@Required @Email" />
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*This is not a valid email.</span>
						</label>
						<label class="phone">
                                                    <input type="text" name="t3" placeholder="Phone Number:" data-constraints="@Required @JustNumbers"/>
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*This is not a valid phone.</span>
						</label>
						<label class="message">
                                                    <textarea name="t4" placeholder="Message:" data-constraints="@Required @Length(min=0,max=999999)"></textarea>
							<span class="empty-message">*This field is required.</span>
                                                        <span class="error-message">*The message is too short.</span>
                                                </label>
                                            
                                            <label class="btns">
                                                <input type="submit" value="Submit" name="b1">
                                               
                                            </label>
                                            <label>
                                                <input type="reset" value="Reset" name="r1">
                                            </label>
                                            
					</form>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer style="background-color: #002747">
                    <div class="container_12" >
				<div class="grid_12">
					<div class="socials">
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						Travel Saathi (c) 2018 | <a href="#">Privacy Policy</a> | Website Template Designed by <a href="http://www.slicksoftindia.com/" rel="nofollow">sLickSoftIndia.com</a>
					</div>
				</div>
			</div>
		</footer>
		<script>
		$(function (){
			$('#bookingForm').bookingForm({
				ownerEmail: '#'
			});
		})
		</script>
	</body>
</html>