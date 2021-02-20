/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     25/06/2020 12:34:49 p. m.                    */
/*==============================================================*/

alter table ACTIVO
   drop constraint FK_COMPRA_IN_ACTIVO;

alter table ACTIVO
   drop constraint FK_LOCACION_IN_ACTIVO;


alter table ACTIVO
   drop constraint FK_ACTIVO_USADO_POR_FUN;

alter table AREA
   drop constraint FK_DEPARTAMENTO_IN_AREA;

alter table AREA
   drop constraint FK_FACULTAD_IN_AREA;

alter table FUNCIONARIO
   drop constraint FK_AREA_IN_FUNCIONARIO;

alter table FUNCIONARIO
   drop constraint FK_JEFE_IN_FUNCIONARIO;

alter table DEPARTAMENTO
   drop constraint FK_FACULTAD_IN_DEPT;

alter table DEPARTAMENTO
   drop constraint FK_VICER_IN_DEPT;

alter table FUNCIONARIO
   drop constraint FK_PROGRAMA_IN_FUNCIONARIO;

alter table EDIFICIO
   drop constraint FK_SEDE_IN_EDIFICIO;

alter table LOCACION
   drop constraint FK_AUXILIAR_IN_LAB;

alter table LOCACION
   drop constraint FK_AREA_IN_OFICINA;

alter table LOCACION
   drop constraint FK_EDIFICIO_IN_LOCACION;

alter table PROCEDIMIENTO
   drop constraint FK_FUN_ENTREGA_IN_PROC;

alter table PROCEDIMIENTO
   drop constraint FK_FUNCIONARIO_IN_PROC;

alter table PROCEDIMIENTO
   drop constraint FK_ACTIVO_IN_PROC;

alter table PROGRAMA
   drop constraint FK_FACULTAD_IN_PROGRAMA;

drop index SE_ENCUENTRA_EN2_FK;

drop index USADO_POR2_FK;

drop index ACTIVO_COMPRA_FK;

drop table ACTIVO cascade constraints;

drop index AREA_DEPARTAMENTO_FK;

drop index AREA_FACULTAD_FK;

drop table AREA cascade constraints;

drop index TRABAJA_EN_FK;

drop table FUNCIONARIO cascade constraints;

drop table COMPRA cascade constraints;

drop index DEPARTAMENTO_FACULTAD_FK;

drop index DEPATAMENTO_VICERRECTORIA_FK;

drop table DEPARTAMENTO cascade constraints;

drop index EDIFICIO_SEDE_FK;

drop table EDIFICIO cascade constraints;

drop table FACULTAD cascade constraints;

drop index AUXILIAR_LABORATORIO_FK;

drop index LOCACION_EDIFICIO_FK;

drop index AREA_OFICINA_FK;

drop table LOCACION cascade constraints;

drop index ENTREGA2_FK;

drop table PROCEDIMIENTO cascade constraints;

drop index PROGRAMA_FACULTAD_FK;

drop table PROGRAMA cascade constraints;

drop table SEDE cascade constraints;

drop table VICERRECTORIA cascade constraints;

/*==============================================================*/
/* Table: ACTIVO                                                */
/*==============================================================*/
create table ACTIVO 
(
   ID_ACTIVO            INTEGER              not null,
   ID_COMPRA            INTEGER              not null,
   REFERENCIA_ACTIVO    VARCHAR2(40)         not null,
   CATEGORIA_ACTIVO     VARCHAR2(3)          not null
      constraint CKC_CATEGORIA_ACTIVO_ACTIVO check (CATEGORIA_ACTIVO in ('CAE','DTS','LAB','LOG','SGT')),
   NOMBRE_ACTIVO        VARCHAR2(40)         not null,
   MARCA_ACTIVO         VARCHAR2(25)         not null,
   VALOR_ACTIVO         NUMBER(16,2)         not null,
   DEPRECIACION_ACTIVO  NUMBER(5,2)          not null,
   ID_FUNCIONARIO       INTEGER,
   ID_EDIFICIO          INTEGER,
   ID_LOCACION          INTEGER,
   MATERIAL_ACTIVO      VARCHAR2(20),
   COLOR_ACTIVO         VARCHAR2(20),
   TAMANO_ACTIVO        VARCHAR2(20),
   COMPONENTES_ACTIVO   VARCHAR2(120),
   constraint PK_ACTIVO primary key (ID_ACTIVO)
);

