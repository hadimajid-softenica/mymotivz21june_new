
//custom validation for resume upload

// $(document).on("click",".cus-val-candi",function(e) {
//
//     var len = 0 ;
//     var file = "" ;
//     var ext = "" ;
//     len = $('.pdf-remove-img ul li').length ;
//     file = $('#file-upload-demo').val() ;
//     ext = file.split('.').pop();
//     // alert(ext);
//     if(len === 0 ){
//
//         if(file)
//         {
//             var ext = file.split('.').pop();
//             if(ext=="pdf" || ext=="docx" ){
//             } else{
//                 e.preventDefault() ;
//               // swal("Only PDF and DOC files are allowed");
//                 document.getElementById('error-image').innerHTML="Only PDF and DOC files are allowed";
//             }
//         }else{
//             e.preventDefault() ;
//             // swal('cant"empty');
//             document.getElementById('error-image').innerHTML="Minimum one Resume File is required";
//         }
//     }else if(file!=''){
//             var ext = file.split('.').pop();
//             if(ext=="pdf" || ext=="docx" ){
//             } else{
//                 e.preventDefault() ;
//                 document.getElementById('error-image').innerHTML="Only PDF and DOC files are allowed";
//                 // swal("not excepted extention");
//             }
//     }
//
// });
// $('.file-upload-demo-1').change(function () {
//     // alert('123');
// document.getElementById('error-image').innerHTML="";
// });
//end custom validation for resume upload


$("#client-import").validate({
    rules: {
        excel: {
            required : true,
            extension:"csv|xlsx|xls",
        },


    },
    messages: {
        excel: {
            required : "Please select your file.",
            extension: "Only CSV and XLSX files are allowed.",
        },


    }
});

$("#candidate-import").validate({
    rules: {
        excel: {
            required : true,
            extension:"csv|xlsx|xls",
        },


    },
    messages: {
        excel: {
            required : "Please select your file.",
            extension: "Only CSV and XLSX files are allowed.",
        },


    }
});

$("#job-import").validate({
    rules: {
        excel: {
            required : true,
            extension:"csv|xlsx|xls",
        },


    },
    messages: {
        excel: {
            required : "Please select your file.",
            extension: "Only CSV and XLSX files are allowed.",
        },


    }
});


$("#update_status_form").validate({
    rules: {
        name: "required",
        status_icon: {
            extension:"jpg|png|gif",
        },


    },
    messages: {
        name: {
            required: "Status name is required",
        },
        status_icon: {
            extension: "Only JPG PNG and GIF files are allowed",
        },


    }
});
$("#picture_form").validate({
    rules: {
        profile_pic: {
            required : true,
            extension:"jpg|png|gif",
        },

    },
    messages: {
        name: {

        },
        profile_pic: {
            required: "Profile Pic is required",
            extension: "Only JPG JPEG PNG and GIF files are allowed",
        },


    }
});
$("#status_create_form").validate({
    rules: {
        name: "required",
        status_icon: {
            required: true,
            extension:"jpg|png|gif",
        },


    },
    messages: {
        name: {
            required: "Status name is required",
        },
        status_icon: {
            required: "Status icon is required",
            extension: "Only JPG PNG and GIF files are allowed",
        },


    }
});







$("#edit_contract_form").validate({
    rules: {
        edit_full_name: "required",
        edit_phone_no: "required",
        edit_email_address: "required",
        edit_business_name: "required",
        edit_business_address: "required",
        edit_business_number: "required",
        edit_business_web: {
            url: true
        },
        edit_job_title: "required",
        edit_positions: "required",
        edit_opening: "required",
        edit_quoted_fee: "required",
        contract_file:{
            // required:true,
            extension:"doc|docx|pdf",

        },
        // Industry: "required",

    },
    messages: {
        edit_full_name: {
            required: "Please enter a name",
        },
        edit_job_title: {
            required: "Please enter a job title",
        },
        edit_phone_no: {
            required: "Please enter a phone number",
        },
        edit_email_address: {
            required: "Please enter a email",
        },
        edit_business_name: {
            required: "Please enter Business name",
        },
        edit_business_address: {
            required:"Please enter Business address",
        },
        edit_business_number: {
            required:"Please enter Business phone number",
        },
        edit_business_web: {
            required:"Please enter Business Website",
        },
        edit_positions: {
            required:"Please enter positions",
        },
        edit_opening: {
            required:"Please enter number of openings",
        },
        edit_quoted_fee: {
            required:"Please enter number quoted fee",
        },
        contract_file:{
            // required: "Contract File is Required",
            extension: "Only PDF DOC and Docx files are allowed",
        },

    }
});

