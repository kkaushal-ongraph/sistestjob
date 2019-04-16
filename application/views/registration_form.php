<!DOCTYPE html>
<html lang="en">
<head>
<?= phpinfo()?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration</title>
<link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css')?>">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<?= base_url('assets/css/style.css')?>">
<script src="<?= base_url('assets/js/jquery.min.js')?>"></script>
<script src="<?= base_url('assets/js/bootstrap.min.js')?>"></script> 

</head>
<body>
<div class="login-form">
        <?= form_open('index.php/User_Auth/user_registration') ?>
        
        <h2 class="text-center">Registration</h2>   
        <div class="form-group">
            <?php
            echo "<div class='error_msg'>";
            if (isset($error_message)) {
            echo $error_message;
            }
            echo validation_errors();
            echo "</div>";
            ?>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="email" placeholder="Email" >              
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" name="password" placeholder="Password" >                
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" name="c_password" placeholder="Confirm Password" >                
            </div>
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary login-btn btn-block">Submit</button>
        </div>
        <div class="clearfix">
        </div>
    <?= form_close() ?>
    <p class="text-center"><a href="<?= base_url() ?>index.php/User_Auth/index">Sign in</a></p>
    
</div>
</body>
</html>