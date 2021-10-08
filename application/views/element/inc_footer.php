<footer>
            <div class="top-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-f">
                            <div id="cmsblock-30" class="cmsblock">
                                <div class='description'>
                                    <div class="logo_social_f">
                                        <div class="logo_f">
                                            <img src="<?php echo base_url('assets/img/logo2.png'); ?>" alt="logo footer">
                                            <p class="short_des">Duis autem vel eum iriure dolor in hendrerit in
                                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat
                                                nulla facilisis.</p>
                                        </div>
                                        <div class="social_f">
                                            <h5>Follow Us On Social:</h5>
                                            <ul class="list-unstyled">
                                                <li><a href="https://www.facebook.com/PlazaThemes1/"><i
                                                            class="fa fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com/plazathemes"><i
                                                            class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                                <li><a href="https://plus.google.com/+PlazaThemesMagento"><i
                                                            class="fa fa-google-plus"></i></a></li>
                                                <li><a href="https://www.linkedin.com/company/plazathemes"><i
                                                            class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="cmsblock-31" class="cmsblock">
                                <div class='description'>
                                    <div class="static-opentime">
                                        <h5 class="title-footer">Opening Time</h5>
                                        <ul class="list-unstyled">
                                            <li>Mon - Fri: 8AM - 10PM</li>
                                            <li>Sat: 9AM-8PM</li>
                                            <li>Sun: Closed</li>
                                        </ul>
                                        <h4>We Work All The Holidays</h4>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-sm-2 col-f">
                            <h5 class="title-footer">Information</h5>
                            <ul class="list-unstyled">
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=information/information&amp;information_id=4">About
                                        Us</a></li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=information/information&amp;information_id=6">Delivery
                                        Information</a></li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=information/information&amp;information_id=3">Privacy
                                        Policy</a></li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=information/information&amp;information_id=5">Terms
                                        &amp; Conditions</a></li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=information/information&amp;information_id=7">Information
                                        link</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-2 col-f">
                            <h5 class="title-footer">Customer Service</h5>
                            <ul class="list-unstyled">
                                <li><a href="http://handart4.demo.towerthemes.com/index.php?route=information/contact">Contact
                                        Us</a></li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=account/return/add">Returns</a>
                                </li>
                                <li><a href="http://handart4.demo.towerthemes.com/index.php?route=information/sitemap">Site
                                        Map</a></li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=product/special">Specials</a>
                                </li>
                                <li><a
                                        href="http://handart4.demo.towerthemes.com/index.php?route=product/manufacturer">Brands</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-footer">
                <div class="container">
                    <p class="copyright-text">Copyright &copy; 2021. All Right Reserved.</p>
                    <div id="cmsblock-32" class="cmsblock">
                        <div class='description'>
                            <div class="static-link-f">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#">Policy</a>
                                    </li>
                                    <li>
                                        <a href="#">Term &amp; Conditions</a>
                                    </li>
                                    <li>
                                        <a href="#">Affiliate</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div id="back-top"><span>back to top</span><i class="ion-chevron-right"></i><i
                    class="ion-chevron-right"></i></div>
        </footer>




<?php 


$ip = $this->input->ip_address();
if ($this->input->valid_ip($ip)){
	createVisitor($this->uri->segment(1,"home"),$ip);
}//end check valid ip addresss

$SiteVisitorCounter = getVisitorCount();
?>



<?php 

if(is_home()){ echo getVideoLink(); }?>


<?php echo put_footers(); //call footer js ?>

  
<?php

 echo '</div>';
 echo '</body>'.PHP_EOL;
 echo '</html>';
?>

  
<script type="text/javascript">
            $(document).ready(function () {
                // hide #back-top first
                $("#back-top").hide();
                // fade in #back-top
                $(function () {
                    $(window).scroll(function () {
                        if ($(this).scrollTop() > ($('header').height() + $('header').offset().top)) {
                            $('#back-top').fadeIn();
                        } else {
                            $('#back-top').fadeOut();
                        }
                    });
                    // scroll body to 0px on click
                    $('#back-top').click(function () {
                        $('body,html').animate({ scrollTop: 0 }, 800);
                        return false;
                    });
                });
            });
        </script>