<!-- 
    Template Name: Signup
 -->
 <?php wp_head(); ?>
 <?php

    global $wpdb;

     if($_POST){

        $email = $wpdb->escape($_POST['email']);
        $username = $wpdb->escape($_POST['username']);
        $name = $wpdb->escape($_POST['name']);
        $password = $wpdb->escape($_POST['password']);

        $error = array();
        if(strpos($username,' ') == !FALSE){
            $error['username_space'] = "username has empty space";
        }
        if(empty($username)){
            $error['username_empty'] = "username is must";
        }
        if(username_exists($username)){
            $error['username_exists'] = "username already exists";
        }
        if(!is_email($email)){
            $error['email_valid'] = "email has no valid value";
        }
        // if(strcmp($password, $confpassword) !== 0){
        //     $error['password'] = "password didn't match";
        // }else{} 

        if(count($error) == 0){
            wp_create_user($username, $password, $email);
            echo "user created succesfully";
            exit();
        }
        else{
            print_r($error);
        }
     }else{
        
     }
 ?>


<div class="LoginModal" id="id01">
                <a class="LoginModal-CloseLink">
                <!-- <i class="fas fa-cross"></i> -->
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                </a>
                    <div class="" style="height: 488.976px;">
                    <div class="LoginModal-Content Modal-Cover LoginModal-Cover" style="opacity: 1;">
                    <div class="Modal-Window LoginModal-Window">
                    <img src="<?php bloginfo('template_directory'); ?>/assets/images/logo.svg" class="LoginModal-Logo "></a>
                    <h4 class="LoginModal-Title">Welcome back!</h4>
                    <div class="LoginModal-Form">
                    
                    <button class="LoginModal-AuthButton AuthButton google icon">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/google.svg" class="img-fluid AuthButton-Icon">
                        Sign up with Google
                    </button>
                    <div class="LoginModal-Seperator"><div class="LoginModal-Seperator-Label">or</div>
                    </div>
        </div>
        <form class="" method="post">
            <div class="LoginModal-Form">
                <label for="email" class="FancyInput LoginModal-Form-Field"></label>
                <input class="FancyInput-Field" type="text" value="" id="email" name="email" placeholder="Email">
                <label for="username" class="FancyInput LoginModal-Form-Field"></label>
                <input class="_login-input FancyInput-Field" type="text" value="" id="username" name="username" placeholder="Username">
                <label for="name" class="FancyInput LoginModal-Form-Field"></label>
                <input class="_login-input FancyInput-Field" type="text" value="" id="name" name="name" placeholder="Display Name(Optional)">
                <label for="password" class="FancyInput LoginModal-Form-Field"></label>
                <input class="FancyInput-Field" type="password" value="" id="password" name="password" placeholder="Password">
                <div class="LoginModal-FormText">By joining I accept Slant's<br>
                <a class="LoginModal-FormLink" href="#" target="_blank" rel="noopener">Privacy Policy</a>
                 and <a class="LoginModal-FormLink" href="#" target="_blank">Terms of Service</a>
            </div>
            </div>
            <div class="LoginModal-Footer">
                <a class="LoginModal-SwapLink left" href="#">I have an account</a>
                <button class="LoginModal-SubmitLink right" type="submit" name="btn_submit">Join</button>
            </div>
            
    </form>
    </div>
</div>
</div>
</div>