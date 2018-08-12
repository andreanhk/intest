<?php

require "../template/setting.php";

// DB table to use
$table = 'v_check';

// Table's primary key
$primaryKey = 'id';
 
// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case simple
// indexes
$columns = array(
     array( 'db' => 'ctype', 'dt' => 0 ),
   	 array( 'db' => 'ctypedesc', 'dt' => 1 ),
     array( 'db' => 'ctcode', 'dt' => 2 ),
     array( 'db' => 'ctable', 'dt' => 3 ),
     array( 'db' => 'cstat', 'dt' => 4 ),
     array( 'db' => 'cmodul', 'dt' => 5 ),
     array( 'db' => 'vcheck', 'dt' => 6 ),
     array( 'db' => 'vcba', 'dt' => 7 ),
     array( 'db' => 'vctransreqs', 'dt' => 8 ),
     array( 'db' => 'vcdate', 'dt' => 9 ),
     array( 'db' => 'vcpic', 'dt' => 10 )

//     array( 'db' => 'first_name', 'dt' => 0 ),
//     array( 'db' => 'last_name',  'dt' => 1 ),
//     array( 'db' => 'position',   'dt' => 2 ),
//     array( 'db' => 'office',     'dt' => 3 ),
//     array(
//         'db'        => 'start_date',
//         'dt'        => 4,
//         'formatter' => function( $d, $row ) {
//             return date( 'jS M y', strtotime($d));
//         }
//     ),
//     array(
//         'db'        => 'salary',
//         'dt'        => 5,
//         'formatter' => function( $d, $row ) {
//             return '$'.number_format($d);
//         }
//     )
);
 
// SQL server connection information
$sql_details = array(
    'user' => DB_USER,
    'pass' => DB_PASS,
    'db'   => DB_NAME,
    'host' => DB_HOST
);
 
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * If you just want to use the basic configuration for DataTables with PHP
 * server-side, there is no need to edit below this line.
 */
 
require( 'ssp.class.php' );
 
//var_dump(SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns ));

echo json_encode(
    SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns )
,JSON_UNESCAPED_UNICODE);
