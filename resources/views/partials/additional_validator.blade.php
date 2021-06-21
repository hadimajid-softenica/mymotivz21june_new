<script>
    jQuery.validator.addMethod("greaterThanToday", function(value, element) {
        return this.optional(element) ||  new Date(value)>new Date();
    }, "Selected date should be greater than today.");
    // jQuery.validator.addMethod("validUrl", function(value, element) {
    //     return this.optional(element) ||  /(^|\s)((https?:\/\/)?[\w-]+(\.[\w-]+)+\.?(:\d+)?(\/\S*)?)/gi.test(value);
    // }, "Please enter valid URL.");
    jQuery.validator.addMethod("validUrl", function(value, element) {
        return this.optional(element) ||  /^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/.test(value);
    }, "Please enter valid URL.");
    jQuery.validator.addMethod("alpha_space", function(value, element) {
        return this.optional(element) || /^[a-zA-Z\s]+$/i.test(value);
    });
    jQuery.validator.addMethod("currencyvalidation", function(value, element) {
        return this.optional(element) || /^[,.?0-9]+$/i.test(value);
    });
    jQuery.validator.addMethod("locationvalidation", function(value, element) {
        return this.optional(element) || /^[a-zA-Z, ]+$/i.test(value);
    });
    jQuery.validator.addMethod("ckrequired", function (value, element) {
        if (!($(".ck-content").find("p").text())) {
            return false;
        }
        else {
            return true;
        }
    });
    jQuery.validator.addMethod("greaterThan", function (value, element) {
        var salary_to = value;
        var salary_from = $("#package").val();

        if (value.indexOf(',') > -1){
            salary_to = value.replace(',','');
        }
        if(salary_from.indexOf(',') > -1)
        {
            salary_from = salary_from.replace(',','');
        }
        salary_from = parseInt(salary_from);
        salary_to = parseInt(salary_to);
        if(salary_from >= salary_to)
        {
            return false;
        }
        else
        {
            return true;
        }
    });
</script>
