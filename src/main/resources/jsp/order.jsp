<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <title>Корзина</title>
    <script
            src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
        var map;
        function initialize() {
            var mapOptions = {
                zoom: 9,
                center: new google.maps.LatLng(59.938025, 30.279565)
            };
            map = new google.maps.Map(document.getElementById('map-canvas'),
                    mapOptions);

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(59.938025, 30.279565),
                raiseOnDrag:true,
                title: "VasilievIslandStore",
                clickable:true,
                zIndex: 2,
                map: map
            });

            google.maps.event.addListener(marker, 'click', function() {
                window.location = "/webstore/jsp/orderprocessing.jsp?storeName=" + marker.title;
            });

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(59.955136, 30.291731),
                raiseOnDrag:true,
                title: "MaliyProspStore",
                clickable:true,
                zIndex: 3,
                map: map
            });
            google.maps.event.addListener(marker, 'click', function() {
                window.location = "/webstore/jsp/orderprocessing.jsp?storeName=" + marker.title;
            });

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(59.971247, 30.314519),
                raiseOnDrag:true,
                title: "UlitsaPopovaStore",
                clickable:true,
                zIndex: 4,
                map: map
            });
            google.maps.event.addListener(marker, 'click', function() {
                window.location = "/webstore/jsp/orderprocessing.jsp?storeName=" + marker.title;
            });


        }


        google.maps.event.addDomListener(window, 'load', initialize);

    </script>
    <jsp:useBean id="bucket" class="com.javaweb.beans.BucketBean" scope="session"/>
</head>
<body>
<h3>Заказ</h3>
<c:set var="status" value="Производится заказ"/>
<h5>Выберите магазин пожалуйста</h5>
<form action="orderprocessing.jsp" method="get" target="_blank">
    <input type="radio"  name="address" value="1" checked/>Большой пр., 32<br>
    <input type="radio" name="address" value="2"/>Малый пр., 16<br>
    <input type="radio" name="address" value="3"/>Попова, 22<br>
    <input type="submit" value="Выбрать"/>
</form>


<div id="map-canvas" style="height:300px; width:500px"></div>
</body>
</html>