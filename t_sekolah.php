		<?php
		$cekN		= NULL;
		$cekS		= NULL;
		$id_sekolah	= isset($_GET['id']) ? $_GET['id'] : NULL;
		$mod 		= isset($_GET['mod']) ? $_GET['mod'] : NULL;	

		if ($mod == "del") {
			$q_delete_sekolah = mysql_query("DELETE FROM t_sekolah WHERE id_sekolah = '$id_sekolah'");
			if ($q_delete_sekolah) {
				echo "<h4 class='alert_success'>Data berhasil dihapuskan<span id='close'>[<a href='#'>X</a>]</span></h4>";
			} else {
				echo "<h4 class='alert_error'>".mysql_error()."<span id='close'>[<a href='#'>X</a>]</span></h4>";
			}
		}
		
		// ================ DATA FORM ( POST ) =====================//
		$display 			= "style='display: none'"; 	//default = formnya dihidden
		$tb_act 			= isset($_POST['tb_act']) ? $_POST['tb_act'] : NULL;				//ambil variabel POST value Tombol FOrm
		$p_id_sekolah   		= isset($_POST['id_sekolah']) ? $_POST['id_sekolah'] : NULL;		//ambil variabel POST id_sekolah
		$p_nama_sekolah 		= isset($_POST['nama_sekolah']) ? $_POST['nama_sekolah'] : NULL;	//ambil variabel POST nama_sekolah
		$p_status_sekolah 	= isset($_POST['status_sekolah']) ? $_POST['status_sekolah'] : NULL;
		$p_alamat_sekolah 	= isset($_POST['alamat_sekolah']) ? $_POST['alamat_sekolah'] : NULL;
		$p_kpl_sekolah 		= isset($_POST['kpl_sekolah']) ? $_POST['kpl_sekolah'] : NULL;
		
		
		if ($tb_act == "Tambah") {
			$display = "style='display: none'";
			$q_tambah_sekolah	= mysql_query("INSERT INTO t_sekolah VALUES ('', '$p_nama_sekolah', '$p_status_sekolah',
			'$p_alamat_sekolah', '$p_kpl_sekolah')");
			if ($q_tambah_sekolah) {
				echo "<h4 class='alert_success'>Data berhasil ditambahkan<span id='close'>[<a href='#'>X</a>]</span></h4>";
			} else {
				echo "<h4 class='alert_error'>".mysql_error()."<span id='close'>[<a href='#'>X</a>]</span></h4>";
			}
		} else if ($tb_act == "Edit") {
			$display = "style='display: none'";
			$q_edit_sekolah	= mysql_query("UPDATE t_sekolah SET sekolah = '$p_nama_sekolah',
			status = '$p_status_sekolah', alamat = '$p_alamat_sekolah', kepsek = '$p_kpl_sekolah'
			WHERE id_sekolah = '$p_id_sekolah'");
			if ($q_edit_sekolah) {
				echo "<h4 class='alert_success'>Data berhasil diupdate<span id='close'>[<a href='#'>X</a>]</span></h4>";
			} else {
				echo "<h4 class='alert_error'>".mysql_error()."<span id='close'>[<a href='#'>X</a>]</span></h4>";
			}
		} else {	
			$display = "style='display: none'";
		}
		?>
<article class="module width_full">
	<header><h3>Referensi Asal Sekolah</h3></header>
		<div class="module_content">
		<h5><a href="?p=t_sekolah&mod=add">Tambah Data Asal Sekolah</a></h5>
		
		<?php		
		// ================ TAMPILKAN DATANYA =====================//
		echo "<table border='1' class='data'><tr><th width='10%'>ID</th><th width='60%'>Nama Sekolah Asal</th><th width='30%'>Control</th></tr>";
		$q_sekolah 	= mysql_query("SELECT * FROM t_sekolah ORDER BY id_sekolah ASC") or die (mysql_error());
		$j_data 	= mysql_num_rows($q_sekolah);

		if ($j_data == 0) {
			echo "<tr><td id='tengah' colspan='3'>-- Tidak Ada Data --</td></tr>";
		} else {
			$no = 1;
			while ($a_sekolah = mysql_fetch_array($q_sekolah)) {
				echo "<tr><td id='tengah'>$no</td><td>$a_sekolah[1]</td>
				<td id='tengah'><a href='?p=t_sekolah&mod=edit&id=$a_sekolah[0]'>Edit</a> |
					<a href='?p=t_sekolah&mod=del&id=$a_sekolah[0]' onclick=\"return konfirmasi('Menghapus data $a_sekolah[1]')\">Delete</a>
				</tr>";
				$no++;
			}
		}
		echo "</table>";
		?>

		</div>
</article>

		<?php
		// ================ DATA URL "mod" ( GET ) =====================//

		if ($mod == "edit") {
			$display = "";
			$q_edit_sekolah	= mysql_query("SELECT * FROM t_sekolah WHERE id_sekolah = '$id_sekolah'");
			$a_edit_sekolah	= mysql_fetch_array($q_edit_sekolah);
			
			$nama_sekolah = $a_edit_sekolah[1];
			if ($a_edit_sekolah[2] == "1") {
				$cekN = "checked";
			} else {
				$cekS = "checked";
			}
			$alamat_sekolah = $a_edit_sekolah[3];
			$kpl_sekolah = $a_edit_sekolah[4];
			$view = "Edit";
			
		} else if ($mod == "add") {
			$display = "";
			$id_sekolah = "";
			$nama_sekolah = "";
			$cekN = "";
			$cekS = "";
			$alamat_sekolah = "";
			$kpl_sekolah = "";
			$view = "Tambah";
		} else {
			$display = "style='display: none'";
		}

		?>

<article class="module width_full" <?php echo $display;?>>
	<header><h3><?php echo $view;?> Data Asal Sekolah</h3></header>
		<div class="module_content">
		<form action="?p=t_sekolah" method="post" id="ft_sekolah">
		<table class="tbl_form">
			<tr><td width="20%">ID</td>
			<td width="80%"><input type="text" size="3" name="id_sekolah" readonly value="<?php echo $id_sekolah; ?>"></td></tr>
			<tr><td>Nama</td>
			<td><input type="text" size="40" name="nama_sekolah" value="<?php echo $nama_sekolah; ?>"></td></tr>
			<tr><td>Status</td>
			<td>
			<input type="radio" name="status_sekolah" value="1" <?php echo $cekN; ?>><label for="status_sekolah">Negeri</label>
			<input type="radio" name="status_sekolah" value="2" <?php echo $cekS; ?>><label for="status_sekolah">Swasta</label>
			</td></tr>
			<tr><td>Alamat Sekolah</td>
			<td><input type="text" size="50" name="alamat_sekolah" value="<?php echo $alamat_sekolah; ?>"></td></tr>
			<tr><td>Nama Kepala</td>
			<td><input type="text" size="30" name="kpl_sekolah" value="<?php echo $kpl_sekolah; ?>"></td></tr>
			<tr><td></td><td><input type="submit" name="tb_act" value="<?php echo $view; ?>"></td></tr>
		</table>
		</div>
</article>
