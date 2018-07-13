<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php require_once('adminheader.php'); ?>
<?php require_once('adminsidebar.php'); ?>
            <!-- Blog Entries Column -->
            <div class="col-md-8">
				<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading"><h3>Daftar Testimoni</h3></div>
					<table class="table">
						<thead>
							<tr>
								<th>Nama</th>
								<th>Email</th>					
								<th>Testimoni</th>		
								<th>Aksi</th>										
							</tr>
							
						</thead>
						<tbody>
							<?php if(!empty($record)):?>
								<?php foreach($record as $row):?>
									<tr>
										<td><?php echo $row['name_testi'];?></td>
										<td><?php echo $row['email_testi'];?></td>
										<td><?php echo $row['testi'];?></td>
										<td><a href="<?php echo base_url('front/deletetesti/'.$row['testi_id']);?>"><span class="label label-danger">Hapus</span></a></td>
									</tr>
								<?php endforeach;?>
							<?php endif;?>
						</tbody>
					</table>
					</div>
				<ul class="pager">
                    <?php echo $pagination ;?>
                </ul>
			</div>
		
<?php require_once('adminfooter.php'); ?>