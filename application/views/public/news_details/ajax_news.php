 <?php // get the data and pass it to your view
 $token_name = $this->security->get_csrf_token_name();
 $token_hash = $this->security->get_csrf_hash();
 echo form_input(array('type'  => 'hidden','id'=>'sysToken','name'=>$token_name,'value'=>$token_hash));
 ?>
 <?php $ajaxPagination = $this->ajax_pagination->create_links(); ?>
<table class="table table-striped table-bordered table-hover mt10">
  <thead class="thead-dark">
      <tr>
	  <th width="90%"><?php echo $this->lang->line('title');?></th>
        <th width="10%"><?php echo $this->lang->line('link');?></th>
      </tr>
    </thead>
    <tbody>
	<?php 
	
	if(isset($DataList) && count($DataList)>0  && $DataList !=FALSE):
	$i = (isset($ajaxPagination['s_no']))?$ajaxPagination['s_no']:1;
	foreach($DataList as $row):	
	?> 
	<tr>
        <td><?php echo html_escape($row->title); ?></td>
        <td><a href="<?php echo base_url('news-details/nid/').encrypt_decrypt('encrypt',$row->id); ?>"><em class="fa fa-link"></em></a></td>
    </tr>
	<?php 
	$i = $i+1;
	 endforeach;
	 else:
	echo '<tr><td colspan="2" class="text-center">'.$this->lang->line('record_not_found').'</td></tr>';
	 endif; 
	?>
  </tbody>
 </table>

<nav aria-label="...">
	<?php if(isset($ajaxPagination['output'])){ echo $ajaxPagination['output']; }?>
</nav>


<div class="row">
	<div class="col-sm-12">
		<a class="nounderline" href="<?php echo base_url('news-details/archive/'); ?>">
		<b><i class="fa fa-hand-o-right"></i>
		<?php echo $this->lang->line('archived'); ?> (<?php echo (isset($archive_count))?$archive_count:""; ?>)
		</b>
		</a>
	</div>
</div>