<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include file="/html/accueilLink_js_css.html"%>
<body>
	<div class="conteneur">
		<div class="row marginNavBar">
			<div class="col-lg-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="https://i.ytimg.com/vi/J3clK-X9u7Q/maxresdefault.jpg"
								style="width: 100%" class="img-responsive" alt="Image">
							<div class="carousel-caption">
								<h3>Centre</h3>
								<p>Place Vendeaume</p>
							</div>
						</div>

						<div class="item">
							<img
								src="https://image.tmdb.org/t/p/w1280/9GJgBfqeK0D7lQWeCLPJz1QLmBF.jpg"
								style="width: 100%" class="img-responsive" alt="Image">
							<div class="carousel-caption">
								<h3>Noel</h3>
								<p>Prenez vous en Photo avec le pere Noel</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Précédent</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Suivant</span>
					</a>
				</div>

				<div class="container text-center">
					<h3>Le centre commercial</h3>
					<br>
					<div class="row">
						<div class="col-sm-4">
							<img src="/X-MALL-APP/image/accueil/histoire-d-or-310.jpeg"
								class="img-responsive" style="width: 100%" alt="Image">
							<p>150 Magasins différents</p>
						</div>
						<div class="col-sm-4">
							<img src="/X-MALL-APP/image/accueil/magasin-bio-natureo-06.jpg"
								class="img-responsive" style="width: 100%" alt="Image">
							<p>Des milliers d'articles</p>
						</div>
						<div class="col-sm-4">
							<div class="well">
								<p><a class="lienColor" href="Magasin.do">Voir les magasins </a></p>
							</div>
							<div class="well">
								<p>Rechercher un article</p>
							</div>
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>

	<footer class="footer-bs">
		<div class="row">
			<div class="col-md-3 footer-brand animated fadeInLeft">
				<h2>X-MALL</h2>
				<p>Le futur du commerce sur place et en ligne</p>
				<p>X-MALL 2018, All rights reserved</p>
			</div>
			<div class="col-md-4 footer-nav animated fadeInUp">
				<h4>Menu </h4>
				<div class="col-md-6">
					<ul class="pages">
						<li><a href="#">Voyages</a></li>
						<li><a href="#">Nature</a></li>
						<li><a href="#">Nouveautes</a></li>
						<li><a href="#">Sciences</a></li>
						<li><a href="#">Avis</a></li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="list">
						<li><a href="#">A propos de nous</a></li>
						<li><a href="#">Contacts</a></li>
						<li><a href="#">Termes et Conditions</a></li>
						<li><a href="#">Vie privee</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2 footer-social animated fadeInDown">
				<h4>Follow Us</h4>
				<ul>
					<li><a href="#">Facebook</a></li>
					<li><a href="#">Twitter</a></li>
					<li><a href="#">Instagram</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-ns animated fadeInRight">
				<h4>Auteurs</h4>
				<p>WODLING Terence</p>
				<p>GIANG Thomas</p>
				<p>Suite...</p>
			</div>
		</div>
	</footer>
</body>

</html>