<article class="module width_full">
	<header><h3>Selamat Datang di PMB Online System v. 3.1</h3></header>
		<div class="module_content">
			<p>
			<?php
			$q_beranda = mysql_query("SELECT * FROM t_universitas WHERE admin = 'admin'");
			$a_beranda = mysql_fetch_array($q_beranda);
		
			echo "<p align='justify'>$a_beranda[6]</p>";
			?>
			</p>
		</div>
</article><!-- end of styles article -->
