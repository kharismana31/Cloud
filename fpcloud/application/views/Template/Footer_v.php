</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<?php echo asset_url();?>jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo asset_url();?>bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo asset_url();?>metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo asset_url();?>dist/js/sb-admin-2.js"></script>

    <!-- DataTables JavaScript -->
    <script src="<?php echo asset_url();?>datatables/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo asset_url();?>datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="<?php echo asset_url();?>datatables-responsive/dataTables.responsive.js"></script>

    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>

</html>
