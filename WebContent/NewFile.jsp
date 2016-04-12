<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js ie6 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js ie7 lt-ie8 lt-ie9"> <![endif]-->
<!--[if IE 8]> <html class="no-js ie8 lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@page import="mobile.main.StaticStorage"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="mobile.main.DBConnector"%>

<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Mobile - Car List</title>
<meta name="description" content="Automarket">

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/uniform.default.css">
<link rel="stylesheet" href="css/prettyPhoto.css">
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<script src="js/vendor/jquery-1.8.2.min.js"></script>
<script src="js/vendor/selectivizr.js"></script>
<script src="js/vendor/PIE.js"></script>
<script src="js/plugins/jquery.placeholder.min.js"></script>
<script src="js/plugins/jquery.uniform.min.js"></script>
<script src="js/plugins/jquery.flexslider-min.js"></script>
<script src="js/plugins/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="js/plugins/jquery.prettyPhoto.js"></script>
<script src="js/plugins/jquery.countdown.js"></script>

<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
</head>
<body>
	<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
	<header>
		<div class="content-holder">
			<div class="layer-one">
				<div class="sub-title">
					<h1>
						<a href="index.html">Mobile</a>
					</h1>
					<p class="sub-title">Car marketplace</p>
				</div>

				<div class="dealer-login">
					<a href="dealer-details.html" class="dealer-name">Dealer Name</a> <a
						href="#" class="sign-out">Sign Out</a>
				</div>

				<div class="header-buttons">
					<a href="./Register" class="add-an-offer rounded-link-box"><span
						class="box-content"><strong class="plus-sign">+</strong>&nbsp;Add
							An Offer</span></a>

				</div>
			</div>
			<!--.layer-one-->

			<div class="layer-two">
				<nav>
					<ul>
						<li class="nav-cars current-item"><a href="car-list.html">Cars</a></li>
						<li class="nav-bike"><a href="#">Bikes</a></li>
						<li class="nav-truck"><a href="#">Trucks</a></li>
						<li class="nav-parts"><a href="#">Parts</a></li>
					</ul>
				</nav>

				<form id="header-search" action="car-list.html" method="post">
					<input type="text" name="quick_search"
						onfocus="if(this.value == 'Quick Search, Ex: Mercedes-Benz E220') { this.value = ''; }"
						onblur="if(this.value == '') { this.value = 'Quick Search, Ex: Mercedes-Benz E220'; }"
						value="Quick Search, Ex: Mercedes-Benz E220" class="quick-search">
					<select name="type-option">
						<option value="cars" selected="selected">Cars</option>
						<option value="bikes">Bikes</option>
						<option value="trucks">Trucks</option>
						<option value="Parts">Parts</option>
					</select>
					<div class="search-submit">
						<input type="submit" value="Search" />
					</div>
				</form>
			</div>
			<!--.layer-two-->
		</div>
	</header>

	<div id="page-content">

		<section id="car-pagination">
			<div class="content-holder">
				<div class="page-main-heading extra-space">
					<div class="heading-location">
						<h2>
							<span class="bold">BMW</span> 325
						</h2>
						<p class="page-location">
							<a href="index.html">Home </a> <span class="greater-than">&gt;&gt;</span>
							<a href="car-list.html">Cars</a> <span class="greater-than">&gt;&gt;</span>
							<a href="#">BMW</a> <span class="greater-than">&gt;&gt;</span> <a
								href="#">BMW 325</a>
						</p>
					</div>

				</div>

				<nav class="default-tabs split-tabs">
					<ul>
						<li class="current-item"><a href="#">All Cars</a></li>
						<li><a href="#">New Cars</a></li>
						<li><a href="#">Used Cars</a></li>
					</ul>
				</nav>

				<div class="view-select-tabs">
					<a href="#" id="list-view"><span>List View</span></a> <a href="#"
						id="grid-view" class="current"><span>Grid View</span></a>
				</div>
			</div>
		</section>
		<!--#car-pagination -->

		<section id="search-list">
			<div class="content-holder">
				<div class="full-width">

					<div class="one-half col-241 search-area">
						<form id="search-filters" action="./Search" method="get">
							<fieldset class="grey-corner-box">
								<legend>
									<span class="bold">Search</span> filters
								</legend>
								<ul>
									<li><label for="manufacturer" name="manufacturer">Manufacturer:</label>
										<select id="manufacturer">
											<option selected="selected">Select</option>
											<option selected="selected">Select</option>
											<option value="AC">AC</option>
											<option value="Acura">Acura</option>
											<option value="Aixam">Aixam</option>
											<option value="Alfa romeo">Alfa romeo</option>
											<option value="Aston martin">Aston martin</option>
											<option value="Audi">Audi</option>
											<option value="Austin">Austin</option>
											<option value="Bentley">Bentley</option>
											<option value="Berliner">Berliner</option>
											<option value="Bmw">Bmw</option>
											<option value="Borgward">Borgward</option>
											<option value="Bugatti">Bugatti</option>
											<option value="Buick">Buick</option>
											<option value="Cadillac">Cadillac</option>
											<option value="Chevrolet">Chevrolet</option>
											<option value="Chrysler">Chrysler</option>
											<option value="Citroen">Citroen</option>
											<option value="Corvette">Corvette</option>
											<option value="Dacia">Dacia</option>
											<option value="Daewoo">Daewoo</option>
											<option value="Daihatsu">Daihatsu</option>
											<option value="Daimler">Daimler</option>
											<option value="Datsun">Datsun</option>
											<option value="Dkw">Dkw</option>
											<option value="Dodge">Dodge</option>
											<option value="Dr">Dr</option>
											<option value="Eagle">Eagle</option>
											<option value="FSO">FSO</option>
											<option value="Ferrari">Ferrari</option>
											<option value="Fiat">Fiat</option>
											<option value="Ford">Ford</option>
											<option value="Geo">Geo</option>
											<option value="Great Wall">Great Wall</option>
											<option value="Heinkel">Heinkel</option>
											<option value="Honda">Honda</option>
											<option value="Hyundai">Hyundai</option>
											<option value="Ifa">Ifa</option>
											<option value="Infiniti">Infiniti</option>
											<option value="Innocenti">Innocenti</option>
											<option value="Isuzu">Isuzu</option>
											<option value="Jaguar">Jaguar</option>
											<option value="Kia">Kia</option>
											<option value="Lada">Lada</option>
											<option value="Lamborghini">Lamborghini</option>
											<option value="Lancia">Lancia</option>
											<option value="Lexus">Lexus</option>
											<option value="Lifan">Lifan</option>
											<option value="Lincoln">Lincoln</option>
											<option value="Lotus">Lotus</option>
											<option value="Maserati">Maserati</option>
											<option value="Matra">Matra</option>
											<option value="Maybach">Maybach</option>
											<option value="Mazda">Mazda</option>
											<option value="McLaren">McLaren</option>
											<option value="Mercedes">Mercedes</option>
											<option value="Mercury">Mercury</option>
											<option value="Mg">Mg</option>
											<option value="Mini">Mini</option>
											<option value="Mitsubishi">Mitsubishi</option>
											<option value="Morgan">Morgan</option>
											<option value="Moskvich">Moskvich</option>
											<option value="Nissan">Nissan</option>
											<option value="Oldsmobile">Oldsmobile</option>
											<option value="Opel">Opel</option>
											<option value="Perodua">Perodua</option>
											<option value="Peugeot">Peugeot</option>
											<option value="Pgo">Pgo</option>
											<option value="Plymouth">Plymouth</option>
											<option value="Polonez">Polonez</option>
											<option value="Pontiac">Pontiac</option>
											<option value="Porsche">Porsche</option>
											<option value="Proton">Proton</option>
											<option value="Renault">Renault</option>
											<option value="Rolls-Royce">Rolls-Royce</option>
											<option value="Rover">Rover</option>
											<option value="SECMA">SECMA</option>
											<option value="Saab">Saab</option>
											<option value="Samand">Samand</option>
											<option value="Saturn">Saturn</option>
											<option value="Scion">Scion</option>
											<option value="Seat">Seat</option>
											<option value="Shatenet">Shatenet</option>
											<option value="Shuanghuan">Shuanghuan</option>
											<option value="Simca">Simca</option>
											<option value="Skoda">Skoda</option>
											<option value="Smart">Smart</option>
											<option value="Ssang yong">Ssang yong</option>
											<option value="Subaru">Subaru</option>
											<option value="Suzuki">Suzuki</option>
											<option value="Talbot">Talbot</option>
											<option value="Tata">Tata</option>
											<option value="Tavria">Tavria</option>
											<option value="Tazzari">Tazzari</option>
											<option value="Terberg">Terberg</option>
											<option value="Tesla">Tesla</option>
											<option value="Tofas">Tofas</option>
											<option value="Toyota">Toyota</option>
											<option value="Trabant">Trabant</option>
											<option value="Triumph">Triumph</option>
											<option value="VROMOS">VROMOS</option>
											<option value="Volga">Volga</option>
											<option value="Volvo">Volvo</option>
											<option value="Vw">Vw</option>
											<option value="Warszawa">Warszawa</option>
											<option value="Wartburg">Wartburg</option>
											<option value="Wiesmann">Wiesmann</option>
											<option value="Xinshun">Xinshun</option>
											<option value="Zastava">Zastava</option>

									</select></li>
									<li><label for="model">Model:</label> <select id="model">
											<option selected="selected">Select</option>
											<option value="option1">Option 1</option>
											<option value="option2">Option 2</option>
											<option value="option3">Option 3</option>
									</select></li>
									<li class="select-two">
										<div>
											<label for="min-price">Min Price:</label> <select
												id="min-price">
												<option selected="selected">Select</option>
												<option value="option1000">1000</option>
												<option value="option2000">2000</option>
												<option value="option10000">10&nbsp000</option>
											</select>
										</div>
										<div>
											<label for="max-price">Max Price:</label> <select
												id="max-price">
												<option selected="selected">Select</option>
												<option value="option5000">5000</option>
												<option value="option10000">10&nbsp000</option>
												<option value="option25000">25&nbsp000</option>
											</select>
										</div>
									</li>
									<li><label for="transmission">Transmission:</label> <select
										id="transmission">
											<option selected="selected">Select</option>
											<option value="option1">Manual</option>
											<option value="option2">Automatic</option>
											<option value="option3">Semi-automatic</option>
									</select></li>
									<li><label for="fuel-type">Fuel type:</label> <select
										id="fuel-type">
											<option selected="selected">Select</option>
											<option value="option1">Gasoline</option>
											<option value="option2">Diesel</option>
											<option value="option3">Electric</option>
									</select></li>
									<li><label for="body-type">Body type:</label> <select
										id="body-type">
											<option selected="selected">Select</option>
											<option value="option1">Sedan</option>
											<option value="option2">Coupe</option>
											<option value="option3">Estate</option>
											<option value="option4">Cabrio</option>
									</select></li>
									<li><label for="color">Color:</label> <select id="color">
											<option selected="selected">Select</option>
											<option value="option1">White</option>
											<option value="option2">Black</option>
											<option value="option3">Blue</option>
											<option value="option4">Red</option>
											<option value="option5">Green</option>
									</select></li>

									<li class="select-two">
										<div>
											<label for="min-year">Min Year:</label> <select id="min-year">
												<option selected="selected">Select</option>
												<option value="2016">after 2016</option>
												<option value="2015">after 2015</option>
												<option value="2014">after 2014</option>
												<option value="2013">after 2013</option>
												<option value="2012">after 2012</option>
												<option value="2011">after 2011</option>
												<option value="2010">after 2010</option>
												<option value="2009">after 2009</option>
												<option value="2008">after 2008</option>
												<option value="2007">after 2007</option>
												<option value="2006">after 2006</option>
												<option value="2005">after 2005</option>
												<option value="2004">after 2004</option>
												<option value="2003">after 2003</option>
												<option value="2002">after 2002</option>
												<option value="2001">after 2001</option>
												<option value="2000">after 2000</option>
												<option value="1999">after 1999</option>
												<option value="1998">after 1998</option>
												<option value="1997">after 1997</option>
												<option value="1996">after 1996</option>
												<option value="1995">after 1995</option>
												<option value="1994">after 1994</option>
												<option value="1993">after 1993</option>
												<option value="1992">after 1992</option>
												<option value="1991">after 1991</option>
												<option value="1990">after 1990</option>
												<option value="1989">after 1989</option>
												<option value="1988">after 1988</option>
												<option value="1987">after 1987</option>
												<option value="1986">after 1986</option>
												<option value="1985">after 1985</option>
												<option value="1984">after 1984</option>
												<option value="1983">after 1983</option>
												<option value="1982">after 1982</option>
												<option value="1981">after 1981</option>
												<option value="1980">after 1980</option>
												<option value="1979">after 1979</option>
												<option value="1978">after 1978</option>
												<option value="1977">after 1977</option>
												<option value="1976">after 1976</option>
												<option value="1975">after 1975</option>
												<option value="1974">after 1974</option>
												<option value="1973">after 1973</option>
												<option value="1972">after 1972</option>
												<option value="1971">after 1971</option>
												<option value="1970">after 1970</option>
												<option value="1969">after 1969</option>
												<option value="1968">after 1968</option>
												<option value="1967">after 1967</option>
												<option value="1966">after 1966</option>
												<option value="1965">after 1965</option>
												<option value="1964">after 1964</option>
												<option value="1963">after 1963</option>
												<option value="1962">after 1962</option>
												<option value="1961">after 1961</option>
												<option value="1960">after 1960</option>
												<option value="1959">after 1959</option>
												<option value="1958">after 1958</option>
												<option value="1957">after 1957</option>
												<option value="1956">after 1956</option>
												<option value="1955">after 1955</option>
												<option value="1954">after 1954</option>
												<option value="1953">after 1953</option>
												<option value="1952">after 1952</option>
												<option value="1951">after 1951</option>
												<option value="1950">after 1950</option>
												<option value="1949">after 1949</option>
												<option value="1948">after 1948</option>
												<option value="1947">after 1947</option>
												<option value="1946">after 1946</option>
												<option value="1945">after 1945</option>
												<option value="1944">after 1944</option>
												<option value="1943">after 1943</option>
												<option value="1942">after 1942</option>
												<option value="1941">after 1941</option>
												<option value="1940">after 1940</option>
												<option value="1939">after 1939</option>
												<option value="1938">after 1938</option>
												<option value="1937">after 1937</option>
												<option value="1936">after 1936</option>
												<option value="1935">after 1935</option>
												<option value="1934">after 1934</option>
												<option value="1933">after 1933</option>
												<option value="1932">after 1932</option>
												<option value="1931">after 1931</option>
												<option value="1930">after 1930</option>
											</select>
										</div>
										<div>
											<label for="max-year">Max Year:</label> <select id="max-year">
												<option selected="selected">Select</option>
												<option value="2016">before 2016</option>
												<option value="2015">before 2015</option>
												<option value="2014">before 2014</option>
												<option value="2013">before 2013</option>
												<option value="2012">before 2012</option>
												<option value="2011">before 2011</option>
												<option value="2010">before 2010</option>
												<option value="2009">before 2009</option>
												<option value="2008">before 2008</option>
												<option value="2007">before 2007</option>
												<option value="2006">before 2006</option>
												<option value="2005">before 2005</option>
												<option value="2004">before 2004</option>
												<option value="2003">before 2003</option>
												<option value="2002">before 2002</option>
												<option value="2001">before 2001</option>
												<option value="2000">before 2000</option>
												<option value="1999">before 1999</option>
												<option value="1998">before 1998</option>
												<option value="1997">before 1997</option>
												<option value="1996">before 1996</option>
												<option value="1995">before 1995</option>
												<option value="1994">before 1994</option>
												<option value="1993">before 1993</option>
												<option value="1992">before 1992</option>
												<option value="1991">before 1991</option>
												<option value="1990">before 1990</option>
												<option value="1989">before 1989</option>
												<option value="1988">before 1988</option>
												<option value="1987">before 1987</option>
												<option value="1986">before 1986</option>
												<option value="1985">before 1985</option>
												<option value="1984">before 1984</option>
												<option value="1983">before 1983</option>
												<option value="1982">before 1982</option>
												<option value="1981">before 1981</option>
												<option value="1980">before 1980</option>
												<option value="1979">before 1979</option>
												<option value="1978">before 1978</option>
												<option value="1977">before 1977</option>
												<option value="1976">before 1976</option>
												<option value="1975">before 1975</option>
												<option value="1974">before 1974</option>
												<option value="1973">before 1973</option>
												<option value="1972">before 1972</option>
												<option value="1971">before 1971</option>
												<option value="1970">before 1970</option>
												<option value="1969">before 1969</option>
												<option value="1968">before 1968</option>
												<option value="1967">before 1967</option>
												<option value="1966">before 1966</option>
												<option value="1965">before 1965</option>
												<option value="1964">before 1964</option>
												<option value="1963">before 1963</option>
												<option value="1962">before 1962</option>
												<option value="1961">before 1961</option>
												<option value="1960">before 1960</option>
												<option value="1959">before 1959</option>
												<option value="1958">before 1958</option>
												<option value="1957">before 1957</option>
												<option value="1956">before 1956</option>
												<option value="1955">before 1955</option>
												<option value="1954">before 1954</option>
												<option value="1953">before 1953</option>
												<option value="1952">before 1952</option>
												<option value="1951">before 1951</option>
												<option value="1950">before 1950</option>
												<option value="1949">before 1949</option>
												<option value="1948">before 1948</option>
												<option value="1947">before 1947</option>
												<option value="1946">before 1946</option>
												<option value="1945">before 1945</option>
												<option value="1944">before 1944</option>
												<option value="1943">before 1943</option>
												<option value="1942">before 1942</option>
												<option value="1941">before 1941</option>
												<option value="1940">before 1940</option>
												<option value="1939">before 1939</option>
												<option value="1938">before 1938</option>
												<option value="1937">before 1937</option>
												<option value="1936">before 1936</option>
												<option value="1935">before 1935</option>
												<option value="1934">before 1934</option>
												<option value="1933">before 1933</option>
												<option value="1932">before 1932</option>
												<option value="1931">before 1931</option>
												<option value="1930">before 1930</option>
											</select>
										</div>
									</li>

									<li>
										<!-- add this to general styles -->
										<div class="search-button">
											<input type="submit" value="Search" />
										</div>
									</li>
								</ul>
							</fieldset>
						</form>
					</div>

					<div class="results-list one-half col-701">
						<div class="sort-view layer-one">

							<div id="sort-by">
								<select name="sort-by">
									<option selected="selected">Sort by</option>
									<option value="date">Date</option>
									<option value="price">Price</option>
									<option value="maker">Maker</option>
								</select>
							</div>
							<div id="view-on-page">
								<select name="view-on-page">
									<option selected="selected">Number of offers</option>
									<option value="views_ten">10</option>
									<option value="views_twenty">20</option>
								</select>
							</div>

							<div class="pagination">
								<a href="#" class="current-item"><span>1</span></a> <a href="#"><span>2</span></a>
								<a href="#"><span>3</span></a> <span class="space-between">...</span>
								<a href="#"><span>8</span></a> <a href="#" class="last-button">Next</a>
							</div>
						</div>

						<div class="layer-two">

							<div id="cars-list" class="grid-view list-content">
								<ul class="offer-small">


									<!-- Car post -->
									<%
										Connection con = DBConnector.getInstance().getConnection();

										Statement stmt = con.createStatement();
										ResultSet rs = stmt.executeQuery("SELECT count(mps_id) from mps;");
										rs.next();

										// Get the row counts
										int rows = rs.getInt(1);

										int resultPerPage = rows / 20;
										
										// Initialize storage, cars, and everything
										StaticStorage.initializeStorage();

										// New statement
										Statement stmt1 = con.createStatement();
										ResultSet rs1 = stmt1.executeQuery("SELECT * FROM mps;");

										while (rs1.next()) {
										
											int markaId = rs1.getInt("marka_id");
											int modelId = rs1.getInt("model_id");
											
											String marka = StaticStorage.convert(markaId);
											System.out.println(marka);
											
											String model = StaticStorage.convertModel(modelId);
							
											String[] str = new String[] {"Sofia", "Plovdiv", "Ruse", "Veliko Tarnovo", "Varna"};
											String city = str[((int) (Math.random() * str.length))];

											int rnd = ((int) (Math.random() * str.length) * 1050);
											int price = rnd;
											
											
											int year = rs1.getInt("production_date");
											int power = rs1.getInt("power");
											int km = rs1.getInt("km");
											
											String[] fuel = new String[]{"Benzin", "Diesel"};
											String f = fuel[((int) (Math.random() * fuel.length))];
											
											String[] chassis = new String[]{"Coupe", "Hatchback", "Cabrio", "Sedan"};
											String ch = chassis[((int) (Math.random() * chassis.length))];
											
									%>
									<li><a href="car-details.html" class="item-link"> <img
											src="images/mercedes-thumb.jpg" alt="offer car" />
											<div class="entry-label">
												<h4 class="car-title"><% out.print(marka + " " + model ); %></h4>
												<span class="price-tag"><% out.print(price); %> Leva</span> <span
													class="location-car">Location: <% out.print(city); %></span>
											</div>

											<div class="entry-overlay">
												<ul class="car-list-details item-specs">
													<li>Registration <% out.print(year); %></li>
													<li>2.5 <% out.print(f); %></li>
													<li><% out.print(power); %> HP</li>
													<li>Body <% out.print(ch); %></li>
													<li><% out.print(km); %> KM</li>
												</ul>
											</div>
									</a></li>
									<!--/Car post -->

									<%
										}
									%>
								</ul>
							</div>

						</div>
						<!--.layer-two-->

						<div class="layer-three">
							<div class="pagination">
								<a href="#" class="current-item"><span>1</span></a> <a href="#"><span>2</span></a>
								<a href="#"><span>3</span></a> <span class="space-between">...</span>
								<a href="#"><span>8</span></a> <a href="#" class="last-button">Next</a>
							</div>
						</div>
					</div>


				</div>
			</div>
		</section>
		<!--#search-list-->

	</div>
	<!--#page-content-->

	<footer>
		<div class="layer-one">
			<div class="content-holder">
				<nav>
					<ul>
						<li><a href="./Register">Add an offer</a></li>
						<li><a href="log-in.html">Register dealer</a></li>
						<li><a href="log-in.html">Login Dealer</a></li>
					</ul>
				</nav>
	</footer>

</body>
</html>
