@extends('layouts.user1_layout')
@section('content')
    <div class="app-main__inner">
        <div class="tabs-animation">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="job-search-wrapper">
                                <div class="job-search">
                                    <ul>
                                        <li class="title">
                                            <input type="text" id="search_job_title" name="search_job_title" placeholder="Job title or keyword" value="">
                                        </li>
                                        <li class="location"><i class="fa fa-map-marker"></i>
                                            <input type="text" id="search_place" name="search_place" placeholder="City or area" value="">
                                        </li>
                                        <li>
                                            <label>
                                                <i class="fa fa-search"></i>
                                                <input type="submit" onclick="Fun(10)"  value="Search Job">
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-header-tab card-header">
                            <div class="card-header-title font-size-lg text-capitalize font-weight-normal"><i class="pe-7s-portfolio mr-3 text-muted opacity-6" style="font-size: 35px;"> </i>Saved Jobs</div>
                        </div>
                        <div class="card-body">
                            <div class="featured-jobs-list">
                                <ul class="row" id="searched-jobslist"></ul>
                                <div class="pagination-wrap">
                                    <div class="box">
                                        <ul id="example-2" class="pagination"></ul>
                                        <div class="show"></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
@section('js')
    <link href="{{asset('css/bootstrap-tagsinput.css')}}" rel="stylesheet">
    <script src="{{asset('js/bootstrap-tagsinput.js')}}"></script>
    <script src="{{asset('assets/scripts/moment.min.js')}}"></script>
    <script src="{{asset('assets/scripts/notify.min.js')}}"></script>
    <script src="{{asset('user/script/blockUI.js')}}"></script>
    <script src="{{asset('js/pagination.js')}}"></script>
    <script>
        $(document).ready(function () {

            // debugger
            Fun(10);
        });

        function initialize() {
            var input = document.getElementById('search_place');
            var options = {
                types: ['(regions)'] //this should work !
            };

            var autocomplete = new google.maps.places.Autocomplete(input, options);
            autocomplete.setComponentRestrictions(
                {'country': ['us']});
        }
        google.maps.event.addDomListener(window, 'load', initialize);

        function Fun(length) {
            // body...
            var job_title=$('#search_job_title').val();
            var place=$('#search_place').val();


            $('#example-2').pagination({
                total: 1,
                current: 1,
                length: 10,
                size: 1,

                ajax: function(options, refresh, $target){

                    var html='';

                    $.ajax({

                        url: "{{route('view.saved.jobs')}}",
                        type: 'post',

                        data:{
                            current: options.current,
                            length: options.length,
                            "_token": "{{ csrf_token() }}",
                            job_title : job_title,
                            place     : place,
                        },
                        beforeSend: function(){
                            $.blockUI({ message: '<div class="spinner-grow text-success"></div><div class="spinner-grow text-success"></div><div class="spinner-grow text-success"></div>', css: {border:     'none',
                                    backgroundColor:'transparent'} });
                        },
                        complete:function(data){
                            $.unblockUI();
                        }
                        // dataType: 'json'
                    }).done(function(res){
                        // alert(res);
                        var json = JSON.parse(res);

                        var myJSON = json[1];
                        var totalRe = json[0];
                        console.log(myJSON)
                        for (var i = 0 ; i <myJSON.length; i++) {

                            time_ago = moment(myJSON[i]['created_at']).fromNow();

                            var desc = myJSON[i]['job']['job_description']
                            // if(desc.length > 280){
                            //     desc = desc.substring(0, 289)+' ...';
                            // }
                            html+='<li class="col-md-12 li_'+myJSON[i]['id']+'" id="searched-jobslist">'+
                                '<div class="featured-jobslist-text">'
                                if(myJSON[i]['job']['client']['logo'] !=null)
                                {
                                    html +='<figure><a href="/job/details/'+myJSON[i]['job_id']+'"><img src="'+window.location.origin+'/user/company_logo/'+myJSON[i]['job']['client']['logo']+'" alt="Company Logo"></a></figure>' +
                                        '<section>'
                                }
                            else{
                                    html +='<figure><a href="/job/details/'+myJSON[i]['job_id']+'"><img src="'+window.location.origin+'/user/images/featured-img1.jpg" alt="Company Logo"></a></figure>' +
                                        '<section>'
                            }

                                html += '<h2><a href="/job/details/'+myJSON[i]['job_id']+'">'+myJSON[i]['job']['job_title']+'</a></h2>' +
                                '<small><a href="/job/details/'+myJSON[i]['job_id']+'">'+myJSON[i]['job']['client']['company_name']+'</a></small>' +
                                '<span class="publish"><span>Saved '+time_ago+'</span></span>' +
                                '<div class="sidedis">'+desc+'</div>' +
                                '<ul class="job-location">' +
                                '<li><i class="fa fa-map-marker"></i> '+myJSON[i]['job']['location']+'</li>' +
                                '<li><i class="icon-business"></i> Full Time</li>' +
                                '</ul>'+
                                '<div class="apply"><a href="javascript:void(0)" class="like"><i style="color:tomato" onclick=remove_fav_job('+myJSON[i]['id']+') style="color:tomato" class="fa fa-heart icon_'+myJSON[i]['id']+'"></i></a> <a href="/job/details/'+myJSON[i]['job_id']+'">Apply</a></div>' +
                                '</section>' +
                                '</div>'+
                                '</li>';

                        };

                        if(html == "")
                        {
                            document.getElementById('searched-jobslist').innerHTML='<div class="alert alert-secondary" style="width: 100%; text-align: center;" role="alert">'+'No saved job found.'+'</div>';

                        }else{
                            document.getElementById('searched-jobslist').innerHTML=html;
                        }

                        refresh({
                            total: totalRe,
                            length: length
                        });
                    }).fail(function(error){
                    });
                }
            });
        }

        function remove_fav_job(id) {
            /*var confirm_dialog = confirm("Are you sure to remove from Saved Job!");*/
            sweetAlert({
                title: "Are you sure?",
                text: "Are you sure to remove from saved job!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {
                        $.ajaxSetup({
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                            }
                        });
                        $.ajax({
                            url: "{{ route('Ajax.remove.saved.job') }}",
                            type:"POST",
                            async : false,
                            data:{id : id , "_token": "{{ csrf_token() }}"},
                            success:function(response){
                                if(response == 'deleted')
                                {
                                    $(".li_"+id).hide();
                                    $.notify("Job Removed Successfully",{
                                        clickToHide: true,
                                        autoHide: true,
                                        autoHideDelay: 2000,
                                        arrowShow: true,
                                        arrowSize: 5,
                                        breakNewLines: true,
                                        elementPosition: "bottom",
                                        globalPosition: "top center",
                                        style: "bootstrap", // or metro
                                        className: "success",
                                        show: "slideDown",
                                        showDuration: 200,
                                        hideAnimation: "slideUp",
                                        hideDuration: 200,
                                        gap: 5,
                                    });

                                    Fun(10);

                                }

                            },
                        });
                    }
                });
        }
    </script>
@endsection
