/* --------------------------------------*/
/* ---------    INSERT TABLAS    ------- */
/* --------------------------------------*/

INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (1, 'especialidades', 'espc', 'Especialidades medicas', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (2, 'tido de usuarios', 'tuser', 'Tipos de usuarios de la aplicacion', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
/* --------------------------------------*/
/* -------    INSERT REGISTROS    ------ */
/* --------------------------------------*/

INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (1, 'gener', 'Especialidad medicina general', null, '', 'Medicina general', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (2, 'ginec', 'Especialidad ginecologia', null, '', 'Ginecologia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (3, 'pediat', 'Especialidad Pediatria', null, '', 'Pediatria', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (4, 'trauma', 'Especialidad traumatologia', null, '', 'Traumatologia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (5, 'odont', 'Especialidad dontologia', null, '', 'Odontologia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (6, 'enfer', 'Tipo de usuario enfermera', null, 'enfermera', 'Enfermera', 
             null, false, null, true, 2, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (7, 'medic', 'Tipo de usuario medico', null, 'medico', 'Medico', 
             null, false, null, true, 2, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
