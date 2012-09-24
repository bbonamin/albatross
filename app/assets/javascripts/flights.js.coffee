# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	map = new L.Map("map",
	  center: new L.LatLng(51.505, -0.09)
	  zoom: 8
	  layers: new L.TileLayer("http://a.tiles.mapbox.com/v3/bbonamin.map-dn9g2kzq/{z}/{x}/{y}.png")
	)

	lat_longs = []
	len = $('#flight_path').data('path').length
	
	i = 0
	while i < len
		lat_longs.push(new L.LatLng($('#flight_path').data('path')[i].latitude, $('#flight_path').data('path')[i].longitude))
		++i

	polyline = L.polyline(lat_longs, {color: 'red'}).addTo(map)
	map.fitBounds(polyline.getBounds())