//Password
$("#password_form").validate({
    rules: {
        current_password: "required",
        password: "required",
        password_confirmation: {
            required: true,
            equalTo: "#new_password",
        }
    },
    messages: {
        current_password: " Enter Current Password",
        password: " Enter New Password",
        password_confirmation: {
            required: "Enter Confirm Password",
            equalTo: "Password did not match",
        }
    }
});


//Sub Admin Create
$("#sub_admin_create_form").validate({
    ignore: [],
    rules: {
        name: "required",
        email: "required",
        password: "required",
        phone_no: "required",
        hire_date: "required",
        job_title: "required",
        home_address: "required",
        resume: {
            // required: true,
            extension:"doc|docx|pdf",
        },
        description: "required",
        "privileges[]": {
            required: true,
        },

    },
    messages: {
        name: {
            required: "Please enter name",
        },
        email: {
            required: "Please enter email ",
        },
        password: {
            required: "Please enter password",
        },
        phone_no: {
            required: "Please enter phone no",
        },
        hire_date: {
            required: "Please enter Hire date",
        },
        job_title: {
            required: "Please enter Job Title",
        },
        home_address: {
            required: "Please enter Home Address",
        },
        resume: {
            // required: "Please select resume",
            extension: "Only PDF DOC and Docx files are allowed",
        },
        description: {
            required: "Please enter description",
        },
        "privileges[]": {
            required: "Please Select at least one Privilege",
        },
    }
});


//Sub Admin Edit
$("#sub_admin_edit_form").validate({
    ignore: [],
    rules: {
        name: "required",
        phone_no: "required",
        hire_date: "required",
        job_title: "required",
        home_address: "required",
        resume: {
            extension:"doc|docx|pdf",
        },
        description: "required",
        "privileges[]": {
            required: true,
        },

    },
    messages: {
        name: {
            required: "Please enter name",
        },
        phone_no: {
            required: "Please enter phone no",
        },
        hire_date: {
            required: "Please enter Hire date",
        },
        job_title: {
            required: "Please enter Job Title",
        },
        home_address: {
            required: "Please enter Home Address",
        },
        resume: {
            extension: "Only PDF DOC and Docx files are allowed",
        },
        description: {
            required: "Please enter description",
        },
        "privileges[]": {
            required: "Please Select at least one Privilege",
        },
    }
});



//Todo
$("#add_todo_form").validate({
    rules: {
        todo_action: "required",
        todo_date: "required",
        todo_time: "required",
        todo_task: "required",


    },
    messages: {
        todo_action: {
            required: "Please select action",
        },
        todo_date: {
            required: "Please select date ",
        },
        todo_time: {
            required: "Please enter time",
        },
        todo_task: {
            required: "Please enter task details",
        },

    }
});
$("#edit_todo_form").validate({
    rules: {
        todo_action: "required",
        todo_date: "required",
        todo_time: "required",
        todo_task: "required",


    },
    messages: {
        todo_action: {
            required: "Please select action",
        },
        todo_date: {
            required: "Please select date ",
        },
        todo_time: {
            required: "Please enter time",
        },
        todo_task: {
            required: "Please enter Task",
        },

    }
});

//Placement

$("#add_placement_form").validate({
    rules: {
        placement_start_date: "required",
        hire_company_name: "required",
        hired_candidate: "required",
        job_position: "required",
        salary: "required",
        service_fee: "required",


    },
    messages: {
        placement_start_date: {
            required: "Please enter a stat date",
        },
        hire_company_name: {
            required: "Please select company name",
        },
        hired_candidate: {
            required: "Please select candidate",
        },
        job_position: {
            required: "Please select job ",
        },
        salary: {
            required: "Please enter salary",
        },
        service_fee: {
            required: "Please enter service fee",
        },

    }
});
$("#edit_placement_form").validate({
    rules: {
        placement_start_date: "required",
        hire_company_name: "required",
        hired_candidate: "required",
        job_position: "required",
        salary: "required",
        service_fee: "required",


    },
    messages: {
        placement_start_date: {
            required: "Please enter a stat date",
        },
        hire_company_name: {
            required: "Please select company name",
        },
        hired_candidate: {
            required: "Please select candidate",
        },
        job_position: {
            required: "Please select job ",
        },
        salary: {
            required: "Please enter salary",
        },
        service_fee: {
            required: "Please enter service fee",
        },

    }
});



//contract

