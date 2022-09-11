<!DOCTYPE HTML>
<html>

<head>
	<title>Free Snow Bootstrap Website Template | Shop :: w3layouts</title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<script src="js/jquery.min.js"></script>
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
		.main table td{
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



									<!----carrito compras php---->
									<div class="login_buttons">
										<div class="check_button"><a href="checkout.html">Pagar</a></div>
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
		<h2>Productos</h2>
		<table>
			<tr>
				<td><b>producto</b> </td>
				<td><b>nombre</b></td>
				<td><b>descripcion</b></td>
				<td><b>precio</b></td>
			</tr>
			<?php
			include("conexion.php");

			$link=conectar();

			$sql = "SELECT * FROM producto";

			$query=mysqli_query($link,$sql);
			while ($mostrar = mysqli_fetch_array($query)) {
			?>
				<tr>
					<td><?php echo $mostrar['prod_codigo'] ?></td>
					<td><?php echo $mostrar['prod_nombre'] ?></td>
					<td><?php echo $mostrar['prod_precioventa'] ?></td>
					<td><?php echo $mostrar['prod_descripcion'] ?></td>
				</tr>
			<?php
			}

			?>
		</table>
		<br>
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