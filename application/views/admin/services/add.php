<!-- BEGIN PAGE HEADER-->
<div class="row">
   <div class="col-md-12">
      <ul class="page-breadcrumb breadcrumb">
         <li><i class="fa fa-home"></i><a href="#">Home</a><i class="fa fa-angle-right"></i></li>
         <li><a href="<?php echo base_url('manage/Services/'); ?>">Services </a><i class="fa fa-angle-right"></i></li>
         <li><a href="javascript:void(0);">Add</a></li>
      </ul>
      <!-- END PAGE TITLE & BREADCRUMB-->
   </div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
   <div class="col-md-12">
      <!------------------------------------------------------------------- -->
      <!-- BEGIN BORDERED TABLE PORTLET-->
      <div class="portlet box blue">
         <div class="portlet-title">
            <div class="caption">Add Services</div>
            <div class="tools"> <a href="javascript:;" class="collapse"> </a></div>
         </div>
         <!--End portlet-title-->
         <div class="portlet-body">
            <!--------------------------------------------------------------------------->
            <div class="row">
               <div class="col-lg-12">
                  <?php echo AlertMessage($this->session->flashdata('AppMessage'));?>
               </div>
            </div>
            <!--End Validation message-->
            <?php
               $atr2 =array('id'=>'frmServices','name'=>'frmServices','class'=>'form-horizontal','role'=>'form', 'autocomplete'=>'off');
               echo form_open_multipart('manage/Services/add',$atr2); 
               ?>
            <div class="form-body">
               <div class="form-group">
                  <label class="col-md-2 col-sm-3 control-label">Title (Hindi) <span class="red">*</span></label>
                  <div class="col-md-10 col-sm-9">
                     <?php $TITLE_HI = array( 
                        'name'=>'title_hi','id'=>'title_hi','class'=> 'form-control','placeholder'=>'Enter title in hindi');
                        echo form_input($TITLE_HI);
                        ?>
                  </div>
               </div>
               <!--End form-group-->
               <div class="form-group clearfix">
                  <label class="col-md-2 col-sm-3 control-label">Description (Hindi) <span class="red">*</span></label>  
                  <div class="col-md-10 col-sm-9">
                     <?php 		
                        $PAGEDESC_HI = "";
                           echo $this->ckeditor->editor('description_hi',@$PAGEDESC_HI);
                        ?>
                     <div id="description_hi1"></div>
                  </div>
               </div>
               <!--End Form-group-->
               <div class="form-group">
                  <label class="col-md-2 col-sm-3 control-label">Title (English) <span class="red">*</span></label>
                  <div class="col-md-10 col-sm-9">
                     <?php $TITLE_EN = array( 
                        'name'=>'title_en','id'=>'title_en','class'=> 'form-control','placeholder'=>'Enter title in english');
                        echo form_input($TITLE_EN);
                        ?>
                  </div>
               </div>
               <!--End form-group-->
               <div class="form-group clearfix">
                  <label class="col-md-2 col-sm-3 control-label">Description (English) <span class="red">*</span></label>  
                  <div class="col-md-10 col-sm-9">
                     <?php 		
                        $PAGEDESC_EN = "";
                           echo $this->ckeditor->editor('description_en',@$PAGEDESC_EN);
                        ?>
                     <div id="description_en1"></div>
                  </div>
               </div>
               <!--End Form-group-->
               <div class="form-group">
                  <label class="col-md-2 col-sm-3 control-label">Attachment <span class="red">*</span></label>
                  <div class="col-md-10 col-sm-9">
                     <?php echo form_upload(array('name'=>'attachment')); ?>
                  </div>
               </div>
               <!--End form-group-->
               <div class="form-group clearfix">
                  <label class="col-md-2 col-sm-3 control-label">Archive Date <span class="red">*</span></label>
                  <div class="col-md-10 col-sm-9">
                     <?php $ARCHIVE_DATE = array('name'=>'archive_date','id'=>'archive_date','class'=>'form-control');
                        echo form_input($ARCHIVE_DATE);
                           ?>
                  </div>
               </div>
               <!--End form-group-->

               <div class="form-group">
   					<label class="col-md-2 col-sm-3 control-label"> Category <span class="red">*</span></label>
   					<div class="col-md-10 col-sm-9">
   					<?php 
   						echo form_dropdown(array('name'=>'cat_id','id'=>'cat_id','class'=>'form-control input-medium'),
   						isset($CategoryList)?$CategoryList:array(''=>'--SELECT CATEGORY--'),isset($DataList->cat_id) ? ($DataList->cat_id):'');
   					?>
   					</div>
   				</div><!--End form-group-->


               <?php if($optstatus==1){ ?>
               <div class="form-group">
                  <label class="col-md-2 col-sm-3 control-label">Status <span class="red">*</span></label>
                  <div class="col-md-10 col-sm-9 ">
                     <?php $STATUS = array('1'=>'Publish','0'=>'Pending');
                        echo form_dropdown('status', $STATUS, (isset($DataList->status) && $DataList->status !='' )?
                               html_escape($DataList->status):set_value('status'),array('class'=> 'form-control input-medium'));
                           ?>
                  </div>
               </div>


               <!--End form-group-->
               <?php }//end check optstatus ?>
               <div class="form-group">
                  <label class="col-md-2 col-sm-3 control-label"></label>
                  <div class="col-md-10 col-sm-9">
                     <button type="submit" class="btn green">Submit</button>
                     <button type="reset" id="reset" class="btn blue">Clear</button>
                     <a class="btn purple" href="<?php echo base_url('manage/Services/'); ?>">Back</a>
                  </div>
               </div>
               <!--End form-group-->
            </div>
            <!--End form-body-->
            <?php echo form_close(); ?>
            <!--------------------------------------------------------------------------->
         </div>
         <!-- End portlet-body -->
      </div>
      <!-- End BORDERED TABLE PORTLET-->
      <!------------------------------------------------------------------- -->
   </div>
   <!--End column -->
