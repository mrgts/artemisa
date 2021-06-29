<?php
/**
 * Table Definition for tipocosto
 */
require_once 'DB/DataObject.php';

class DataObjects_Tipocosto extends DB_DataObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    var $__table = 'tipocosto';                       // table name
    var $codigotipocosto;                 // string(3)  not_null primary_key
    var $nombretipocosto;                 // string(50)  not_null
    var $codigoestado;                    // string(3)  not_null

    /* ZE2 compatibility trick*/
    function __clone() { return $this;}

    /* Static get */
    function staticGet($k,$v=NULL) { return DB_DataObject::staticGet('DataObjects_Tipocosto',$k,$v); }

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}