<!--Counter Inbox-->
<?php
error_reporting(0);
$query = $this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
$query2 = $this->db->query("SELECT * FROM orders WHERE status <> 'LUNAS'");
$query3 = $this->db->query("SELECT * FROM testimoni WHERE status ='0'");
$query4 = $this->db->query("SELECT * FROM orders a JOIN pembayaran b ON a.id_order = b.order_id WHERE a.status='belum_bayar'");
$jum_pesan = $query->num_rows();
$jum_order = $query2->num_rows();
$jum_testimoni = $query3->num_rows();
$jum_konfirmasi = $query4->num_rows();
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Sumbawa-Travel | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/favicon.png' ?>">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/bootstrap/css/bootstrap.min.css' ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/font-awesome/css/font-awesome.min.css' ?>">
  <!-- Ionicons -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css' ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/AdminLTE.min.css' ?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/skins/_all-skins.min.css' ?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/plugins/toast/jquery.toast.min.css' ?>" />
  <?php
  /* Mengambil query report*/
  foreach ($visitor as $result) {
    $bulan[] = $result->tgl; //ambil bulan
    $value[] = (float) $result->jumlah; //ambil nilai
  }
  /* end mengambil query*/

  ?>


  <?php
  /* Mengambil query report*/
  foreach ($penjualan_mounth as $result) {
    $bulan2[] = $result->tgl; //ambil bulan
    $value2[] = (float) $result->jumlah; //ambil nilai
  }
  /* end mengambil query*/

  ?>

