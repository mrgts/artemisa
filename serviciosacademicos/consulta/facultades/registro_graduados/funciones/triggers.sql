USE sala;

DROP TRIGGER sala.trigger_logregistroincentivoacademico_insert;
DROP TRIGGER sala.trigger_logregistroincentivoacademico_update;
DROP TRIGGER sala.trigger_logregistroincentivoacademico_delete;
DROP TRIGGER sala.trigger_logdocumentograduado_update;
DROP TRIGGER sala.trigger_logdocumentograduado_insert;
DROP TRIGGER sala.trigger_logdocumentograduado_delete;
DROP TRIGGER sala.trigger_logregistrograduado_insert;
DROP TRIGGER sala.trigger_logregistrograduado_update;

delimiter //

CREATE TRIGGER sala.trigger_logregistrograduado_update
  AFTER UPDATE ON sala.registrograduado
  FOR EACH ROW
  BEGIN
       
	IF NEW.numerodiplomaregistrograduado <> OLD.numerodiplomaregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 200, NEW.idtipogrado);
        END IF;
	IF NEW.fechadiplomaregistrograduado <> OLD.fechadiplomaregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 201, NEW.idtipogrado);
        END IF;
	IF NEW.numeroacuerdoregistrograduado <> OLD.numeroacuerdoregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 204, NEW.idtipogrado);
        END IF;
	IF NEW.fechaacuerdoregistrograduado <> OLD.fechaacuerdoregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 205, NEW.idtipogrado);
        END IF;
	IF NEW.responsableacuerdoregistrograduado <> OLD.responsableacuerdoregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 206, NEW.idtipogrado);
        END IF;
	IF NEW.numeroactaregistrograduado <> OLD.numeroactaregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 207, NEW.idtipogrado);
        END IF;
	IF NEW.fechaactaregistrograduado <> OLD.fechaactaregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 208, NEW.idtipogrado);
        END IF;
	IF NEW.fechagradoregistrograduado <> OLD.fechagradoregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 209, NEW.idtipogrado);
        END IF;
	IF NEW.lugarregistrograduado <> OLD.lugarregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 210, NEW.idtipogrado);
        END IF;
	IF NEW.presidioregistrograduado <> OLD.presidioregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 211, NEW.idtipogrado);
        END IF;
	IF NEW.observacionregistrograduado <> OLD.observacionregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 212, NEW.idtipogrado);
        END IF;
	IF NEW.codigotiporegistrograduado <> OLD.codigotiporegistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 213, NEW.idtipogrado);
        END IF;
	IF NEW.idtipogrado <> OLD.idtipogrado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 214, NEW.idtipogrado);
        END IF;
	IF NEW.codigoestado <> OLD.codigoestado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 215, NEW.idtipogrado);
        END IF;	
	IF NEW.codigoautorizacionregistrograduado <> OLD.codigoautorizacionregistrograduado THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 216, NEW.idtipogrado);
        END IF;
	IF NEW.numeropromocion <> OLD.numeropromocion THEN
             INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, 217, NEW.idtipogrado);
        END IF;
  END; //


CREATE TRIGGER sala.trigger_logregistrograduado_insert
  AFTER INSERT ON sala.registrograduado
  FOR EACH ROW
  BEGIN
	INSERT INTO logregistrograduado (idregistrograduado, codigoestudiante, numeropromocion, fecharegistrograduado, numeroacuerdoregistrograduado, fechaacuerdoregistrograduado, responsableacuerdoregistrograduado, numeroactaregistrograduado, fechaactaregistrograduado, numerodiplomaregistrograduado, fechadiplomaregistrograduado, fechagradoregistrograduado, lugarregistrograduado, presidioregistrograduado, observacionregistrograduado, codigoestado, codigotiporegistrograduado, direccionipregistrograduado, usuario, iddirectivo, codigoautorizacionregistrograduado, fechaautorizacionregistrograduado, codigotipomodificaregistrograduado, idtipogrado) VALUES (NEW.idregistrograduado, NEW.codigoestudiante, NEW.numeropromocion, NEW.fecharegistrograduado, NEW.numeroacuerdoregistrograduado, NEW.fechaacuerdoregistrograduado, NEW.responsableacuerdoregistrograduado, NEW.numeroactaregistrograduado, NEW.fechaactaregistrograduado, NEW.numerodiplomaregistrograduado, NEW.fechadiplomaregistrograduado, NEW.fechagradoregistrograduado, NEW.lugarregistrograduado, NEW.presidioregistrograduado, NEW.observacionregistrograduado, NEW.codigoestado, NEW.codigotiporegistrograduado, NEW.direccionipregistrograduado, NEW.usuario, NEW.iddirectivo, NEW.codigoautorizacionregistrograduado, NEW.fechaautorizacionregistrograduado, NEW.codigotipomodificaregistrograduado, NEW.idtipogrado);
  END; //

