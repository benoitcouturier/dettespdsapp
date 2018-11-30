<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>

<body>

	<div class="container">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="https://94.citoyens.com/wp-content/blogs.dir/2/files/2018/01/food-avenue-creteil-soleil-768x350.jpg"
						style="width: 100%" class="img-responsive" alt="Image">
					<div class="carousel-caption">
						<h3>Sell $</h3>
						<p>Money Money.</p>
					</div>
				</div>

				<div class="item">
					<img src="https://3.bp.blogspot.com/-I65hNZ5WAGY/V5oVZTim9qI/AAAAAAAAnFw/nnfHkU_XzFEcV3_uwXXap7tce8s7LvPHACEw/s1600/creteil-soleil-restauration-0161.jpg"
						style="width: 100%" class="img-responsive"
						alt="Image">
					<div class="carousel-caption">
						<h3>More Sell $</h3>
						<p>Lorem ipsum...</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="container text-center">
			<h3>What We Do</h3>
			<br>
			<div class="row">
				<div class="col-sm-4">
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
					<p>Current Project</p>
				</div>
				<div class="col-sm-4">
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
					<p>Project 2</p>
				</div>
				<div class="col-sm-4">
					<div class="well">
						<p>Some text..</p>
					</div>
					<div class="well">
						<p>Some text..</p>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>


</body>

</html>