/*==============================================================*/
/* Index: ACTIVO_COMPRA_FK                                      */
/*==============================================================*/
create index ACTIVO_COMPRA_FK on ACTIVO (
   ID_COMPRA ASC
);

/*==============================================================*/
/* Index: USADO_POR2_FK                                         */
/*==============================================================*/
create index USADO_POR2_FK on ACTIVO (
   ID_FUNCIONARIO ASC
);

/*==============================================================*/
/* Index: SE_ENCUENTRA_EN2_FK                                   */
/*==============================================================*/
create index SE_ENCUENTRA_EN2_FK on ACTIVO (
   ID_LOCACION ASC,
   ID_EDIFICIO ASC
);

/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA 
(
   ID_AREA              INTEGER              not null,
   NOMBRE_AREA          VARCHAR2(70)         not null,
   ID_FACULTAD          CHAR(3),
   ID_DEPARTAMENTO      INTEGER,
   constraint PK_AREA primary key (ID_AREA)
);

/*==============================================================*/
/* Index: AREA_FACULTAD_FK                                      */
/*==============================================================*/
create index AREA_FACULTAD_FK on AREA (
   ID_FACULTAD ASC
);

/*==============================================================*/
/* Index: AREA_DEPARTAMENTO_FK                                  */
/*==============================================================*/
create index AREA_DEPARTAMENTO_FK on AREA (
   ID_DEPARTAMENTO ASC
);

/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO 
(
   ID_FUNCIONARIO       INTEGER              not null,
   NOMBRE_FUNCIONARIO   VARCHAR2(50)         not null,
   INIC_CONTRATO_FUNCIONARIO DATE            not null,
   FIN_CONTRATO_FUNCIONARIO DATE                     ,
   ID_JEFE              INTEGER                      ,
   TIPO_FUNCIONARIO     CHAR(1)              not null
      constraint CKC_TIPO_FUN check (TIPO_FUNCIONARIO in ('E', 'D')),
   CARGO_EMPLEADO       VARCHAR2(30)                 ,
   ID_AREA              INTEGER                      ,
   TITULO_DOCENTE       VARCHAR2(100)                ,
   ROL_DOCENTE          VARCHAR2(20)                 ,
   ID_FACULTAD          CHAR(3)                      ,
   ID_PROGRAMA          CHAR(10)                     ,
   TIPO_AUXILIAR        CHAR(3)              
      constraint CKC_TIPO_AUXILIAR_FUN check (TIPO_AUXILIAR in ('INV','MAN','LAB')),
   constraint PK_FUNCIONARIO primary key (ID_FUNCIONARIO)
);

/*==============================================================*/
/* Index: TRABAJA_EN_FK                                         */
/*==============================================================*/
create index TRABAJA_EN_FK on FUNCIONARIO (
   ID_AREA ASC
);

