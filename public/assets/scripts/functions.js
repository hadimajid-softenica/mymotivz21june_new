jQuery(document).ready(function($) {

	// 'use strict';

  //***************************
    // Url base class add
    //***************************

  // var path = window.location.pathname.split("admin/").pop();
  var path = window.location.href;      
  var target = jQuery('a[href*="'+path+'"]');
  target.addClass('mm-active');

  $('.mm-active').parents('ul').addClass('mm-show');
  $('.mm-show').parents('li').addClass('mm-active');

  $("#file-upload-demo,#file-error1,#file-error2").fileinput({
    'theme': 'explorer',
    'uploadUrl': '#',
    overwriteInitial: false,
  });
// alert('in f.js');

  $('.motivz-job-search').hide();
  $('.mega-search').click(function () {
    $('.motivz-job-search').show();
    $('.del').hide();
    $('.search-form').addClass('width-full');
  });
  // alert($('#session_exist').val());
  if ($('#session_exist').val()==1)
  {
    window.onload = seperate();
  }
  function seperate()
  {
    $('.motivz-job-search').show();
    $('.del').hide();
    $('.search-form').addClass('width-full');
  }
  setTimeout( function(){$('.custom-toster').hide();} , 4000);
  
  $('.note-box.active').parents('tr').addClass('active-color');


  // end
});



