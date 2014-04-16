var ContactPage = function () {

    return {
        
    	//Basic Map
        initMap: function () {
			var map;
			$(document).ready(function(){
			  map = new GMaps({
				div: '#map',
				lat: 30.288222,
				lng: -97.736904
			  });
			  
			  var marker = map.addMarker({
				lat: 30.288222,
				lng: -97.736904,
	            title: 'AdviseMe'
		       });
			});
        },

        //Panorama Map
        initPanorama: function () {
		    var panorama;
		    $(document).ready(function(){
		      panorama = GMaps.createPanorama({
		        el: '#panorama',
		        lat : 30.288222,
		        lng : -97.736904
		      });
		    });
		}        

    };
}();