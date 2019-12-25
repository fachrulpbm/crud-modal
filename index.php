<!DOCTYPE html>
<html>
<head>

	<title>Modal AJAX</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Datatables Bootstrap CSS  -->
    <link rel="stylesheet" href="css/datatables.bootstrap.min.css">

    <!-- JQuery Datatables CSS -->
    <!-- <link rel="stylesheet" href="css/jquery.dataTables.min.css"> -->

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/fontawesome.min.css">

    <style>
        body{
            margin: 0px;
            padding: 0px;
        }
    </style>

</head>
<body>

	<!-- Container  -->
    <div class="container" style="width: 840px; margin-bottom: 20px">
        <br>
        <h3 style="margin: 0px">Satuan Pembelian</h3>
        <p>Data Satuan Pembelian Produk</p>

        <!-- Button Tambah Pembelian -->
        <div style="margin-bottom: 15px" align="right">
            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#modal_satuan" rel="tooltip" title="Tambah Satuan" data-placement="top" id="tambah">
                <i class="fas fa-plus"></i> Tambah
            </button>
        </div>
        
        <!-- Table Satuan Pembelian -->
        <table class="table table-sm table-hover table-striped" id="table_satuan">
            <thead>
                <tr>
                    <th>Kode Satuan</th>
                    <th>Nama Satuan</th>
                    <th style="width: 10%">Aksi</th>
                </tr>
            </thead>
        </table>

    </div>

    <!-- JQuery -->
    <script src="js/jquery.min.js"></script>

    <!-- JQuery Datatables JS  -->
    <script src="js/jquery.datatables.min.js"></script>

    <!-- Datatables Bootstrap JS -->
    <script src="js/datatables.bootstrap.min.js"></script>

    <!-- Popper JS -->
    <script src="js/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Font Awesome -->
    <script src="js/kit.fontawesome.js"></script>

</body>
</html>

<?php
    include_once('modal.php');
?>

<script>

    var table_satuan;

    $(document).ready(function(){

        table_satuan = $('#table_satuan').DataTable({
            "ajax": "fetch.php",
            "order": [],
            "columnDefs":[
                {
                    "orderable": false,
                    "targets": [2]
                },
                {
                    "className": "text-left",
                    "targets": [2]
                }
            ]
        });

        $('[rel="tooltip"]').tooltip({trigger: "hover"});

    });

	
</script>



































