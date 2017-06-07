<!-- Page Content -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Ambil Mata Kuliah</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading text-center">
						Ambil Mata Kuliah
					</div>
					<div class="panel-body">
						<div class="col-md-6 col-md-offset-3">
							<?php echo form_open(base_url('kuliah/ambil')) ?>
							<div class="form-group">
								<label>List Mata Kuliah</label>
								<select name="matakuliah" class="form-control">
									<option></option>
									<?php foreach($matakuliah as $row): ?>
										<option value=" <?php echo $row->id; ?> ">
											<?php echo $row->namamk." | ".$row->hari ." | ".$row->namaruang  ?>
										</option>
									<?php endforeach; ?>
								</select>
							</div>
							<button type="submit" class="btn btn-default pull-right">Ambil</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="col-lg-12">
				<div class="panel panel-info">
					<div class="panel-heading text-center">
						MATA KULIAH YANG TELAH DI AMBIL
					</div>
					<div class="panel-body">
						<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
							<thead>
								<tr>
									<th>Nomor</th>
									<th>Mata Kuliah</th>
									<th>Hari</th>
									<th>Ruang</th>
								</tr>
							</thead>
							<tbody>
								<?php $no = 1 ?>
								<?php
								foreach($list as $row): ?>
								<tr class="odd gradeX">
									<td><?php echo $no ?></td>
									<td><?php echo $row->namamk ?></td>
									<td><?php echo $row->hari ?></td>
									<td class="center"><?php echo $row->namaruang ?></td>
								</tr>
								<?php
								$no = $no+1;
								endforeach;

								?>
							</tbody>
						</table>
						<!-- /.table-responsive -->
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
        <!-- /#page-wrapper -->