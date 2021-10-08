<!-- BEGIN PAGE HEADER-->
<div class="row">
<div class="col-md-12">
	<ul class="page-breadcrumb breadcrumb">
		<li><i class="fa fa-home"></i><a href="<?php echo base_url('manage/Dashboard/'); ?>">Home</a><i class="fa fa-angle-right"></i></li>
		<li><a href="<?php echo base_url('manage/Page/'); ?>">Page</a><i class="fa fa-angle-right"></i></li>
		<li><a href="javascript:void(0);">Edit</a></li>
		<li class="btn-group">
		<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
		<span>Actions</span><i class="fa fa-angle-down"></i>
		</button>
		<ul class="dropdown-menu pull-right" role="menu">
		<li><a href="<?php echo base_url('manage/Page/add'); ?>"><i class="fa fa-plus"></i> Add</a></li>
		</ul>
		</li>
	</ul>
	<!-- END PAGE TITLE & BREADCRUMB-->
</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
<div class="col-md-12">
<div class="row"><div class="col-lg-12">
<?php echo AlertMessage($this->session->flashdata('AppMessage'));?>
</div></div>
<!--End Validation message-->
<!--start from layout-->

<div class="row">
<div class="col-md-12">
<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">Edit Page</div>
  <div class="tools"> <a href="javascript:;" class="collapse"> </a></div>
</div><!--End portlet-title-->
<div class="portlet-body">

	<?php 
	    $hidden = array('id' => html_escape(isset($DataList->page_id)? encrypt_decrypt('encrypt',$DataList->page_id):''));
		$atr2 =array('id'=>'frmcreatepage','name'=>'frmcreatepage','role'=>'form', 'autocomplete'=>'off');
   		echo form_open_multipart('manage/Page/edit',$atr2,$hidden); 
	?>
	
	<div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">Page Slug <span class="red">*</span></label>  
     <div class="col-lg-5 col-md-6">
     <?php $TITLE_HI = array(
        'name'   => 'page_url',
        'id'     => 'page_url',
        'class'  => 'form-control text-lower', 
        'value'  =>(isset($DataList->page_url) && $DataList->page_url !='' )?
         html_escape(trim($DataList->page_url)):""       
		);
		echo form_input($TITLE_HI);
	 ?>
     </div>
     </div><!--End Form-group-->

     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">Title (Hindi) <span class="red">*</span></label>  
     <div class="col-lg-5 col-md-6">
     <?php $TITLE_HI = array(
        'name'          => 'page_title_hi',
        'id'            => 'page_title_hi',
        'class'         => 'form-control',
        'value'         =>(isset($DataList->page_title_hi) && $DataList->page_title_hi !='' )?
         html_escape($DataList->page_title_hi):""
		);
		echo form_input($TITLE_HI);
	 ?>
     </div>
     </div><!--End Form-group-->

     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">Description (Hindi) <span class="red">*</span></label>  
     <div class="col-lg-10 col-md-9">
	 <?php 		
		$PAGEDESC_HI = (isset($DataList->page_description_hi) && $DataList->page_description_hi !='' )?
        html_entity_decode(stripslashes2($DataList->page_description_hi)):"";
	    echo $this->ckeditor->editor('page_description_hi',@$PAGEDESC_HI);
	 ?>
	 <div id="page_description_hi1"></div>
     </div>
     </div><!--End Form-group-->

	 <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">Title (English) <span class="red">*</span></label>  
     <div class="col-lg-5 col-md-6">
     <?php $TITLE_EN = array(
        'name'          => 'page_title_en',
        'id'            => 'page_title_en',
        'class'         => 'form-control',
        'value'         => (isset($DataList->page_title_en) && $DataList->page_title_en !='' )?
         html_escape(stripslashes2($DataList->page_title_en)):"",
		);
		echo form_input($TITLE_EN);
	 ?>
     </div>
     </div><!--End Form-group-->

     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">Description (English) <span class="red">*</span></label>  
     <div class="col-lg-10 col-md-9">
     <?php 		
		$PAGEDESC_EN = (isset($DataList->page_description_en) && $DataList->page_description_en !='' )?
        html_entity_decode(stripslashes2($DataList->page_description_en)):"";
	    echo $this->ckeditor->editor('page_description_en',@$PAGEDESC_EN);			 					
	  ?>
	 <div id="page_description_en1"></div>
     </div>
     </div><!--End Form-group-->
     
     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">Status <span class="red">*</span></label>  
     <div class="col-lg-10 col-md-9">
     <?php $STATUS = array('1'=>'Publish','0'=>'Pending');
		echo form_dropdown('status', $STATUS, (isset($DataList->page_status) && $DataList->page_status !='' )?
         html_escape($DataList->page_status):set_value('status'),array('class'=> 'form-control'));
	    ?>
     </div>
     </div><!--End Form-group-->

         <div class="form-group clearfix">
        <label class="col-lg-2 col-md-3 control-label">Attachment</label>
        <div class="col-lg-5 col-md-6">
        <input type="file" name="attachment" id="fileupload"/>
        </div>
     </div><!--End form-group-->
     
     <div class="form-group clearfix">
        <label class="col-lg-2 col-md-3 control-label">View Attachment</label>
        <div class="col-lg-5 col-md-6">
        <?php
        $image_properties = array(
        'src'   => (isset($DataList->attachment) && trim($DataList->attachment)!="")? 'uploads/pages/'.html_escape($DataList->attachment):'webroot/img/no_image.png',
        'alt'   => 'Project Image',
        'class' => 'post_images',
        'width' => '100',
        'height'=> '100',
        'title' => 'Project Image'
        );
         echo img($image_properties);
         ?>
        </div>
     </div><!--End form-group-->
     
     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">SEO Title  </label>  
     <div class="col-lg-10 col-md-9">
     <?php $META_TITLE = array(
        'name'          => 'meta_title',
        'id'            => 'meta_title',
        'class'         => 'form-control',
        'value'         => (isset($DataList->meta_title) && $DataList->meta_title !='' )?
         html_escape($DataList->meta_title):"",
		);
		echo form_input($META_TITLE);
	 ?>
     </div>
     </div><!--End Form-group-->

     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">SEO Keyword  </label>  
     <div class="col-lg-10 col-md-9">
     <?php $META_KEYWORD = array(
        'name'          => 'meta_keyword',
        'id'            => 'meta_keyword',
        'class'         => 'form-control',
        'value'         => (isset($DataList->meta_keyword) && $DataList->meta_keyword !='' )?
         html_escape($DataList->meta_keyword):"",
		);
		echo form_input($META_KEYWORD);
	 ?>
     </div>
     </div><!--End Form-group-->
     
     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">SEO Description </label>  
     <div class="col-lg-10 col-md-9">
     <?php $META_DESC = array(
        'name'          => 'meta_desc',
        'id'            => 'meta_desc',
        'class'         => 'form-control',
        'rows'          => 2,
        'cols'          => 20,
        'value'         => (isset($DataList->meta_desc) && $DataList->meta_desc !='' )?
         html_escape($DataList->meta_desc):"",
		);
		echo form_textarea($META_DESC);
	 ?>
     </div>
     </div><!--End Form-group-->
     
     <div class="form-group clearfix">
     <label class="col-lg-2 col-md-3 control-label">&nbsp;</label>  
     <div class="col-lg-4 col-md-5">
     <button type="submit" class="btn btn-info">Submit</button>
	 <button type="reset" class="btn btn-primary">Clear</button>
	 <a class="btn purple" href="<?php echo base_url('manage/Page/'); ?>"> Back</a>
     </div>
     </div><!--End Form-group-->

    <?php echo "</form>"; ?> 
    
    </div><!--End portlet body-->
    
