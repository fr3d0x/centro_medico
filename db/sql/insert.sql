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
INSERT INTO tables(
            id, tab_nombre, tab_nemonico, tab_descripcion, created_at, updated_at)
    VALUES (7, 'sexo del paciente', 'sexo', 'Sexo del paciente', timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
    
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
    VALUES (6, 'secre', 'Tipo de usuario secretaria', null, 'secretaria', 'Secretaria', 
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
    VALUES (8, 'n/s', 'Tipo de sangre n/s', null, 'n/s', 'N/S', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (9, 'tipoa+', 'Tipo de sangre a+', null, 'a+', 'A+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (10, 'tipoa-', 'Tipo de sangre a-', null, 'a-', 'A-', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (11, 'tipob+', 'Tipo de sangre b+', null, 'b+', 'B+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (12, 'tipob-', 'Tipo de sangre b-', null, 'b-', 'B-', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (13, 'tipoab+', 'Tipo de sangre ab+', null, 'ab+', 'AB+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (14, 'tipoab-', 'Tipo de sangre ab-', null, 'ab-', 'AB-', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (15, 'tipoo+', 'Tipo de sangre o+', null, 'o+', 'O+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (16, 'tipoo-', 'Tipo de sangre o-', null, 'o-', 'O+', 
             null, false, null, true, 3, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (17, 'obste', 'Especialidad obstetricia', null, 'obstetricia', 'Obstetricia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (18, 'ginec', 'Especialidad gastroenterologia', null, 'gastroenterologia', 'Gastroenterología', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (19, 'intern', 'Especialidad internista', null, 'internista', 'Internista', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (20, 'gener', 'Especialidad cardiologia', null, 'cardiologia', 'Cardiologia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (21, 'otorr', 'Especialidad otorrinolaringologia', null, 'otorrinolaringologia', 'Otorrinolaringología', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (22, 'oftalm', 'Especialidad oftalmología', null, 'oftalmologia', 'Oftalmología', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (23, 'ortop', 'Especialidad ortopedia', null, 'ortopedia', 'Ortopedia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (24, 'fisiot', 'Especialidad fisioterapia', null, 'fisioterapia', 'Fisioterapia', 
             null, false, null, true, 1, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (25, 'solte', 'Estado civil Soltero', null, 'soltero/a', 'Soltero/a', 
             null, false, null, true, 4, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (26, 'casad', 'Estado civil Casado', null, 'casado/a', 'Casado/a', 
             null, false, null, true, 4, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (27, 'viud', 'Estado civil Viudo', null, 'viudo/a', 'Viudo/a', 
             null, false, null, true, 4, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (28, 'Masc', 'Masculino', null, 'masculino', 'Masculino', 
             null, false, null, true, 5, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (29, 'Femen', 'Femenino', null, 'femenino', 'Femenino', 
             null, false, null, true, 5, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (30, 'Primingr', 'Primer ingreso', null, 'Primer ingreso', 'Primer ingreso', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (31, 'contl', 'control', null, 'control', 'Control', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (32, 'masc', 'masculino', null, 'masculino', 'Masculino', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');
INSERT INTO records(
            id, rec_nemonico, rec_descripcion, rec_integer, rec_char, rec_varchar, 
            rec_float, rec_boolean, rec_fecha, rec_activo, table_id, created_at, 
            updated_at)
    VALUES (33, 'feme', 'femenino', null, 'femenino', 'Femenino', 
             null, false, null, true, 6, timestamp '2015-05-09 02:00:00', timestamp '2015-05-09 02:00:00');

/* --------------------------------------*/
/* ----------    SET SEQUENCE   -------- */
/* --------------------------------------*/

    SELECT setval('appointment_reports_id_seq', (SELECT max(id) + 1 FROM appointment_reports));
    SELECT setval('appointments_id_seq', (SELECT max(id) + 1 FROM appointments));
    SELECT setval('doctors_id_seq', (SELECT max(id) + 1 FROM doctors));
    SELECT setval('growth_controls_id_seq', (SELECT max(id) + 1 FROM growth_controls));
    SELECT setval('medical_histories_id_seq', (SELECT max(id) + 1 FROM medical_histories));
    SELECT setval('patients_id_seq', (SELECT max(id) + 1 FROM patients));
    SELECT setval('pediatric_appointments_id_seq', (SELECT max(id) + 1 FROM pediatric_appointments));
    SELECT setval('pediatric_controls_id_seq', (SELECT max(id) + 1 FROM pediatric_controls));
    SELECT setval('pediatric_histories_id_seq', (SELECT max(id) + 1 FROM pediatric_histories));
    SELECT setval('pediatric_patients_id_seq', (SELECT max(id) + 1 FROM pediatric_patients));
    SELECT setval('records_id_seq', (SELECT max(id) + 1 FROM records));
    SELECT setval('tables_id_seq', (SELECT max(id) + 1 FROM tables));


