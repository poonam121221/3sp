<!-- banner -->
<div class="inner-header">
    <div class="container">
        <h3><?php echo $title; ?></h3>
    </div>
</div>
<div class="fontresize">
    <div class="inner-pages">
        <!-- Breadcrumb -->
        <div class="container">
            <?php $this->load->view('element/inc_breadcrum'); ?>
            <!-- Breadcrumb -->
            <div class="row">
                <div class="col-md-4">
                    <?php $this->load->view('element/inc_sidebar'); ?>
                </div>
                <div class="col-md-8">
                    <!-- <h4 class="main-inner-heading">Project Management Consultancy</h4> -->
                    <div class="innerpage-block">
                        <div class="pagedetail">

                            <?php
            // get the data and pass it to your view
            $token_name = $this->security->get_csrf_token_name();
            $token_hash = $this->security->get_csrf_hash();
            echo form_input(array('type' => 'hidden', 'id' => 'sysToken', 'name' => $token_name, 'value' => $token_hash));
            ?>
                <div class="row mT30 searchtop">
                    <div class="col-md-3 form-group">
                        <input type="text" name="title" value="" id="sTitle" class="form-control form-control-sm"
                            placeholder="<?php echo $this->lang->line('search_by_title'); ?>">
                    </div>
                    <div class="col-md-3 form-group">
                        <button class="btn btn-primary" onclick="searchFilter();" name="search" id="search">
                            <?php echo $this->lang->line('search'); ?></button>
                        <a class="" onclick="searchFilter(0, 1);" name="search-all" id="search-all">
                            <!--<?php echo $this->lang->line('reset'); ?>--><i class="fa fa-refresh"></i>
                        </a>
                    </div>
                </div>
                            <div class="row gallery-box m-0" id="ajaxdata">


                            </div>
                        </div>
                    </div>
                    <span class="last-update"><em class="icon-calendar3"></em>
                        <?php echo isset($LastUpdatedDate)?  '<span class="updateinfo">'.$this->lang->line('last_updated').':'. $LastUpdatedDate.'</span>': ''; ?>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>


<?php $this->load->view('element/inc_footer_slider'); ?>
<script type="text/javascript">
$(function() {
    getAjaxRecord();

    function getAjaxRecord() {
        searchFilter();
    }
}); //end dom

//Do not use this function in Dom
function searchFilter(page_num, all) {
    page_num = page_num ? page_num : 0;
    all = all ? all : 0;
    var sTitle = "";
    if (all == 0) {
        sTitle = $("#sTitle").val();
    } else {
        $("#sTitle").val('');
    }
    var tokenVal = $(document).find('#sysToken').val();
    var dataString = {
        'page': page_num,
        'sTitle': sTitle,
        "<?php echo $this->security->get_csrf_token_name(); ?>": tokenVal,
        'type': <?php echo $type; ?>
    };
    showLoader();
    $.ajax({
        type: 'POST',
        url: '<?php echo base_url("NewsDetails/ajaxPaginationData/"); ?>' + page_num,
        data: dataString,
        success: function(html) {
            $('#ajaxdata').html(html);
            hideLoader();
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown);
            hideLoader();
        }
    });
} //end ajax searchFilter
</script>