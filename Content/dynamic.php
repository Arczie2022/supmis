<?php
session_start();
echo '
	<style  type="text/css">
	:root {
	  --primary_background_color: '.(empty($_COOKIE["pbc"])?"#203354":$_COOKIE["pbc"]).';
	  --secondary_background_color: '.(empty($_SESSION["SUPMIS"]["supmis_sbc"])?"goldenrod":$_SESSION["SUPMIS"]["supmis_sbc"]).';

	  --primary_font_color: '.(empty($_SESSION["SUPMIS"]["supmis_pfc"])?"black":$_SESSION["SUPMIS"]["supmis_pfc"]).';
	  --secondary_font_color: '.(empty($_SESSION["SUPMIS"]["supmis_sfc"])?"white":$_SESSION["SUPMIS"]["supmis_sfc"]).';

	  --body_background: '.(empty($_SESSION["SUPMIS"]["supmis_bb"])?"url('content_photos/CNSC-Watermark.jpg')":$_SESSION["SUPMIS"]["supmis_bb"]).';
	  --logo: '.(empty($_SESSION["SUPMIS"]["supmis_l"])?"url('content_photos/CNSC-Watermark.jpg')":$_SESSION["SUPMIS"]["supmis_l"]).';

	  --font_family: '.(empty($_SESSION["SUPMIS"]["supmis_ff"])?"Arial, serif":$_SESSION["SUPMIS"]["supmis_ff"]).';
	}
	</style>
';
?>