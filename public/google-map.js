$(document).ready(function () {
    function initialize() {
        var input = document.getElementById('location');
        var options = {
            // types: ['(regions)']
            //this should work !
        };

        var autocomplete = new google.maps.places.Autocomplete(input, options);
        // autocomplete.setComponentRestrictions({'country': ['us']});
    }

    google.maps.event.addDomListener(window, 'load', initialize);
    function initialize2() {
        var input = document.getElementById('search_place');
        var options = {
            // types: ['(regions)']
            //this should work !
        };

        var autocomplete2 = new google.maps.places.Autocomplete(input, options);
        // autocomplete.setComponentRestrictions({'country': ['us']});
    }

    google.maps.event.addDomListener(window, 'load', initialize2);


    function initialization() {
        var input = document.getElementById('desired_location_notify');
        var options = {
            types: ['(regions)'] //this should work !
        };
        var autocomplete = new google.maps.places.Autocomplete(input, options);
    }
    google.maps.event.addDomListener(window, 'load', initialization);
});