CREATE TRIGGER sala.trigger_logdocumentograduado_insert
  AFTER INSERT ON sala.documentograduado
  FOR EACH ROW
  BEGIN
	INSERT INTO logdocumentograduado (iddocumentograduado, idregistroincentivoacademico, iddirectivo, codigoestado, codigotipodocumentograduado, idincentivoacademico) VALUES (NEW.iddocumentograduado, NEW.idregistroincentivoacademico, NEW.iddirectivo, NEW.codigoestado, NEW.codigotipodocumentograduado, NEW.idincentivoacademico);
  END; //

CREATE TRIGGER sala.trigger_logdocumentograduado_update
AFTER UPDATE ON sala.documentograduado
  FOR EACH ROW
  BEGIN	
  INSERT INTO logdocumentograduado (iddocumentograduado, idregistroincentivoacademico, iddirectivo, codigoestado, codigotipodocumentograduado, idincentivoacademico) VALUES (NEW.iddocumentograduado, NEW.idregistroincentivoacademico, NEW.iddirectivo, NEW.codigoestado, NEW.codigotipodocumentograduado, NEW.idincentivoacademico);
END; //

CREATE TRIGGER sala.trigger_logdocumentograduado_delete
BEFORE DELETE ON sala.documentograduado
  FOR EACH ROW
  BEGIN	
  INSERT INTO logdocumentograduado (iddocumentograduado, idregistroincentivoacademico, iddirectivo, codigoestado, codigotipodocumentograduado, idincentivoacademico) VALUES (OLD.iddocumentograduado, OLD.idregistroincentivoacademico, OLD.iddirectivo, OLD.codigoestado, OLD.codigotipodocumentograduado, OLD.idincentivoacademico);
END; //


CREATE TRIGGER sala.trigger_logregistroincentivoacademico_insert
  AFTER INSERT ON sala.registroincentivoacademico
  FOR EACH ROW
  BEGIN
	INSERT INTO sala.logregistroincentivoacademico (idregistroincentivoacademico, idincentivoacademico, fechalogregistroincentivoacademico, nombrelogregistroincentivoacademico, numeroacuerdologregistroincentivoacademico, fechaacuerdologregistroincentivoacademico, numeroactalogregistroincentivoacademico, fechaactalogregistroincentivoacademico, observacionlogregistroincentivoacademico, codigoestado, idusuario) VALUES (NEW.idregistroincentivoacademico, 	NEW.idincentivoacademico,	NEW.fecharegistroincentivoacademico,	NEW.nombreregistroincentivoacademico,	NEW.numeroacuerdoregistroincentivoacademico,	NEW.fechaacuerdoregistroincentivoacademico,	NEW.numeroactaregistroincentivoacademico,	NEW.fechaactaregistroincentivoacademico,	NEW.observacionregistroincentivoacademico,	NEW.codigoestado,	NEW.idusuario);
  END; //

CREATE TRIGGER sala.trigger_logregistroincentivoacademico_update
  AFTER UPDATE ON sala.registroincentivoacademico
  FOR EACH ROW
  BEGIN
	INSERT INTO sala.logregistroincentivoacademico (idregistroincentivoacademico, idincentivoacademico, fechalogregistroincentivoacademico, nombrelogregistroincentivoacademico, numeroacuerdologregistroincentivoacademico, fechaacuerdologregistroincentivoacademico, numeroactalogregistroincentivoacademico, fechaactalogregistroincentivoacademico, observacionlogregistroincentivoacademico, codigoestado, idusuario) VALUES (NEW.idregistroincentivoacademico, 	NEW.idincentivoacademico,	NEW.fecharegistroincentivoacademico,	NEW.nombreregistroincentivoacademico,	NEW.numeroacuerdoregistroincentivoacademico,	NEW.fechaacuerdoregistroincentivoacademico,	NEW.numeroactaregistroincentivoacademico,	NEW.fechaactaregistroincentivoacademico,	NEW.observacionregistroincentivoacademico,	NEW.codigoestado,	NEW.idusuario);
  END; //

CREATE TRIGGER sala.trigger_logregistroincentivoacademico_delete
  BEFORE DELETE ON sala.registroincentivoacademico
  FOR EACH ROW
  BEGIN
	INSERT INTO sala.logregistroincentivoacademico (idregistroincentivoacademico, idincentivoacademico, fechalogregistroincentivoacademico, nombrelogregistroincentivoacademico, numeroacuerdologregistroincentivoacademico, fechaacuerdologregistroincentivoacademico, numeroactalogregistroincentivoacademico, fechaactalogregistroincentivoacademico, observacionlogregistroincentivoacademico, codigoestado, idusuario) VALUES (OLD.idregistroincentivoacademico, 	OLD.idincentivoacademico,	OLD.fecharegistroincentivoacademico,	OLD.nombreregistroincentivoacademico,	OLD.numeroacuerdoregistroincentivoacademico,	OLD.fechaacuerdoregistroincentivoacademico,	OLD.numeroactaregistroincentivoacademico,	OLD.fechaactaregistroincentivoacademico,	OLD.observacionregistroincentivoacademico,	OLD.codigoestado,	OLD.idusuario);
  END; //


delimiter ;