</div>
<!--End row-->
<!-- END PAGE CONTENT-->
<script type="text/javascript" src="<?php echo base_url('webroot/');?>validation/dist/jquery.validate.js"></script>
<script type="text/javascript" src="<?php echo base_url('webroot/');?>validation/dist/additional-methods.js"></script>
<script type="text/javascript">
   jQuery(function(){
   	
   //IMPORTANT: update CKEDITOR textarea with actual content before submit
      $("#frmServices").on('submit', function() {
         for(var instanceName in CKEDITOR.instances) {
                 CKEDITOR.instances[instanceName].updateElement();
         }
       });
   	
   $('#archive_date').datepicker({format:'dd-mm-yyyy',autoclose: true,startDate:'0d'})
   .on('changeDate', function(ev) {
       if($('#archive_date').valid()){ $('#archive_date').removeClass('has-error'); }
   });
   	
   jQuery.validator.addMethod("alphanumspace", function(value, element) {
   	  return this.optional(element) || /^[a-zA-Z0-9\s]*$/.test(value);
   }, "Please enter character, number and space only.");
   
   $.validator.addMethod('filesize', function(value, element, param) {
   	    return this.optional(element) || (element.files[0].size <= param) 
   }, $.validator.format("Uploaded file size should be less than or equal to 25 MB)."));
   
   $.validator.addMethod("checkdate", function(value, element) {
          return this.optional(element) || /^(0[1-9]|[1-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-[0-9]{4}$/.test(value);
      }, "Please enter valid date format (DD-MM-YYYY).");
   
   jQuery( "#frmServices" ).validate({
   	  errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
   	  rules: { 
         cat_id:{
               required:true,
               digits:true
          }, 
   	  title_hi: {
   	        required: true,
   	        minlength:2,
   	        maxlength:255
   	    },
   	   description_hi: {
                 required: true
             },
   	   title_en: {
   	        required: true,
   	        alphanumspace:true,
   	        minlength:2,
   	        maxlength:255
   	    },
   	   description_en: {
                 required: true
             },
   	    status:{
   			required: true,
   	  		digits:true
   		},
   		attachment:{
   			required: true,
   			extension:'PDF|pdf|JPEG|jpeg|JPG|jpg|png',
   			filesize:26214400
   		},
            archive_date: {
   			required: true,
   			checkdate:true
   	  }
   	  },
   	  messages:{
   	  	attachment: {extension:"Please upload only JPEG,JPG,PDF Formet",filesize:"File size must be less than 25 MB"}
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
   	});	
   });//end dom
</script>