</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <!--Header-->
    <?php
    $this->load->view('backend/v_header');
    ?>

    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">

        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
          <li class="header">Menu Utama</li>
          <li class="active">
            <a href="<?php echo base_url() . 'backend/dashboard' ?>">
              <i class="fa fa-home"></i> <span>Dashboard</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>
          <li class="treeview">
            <a href="#">
              <i class="fa fa-pencil"></i>
              <span>Post</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'backend/post/add_post' ?>"><i class="fa fa-thumb-tack"></i> Add New</a></li>
              <li><a href="<?php echo base_url() . 'backend/post' ?>"><i class="fa fa-list"></i> Post List</a></li>
            </ul>
          </li>
          <li>
            <a href="<?php echo base_url() . 'backend/pengguna' ?>">
              <i class="fa fa-users"></i> <span>Pengguna</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>
          <li>
            <a href="<?php echo base_url() . 'backend/bank' ?>">
              <i class="fa fa-bank"></i> <span>Bank</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>
          <li>
            <a href="<?php echo base_url() . 'backend/wisata' ?>">
              <i class="fa fa-map-signs"></i> <span>Wisata</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>
          <li class="treeview">
            <a href="#">
              <i class="fa fa-bus"></i>
              <span>Tour</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'backend/paket_tour' ?>"><i class="fa fa-gift"></i> Paket Tour</a></li>
              <li><a href="<?php echo base_url() . 'backend/kategori' ?>"><i class="fa fa-hashtag"></i> Kategori</a></li>
            </ul>
          </li>
          <li class="treeview">
            <a href="#">
              <i class="fa fa-camera"></i>
              <span>Gallery</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'backend/album' ?>"><i class="fa fa-clone"></i> Album</a></li>
              <li><a href="<?php echo base_url() . 'backend/galeri' ?>"><i class="fa fa-picture-o"></i> Photos</a></li>
            </ul>
          </li>
          <li>
            <a href="<?php echo base_url() . 'backend/orders' ?>">
              <i class="fa fa-bell"></i> <span>Orders</span>
              <span class="pull-right-container">
                <small class="label pull-right bg-red"><?php echo $jum_order; ?></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'backend/konfirmasi' ?>">
              <i class="fa fa-money"></i> <span>Konfirmasi</span>
              <span class="pull-right-container">
                <small class="label pull-right bg-red"><?php echo $jum_konfirmasi; ?></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'backend/inbox' ?>">
              <i class="fa fa-envelope"></i> <span>Inbox</span>
              <span class="pull-right-container">
                <small class="label pull-right bg-green"><?php echo $jum_pesan; ?></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'backend/testimonial' ?>">
              <i class="fa fa-comment"></i> <span>Testimonial</span>
              <span class="pull-right-container">
                <small class="label pull-right bg-yellow"><?php echo $jum_testimoni; ?></small>
              </span>
            </a>
          </li>
          <li>
            <a href="<?php echo base_url() . 'administrator/logout' ?>">
              <i class="fa fa-sign-out"></i> <span>Sign Out</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>

        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Dashboard
          <small></small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li class="active">Dashboard</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <!-- Info boxes -->
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
              <span class="info-box-icon bg-aqua"><i class="fa fa-chrome"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Chrome'");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Chrome</span>
                <span class="info-box-number"><?php echo $jml; ?></span>
              </div>
              <!-- <a class="btn btn-success btn-flat" id="test1"><span class="fa fa-plus"></span> Add New</a> -->
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
              <span class="info-box-icon bg-red"><i class="fa fa-firefox"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Firefox' OR pengunjung_perangkat='Mozilla'");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Mozilla Firefox</span>
                <span class="info-box-number"><?php echo $jml; ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix visible-sm-block"></div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
              <span class="info-box-icon bg-green"><i class="fa fa-bug"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Googlebot'");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Googlebot</span>
                <span class="info-box-number"><?php echo $jml; ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
              <span class="info-box-icon bg-yellow"><i class="fa fa-opera"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Opera'");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Opera</span>
                <span class="info-box-number"><?php echo $jml; ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
          <div class="col-md-12 col-sm-4">
            <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Pengunjung bulan ini</h3>

              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <div class="row">
                  <div class="col-md-12 col-sm-4">

                    <div class="col-md-12 col-sm-4">
                      <canvas id="canvas" width="1000" height="280"></canvas>
                    </div>
                    <!-- /.chart-responsive -->
                  </div>
                  <!-- /.col -->

                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- ./box-body -->

              <!-- /.box-footer -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->


        <div class="row">
          <div class="col-md-12 col-sm-4">
            <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Penjualan bulan ini</h3>

              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <div class="row">
                  <div class="col-md-12 col-sm-4">

                    <div class="col-md-12 col-sm-4">
                      <canvas id="canvas2" width="1000" height="280"></canvas>
                    </div>
                    <!-- /.chart-responsive -->
                  </div>
                  <!-- /.col -->

                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- ./box-body -->

              <!-- /.box-footer -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <div class="col-md-8">
            <!-- MAP & BOX PANE -->
            <div class="box box-success">
              <div class="box-header with-border">
                <h3 class="box-title">Paket Tour Wisata Populer</h3>

                <table class="table">
                  <?php
                  $query = $this->db->query("SELECT * FROM paket  ORDER BY views DESC");
                  foreach ($query->result_array() as $i) :
                    $tulisan_id = $i['idpaket'];
                    $tulisan_judul = $i['nama_paket'];
                    $tulisan_views = $i['views'];
                  ?>
                    <tr>
                      <td><?php echo $tulisan_judul; ?></td>
                      <td><?php echo $tulisan_views . ' Terbeli'; ?></td>
                    </tr>
                  <?php endforeach; ?>
                </table>
              </div>

              <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- /.box -->
          </div>
          <!-- /.col -->
          <div class="col-md-4">
            <!-- USERS LIST -->
            <div class="box box-danger">
              <div class="box-header with-border">
                <h3 class="box-title">Daftar Members</h3>

                <div class="box-tools pull-right">
                  <span class="label label-danger"></span>
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body no-padding">
                <ul class="users-list clearfix">
                  <?php
                  $query = $this->db->query("SELECT  name, DATE_FORMAT(FROM_UNIXTIME(`date_created`), '%Y-%m-%d ') AS `date` FROM user WHERE is_active='1' AND id !=1 ORDER BY id ASC LIMIT 8");
                  foreach ($query->result_array() as $i) :
                    $name = $i['name'];
                    $date_created = $i['date'];
                  ?>


                    <li>
                      <img src="<?php echo base_url('') . 'assets/dist/img/avatar5.png' ?> " alt="User Image">
                      <a class="users-list-name" href="#"><?php echo $name; ?></a>
                      <span class="users-list-date"><?= tanggal($date_created); ?></span>
                    </li>
                  <?php endforeach; ?>
                </ul>
                <!-- /.users-list -->
              </div>
              <!-- /.box-body -->
              <div class="box-footer text-center">
                <a class="uppercase" data-toggle="modal" data-target="#ModalAddNew">Kirim email promosi ke user</a>

              </div>
            </div>
          </div>
        </div>
        <!-- Main row -->
        <div class="row">
          <div class="col-md-8">
            <!-- MAP & BOX PANE -->
            <div class="box box-success">
              <div class="box-header with-border">
                <h3 class="box-title">Tempat Wisata Populer</h3>

                <table class="table">
                  <?php
                  $query = $this->db->query("SELECT * FROM wisata  ORDER BY idwisata DESC");
                  foreach ($query->result_array() as $i) :
                    $tulisan_id = $i['idwisata'];
                    $tulisan_judul = $i['nama_wisata'];
                    $tulisan_views = $i['idwisata'];
                  ?>
                    <tr>
                      <td><?php echo $tulisan_judul; ?></td>
                      <td><?php echo $tulisan_views . ' Views'; ?></td>
                    </tr>
                  <?php endforeach; ?>
                </table>
              </div>

              <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- /.box -->
          </div>
          <!-- /.col -->

          <div class="col-md-4">
            <!-- Info Boxes Style 2 -->
            <div class="info-box bg-yellow">
              <span class="info-box-icon"><i class="fa fa-safari"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Safari'");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Safari</span>
                <span class="info-box-number"><?php echo number_format($jml); ?></span>

                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>
                <span class="progress-description">
                  Penggunjung
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
            <div class="info-box bg-green">
              <span class="info-box-icon"><i class="fa fa-globe"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE pengunjung_perangkat='Other' OR pengunjung_perangkat='Internet Explorer'");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Lainnya</span>
                <span class="info-box-number"><?php echo number_format($jml); ?></span>

                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>
                <span class="progress-description">
                  Pengunjung
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
            <div class="info-box bg-red">
              <span class="info-box-icon"><i class="fa fa-users"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE DATE_FORMAT(pengunjung_tanggal,'%m%y')=DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH),'%m%y')");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Pengunjung Bulan Lalu</span>
                <span class="info-box-number"><?php echo number_format($jml); ?></span>

                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>
                <span class="progress-description">
                  Pengunjung
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
            <div class="info-box bg-aqua">
              <span class="info-box-icon"><i class="fa fa-users"></i></span>
              <?php
              $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE DATE_FORMAT(pengunjung_tanggal,'%m%y')=DATE_FORMAT(CURDATE(),'%m%y')");
              $jml = $query->num_rows();
              ?>
              <div class="info-box-content">
                <span class="info-box-text">Pengunjung Bulan Ini</span>
                <span class="info-box-number"><?php echo number_format($jml); ?></span>

                <div class="progress">
                  <div class="progress-bar" style="width: 100%"></div>
                </div>
                <span class="progress-description">
                  Pengunjung
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->

            <!-- PRODUCT LIST -->

            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b>Version</b> 1.0
      </div>
      <strong>Copyright &copy; <?php echo date("Y"); ?> <a href="">Sumbawa Tour</a>.</strong> All rights reserved.
    </footer>


  </div>
  <!-- ./wrapper -->


  <!--  Modal send email-->
  <div class="modal fade" id="ModalAddNew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Kirim Promosi Ke Semua User</h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url() . 'backend/dashboard/SendEmail' ?>" method="post" enctype="multipart/form-data">
          <div class="modal-dialog" role="document">
            <div class="modal-content">

              <div class="modal-body">
                <p>Email promosi akan dikirim ke semua user yang aktif dan user subscribe. Apakah anda yakin?</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                <button type="submit" name="test" class="btn btn-primary btn-flat" id="simpan">Kirim</button>
              </div>

            </div>
          </div>

        </form>
      </div>
    </div>
  </div>

  <!-- jQuery 2.2.3 -->
  <script src="<?php echo base_url() . 'assets/plugins/jQuery/jquery-2.2.3.min.js' ?>"></script>
  <!-- Bootstrap 3.3.6 -->
  <script src="<?php echo base_url() . 'assets/bootstrap/js/bootstrap.min.js' ?>"></script>
  <!-- FastClick -->
  <script src="<?php echo base_url() . 'assets/plugins/fastclick/fastclick.js' ?>"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo base_url() . 'assets/dist/js/app.min.js' ?>"></script>
  <!-- Sparkline -->
  <script src="<?php echo base_url() . 'assets/plugins/sparkline/jquery.sparkline.min.js' ?>"></script>
  <!-- jvectormap -->
  <script src="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js' ?>"></script>
  <script src="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js' ?>"></script>
  <!-- SlimScroll 1.3.0 -->
  <script src="<?php echo base_url() . 'assets/plugins/slimScroll/jquery.slimscroll.min.js' ?>"></script>
  <!-- ChartJS 1.0.1 -->
  <script src="<?php echo base_url() . 'assets/plugins/chartjs/Chart.min.js' ?>"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="<?php echo base_url() . 'assets/dist/js/pages/dashboard2.js' ?>"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?php echo base_url() . 'assets/dist/js/demo.js' ?>"></script>
  <script type="text/javascript" src="<?php echo base_url() . 'assets/plugins/toast/jquery.toast.min.js' ?>"></script>
  <script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js"></script>
  <!-- page script -->
  <script>
    $(document).ready(function() {
      $("#test1").click(function() {
        textResizeFactor: 0.3 // Float
        // Text
        $.LoadingOverlay("show", {
          image: "",
          text: "Loading..."
        });
        setTimeout(function() {
          $.LoadingOverlay("text", "Proses mengirim email...");
        }, 2500);
        // Hide it after 3 seconds
        setTimeout(function() {
          $.LoadingOverlay("hide");
        }, 10000);
      });
    });
  </script>
  <script>
    var lineChartData = {
      labels: <?php echo json_encode($bulan); ?>,
      datasets: [

        {
          fillColor: "rgba(60,141,188,0.9)",
          strokeColor: "rgba(60,141,188,0.8)",
          pointColor: "#3b8bba",
          pointStrokeColor: "#fff",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(152,235,239,1)",
          data: <?php echo json_encode($value); ?>
        }

      ]

    }

    var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);

    var canvas = new Chart(myLine).Line(lineChartData, {
      scaleShowGridLines: true,
      scaleGridLineColor: "rgba(0,0,0,.005)",
      scaleGridLineWidth: 0,
      scaleShowHorizontalLines: true,
      scaleShowVerticalLines: true,
      bezierCurve: true,
      bezierCurveTension: 0.4,
      pointDot: true,
      pointDotRadius: 4,
      pointDotStrokeWidth: 1,
      pointHitDetectionRadius: 2,
      datasetStroke: true,
      tooltipCornerRadius: 2,
      datasetStrokeWidth: 2,
      datasetFill: true,
      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
      responsive: true
    });
  </script>

  <script>
    var lineChartData = {
      labels: <?php echo json_encode($bulan2); ?>,
      datasets: [

        {
          fillColor: "rgba(60,141,188,0.9)",
          strokeColor: "rgba(60,141,188,0.8)",
          pointColor: "#3b8bba",
          pointStrokeColor: "#fff",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(152,235,239,1)",
          data: <?php echo json_encode($value2); ?>
        }

      ]

    }

    var myLine = new Chart(document.getElementById("canvas2").getContext("2d")).Line(lineChartData);

    var canvas = new Chart(myLine).Line(lineChartData, {
      scaleShowGridLines: true,
      scaleGridLineColor: "rgba(0,0,0,.005)",
      scaleGridLineWidth: 0,
      scaleShowHorizontalLines: true,
      scaleShowVerticalLines: true,
      bezierCurve: true,
      bezierCurveTension: 0.4,
      pointDot: true,
      pointDotRadius: 4,
      pointDotStrokeWidth: 1,
      pointHitDetectionRadius: 2,
      datasetStroke: true,
      tooltipCornerRadius: 2,
      datasetStrokeWidth: 2,
      datasetFill: true,
      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
      responsive: true
    });
  </script>
  <?php if ($this->session->flashdata('msg') == 'success') : ?>
    <script type="text/javascript">
      $.toast({
        heading: 'Success',
        text: "Email berhasil dikirim ke user.",
        showHideTransition: 'slide',
        icon: 'success',
        hideAfter: false,
        position: 'bottom-right',
        bgColor: '#7EC857'
      });
    </script>

  <?php elseif ($this->session->flashdata('msg') == 'info') : ?>
    <script type="text/javascript">
      $.toast({
        heading: 'Info',
        text: "Rekening berhasil di update",
        showHideTransition: 'slide',
        icon: 'info',
        hideAfter: false,
        position: 'bottom-right',
        bgColor: '#00C9E6'
      });
    </script>
  <?php elseif ($this->session->flashdata('msg') == 'success-hapus') : ?>
    <script type="text/javascript">
      $.toast({
        heading: 'Success',
        text: "Rekening Berhasil dihapus.",
        showHideTransition: 'slide',
        icon: 'success',
        hideAfter: false,
        position: 'bottom-right',
        bgColor: '#7EC857'
      });
    </script>
  <?php else : ?>

  <?php endif; ?>
</body>

</html>