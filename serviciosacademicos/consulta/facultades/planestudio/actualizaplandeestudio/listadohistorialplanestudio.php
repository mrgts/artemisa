<?php
    session_start();
    include_once('../../../../utilidades/ValidarSesion.php'); 
    $ValidarSesion = new ValidarSesion();
    $ValidarSesion->Validar($_SESSION);
    
//session_start();
?>
<link rel="stylesheet" type="text/css" href="../../../../estilos/sala.css">
<script LANGUAGE="JavaScript">
function  ventanaprincipal(pagina){
opener.focus();
opener.location.href=pagina.href;
window.close();
return false;
}
function reCarga(){
}
</script>
<?php
$rutaado=("../../../../funciones/adodb/");

require_once("../../../../funciones/clases/motor/motor.php");

require_once("../../../../Connections/salaado-pear.php");
require_once("../../../../funciones/sala_genericas/clasebasesdedatosgeneral.php");

function resumen_cadena($cadena,$longitud){

$rescad="";
for($i=0;$i<$longitud;$i++)
$rescad .= $cadena[$i];

return $rescad;

}
//if(isset($_GET['codigoestudiante'])&&($_GET['codigoestudiante']!=''))

$query="select p.nombreplanestudio,pe.codigoestudiante,pe.fechaasignacionplanestudioestudiante,
 pe.fechainicioplanestudioestudiante, pe.fechavencimientoplanestudioestudiante,e.nombreestado from 
planestudio p, planestudioestudiante pe
LEFT JOIN estado e ON e.codigoestado=pe.codigoestadoplanestudioestudiante
where
codigoestudiante='".$_GET['codigoestudiante']."'  and
p.idplanestudio=pe.idplanestudio 
";

$objetobase=new BaseDeDatosGeneral($sala);

$operacion=$sala->query($query);
//$row_operacion=$operacion->fetchRow();
while ($row_operacion=$operacion->fetchRow())
{
	$array_interno[]=$row_operacion;
	//$array_observacion[]=array('resumen_observacion'=>substr($row_operacion['observacion'],0,5);
}
//EliminarColumnaArrayBidimensional($columna,$array)
//$array_interno=Sumannnn($array_interno,$array_observacion);

unset($_GET['Restablecer']);
unset($_GET['Regresar']);
unset($_GET['Recargar']);
//unset($_GET['Filtrar']);

$estudiante=ucwords(strtolower($datosestudiante['nombresestudiantegeneral']." ".$datosestudiante['apellidosestudiantegeneral']." con  ".$datosestudiante['nombrecortodocumento']." ".$datosestudiante['numerodocumento']));
$motor = new matriz($array_interno,"HISTORIAL PLAN ESTUDIO ");
//$motor->agregarcolumna_filtro('Resumen Observacion', $array_observacion,'');
//array_flechas['llave_maestro'].'='.$this->array_flechas['valor_llave_maestro'].'&'.$this->array_flechas['llave_detalle'].'='.$_SESSION['contador_flechas'].'&link_origen='.$link_origen.'"
$motor->agregarllave_drilldown('idcentrotrabajoarp','centrostrabajo.php','centrostrabajo.php','','idcentrotrabajoarp',"",'','','','','onclick= "return ventanaprincipal(this)"');

$motor->mostrar();
?>