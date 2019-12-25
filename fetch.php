<?php
	include_once('connection.php');

    $output = array(
        'data' => array()
    );

	$select = "SELECT * FROM satuan";
    $hasil = mysqli_query($conn, $select);

    $jumlah = mysqli_num_rows($hasil);

    if($jumlah > 0){
        $btn = "
            <button type='button' class='btn btn-outline-primary btn-sm' rel='tooltip' data-placement='top' title='Ubah' id='".$row['kd_satuan']."'>
                    <i class='far fa-edit'></i>
            </button>
            <button type='button' class='btn btn-outline-danger btn-sm' rel='tooltip' data-placement='top' title='Hapus' id='".$row['kd_satuan']."'>
                <i class='fas fa-trash-alt'></i>
            </button>
        ";

        while($row = mysqli_fetch_array($hasil)){

            $output['data'][] = array(
                $row['kd_satuan'],
                $row['nm_satuan'],
                $btn
            );
        }
    }

    echo json_encode($output);

?>


