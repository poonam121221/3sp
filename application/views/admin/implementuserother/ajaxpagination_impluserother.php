<?php // get the data and pass it to your view
 $token_name = $this->security->get_csrf_token_name();
 $token_hash = $this->security->get_csrf_hash();
 echo form_input(array('type'  => 'hidden','id'=>'sysToken','name'=>$token_name,'value'=>$token_hash));
 $ajaxPagination = $this->ajax_pagination->create_links(); 
?>
     <table class="table table-striped box-table-a">
		<thead>
		<tr>
			<th width="3%">No.</th>
			<th width="13%">Project Name</th>
			<th width="13%">Name</th>
			<th width="12%">Email</th>
			<th width="10%">Mobile</th>
			<th width="12%">Last Modified Date</th>
			<th width="8%">Status</th>
			<th width="10%">Action</th>
		</tr>
		</thead>
		<tbody> 
	<?php 
	if(isset($DataList) && count($DataList)>0  && $DataList !=FALSE):
	$i = (isset($ajaxPagination['s_no']))?$ajaxPagination['s_no']:1;
	foreach($DataList as $row):
	$id = encrypt_decrypt('encrypt',$row->other_impl_id);
	$project_enc_id = encrypt_decrypt('encrypt',$row->fk_project_id);
	//$added_name = html_escape(trim($row->user_fname." ".$row->user_lname));
	$user_name = html_escape(trim($row->first_name." ".$row->last_name));
	?>                                           
	<tr>
		<td><?php echo $i; ?></td>
		<td><a target="_blank" href="<?php echo base_url('manage/Project/show/'.$project_enc_id);?>"><?php echo html_escape($row->project_title); ?></a></td>
		<td><?php echo $user_name; ?></td>
		<td><?php echo html_escape($row->email); ?></td>
		<td><?php echo html_escape($row->mobile); ?></td>
	    <td><?php echo getModifiedDate($row->added_date,$row->edit_date); ?></td>
	    <td><?php echo ActiveStatus(html_escape($row->status)); ?></td>
	    <td>
	    <?php if($AllowAccess==TRUE){ ?>
	    <a href="<?php echo base_url('manage/Implementuserother/show/'.$id.'/'); ?>" class="btn default btn-xs blue tooltips" data-placement="top" data-original-title="Agency Title">
	    <i class="fa fa-search"></i> View</a>
	    <?php } ?>	    
	    </td>
   </tr>
	<?php
	 $i = $i+1;
	 endforeach;else:
	 echo '<tr class="text-center"><td colspan="8">Record not found</td></tr>';
	 endif;
	?>
	</tbody>
	</table>
<div class="clearfix"></div>
<?php if(isset($ajaxPagination['output'])){ echo $ajaxPagination['output']; }?>