/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA 
(
   ID_COMPRA            INTEGER              not null,
   FECHA_COMPRA         DATE                 not null,
   VALOR_COMPRA         NUMBER(16,2)         not null,
   constraint PK_COMPRA primary key (ID_COMPRA)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO 
(
   ID_DEPARTAMENTO      INTEGER              not null,
   NOMBRE_DEPARTAMENTO  VARCHAR2(70)         not null,
   DIRECTOR_DEPARTAMENTO VARCHAR2(50)         not null,
   ID_VICERRECTORIA     CHAR(3),
   ID_FACULTAD          CHAR(3),
   constraint PK_DEPARTAMENTO primary key (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Index: DEPATAMENTO_VICERRECTORIA_FK                          */
/*==============================================================*/
create index DEPATAMENTO_VICERRECTORIA_FK on DEPARTAMENTO (
   ID_VICERRECTORIA ASC
);

/*==============================================================*/
/* Index: DEPARTAMENTO_FACULTAD_FK                              */
/*==============================================================*/
create index DEPARTAMENTO_FACULTAD_FK on DEPARTAMENTO (
   ID_FACULTAD ASC
);

/*==============================================================*/
/* Table: EDIFICIO                                              */
/*==============================================================*/
create table EDIFICIO 
(
   ID_SEDE              INTEGER              not null,
   ID_EDIFICIO          INTEGER              not null,
   NOMBRE_EDIFICIO      VARCHAR2(50)         not null,
   constraint PK_EDIFICIO primary key (ID_EDIFICIO)
);

/*==============================================================*/
/* Index: EDIFICIO_SEDE_FK                                      */
/*==============================================================*/
create index EDIFICIO_SEDE_FK on EDIFICIO (
   ID_SEDE ASC
);

/*==============================================================*/
/* Table: FACULTAD                                              */
/*==============================================================*/
create table FACULTAD 
(
   ID_FACULTAD          CHAR(3)              not null
      constraint CKC_ID_FACULTAD_FACULTAD check (ID_FACULTAD in ('AGR','JUR','ECO','ING','CIE')),
   NOMBRE_FACULTAD      VARCHAR2(60)         not null,
   DECANO_FACULTAD      VARCHAR2(50)         not null,
   constraint PK_FACULTAD primary key (ID_FACULTAD)
);


/*==============================================================*/
/* Table: LOCACION                                              */
/*==============================================================*/
create table LOCACION 
(
   ID_EDIFICIO          INTEGER              not null,
   ID_LOCACION          INTEGER              not null,
   NOMBRE_LOCACION      VARCHAR2(100)        not null,
   TIPO_LOCACION        CHAR(1)              not null
      constraint CKC_TIPO_LOCACION check (TIPO_LOCACION in ('S','O','L')),
   CAPACIDAD_SALON      INTEGER                      ,
   TIPO_SALON           CHAR(3)             
      constraint CKC_TIPO_SALON check (TIPO_SALON is null or (TIPO_SALON in ('AUD','TAL','COM'))),
   PUESTOS_OFICINA      INTEGER                      ,
   ID_AREA              INTEGER                      ,
   ID_AUXILIAR          INTEGER                      ,
   ACREDITACION_LAB     VARCHAR2(20)                 ,
   constraint PK_LOCACION primary key (ID_EDIFICIO, ID_LOCACION),
   constraint UK_LOCACION unique (ID_AUXILIAR)
);


/*==============================================================*/
/* Index: AUXILIAR_LABORATORIO_FK                               */
/*==============================================================*/
create index AUXILIAR_LABORATORIO_FK on LOCACION (
   ID_AUXILIAR ASC
);


/*==============================================================*/
/* Index: AREA_OFICINA_FK                                       */
/*==============================================================*/
create index AREA_OFICINA_FK on LOCACION (
   ID_AREA ASC
);

/*==============================================================*/
/* Index: LOCACION_EDIFICIO_FK                                  */
/*==============================================================*/
create index LOCACION_EDIFICIO_FK on LOCACION (
   ID_EDIFICIO ASC
);

/*==============================================================*/
/* Table: PROCEDIMIENTO                                         */
/*==============================================================*/
create table PROCEDIMIENTO 
(
   ID_PROCE             INTEGER              not null,
   ID_ACTIVO            INTEGER              not null,
   ID_AUXILIAR          INTEGER              not null,
   TIPO_PROCEDIMIENTO   CHAR(1)              not null
      constraint CKC_TIPO_PROCEDIMIENT_PROCEDIM check (TIPO_PROCEDIMIENTO in ('E','P','R','M')),
   FECHA_PROCEDIMIENTO  DATE                 not null,
   ESTADO_REVISION      CHAR(1)             
      constraint CKC_ESTADO_REVISION_PROCEDIM check (ESTADO_REVISION is null or (ESTADO_REVISION in ('R','M'))),
   OBSERVACIONES        VARCHAR2(150),
   FUNCIONARIO_ENTREGA  INTEGER,
   constraint PK_PROCEDIMIENTO primary key (ID_PROCE)
);

/*==============================================================*/
/* Index: ENTREGA2_FK                                           */
/*==============================================================*/
create index ENTREGA2_FK on PROCEDIMIENTO (
   FUNCIONARIO_ENTREGA ASC
);

/*==============================================================*/
/* Table: PROGRAMA                                              */
/*==============================================================*/
create table PROGRAMA 
(
   ID_FACULTAD          CHAR(3)              not null,
   ID_PROGRAMA          CHAR(10)             not null,
   NOMBRE_PROGRAMA      VARCHAR2(80)         not null,
   constraint PK_PROGRAMA primary key (ID_FACULTAD, ID_PROGRAMA)
);

/*==============================================================*/
/* Index: PROGRAMA_FACULTAD_FK                                  */
/*==============================================================*/
create index PROGRAMA_FACULTAD_FK on PROGRAMA (
   ID_FACULTAD ASC
);

/*==============================================================*/
/* Table: SEDE                                                  */
/*==============================================================*/
create table SEDE 
(
   ID_SEDE              INTEGER              not null,
   NOMBRE_SEDE          VARCHAR2(70)         not null,
   constraint PK_SEDE primary key (ID_SEDE)
);

/*==============================================================*/
/* Table: VICERRECTORIA                                         */
/*==============================================================*/
create table VICERRECTORIA 
(
   ID_VICERRECTORIA     CHAR(3)              not null
      constraint CKC_ID_VICERRECTORIA_VICERREC check (ID_VICERRECTORIA in ('FOR','INV','EXT','ADM')),
   NOMBRE_VICERRECTORIA VARCHAR2(50)         not null,
   VICERRECTOR_VICERRECTORIA VARCHAR2(50)         not null,
   constraint PK_VICERRECTORIA primary key (ID_VICERRECTORIA)
);

alter table ACTIVO
   add constraint FK_COMPRA_IN_ACTIVO foreign key (ID_COMPRA)
      references COMPRA (ID_COMPRA);

alter table ACTIVO
   add constraint FK_LOCACION_IN_ACTIVO foreign key (ID_EDIFICIO, ID_LOCACION)
      references LOCACION (ID_EDIFICIO, ID_LOCACION);

alter table ACTIVO
   add constraint FK_ACTIVO_USADO_POR_FUN foreign key (ID_FUNCIONARIO)
      references FUNCIONARIO (ID_FUNCIONARIO);

alter table AREA
   add constraint FK_DEPARTAMENTO_IN_AREA foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO);

alter table AREA
   add constraint FK_FACULTAD_IN_AREA foreign key (ID_FACULTAD)
      references FACULTAD (ID_FACULTAD);

alter table FUNCIONARIO
   add constraint FK_AREA_IN_FUNCIONARIO foreign key (ID_AREA)
      references AREA (ID_AREA);

alter table FUNCIONARIO
   add constraint FK_JEFE_IN_FUNCIONARIO foreign key (ID_JEFE)
      references FUNCIONARIO (ID_FUNCIONARIO);

alter table DEPARTAMENTO
   add constraint FK_FACULTAD_IN_DEPT foreign key (ID_FACULTAD)
      references FACULTAD (ID_FACULTAD);

alter table DEPARTAMENTO
   add constraint FK_VICER_IN_DEPT foreign key (ID_VICERRECTORIA)
      references VICERRECTORIA (ID_VICERRECTORIA);

alter table FUNCIONARIO
   add constraint FK_PROGRAMA_IN_FUNCIONARIO foreign key (ID_FACULTAD, ID_PROGRAMA)
      references PROGRAMA (ID_FACULTAD, ID_PROGRAMA);

alter table EDIFICIO
   add constraint FK_SEDE_IN_EDIFICIO foreign key (ID_SEDE)
      references SEDE (ID_SEDE);

alter table LOCACION
   add constraint FK_AUXILIAR_IN_LAB foreign key (ID_AUXILIAR)
      references FUNCIONARIO (ID_FUNCIONARIO);


alter table LOCACION
   add constraint FK_AREA_IN_OFICINA foreign key (ID_AREA)
      references AREA (ID_AREA);

alter table LOCACION
   add constraint FK_EDIFICIO_IN_LOCACION foreign key (ID_EDIFICIO)
      references EDIFICIO (ID_EDIFICIO);

alter table PROCEDIMIENTO
   add constraint FK_FUN_ENTREGA_IN_PROC foreign key (FUNCIONARIO_ENTREGA)
      references FUNCIONARIO (ID_FUNCIONARIO);

alter table PROCEDIMIENTO
   add constraint FK_FUNCIONARIO_IN_PROC foreign key (ID_AUXILIAR)
      references FUNCIONARIO (ID_FUNCIONARIO);

alter table PROCEDIMIENTO
   add constraint FK_ACTIVO_IN_PROC foreign key (ID_ACTIVO)
      references ACTIVO (ID_ACTIVO);

alter table PROGRAMA
   add constraint FK_FACULTAD_IN_PROGRAMA foreign key (ID_FACULTAD)
      references FACULTAD (ID_FACULTAD);

/*==============================================================*/
/* CHECK TABLE FUNCIONARIO                                      */
/*==============================================================*/
alter table FUNCIONARIO
   add constraint FUNCIONARIO_CHK_TABLE
      CHECK (
            (TIPO_FUNCIONARIO = 'E'
               AND CARGO_EMPLEADO IS NOT NULL
               AND ID_AREA IS NOT NULL
               AND TITULO_DOCENTE IS NULL
               AND ROL_DOCENTE IS NULL
               AND ID_PROGRAMA IS NULL
               AND ID_FACULTAD IS NULL) OR
            (TIPO_FUNCIONARIO = 'D'
               AND CARGO_EMPLEADO IS NULL
               AND ID_AREA IS NULL
               AND TIPO_AUXILIAR IS NULL
               AND TITULO_DOCENTE IS NOT NULL
               AND ROL_DOCENTE IS NOT NULL
               AND ID_PROGRAMA IS NOT NULL
               AND ID_FACULTAD IS NOT NULL)
      );

/*==============================================================*/
/* CHECK TABLE LOCACION                                      */
/*==============================================================*/
alter table LOCACION
   add constraint LOCACION_CHK_TABLE
      CHECK (
            (TIPO_LOCACION = 'S'
               AND CAPACIDAD_SALON IS NOT NULL
               AND PUESTOS_OFICINA IS NULL
               AND ID_AREA IS NULL
               AND ID_AUXILIAR IS NULL
               AND ACREDITACION_LAB IS NULL) OR
            (TIPO_LOCACION = 'O'
               AND CAPACIDAD_SALON IS NULL
               AND TIPO_SALON IS NULL
               AND PUESTOS_OFICINA IS NOT NULL
               AND ID_AREA IS NOT NULL
               AND ID_AUXILIAR IS NULL
               AND ACREDITACION_LAB IS NULL) OR
            (TIPO_LOCACION = 'L'
               AND CAPACIDAD_SALON IS NULL
               AND TIPO_SALON IS NULL
               AND PUESTOS_OFICINA IS NULL
               AND ID_AREA IS NULL
               AND ID_AUXILIAR IS NOT NULL
               AND ACREDITACION_LAB IS NOT NULL)
      );

/*==============================================================*/
/* CHECK TABLE PROCEDIMIENTO                                      */
/*==============================================================*/
alter table PROCEDIMIENTO
   add constraint PROCEDIMIENTO_CHK_TABLE
      CHECK (
            (TIPO_PROCEDIMIENTO  = 'R'		
               AND FUNCIONARIO_ENTREGA IS NULL) OR
            (TIPO_PROCEDIMIENTO  = 'P'		
               AND FUNCIONARIO_ENTREGA IS NULL) OR
            (TIPO_PROCEDIMIENTO  = 'M'	
               AND FUNCIONARIO_ENTREGA IS NULL) OR
            (TIPO_PROCEDIMIENTO  = 'E'
               AND ESTADO_REVISION IS NULL		
               AND FUNCIONARIO_ENTREGA IS NOT NULL)
      );

alter table DEPARTAMENTO
   add constraint DEPARTAMENTO_ARC_CHK
      check (
            (id_vicerrectoria IS NOT NULL 
             and id_facultad IS NULL) OR
            (id_vicerrectoria IS NULL
             and id_facultad IS NOT NULL)
      );

alter table AREA
   add constraint AREA_ARC_CHK
      check (
            (id_facultad IS NOT NULL 
             and id_departamento IS NULL) OR
            (id_facultad IS NULL
             and id_departamento IS NOT NULL)
      );
