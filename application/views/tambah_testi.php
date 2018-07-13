<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<!-- Tambah Testi Column -->

<h3 class="page-header">Tambah Testimonial</h3>

<form class="form-horizontal" action="<?php echo base_url('home/tambah_testi/kirim_testi');?>" method="POST">
	<div class="form-group">
		<label class="control-label col-sm-2">Nama Kamu:</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name_testi">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">Email Kamu:</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="email_testi" >
		</div>
	</div>		
	<div class="form-group">
		<label class="control-label col-sm-2">Testimonial:</label>
		<div class="col-sm-10">
			<textarea class="form-control"name="testi"></textarea>
		</div>
	</div>						
	<button type="submit" value="Tambah Testi" class="btn btn-danger">Kirim</button>
</form>


