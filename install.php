<?php
include "lib/fungsi.php";
	
mysql_query("DROP DATABASE pmb_db");
echo "HAPUS DATABASE DENGAN NAMA \"pmb_db\" :   OK .... <br><br>";
mysql_query("CREATE DATABASE pmb_db");
mysql_select_db("pmb_db");

restore("pmb_db.sql");

echo "INSTALL DATABASE  \"pmb_db\" :    OK ......<br><br>
			INSTALL TABEL  \"admin\" :    OK ......<br>
			INSTALL TABEL  \"master\" :    OK ......<br>
			INSTALL TABEL  \"t_agama\" :    OK ......<br>
			INSTALL TABEL  \"t_jurusan\" :    OK ......<br>
			INSTALL TABEL  \"t_penddk\" :    OK ......<br>
			INSTALL TABEL  \"t_pkj\" :    OK ......<br>
			INSTALL TABEL  \"t_prestasi\" :    OK ......<br>
			INSTALL TABEL  \"t_universitas\" :    OK ......<br>
			INSTALL TABEL  \"t_sekolah\" :    OK ......<br>
			<br><br>Silahkan Klik <a href='index.php'>DI SINI</a> untuk melanjutkan<br>";

?>
