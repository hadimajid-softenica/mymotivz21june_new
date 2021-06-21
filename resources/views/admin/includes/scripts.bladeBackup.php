
<!-- -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Notes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                    <input id="client_id" type="hidden" name="client_id">
                    <div class="form-group">
                        <label>Type Here</label>
                        <textarea id="node-cus" class="form-control note-val" name="note" placeholder="" required ></textarea>
                    </div>
                    <button id="node-add-dashboard" data-dismiss="modal" class="btn btn-primary">Submit</button>

            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="exampleModal-1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Notes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <input id="client_id" type="hidden" name="client_id">
                <div class="form-group">
                    <label>Type Here</label>
                    <textarea id="node-cus-cand" class="form-control" name="note" placeholder="" required ></textarea>
                </div>
                <button id="node-add-candidate" data-dismiss="modal" class="btn btn-primary">Submit</button>

            </div>
        </div>
    </div>
</div>

{{--for search page--}}
<div class="modal fade" id="exampleModal-search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Notes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <input id="client_id" type="hidden" name="client_id">
                <input id="cand-id-custom-search" type="hidden">

                <div class="form-group">
                    <label>Type Here</label>
                    <textarea id="node-cus-cand-search" class="form-control" name="note" placeholder="" required ></textarea>
                </div>
                <button id="node-add-candidate-search" data-dismiss="modal" class="btn btn-primary">Submit</button>

            </div>
        </div>
    </div>
</div>
{{--end for search page--}}


<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Notes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                    <input id="client_id" type="hidden" name="client_id">
                    <div class="form-group">
                        <label>Type Here</label>
                        <textarea id="node-cus1" class="form-control" name="note" placeholder="" required ></textarea>
                    </div>
                    <button id="node-add-dashboard1" data-dismiss="modal" class="btn btn-primary">Submit</button>

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="editNotePopup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Notes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <input id="client_id" type="hidden" name="client_id">
                <div class="form-group">
                    <label>Type Here</label>
                    <textarea id="node-edit-clas" class="form-control" name="note" placeholder="" required ></textarea>
                </div>
                <button id="note-edit-submit" data-dismiss="modal" class="btn btn-primary">Submit</button>

            </div>
        </div>
    </div>
</div>


