<?php
    session_start();
    error_reporting(0);
    include('includes/dbconn.php');

    if (strlen($_SESSION['vpmsaid']==0)) {
    header('location:logout.php');
    }
  ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/datatable.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<!--Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>
<body>
        <?php include 'includes/navigation.php' ?>
		<?php
		$page="income";
		include 'includes/sidebar.php'
		?>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="dashboard.php">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Pendapatan</li>
			</ol>
		</div>
		<div class="row">
			<div class="col-lg-12">
			</div>
		</div>
		<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Total Pendapatan</div>
						<div class="panel-body">
                        <div class="col-md-12 no-padding">
                            <div class="row progress-labels">
								<h1 class="col-md-12 text-center">$ <?php include 'counters/income-count.php' ?></h1>
								<!-- <div class="col-sm-6" style="text-align: right;">50%</div> -->
							</div>
                            <p class="lead text-center"><?php echo "Total parking charge collected till date - " . date("Y/m/d") . "<br>"; ?></p>
							<div class="progress">
								<div data-percentage="0%" style="width: 38%;" class="progress-bar progress-bar-teal" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
							</div>	
                        </div>
						</div>
					</div>
				</div>
        </div>
        <div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Pendapatan Hari Ini</div>
						<div class="panel-body">
                        <div class="col-md-12 no-padding">
                            <div class="row progress-labels">
								<h1 class="col-md-12 text-center">$ <?php include 'counters/currentday-income.php' ?></h1>
								<!-- <div class="col-sm-6" style="text-align: right;">50%</div> -->
							</div>
                            <p class="lead text-center">Total biaya parkir hari ini</p>
							<div class="progress">
								<div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-teal" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
                        </div>
						</div>
					</div>
				</div>	
        </div>
        <div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Pendapatan Kemarin</div>
						<div class="panel-body">
                        <div class="col-md-12 no-padding">
                            <div class="row progress-labels">
								<h1 class="col-md-12 text-center">$ <?php include 'counters/yesday-income.php' ?></h1>
								<!-- <div class="col-sm-6" style="text-align: right;">50%</div> -->
							</div>
                            <p class="lead text-center">Total biaya parkir Kemarin</p>
							<div class="progress">
								<div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-teal" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
                        </div> 
						</div>
					</div>
				</div>
        </div>
        <?php include 'includes/footer.php'?>
	</div>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function () {
		var chart1 = document.getElementById("line-chart").getContext("2d");
		window.myLine = new Chart(chart1).Line(lineChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
		});
};
	</script>
    <script>
        $(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
</body>
</html>