/* --------------------------------------*/
/* ---------    INSERT TABLAS    ------- */
/* --------------------------------------*/

INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (1, 'especialidades', 'espc', 'Especialidades medicas', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (2, 'tido de usuarios', 'tuser', 'Tipos de usuarios de la aplicacion', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (3, 'tido de sangre', 'tsang', 'Tipos de sangre', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (4, 'estado civil', 'edocivil', 'Estado civil', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (5, 'genero', 'gener', 'Genero', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (6, 'motivo de cita', 'motivci', 'Motivo de cita', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
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
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (8, 'tipoa+', 'Tipo de sangre a+', null, 'a+', 'A+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (9, 'tipoa-', 'Tipo de sangre a-', null, 'a-', 'A-', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (10, 'tipob+', 'Tipo de sangre b+', null, 'b+', 'B+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (11, 'tipob-', 'Tipo de sangre b-', null, 'b-', 'B-', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (12, 'tipoab+', 'Tipo de sangre ab+', null, 'ab+', 'AB+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (13, 'tipoab-', 'Tipo de sangre ab-', null, 'ab-', 'AB-', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (14, 'tipoo+', 'Tipo de sangre o+', null, 'o+', 'O+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (15, 'tipoo-', 'Tipo de sangre o-', null, 'o-', 'O+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (16, 'obste', 'Especialidad obstetricia', null, 'obstetricia', 'Obstetricia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (17, 'ginec', 'Especialidad gastroenterologia', null, 'gastroenterologia', 'Gastroenterología', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (18, 'intern', 'Especialidad internista', null, 'internista', 'Internista', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (19, 'gener', 'Especialidad cardiologia', null, 'cardiologia', 'Cardiologia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (20, 'otorr', 'Especialidad otorrinolaringologia', null, 'otorrinolaringologia', 'Otorrinolaringología', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (21, 'oftalm', 'Especialidad oftalmología', null, 'oftalmologia', 'Oftalmología', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (22, 'ortop', 'Especialidad ortopedia', null, 'ortopedia', 'Ortopedia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (23, 'fisiot', 'Especialidad fisioterapia', null, 'fisioterapia', 'Fisioterapia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (24, 'solte', 'Estado civil Soltero', null, 'soltero/a', 'Soltero/a', 
             null, false, null, true, 4, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (25, 'casad', 'Estado civil Casado', null, 'casado/a', 'Casado/a', 
             null, false, null, true, 4, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (26, 'viud', 'Estado civil Viudo', null, 'viudo/a', 'Viudo/a', 
             null, false, null, true, 4, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (27, 'Masc', 'Masculino', null, 'masculino', 'Masculino', 
             null, false, null, true, 5, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (28, 'Femen', 'Femenino', null, 'femenino', 'Femenino', 
             null, false, null, true, 5, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (29, 'Primingr', 'Primer ingreso', null, 'Primer ingreso', 'Primer ingreso', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (30, 'contl', 'control', null, 'control', 'Control', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (31, 'Infome', 'informe medico', null, 'informe medico', 'Informe medico', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
