<?php
session_start();
$info = $_SESSION['user'];
$devengar = "";
include("conexion.php");
$cliente = "";
$administador = 0;
$link = conectar();

$sql = "SELECT * FROM cliente WHERE usua_codigo_fk='$info'";

$query = mysqli_query($link, $sql);
while ($mostrar = mysqli_fetch_array($query)) {

	$cliente = $mostrar['clie_codigo'];

?>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Angeles de Maria | Tienda de belleza</title>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<script src="js/jquery.min.js"></script>

		<link rel="stylesheet" href="css/fwslider.css" media="all">
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/fwslider.js"></script>

		<script type="text/javascript">
			$(document).ready(function() {
				$(".dropdown img.flag").addClass("flagvisibility");

				$(".dropdown dt a").click(function() {
					$(".dropdown dd ul").toggle();
				});

				$(".dropdown dd ul li a").click(function() {
					var text = $(this).html();
					$(".dropdown dt a span").html(text);
					$(".dropdown dd ul").hide();
					$("#result").html("Selected value is: " + getSelectedValue("sample"));
				});

				function getSelectedValue(id) {
					return $("#" + id).find("dt a span.value").html();
				}

				$(document).bind('click', function(e) {
					var $clicked = $(e.target);
					if (!$clicked.parents().hasClass("dropdown"))
						$(".dropdown dd ul").hide();
				});


				$("#flagSwitcher").click(function() {
					$(".dropdown img.flag").toggleClass("flagvisibility");
				});
			});
		</script>
		<style>
			.main table td {
				padding-left: 30px;
				padding-bottom: 10px;
			}
		</style>
	</head>

	<body>
		<!----header---->
		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="header-left">
							<div class="logo">
								<a href="index.html"><img src="images/logo.png" alt="" /></a>
							</div>
							<div class="menu">
								<a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
								<ul class="nav" id="nav">
									<li><a href="index.html">Inicio</a></li>
									<li><a href="shop.php">Tienda</a></li>
									<li><a href="login.html">Ingreso</a></li>
									<li><a href="contact.html">Contact0</a></li>
									<div class="clear"></div>
								</ul>
								<script type="text/javascript" src="js/responsive-nav.js"></script>
							</div>
							<div class="clear"></div>
						</div>
						<div class="header_right">
							<!-- codigo buscador-->
							<div class="search-box">
								<div id="sb-search" class="sb-search">
									<form>
										<input class="sb-search-input" placeholder="Ingrese producto a buscar..." type="search" name="search" id="search">
										<input class="sb-search-submit" type="submit" value="">
										<span class="sb-icon-search"> </span>
									</form>
								</div>
							</div>
							<!----buscador dentro de la pagina---->
							<script src="js/classie.js"></script>
							<script src="js/uisearch.js"></script>
							<script>
								new UISearch(document.getElementById('sb-search'));
							</script>
							<!----carrito de compras---->
							<ul class="icon1 sub-icon1 profile_img">
								<li><a class="active-icon c1" href="#"> </a>
									<ul class="sub-icon1 list">
										<div class="product_control_buttons">
											<a href="#"><img src="images/edit.png" alt="" /></a>
											<a href="#"><img src="images/close_edit.png" alt="" /></a>
										</div>
										<div class="clear"></div>
										<!----carrito compras php---->

										<table>
											<tr>
												<td><b>venta - </b></td>
												<td><b>fecha - </b></td>
												<td><b>cantidad - </b></td>
												<td><b>total - </b></td>
											</tr>

											<?php
											$sql2 = "SELECT * FROM venta WHERE clie_codigo_fk='$cliente'";

											$query2 = mysqli_query($link, $sql2);
											while ($mostrar2 = mysqli_fetch_array($query2)) {

											?>
												<tr>
													<td><?php echo $mostrar2['vent_codigo'] ?></td>
													<td><?php echo $mostrar2['vent_fecha'] ?></td>
													<td><?php echo $mostrar2['vent_cantidad'] ?></td>
													<td><?php echo $mostrar2['vent_total'] ?></td>
												</tr>
											<?php
											}
											?>
										</table>

										<!----carrito compras php---->
										<div class="login_buttons">
											<div class="check_button"><a href="checkout.php">Pagar</a></div>
											<div class="login_button"><a href="login.html">Ingreso</a></div>
											<div class="clear"></div>
										</div>
										<div class="clear"></div>
									</ul>
								</li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="main">
			<br>
			<h3>Informacion</h3>
			<form action="#">
				<table>
					<tr>
						<td> codigo:</td>
						<td><?php echo $mostrar['clie_codigo'];
							$administador = $mostrar['clie_codigo'];
							?></td>
					</tr>

					<tr>
						<td> identificacion:</td>
						<td><?php echo $mostrar['clie_tipoidentificacion'] ?></td>
						<td> numero identificacion:</td>
						<td><?php echo $mostrar['clie_identificacion'] ?></td>
					</tr>

					<tr>
						<td> nombre:</td>
						<td><?php echo $mostrar['clie_nombre'] ?></td>
						<td> telefono:</td>
						<td><?php echo $mostrar['clie_telefono'] ?></td>
					</tr>
					<tr>
						<td> direccion:</td>
						<td><?php echo $mostrar['clie_direccion'] ?></td>
						<td> correo:</td>
						<td><?php echo $mostrar['clie_correo'] ?></td>
					</tr>
					<tr>
						<td>
							<a href="login.html">Salir</a>
						</td>
					</tr>
				<?php

			}
				?>
				</table>
			</form>
			<br>

			<?php
			if ($administador == 16) {
			?>
				<h1>menu de administracion</h1>

				<div class="container mt-5">
					<div class="row">

						<div class="col-md-3">
							<h1>Ingrese datos</h1>
							<form action="insertar.php" method="POST">

								<input type="text" class="form-control mb-3" name="coder" placeholder="Codigo">
								<input type="text" class="form-control mb-3" name="namer" placeholder="Nombres">
								<input type="Password" class="form-control mb-3" name="claver" placeholder="Clave">


								<input type="submit" class="btn btn-primary">
							</form>
						</div>

						<div class="col-md-8">
							<table class="table">
								<thead class="table-success table-striped">
									<tr>
										<th>Codigo</th>
										<th>Nombres</th>
										<th>Clave</th>
										<th></th>
										<th></th>
									</tr>
								</thead>

								<tbody>
									<?php
									$sql3 = "SELECT *  FROM usuario";

									$query3 = mysqli_query($link, $sql3);
									while ($row = mysqli_fetch_array($query3)) {
									?>
										<tr>
											<th><?php echo $row['usua_codigo'] ?></th>
											<th><?php echo $row['usua_nombre'] ?></th>
											<th><?php echo $row['usua_clave'] ?></th>
											<th><a href="actualizar.php?id=<?php echo $row['usua_codigo'] ?>" class="btn btn-info">Editar</a></th>
											<th><a href="delete.php?id=<?php echo $row['usua_codigo'] ?>" class="btn btn-danger">Eliminar</a></th>
										</tr>
									<?php
									}
									?>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<h1>productos en stock </h1>
				<div style="width: 900px;">
					<canvas id="myChart"></canvas>
				</div>
				<?php
				$sql4 = "SELECT prod_nombre,prod_stock FROM producto";

				$query4 = mysqli_query($link, $sql4);

				foreach ($query4 as $data) {
					$month[] = $data['prod_nombre'];
					$amount[] = $data['prod_stock'];
				}

				?>
				<script>
					// === parte de los productos chartjs (framework de java script) ===
					const labels = <?php echo json_encode($month) ?>;
					const data = {
						labels: labels,
						datasets: [{
							label: 'Produtos en Stock',
							data: <?php echo json_encode($amount) ?>,
							backgroundColor: [
								'rgba(255, 99, 132, 0.2)',
								'rgba(255, 159, 64, 0.2)',
								'rgba(255, 205, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(201, 203, 207, 0.2)'
							],
							borderColor: [
								'rgb(255, 99, 132)',
								'rgb(255, 159, 64)',
								'rgb(255, 205, 86)',
								'rgb(75, 192, 192)',
								'rgb(54, 162, 235)',
								'rgb(153, 102, 255)',
								'rgb(201, 203, 207)'
							],
							borderWidth: 1
						}]
					};

					const config = {
						type: 'bar',
						data: data,
						options: {
							scales: {
								y: {
									beginAtZero: true
								}
							}
						},
					};

					var myChart = new Chart(
						document.getElementById('myChart'),
						config
					);
				</script>

			<?php
			}
			?>




		</div>

		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>Productos</h4>
							<li><a href="shop.php">Tienda</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>Cuentas</h4>
							<li><a href="login.html">Ingresar</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>Customer Support</h4>
							<li><a href="contact.html">Contacto</a></li>
						</ul>
					</div>
				</div>
				<div class="row footer_bottom">
					<div class="copy">
						<p>© 2022 Salome Bedoya & Hector Beltran</p>
					</div>
				</div>
			</div>
		</div>
	</body>

	</html>