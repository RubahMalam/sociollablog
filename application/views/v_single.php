<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php require_once('header.php'); ?>
	<!-- Untuk menampilkan satu postingan penuh -->
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">
                
					<?php if(!empty($record)):?>
						<?php foreach($record as $row): ?>
							<!-- First Blog Post -->
							<h2><?php echo $row['title'];?></h2>
							<p class="lead">
								by <?php echo $row['author'];?>
							</p>
							<p><span class="glyphicon glyphicon-time"></span> Diterbitkan pada <?php echo tgl_indo($row['date']);?></p>
							<hr>
							<img class="img-responsive" src="<?php echo $row['featured_image'];?>" width="600" height="100" alt="">
							<hr>
							<p><?php echo $row['content'];?></p>
							<!--<a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>-->
							<hr>
							<h4>Tags</h4>
							<div class="panel panel-default">
								<div class="panel-body">
									<?php foreach($tags as $tag) { ?>
										<a class="btn btn-primary btn-xs" href="<?php echo base_url('home\post_by_tags\/'.$tag->tag);?>"><?php echo $tag->tag ?></a>
									<?php } ?>
								</div>
							</div>
							<hr>
							<div class="media">
								<div class="alert alert-success" role="alert">Ada <?php echo count($komentar)?> komentar.<br></div>
								<?php foreach($komentar as $komen){ ?>
									<div class="media-left">
										<a href="#"><img class="media-object" src="<?=base_url('assets\images\guest.png')?>" alt="..."></a>
									</div>
									<div class="media-body">
										<strong><?php echo $komen->comment_name;?></strong><br>
										<small>Diterbitkan pada <?php echo tgl_indo($komen->comment_date);?></small><br>
										<p><?php echo $komen->comment_body;?></p>
									</div><br>
								<?php } ?>
							</div>							
							

							<hr>
							<?php require_once('komentar.php'); ?>		
						<?php endforeach;?>
					<?php endif;?>					
						
            </div>
				
			<!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Cari di Guo blog</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Kategori</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Kesehatan</a>
                                </li>
                                <li><a href="#">Pendidikan</a>
                                </li>
                                <li><a href="#">Seni dan Budaya</a>
                                </li>
                                <li><a href="#">Teknologi</a>
								</li>
                                <li><a href="#">Musik</a>
								</li>
                                <li><a href="#">Tips dan Trik</a>
								</li>
                                <li><a href="#">Kecantikan</a>
                                </li>
                            </ul>
                        </div>
                        
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <div class="well">
                    <h4>Tentang Guo blog</h4>
                    <p><b>Guo blog</b> <i>adalah sebuah blog sederhana yang dibuat dengan menggunakan PHP Codeigniter dan bootstrap. Di dalam Guo blog kamu bisa menulis dan mengubah artikel. Di setiap artikel kamu bisa menambahkan tags, dan dapat mencari artikel berdasarkan tag. Oh iya, disetiap artikel kamu juga bisa memberi komentar loh.</i></p>
                </div>

            </div>

        </div>
        <!-- /.row -->

        <hr>
<?php require_once('footer.php'); ?>
