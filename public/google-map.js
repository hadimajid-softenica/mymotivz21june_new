$(document).ready(function () {
    var input = document.getElementById('location');
    var input1 = document.getElementById('search_place');
    var input2 = document.getElementById('desired_location_notify');


    function initialize() {
        var options = {
            // types: ['(regions)']
            //this should work !
        };

        var autocomplete = new google.maps.places.Autocomplete(input, options);
        // autocomplete.setComponentRestrictions({'country': ['us']});
    }

    if(input!=null){
        google.maps.event.addDomListener(window, 'load', initialize);

    }
    function initialize2() {
        var options = {
            // types: ['(regions)']
            //this should work !
        };

        var autocomplete2 = new google.maps.places.Autocomplete(input1, options);
        // autocomplete.setComponentRestrictions({'country': ['us']});
    }
    if(input1!=null) {

        google.maps.event.addDomListener(window, 'load', initialize2);
    }

    function initialization() {
        var options = {
            // types: ['(regions)']
            //this should work !
        };
        var autocomplete3 = new google.maps.places.Autocomplete(input2, options);
    }
    if(input2!=null) {
        google.maps.event.addDomListener(window, 'load', initialization);
    }

    });
