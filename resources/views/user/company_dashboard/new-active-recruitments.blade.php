@extends('layouts.company')

@section('content')
    <div class="app-main__inner">
        <div class="card-header-tab card-header">
            <div class="card-header-title font-size-lg text-capitalize font-weight-normal"><i class="pe-7s-id mr-3 text-muted opacity-6" style="font-size: 35px; color: #4d9a10 !important;"> </i>Active Recruitments</div>
        </div>
        <div class="tabs-animation">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="motivz-job-list">
                                @if(count($recruitment))
                                    <ul class="row">
                                        @foreach($recruitment as $recruitment)
                                            <li class="col-md-12 rec_{{$recruitment->id}}">
                                        <div class="motivz-joblisting-classic-wrap">
                                            <div class="motivz-joblisting-text">
                                                <div class="motivz-list-option">
                                                    <h2><a href="{{route('company.recruitment.detail',[$recruitment->id])}}">{{$recruitment->job_title}}</a></h2>
                                                    <ul>
                                                        <li><i class="fa fa-globe"></i> {{$recruitment->location}}</li>
                                                        <li><i class="fa fa-filter"></i> {{$recruitment['industry']['name']}}</li>
                                                        <li><i class="fa fa-money"></i> {{$recruitment->salary_sign}}{{$recruitment->salary}}@if(!is_null($recruitment->salary_to)) - {{$recruitment->salary_sign}}{{$recruitment->salary_to}}@endif/{{$recruitment->salary_type}}</li>
                                                    </ul>
                                                </div>
                                                <div class="motivz-job-userlist">
                                                    <a href="javascript:void(0)" onclick="recruitment_del({{$recruitment->id}})" class="motivz-option-btn btn">Delete</a>
                                                    <a href="{{route('company.recruitment.detail',[$recruitment->id])}}" class="motivz-option-btn btn">View Details</a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </li>
                                        @endforeach
                                </ul>
                                @else
                                    <div class="alert alert-secondary" style="width: 100%; text-align: center;" role="alert">No recruitment service found</div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script src="{{asset('assets/scripts/notify.min.js')}}"></script>
    <script>
        function recruitment_del(id) {
            sweetAlert({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover!",
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
                            url: "/company/recruitment/delete",
                            type:"POST",
                            async : false,
                            data:{ id : id ,  "_token": "{{ csrf_token() }}", },
                            success:function(response){
                                if(response == 'deleted')
                                {
                                    $(".rec_"+id).hide();
                                    $.notify("Recruitment Deleted Successfully",{
                                        clickToHide: true,
                                        autoHide: true,
                                        autoHideDelay: 2000,
                                        arrowShow: true,
                                        arrowSize: 5,
                                        breakNewLines: true,
                                        elementPosition: "bottom",
                                        globalPosition: "top center",
                                        style: "bootstrap",
                                        className: "success",
                                        show: "slideDown",
                                        showDuration: 200,
                                        hideAnimation: "slideUp",
                                        hideDuration: 200,
                                        gap: 5,
                                    });
                                }
                            },
                        });
                    }

                });

        }
    </script>
@endsection

