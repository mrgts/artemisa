<?php
/**
 * Table Definition for cohorte
 */
require_once '../funciones/pear/DB/DataObject.php';

class DataObjects_Cohorte extends DB_DataObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    var $__table = 'cohorte';                         // table name
    var $idcohorte;                       // int(11)  not_null primary_key auto_increment
    var $numerocohorte;                   // string(3)  not_null multiple_key
    var $codigocarrera;                   // int(11)  not_null multiple_key
    var $codigoperiodo;                   // string(8)  not_null multiple_key
    var $codigoestadocohorte;             // string(2)  not_null multiple_key
    var $codigoperiodoinicial;            // string(6)  not_null multiple_key
    var $codigoperiodofinal;              // string(6)  not_null multiple_key

    /* Static get */
    function staticGet($k,$v=NULL) { return DB_DataObject::staticGet('DataObjects_Cohorte',$k,$v); }

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}