
<!-- 
    Template Name: Login
 -->
 <?php wp_head(); ?>
 <?php 
  global $user_Id;
  global $wpdb;
  if(!$user_Id){
      
    //   logout state

    if($_POST){
        $username = $wpdb->escape($_POST['username']);
        $password = $wpdb->escape($_POST['password']);

        $login_array = array();
        $login_array['user_login'] = $username;
        $login_array['user_password'] = $password;

       $verify_user = wp_signon($login_array,true);
       if(!is_wp_error($verify_user)){
            echo "<script>window.location = '".site_url()."'</script>";
       }else{
            echo "<p>Invalid Credentials</p>";
       }
    }else{
        ?>
        <div class="LoginModal" id="id01">
                <a class="LoginModal-CloseLink">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                </a>
                    <div class="" style="height: 488.976px;">
                    <div class="LoginModal-Content Modal-Cover LoginModal-Cover">
                    <div class="Modal-Window LoginModal-Window">
                    <img src="<?php bloginfo('template_directory'); ?>/assets/images/logo.svg" class="LoginModal-Logo "></a>
                    <h4 class="LoginModal-Title">Welcome back!</h4>
                    <div class="LoginModal-Form">
                    
                    <button class="LoginModal-AuthButton AuthButton google icon">
                    
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/google.svg" class="img-fluid AuthButton-Icon">
                    Log in with Google
                    </button>
                    <div class="LoginModal-Seperator"><div class="LoginModal-Seperator-Label">or</div>
                    </div>
        </div>
        <form class="" method="post">
            <div class="LoginModal-Form">
                <label for="username" class="FancyInput _login-field LoginModal-Form-Field"></label>
                <input class="FancyInput-Field" type="text" value="" id="username" name="username" placeholder="Email or Username">
                <label for="password" class="FancyInput LoginModal-Form-Field"></label>
                <input class="FancyInput-Field" type="password" value="" id="password" name="password" placeholder="Password">
                <div class="LoginModal-FormText">
                    <a class="LoginModal-FormLink" href="#">Reset your password</a>
                </div>
            </div>
            <div class="LoginModal-Footer">
                <a class="LoginModal-SwapLink left" href="#">Create an account</a>
                <button class="LoginModal-SubmitLink right" type="submit" name="btn_submit">Login</button>
            </div>
    </form>
    </div>
</div>
</div>
</div>

    <?php
    }
}else{
    //   login
  }
 ?>