{{--update status model--}}
<div class="modal fade show" id="statusModal" tabindex="-1" role="dialog" aria-labelledby="statusModalLabel" aria-modal="true" style="display: none; padding-right: 17px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusModalLabel">Update Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
{{--                    hidden field for get the current status_id--}}
                        <input id="status_id_cand" type="hidden">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <select id="status-updated-slc" name="status_updated_slc" class="form-control">

                                    @if(isset($statuses))
                                        @foreach($statuses as $status)
                                            <option color="{{$status['color']}}" value="{{$status['id']}}">{{$status['name']}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12"><button id="update-status" type="button" data-dismiss="modal" class="btn btn-primary pull-left">Update</button>
{{--                           <button style="margin: 0px 0px 0px 5px;" type="button" data-dismiss="modal" data-toggle="modal" data-target="#statusupdateModal" class="btn btn-primary pull-left">Add New Status</button>--}}
</div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>

{{--end update status model--}}

{{--update interview stage--}}
<div class="modal fade show" id="updateInterviewStageModel" tabindex="-1" role="dialog" aria-labelledby="statusupdateModalLabel" style="display: none;" aria-modal="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusupdateModalLabel">Update Interview stage</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Update Interview Stage</label>
                                <input id="s_name_1" type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Interview Stage Background Color</label>
                                <input id="s_color_1" type="color" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-12"><button id="model-interview-update" type="button" data-dismiss="modal" class="btn btn-primary pull-left">Save</button> </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>

{{--end update interview stages--}}

{{--update interview status--}}
<div class="modal fade show" id="updateInterviewStatusModel" tabindex="-1" role="dialog" aria-labelledby="statusupdateModalLabel" style="display: none;" aria-modal="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusupdateModalLabel">Update Interview Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Update Interview Status</label>
                                <input id="s_name_2" type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Interview Status Background Color</label>
                                <input id="s_color_2" type="color" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-12"><button id="model-interview-status-update" type="button" data-dismiss="modal" class="btn btn-primary pull-left">Save</button> </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>

{{--end update interview status--}}

{{--create status model--}}
<div class="modal fade show" id="statusupdateModal" tabindex="-1" role="dialog" aria-labelledby="statusupdateModalLabel" style="display: none;" aria-modal="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusupdateModalLabel">Add New Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Create new status</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Status BackgroundBackground Color</label>
                                <input type="color" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-12"><button type="submit" class="btn btn-primary pull-left">Submit</button> </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
{{--end create status model--}}

{{--update status model--}}
<div class="modal fade show" id="updateStatusModel" tabindex="-1" role="dialog" aria-labelledby="statusupdateModalLabel" style="display: none;" aria-modal="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusupdateModalLabel">Update Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>update status</label>
                                <input id="s_name" type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Status Background Color</label>
                                <input id="s_color" type="color" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-12"><button id="model-stts-update" type="button" data-dismiss="modal" class="btn btn-primary pull-left">Save</button> </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
{{--end update status model--}}


{{--present--}}
<div class="modal fade" id="presentModal" role="dialog" aria-labelledby="presentModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="presentModalLabel">Present</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" style="margin: 0px;">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Company Names</label>
                                <select onchange="functionSet()" class="multiselect-dropdown client-list-check form-control" name="">
                                    <option value="" style="display: none;"></option>
                                    @if(isset($pipelineClients))
                                        @foreach($pipelineClients as $pipelineClient)
                                            <option class="client-list-op" value="{{$pipelineClient['id']}}">{{$pipelineClient['company_name']}}</option>
                                        @endforeach
                                    @endif

                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Job Title</label>
                                <select class="multiselect-dropdown form-control" name="" id="job-list">
                                    <option value="" style="display: none;"></option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Candidate Name</label>
                                <select class="multiselect-dropdown form-control" name="">
                                    <option value="" style="display: none;"></option>
                                    @if(isset($jobCandidates))
                                        @foreach($jobCandidates as $candidate)
                                            <option value="{{$candidate['id']}}">{{$candidate['name']}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Summary</label>
                                <textarea placeholder="Type here" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group"><strong class="note"><span>Important Note :</span> Always remove the contact info from the candidate's resume, add our company logo and our contact info before hitting the "Present" button.</strong></div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary">PRESENT</button>
                </form>
            </div>
        </div>
    </div>
</div>
{{--end present--}}


{{--edit education--}}
<div class="modal fade show" id="eduactionModal" tabindex="-1" role="dialog" aria-labelledby="statusModalLabel" aria-modal="true" style="display: none; padding-right: 17px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusModalLabel">Update Education</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Update Education</label>
                                <input id="e_name" type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-12"><button id="update-education" type="button" data-dismiss="modal" class="btn btn-primary pull-left">Save</button>
                            {{--                           <button style="margin: 0px 0px 0px 5px;" type="button" data-dismiss="modal" data-toggle="modal" data-target="#statusupdateModal" class="btn btn-primary pull-left">Add New Status</button>--}}
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>

{{--end edit education--}}

{{--pipeline model--}}
<div class="modal fade" id="pipelineModal_letest" role="dialog" aria-labelledby="pipelineModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="pipelineModalLabel">Add to recruitment pipeline</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" style="margin: 0px;">
{{--                    hidden field for get the candiate id from candidate database--}}
                    <input id="candiate-id-for-pipeline" type="hidden">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Select Client Name</label>
                                <select onchange="jobPicker()" id="select-client-name" class="multiselect-dropdown form-control" name="" id="">

                                    @if(isset($pipelineClients) )
                                        @foreach($pipelineClients as $client)
                                            <option value="{{$client->id}}">{{$client->name}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Select Job</label>
                                <select id="select-job-name" class="multiselect-dropdown form-control" name="" id="">

                                </select>
                            </div>
                        </div>
                    </div>
                    <button id="add-candidate-pipeline-submit" type="button" data-dismiss="modal" class="btn btn-primary">ADD</button>
                </form>
            </div>
        </div>
    </div>
</div>

{{--end pipeline model--}}

{{--update status model--}}
<div class="modal fade show" id="statusModal-client-dashboard" tabindex="-1" role="dialog" aria-labelledby="statusModalLabel" aria-modal="true" style="display: none; padding-right: 17px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="statusModalLabel">Update Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    {{--                    hidden field for get the current status_id--}}
                    <input id="status_id_cand" type="hidden">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <select id="status-updated-slc-client-dashboard" name="status_updated_slc" class="form-control">

                                    @if(isset($statuses))
                                        @foreach($statuses as $status)
                                            <option color="{{$status['color']}}" value="{{$status['id']}}">{{$status['name']}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12"><button id="update-status-client-dash" type="button" data-dismiss="modal" class="btn btn-primary pull-left">Update</button>
                            {{--                           <button style="margin: 0px 0px 0px 5px;" type="button" data-dismiss="modal" data-toggle="modal" data-target="#statusupdateModal" class="btn btn-primary pull-left">Add New Status</button>--}}
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>

{{--end update status model--}}



{{ Html::script('public/assets\scripts\main.js') }}
{{ Html::script('public/assets\scripts\jquery.tagsinput.min.js') }}
{{ Html::script('public/assets\scripts\file-input\sortable.js') }}
{{ Html::script('public/assets\scripts\file-input\fileinput.js') }}
{{ Html::script('public/assets\scripts\file-input\theme.js') }}
{{ Html::script('https://unpkg.com/sweetalert/dist/sweetalert.min.js') }}
<!-- {{ Html::script('assets\scripts\dataTables.bootstrap.min.js') }}
{{ Html::script('assets\scripts\datatables.min.js') }} -->

{{ Html::script('https://cdn.ckeditor.com/ckeditor5/11.2.0/classic/ckeditor.js') }}
{{--<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--}}
{{--<script src="https://cdn.ckeditor.com/ckeditor5/11.2.0/classic/ckeditor.js"></script>--}}
{{ Html::script('public/assets\scripts\functions.js') }}
{{ Html::script('public/assets\scripts\custom.js') }}
{{ Html::script('public/assets\scripts\validation.js') }}






{{--<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>--}}


 <script>
        var editor = null;
        ClassicEditor.create(document.querySelector("#editor"), {
            toolbar: [
                "heading",
                "fontFamily",
                "|",
                "bold",
                "italic",
                "link",
                "bulletedList",
                "numberedList",
                "imageUpload",
                "blockQuote",
                "undo",
                "redo",
                "imageStyle:full",
                "imageStyle:side",
                "|",
                "imageTextAlternative",
                "contenteditable",
                // "tableColumn",
            ],
        })


    </script>

    <script>

       var id='';
       
        // Trigger action when the contexmenu is about to be shown
        // $(".add-note").bind("contextmenu", function (event) {
        //     // Avoid the real one
        //     event.preventDefault();
        //     id=$(this).attr('data-id');
        //     $('#client_id').val(id);
        //     // Show contextmenu
        //     $(".custom-menu-"+id).finish().toggle(100);
        // });
        $(document).on("contextmenu", ".add-note", function (event) {
        event.preventDefault();
            id=$(this).attr('data-id');
            $('#client_id').val(id);
            // Show contextmenu
            $(".custom-menu-"+id).finish().toggle(100);
       });
       $(document).on( "contextmenu", ".add-note-job", function(event){
            event.preventDefault();
            id=$(this).attr('data-id');
            $('#client_id').val(id);

            $(".custom-menu-job-"+id).finish().toggle(100);
        });
       // });
        // If the document is clicked somewhere
        $(document).bind("mousedown", function (e) {
            // If the clicked element is not the menu
            if (!$(e.target).parents(".custom-menu-"+id).length > 0) {
                // Hide it
                $(".custom-menu-"+id).hide(1000);
            }
            if (!$(e.target).parents(".custom-menu-job-"+id).length > 0) {
                // Hide it
                $(".custom-menu-job-"+id).hide(1000);
            }
        });
        // If the menu element is clicked
        $(".custom-menu li").click(function(){
            // Hide it AFTER the action was triggered
            $(".custom-menu-"+id).hide(100);
            $(".custom-menu-job-"+id).hide(100);
        });
        $(function () {
            $('.tags_1').tagsInput({
                width: 'auto',
                // defaultText: ''
            });
        });
       $(function () {
           $('.tags_2').tagsInput({
               width: 'auto',
               defaultText: 'Skills'
           });
       });

       $(function () {
           $('.tags_3').tagsInput({
               width: 'auto',
               defaultText: 'Job Title'
           });
       });

       $(function () {
           $('.tags_4').tagsInput({
               width: 'auto',
               defaultText: 'Job Title'
           });
       });

        $("#node-add-dashboard").click(function(e){
            e.preventDefault();

            var text = $('#note-val').val() ;
            // alert('123');
                var html='';
                var client_id = $('#client_id').val() ;
                var note_des = $('#node-cus').val() ;

                if(note_des !== "")
                {
                    $.ajax({

                        url: "{{route('note.created')}}",
                        type: 'post',

                        data:{
                            data: { client_id:client_id, note_des:note_des },
                            "_token": "{{ csrf_token() }}",
                        },

                        // dataType: 'json'
                    }).done(function(res){
                        var d = new Date();

                        var month = d.getMonth()+1;

                        if(month == 1)
                        {
                            monName = 'jan';
                        }
                        if(month == 2)
                        {
                            monName = 'Feb';
                        }
                        if(month == 3)
                        {
                            monName = 'Mar';
                        }
                        if(month == 4)
                        {
                            monName = 'Apr';
                        }
                        if(month == 5)
                        {
                            monName = 'May';
                        }
                        if(month == 6)
                        {
                            monName = 'Jun';
                        }
                        if(month == 7)
                        {
                            monName = 'Jul';
                        }
                        if(month == 8)
                        {
                            monName = 'Aug';
                        }
                        if(month == 9)
                        {
                            monName = 'Sep';
                        }
                        if(month == 10)
                        {
                            monName = 'Oct';
                        }
                        if(month == 11)
                        {
                            monName = 'Nov';
                        }
                        if(month == 12)
                        {
                            monName = 'Dec';
                        }
                        var day = d.getDate();

                        var noteData = (day<10 ? '0' : '') + day +'-'+ monName + '-'+ d.getFullYear() ;

                        // alert(res['last_insert_id']);
                        html='<li  id="delete-id-'+res['last_insert_id']+'"><time datetime="">'+noteData+'</time><p id="note-'+res['last_insert_id']+'">'+note_des+'</p><a id="note-del-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'" href="javascript:void(0)" class="tag btn note-del">Delete</a><a id="note-edit-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'"  href="#editNotePopup" data-toggle="modal" class="tag btn editNote">Edit</a></li>';
                        $('#append-note-'+client_id).prepend(html);
                        // $( ".close" ).trigger( "click" );

                    });
                }else{
                    swal('Note can"t empty');
                }



        });

        $("#node-add-dashboard1").click(function(e){
            e.preventDefault();
            // alert('123');
                var html='';
                var client_id = $('#client_id').val() ;
                var note_des = $('#node-cus1').val() ;


                if(note_des !== "")
                {
                    $.ajax({

                        url: "{{route('note.created')}}",
                        type: 'post',

                        data:{
                            data: { client_id:client_id, note_des:note_des },
                            "_token": "{{ csrf_token() }}",
                        },

                        // dataType: 'json'
                    }).done(function(res){
                        // alert(res);
                        var d = new Date();

                        var month = d.getMonth()+1;

                        if(month == 1)
                        {
                            monName = 'jan';
                        }
                        if(month == 2)
                        {
                            monName = 'Feb';
                        }
                        if(month == 3)
                        {
                            monName = 'Mar';
                        }
                        if(month == 4)
                        {
                            monName = 'Apr';
                        }
                        if(month == 5)
                        {
                            monName = 'May';
                        }
                        if(month == 6)
                        {
                            monName = 'Jun';
                        }
                        if(month == 7)
                        {
                            monName = 'Jul';
                        }
                        if(month == 8)
                        {
                            monName = 'Aug';
                        }
                        if(month == 9)
                        {
                            monName = 'Sep';
                        }
                        if(month == 10)
                        {
                            monName = 'Oct';
                        }
                        if(month == 11)
                        {
                            monName = 'Nov';
                        }
                        if(month == 12)
                        {
                            monName = 'Dec';
                        }
                        var day = d.getDate();

                        var noteData = (day<10 ? '0' : '') + day +'-'+ monName + '-'+ d.getFullYear() ;

                        // alert(res['last_insert_id']);
                        html='<li  id="dashboard-note-id-'+res['last_insert_id']+'"><time datetime="">'+noteData+'</time><p id="note-'+res['last_insert_id']+'">'+note_des+'</p><a id="note-dashboard" dataid="'+res['last_insert_id']+'" href="#" class="tag btn">Delete</a><a id="note-edit-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'"  href="#editNotePopup" data-toggle="modal" class="tag btn editNote">Edit</a></li>';
                        $('#dashboardNotes-'+client_id).prepend(html);
                        $( ".close" ).trigger( "click" );

                    });

                }else{
                    swal('Note can"t empty') ;
                }


        });



        // create note for candidate

       $("#node-add-candidate").click(function(e){
           e.preventDefault();

           //get from candidate_database.balde.php from hidden field.
           var candId  = $('#cand-id-custom').val() ;
           var html='';
           var note_des = $('#node-cus-cand').val() ;


           if(note_des !== ""){

               $.ajax({

                   url: "{{route('note.created.candidate')}}",
                   type: 'post',

                   data:{
                       data: { candId:candId, note_des:note_des },
                       "_token": "{{ csrf_token() }}",
                   },

                   // dataType: 'json'
               }).done(function(res){

                   function formatDate(date) {
                       var d = new Date(date),
                           month = '' + (d.getMonth() + 1),
                           day = '' + d.getDate(),
                           year = d.getFullYear();

                       if (month.length < 2)
                           month = '0' + month;
                       if (day.length < 2)
                           day = '0' + day;

                       return [year, month, day].join('/');
                   }
                   var noteDate = formatDate(Date(res['created_at'])) ;
                   // alert(res['last_insert_id']);
                   html='<li style=" list-style-type: none;"  id="delete-id-'+res['last_insert_id']+'"><time datetime="">'+noteDate+'</time><p id="note-'+res['last_insert_id']+'">'+note_des+'</p><a id="note-del-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'" href="javascript:void(0)" class="tag btn note-del">Delete</a><a id="note-edit-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'"  href="#editNotePopup" data-toggle="modal" class="tag btn editNote">Edit</a></li>';
                   $('#append-note-cand-'+candId).prepend(html);

               });

           }else{
               swal('Note can"t be empty') ;
           }


       });


       // for search
       $("#node-add-candidate-search").click(function(e){
           e.preventDefault();

           //get from candidate_database.balde.php from hidden field.
           var candId  = $('#cand-id-custom-search').val() ;
           var html='';
           var note_des = $('#node-cus-cand-search').val() ;

           if(note_des !== ""){

               $.ajax({

                   url: "{{route('note.created.candidate')}}",
                   type: 'post',

                   data:{
                       data: { candId:candId, note_des:note_des },
                       "_token": "{{ csrf_token() }}",
                   },

                   // dataType: 'json'
               }).done(function(res){

                   function formatDate(date) {
                       var d = new Date(date),
                           month = '' + (d.getMonth() + 1),
                           day = '' + d.getDate(),
                           year = d.getFullYear();

                       if (month.length < 2)
                           month = '0' + month;
                       if (day.length < 2)
                           day = '0' + day;

                       return [year, month, day].join('/');
                   }
                   var noteDate = formatDate(Date(res['created_at'])) ;
                   // alert(res['last_insert_id']);
                   html='<li style=" list-style-type: none;"  id="delete-id-'+res['last_insert_id']+'"><time datetime="">'+noteDate+'</time><p id="note-'+res['last_insert_id']+'">'+note_des+'</p><a id="note-del-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'" href="javascript:void(0)" class="tag btn note-del">Delete</a><a id="note-edit-'+res['last_insert_id']+'" dataId="'+res['last_insert_id']+'"  href="#editNotePopup" data-toggle="modal" class="tag btn editNote">Edit</a></li>';
                   $('#append-note-cand-'+candId).prepend(html);

               });

           }else{
               swal('Note can"t be empty') ;
           }


       });

       // end for seach
      function functionSet(){

         var client_id = $('.client-list-check option:selected').val() ;
         var jobOp = "" ;
          $.ajax({

              url: "{{route('pipeline.client.jobs')}}",
              type: 'post',

              data:{
                   data: { client_id:client_id},
                  "_token": "{{ csrf_token() }}",
              },

              // dataType: 'json'
          }).done(function(res){
                var json = JSON.parse(res) ;

                for(let i=0 ; i<json.length ; i++)
                {
                    jobOp += '<option value="'+json[i]['id']+'">'+json[i]['jobtitle']+'</option>'
                }

              document.getElementById('job-list').innerHTML=jobOp;

          });

      }


       function jobSlct(){

           var client_id = $('.client-list-check option:selected').val() ;
           var jobOp = "" ;
           $.ajax({

               url: "{{route('pipeline.client.jobs')}}",
               type: 'post',

               data:{
                   data: { client_id:client_id},
                   "_token": "{{ csrf_token() }}",
               },

               // dataType: 'json'
           }).done(function(res){
               var json = JSON.parse(res) ;

               for(let i=0 ; i<json.length ; i++)
               {
                   jobOp += '<option value="'+json[i]['id']+'">'+json[i]['jobtitle']+'</option>'
               }

               document.getElementById('job-list').innerHTML="";
               document.getElementById('job-list').innerHTML=jobOp;

           });

       }

        //end create note for candidate


        //candidate pipeline

       function jobPicker(){

           var client_id = $('#select-client-name option:selected').val() ;
           var jobs = "" ;
           $.ajax({

               url: "{{route('client.jobs')}}",
               type: 'post',

               data:{
                   data: { client_id:client_id},
                   "_token": "{{ csrf_token() }}",
               },

               // dataType: 'json'
           }).done(function(res){
               var json = JSON.parse(res) ;

               for(let i=0 ; i<json.length ; i++)
               {
                   jobs += '<option value="'+json[i]['id']+'">'+json[i]['jobtitle']+'</option>'
               }

               document.getElementById('select-job-name').innerHTML="";
               document.getElementById('select-job-name').innerHTML=jobs;

           });

       }


       $('#add-candidate-pipeline-submit').click(function () {
           var candidate_id = $('#candiate-id-for-pipeline').val() ;
           var job_id = $('#select-job-name option:selected').val() ;

           $.ajax({

               url: "{{route('pipeline.candidate.add')}}",
               type: 'post',

               data:{
                   data: {candidate_id:candidate_id , 'job_id':job_id},
                   "_token": "{{ csrf_token() }}",
               },

               // dataType: 'json'
           }).done(function(res){
               sweetAlert('Add in recruitment pipeline successfully') ;
           });
       });

        //end candidate pipeline

    </script>