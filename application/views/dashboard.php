<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css') ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets/css/font-awesome.min.css') ?>">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= base_url('assets/css/ionicons.min.css') ?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?= base_url('assets/css/dataTables.bootstrap.min.css') ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('assets/css/dashboard.min.css') ?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?= base_url('assets/css/_all-skins.min.css') ?>">


  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Employee Expenses</h3>
              <div style="float: right;">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Upload File</button>
                <a href="<?= base_url() ?>index.php/User_Auth/logout"><button type="button" class="btn btn-success">Logout</button></a>
              </div>
              
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Date</th>
                  <th>Category</th>
                  <th>Employee Name</th>
                  <th>Employee Address</th>
                  <th>Expense Description</th>
                  <th>Pre Tax Amount</th>
                  <th>Tax Amount</th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach ($expenses as $expense): ?>
                    <tr>
                      <td><?= $expense->date ?></td>
                      <td><?= $expense->category ?></td>
                      <td><?= $expense->employee_name ?></td>
                      <td><?= $expense->employee_address ?></td>
                      <td><?= $expense->expense_description ?></td>
                      <td><?= $expense->pre_tax_amount ?></td>
                      <td><?= $expense->tax_amount ?></td>
                </tr>    
                  <?php endforeach ?>
                </tbody>
                <tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>



 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Upload File</h4>
        </div>
        <p class="statusMsg"></p>
        <form id="uploadForm">
          <div class="modal-body">
            <p><input type="file" id="file" name="file" accept=".psv" ></p>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary submitBtn" >Submit</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </form>
      </div>
    </div>
  </div>

<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<?= base_url('assets/js/jquery.min.js') ?>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?= base_url('assets/js/bootstrap.min.js') ?>"></script>
<!-- DataTables -->
<script src="<?= base_url('assets/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?= base_url('assets/js/dataTables.bootstrap.min.js') ?>"></script>
<!-- SlimScroll -->
<script src="<?= base_url('assets/js/jquery.slimscroll.min.js') ?>"></script>
<!-- FastClick -->
<script src="<?= base_url('assets/js/fastclick.js') ?>"></script>
<!-- AdminLTE App -->
<script src="<?= base_url('assets/js/adminlte.min.js') ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url('assets/js/demo.js') ?>"></script>
<!-- page script -->
<script>
  $(function () {
    $('#example1').DataTable()
  })
</script>
<script>
$(document).ready(function(e){
    $("#uploadForm").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: "upload_psv",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            beforeSend: function(){
                $('.submitBtn').attr("disabled","disabled");
            },
            success: function(res){
                $('.statusMsg').html('');
                var res = $.parseJSON(res);
                if(res.type){
                    //var success_msg = "<div class='message'>" + res.message + "</div>";
                    var success_msg = "<div class='alert alert-success alert-dismissible'>" +
                              "<a href='#' class='close' data-dismiss='alert' aria-label='close'> &times; </a>" +
                              res.message + "</div>";
                    $('.statusMsg').append(success_msg);
                   window.setTimeout(function(){location.reload()},3000);
                }else{
                    var success_msg = "<div class='alert alert-error alert-dismissible'>" +
                              "<a href='#' class='close' data-dismiss='alert' aria-label='close'> &times; </a>" +
                              res.message + "</div>";
                    $('.statusMsg').append(success_msg);
                }
                $(".submitBtn").removeAttr("disabled"); 
              }
        });
    });
    
   
});
</script>
</body>
</html>