$("#contract_form").validate({
    rules: {
        full_name: "required",
        client_id: "required",
        phone_no: "required",
        email_address: "required",
        business_name: "required",
        business_address: "required",
        business_number: "required",
        business_web: {
            url: true
        },
        job_title: "required",
        positions: "required",
        opening: "required",
        quoted_fee: "required",
        // Industry: "required",
        contract_file:{
            required:true,
            extension:"doc|docx|pdf",

        },

    },
    messages: {
        full_name: {
            required: "Please enter a name",
        },
        job_title: {
            required: "Please enter a job title",
        },
        phone_no: {
            required: "Please enter a phone number",
        },
        email_address: {
            required: "Please enter a email",
        },
        client_id: {
            required: "Please select company name",
        },
        business_name: {
            required: "Please enter Business name",
        },
        business_address: {
            required:"Please enter Business address",
        },
        business_number: {
            required:"Please enter Business phone number",
        },
        business_web: {
            required:"Please enter Business Website",
        },
        positions: {
            required:"Please enter positions",
        },
        opening: {
            required:"Please enter number of openings",
        },
        quoted_fee: {
            required:"Please enter quoted fee",
        },
        contract_file:{
            required: "Contract File is Required",
            extension: "Only PDF DOC and Docx files are allowed",
        },
        // Industry: {
        //     required: "Please enter a Industry",
        // },
    }
});

//end

//validation for candidate

$("#candidate-validation").validate({
    rules: {
        full_name: "required",
        job_title: "required",
        phone: "required",
        email: "required",
        city: "required",
        state: "required",
        salary: "required",
        skills: "required",
        resume: "required",
        "resume[]":{
            
            extension:"doc|docx|pdf",

        },
         experience: "required",
         education: "required",
         Industry: "required",

    },
    messages: {
         full_name: {
            required: "Please enter a name",
        },
        job_title: {
            required: "Please enter a job title",
        },
        phone: {
            required: "Please enter a phone number",
        },
        email: {
            required: "Please enter a email",
        },
        city: {
            required: "Please enter a city",
        },
        state: {
            required: "Please enter a state",
        },
        salary: {
            required: "Please enter a salary",
        },
        skills: {
            required: "Please enter a skills",
        },

        "resume[]":{
            extension: "Only PDF DOC and Docx files are allowed",
        },

         interest: {
             required: "Please enter a interest",
         },
        experience: {
            required: "Please enter a experience",
        },
        education: {
            required: "Please enter a education",
        },
        Industry: {
            required: "Please enter a Industry",
        },
    }
});

//end validation for candidate

//edit candidate validation
$("#editCandidateValidation").validate({
    rules: {
        full_name: "required",
        job_title: "required",
        phone: "required",
        email: "required",
        city: "required",
        state: "required",
        salary: "required",
        skills: "required",
        "resume[]":{
            extension:"docx|pdf|doc",

        },

    },
    messages: {
        name: {
            required: "Please enter a name",
        },
        job_title: {
            required: "Please enter a job title",
        },
        phone: {
            required: "Please enter a phone number",
        },
        email: {
            required: "Please enter a email",
        },
        city: {
            required: "Please enter a city",
        },
        state: {
            required: "Please enter a state",
        },
        salary: {
            required: "Please enter a salary",
        },
        skills: {
            required: "Please enter a skills",
        },
        "resume[]":{
            extension: "Only PDF, DOC and Docx files are allowed",
        },

    }
});


//end edit candidate validation

// alert('testing module');
// console.log('In side the testing module');
// setTimeout(function(){ console.log("time out"); }, 3000);
// console.log('out side the testing module');

// schedule interview validation

$("#schedule_form").validate({

    rules: {
        client: "required",
        status: "required",
        candidate: "required",
        job_title: "required",
        location: "required",
        s_date: "required",
        s_time: "required",
        // e_date: "required",
        e_time: "required",
        time_zone: "required",
        subject: "required",
        message: "required",
        // emails:"required"
        // "emails[]": {
        //     required: true,
        //     // email: true
        // }
    },
    messages: {
        client: {
            required: "Please select Company Name",
        },
        status: {
            required: "Please select a Status",
        },
        emails: {
            required: "Please Enter at least one Email",
        },
        candidate: {
            required: "Please Select Candidate",
        },
        job_title: {
            required: "Please Select Job",
        },
        location: {
            required: "Please enter Location",
        },
        s_date: {
            required: "Please enter Starting Date",
        },
        s_time: {
            required: "Please enter Starting Time",
        },
        // e_date: {
        //     required: "Please enter Ending Date",
        // },
        e_time: {
            required: "Please enter Ending Time",
        },
        time_zone: {
            required: "Please Select a Time Zone",
        },
        subject: {
            required: "Please enter a Subject",
        },
        message: {
            required: "Please enter a Message",
        },

    }
});

$("#contact_candidate_form").validate({
    rules: {

        message: "required",
        subject: "required"
    },
    messages: {

        message: {
            required: "Please enter message",
        },
        subject: {
            required: "Please enter subject",
        },
    }
});