</div>
</div><!--End row-->
<!--End from layout-->
<!------------------------------------------------------------------- -->
</div><!--End column -->
</div><!--End row-->
<!-- END PAGE CONTENT-->
<script src="<?php echo HTTP_JS_PATH_ADMIN;  ?>plugins/jquery.validate.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

        $("#reset").click(function(){
            $('.post_images').attr('src',"<?php echo base_url('webroot/img/no_image.png');?>");
    });
        
    $("#fileupload").change(function(){
            readURL_photo(this);
    });
        
    function readURL_photo(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.post_images').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
    }//end readURL_photo function
	
	//IMPORTANT: update CKEDITOR textarea with actual content before submit
    $("#frmcreatepage").on('submit', function() {
       for(var instanceName in CKEDITOR.instances) {
               CKEDITOR.instances[instanceName].updateElement();
       }
     })
	
	// validate signup form on keyup and submit
	jQuery.validator.addMethod("alphanumspace", function(value, element) {
		  return this.optional(element) || /^[a-zA-Z0-9\s]*$/.test(value);
	}, "Please enter character, number and space only.");
	
	jQuery.validator.addMethod("Alphaspacecomma", function(value, element) {
        		return this.optional(element) || /^[a-zA-Z0-1,.\s]*$/.test(value);
    }, "Please enter character,comma,dot and space only.");


        $.validator.addMethod('filesize', function(value, element, param) {
            return this.optional(element) || (element.files[0].size <= param) 
    }, $.validator.format("Uploaded file size should be less than or equal to 2 MB)."));
	
        $("#frmcreatepage").validate({
        	errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
            	page_url:{
					required: true,
					minlength:2,
					maxlength:100
				},
                page_title_hi: {
                    required: true,
			        minlength:2,
			        maxlength:255
                },
				page_description_hi: {
                    required: true
                },
				page_title_en: {
                    required: true,
                    minlength:2,
			        maxlength:255
                },
                 attachment:{
                    filesize:2097152,
                    maxlength:200,
                    extension:"jpg|jpeg|JPG|JPEG|png|PNG"
                },
				page_description_en: {
                    required: true
                },
                status: {
					required: true,
					digits:true
				},
				meta_title:{
					Alphaspacecomma:true,
					minlength:2,
			        maxlength:200
				},
				meta_keyword:{
					Alphaspacecomma:true,
					minlength:2,
			        maxlength:200
				},
				meta_desc:{
					Alphaspacecomma:true,
					minlength:2,
			        maxlength:200
				}
            },
             highlight: function (element) { // hightlight error inputs
                    $(element).closest('.form-group').addClass('has-error'); // set error class to the control group
                },

             unhighlight: function (element) { // revert the change done by hightlight
                    $(element).closest('.form-group').removeClass('has-error'); // set error class to the control group
             },errorPlacement: function (error, element) { // render error placement for each input type
                    if (element.attr("data-error-container")) { 
                        error.appendTo(element.attr("data-error-container"));
                    }else {
                        error.insertAfter(element); // for other inputs, just perform default behavior
                    }
                },
        });//end validation

});//end dom
</script>