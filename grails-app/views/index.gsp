<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Monitor</title>
<style type="text/css" media="screen">
#status {
	background-color: #eee;
	border: .2em solid #fff;
	margin: 2em 2em 1em;
	padding: 1em;
	width: 12em;
	float: left;
	-moz-box-shadow: 0px 0px 1.25em #ccc;
	-webkit-box-shadow: 0px 0px 1.25em #ccc;
	box-shadow: 0px 0px 1.25em #ccc;
	-moz-border-radius: 0.6em;
	-webkit-border-radius: 0.6em;
	border-radius: 0.6em;
}

.ie6 #status {
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
	font-size: 0.9em;
	list-style-type: none;
	margin-bottom: 0.6em;
	padding: 0;
}

#status li {
	line-height: 1.3;
}

#status h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin: 0 0 0.3em;
}

#page-body {
	margin: 4em 4em 4em 4em;
}

#pointers {
	margin: 0em 0em 0em 1em
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	line-height: 1.5;
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	line-height: 1.3;
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#status {
		display: none;
	}
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}
</style>
<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"
	type="text/javascript"></script>

<script>
	var map;
	function initialize() {
		var mapOptions = {
			zoom : 8,
			center : new google.maps.LatLng(12.971545, 77.594606),
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		var myLatlng = new google.maps.LatLng(12.971545, 77.594606);
		map = new google.maps.Map(document.getElementById('map-canvas'),
				mapOptions);
		 var marker = new google.maps.Marker({
		      position: myLatlng,
		      map: map,
		      title:"A Device",
		      animation: google.maps.Animation.DROP,
		  });
	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div id="page-body" role="main">
		<div id='map-canvas'></div>
		<div id='index-text'>
			<p>
				<b>An online portal to view the readings of your GPRS enabled
					devices.</b>
			</p>
			<div id="pointers">
				<li>See the current reading of your device online.</li>
				<li>See the pattern and statistics of the readings using
					graphs.</li>
				<li>See the updated position of a moving device in maps.</li>
			</div>
		</div>
		<div class='clear-both'></div>
	</div>
</body>
</html>