// $.validator.addMethod("checkemails", function(value) { //add custom method
//     //Tags input plugin converts input into div having id #YOURINPUTID_tagsinput
//     //now you can count no of tags
//
//     var emails = ($("#recievers_emails_tagsinput").find(".tag").text().split('&nbsp'));
//     console.log(emails);
//     alert(emails);
//     return emails;
// });


// end of schedule interview validation
$("#present_form_empty").validate({
    rules: {
        company_name: "required",
        job_title: "required",
        "candidates[]": "required",
        summary: "required",
        subject: "required",
        // hidden_emails: "checkemails"
    },
    messages: {
        company_name: {
            required: "Please select Company Name",
        },
        job_title: {
            required: "Please select Job Title",
        },
        "candidates[]": {
            required: "Please Select at least one Candidate Name",
        },
        summary: {
            required: "Please enter Summary",
        },
        subject: {
            required: "Please enter Subject",
        },
        // hidden_emails: {
        //     email: "Enter correct emails"
        // }
    }
});
// present button validation

$("#present_form").validate({
    rules: {
        company_name: "required",
        job_title: "required",
        "candidates[]": "required",
        summary: "required",
        subject: "required"
    },
    messages: {
        company_name: {
            required: "Please select Company Name",
        },
        job_title: {
            required: "Please select Job Title",
        },
        "candidates[]": {
            required: "Please Select at least one Candidate Name",
        },
        summary: {
            required: "Please enter Summary",
        },
        subject: {
            required: "Please enter Subject",
        },
    }
});
// end validation fo present button

$("#client-validation").validate({
    rules: {
        company_name: "required",
        name: "required",
        job_title: "required",
        phone: "required",
        email: "required",
        city: "required",
        state: "required",
        industry: "required",
        web_url: {
            validUrl: true
        },

    },
    messages: {
        company_name: {
            required: "Please enter a company name",
        },
        name: {
            required: "Please enter a full name",
        },
        job_title: {
            required: "Please enter a job title",
        },
        phone: {
            required: "Please enter a phone number",
        },
        email: {
            required: "Please enter a email",
        },
        city: {
            required: "Please enter a city",
        },
        state: {
            required: "Please enter a state",
        },

        industry: {
            required: "Please enter a industry",
        },
        web_url: {
            url: "please enter valid url"
        },

    }
});

//end validation for client



$("#edit-client-validation").validate({
    rules: {
        company_name: "required",
        name: "required",
        job_title: "required",
        phone: "required",
        email: "required",
        city: "required",
        state: "required",
        industry: "required",
        web_url: {
            validUrl: true
        },

    },
    messages: {
        company_name: {
            required: "Please enter a company name updated",
        },
        name: {
            required: "Please enter a full name",
        },
        job_title: {
            required: "Please enter a job title",
        },
        phone: {
            required: "Please enter a phone number",
        },
        email: {
            required: "Please enter a email",
        },
        city: {
            required: "Please enter a city",
        },
        state: {
            required: "Please enter a state",
        },

        industry: {
            required: "Please enter a industry",
        },

    }
});

//end validation for client edit


$("#job-validation").validate({
    rules: {
        name: "required",
        jobtitle: "required",
        phone: "required",
        email: "required",
        city: "required",
        state: "required",
        package: "required",
        industry: "required",
        web_url: {
            url: true
        },

    },
    messages: {

        name: {
            required: "Please enter a full name",
        },
        jobtitle: {
            required: "Please enter a job title",
        },
        phone: {
            required: "Please enter a phone number",
        },
        email: {
            required: "Please enter a email",
        },
        city: {
            required: "Please enter a city",
        },
        state: {
            required: "Please enter a state",
        },
        package: {
            required: "Please enter a package",
        },

        industry: {
            required: "Please enter a industry",
        },

    }
});

//end validation for job



$("#edit-job-validation").validate({
    rules: {
        name: "required",
        jobtitle: "required",
        phone: "required",
        email: "required",
        city: "required",
        state: "required",
        package: "required",
        industry: "required",
        web_url: {
            url: true
        },
        // interest: "required",
        // experience: "required",
        // education: "required",
        // Industry: "required",
        // resume: "required",

    },
    messages: {

        name: {
            required: "Please enter a full name",
        },
        jobtitle: {
            required: "Please enter a job title",
        },
        phone: {
            required: "Please enter a phone number",
        },
        email: {
            required: "Please enter a email",
        },
        city: {
            required: "Please enter a city",
        },
        state: {
            required: "Please enter a state",
        },
        package: {
            required: "Please enter a package",
        },

        industry: {
            required: "Please enter a industry",
        },

    }
});
// validation messages

//end validation for job edit


// custom validation


// end custom validation
