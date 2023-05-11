<?php session_start();
$codCurso = $_SESSION['codCursoAula'];
var_dump($codCurso);
?>
<form action="conteudo.act.php" method="post" enctype="multipart/form-data">

<p><input type="text" name="descConteudo"> descrição do conteudo</p>

<input type="submit">

</form>