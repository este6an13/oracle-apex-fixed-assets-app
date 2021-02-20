/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     25/06/2020 12:34:49 p. m.                    */
/*==============================================================*/


alter table ACTIVO
   drop constraint FK_COMPRA_IN_ACTIVO;

alter table ACTIVO
   drop constraint FK_OFICINA_IN_ACTIVO;

alter table ACTIVO
   drop constraint FK_LAB_IN_ACTIVO;

alter table ACTIVO
   drop constraint FK_SALON_IN_ACTIVO;

alter table ACTIVO
   drop constraint FK_ACTIVO_USADO_POR_AUX;

alter table ACTIVO
   drop constraint FK_DOCENTE_IN_ACTIVO;

alter table AREA
   drop constraint FK_DEPARTAMENTO_IN_AREA;

alter table AREA
   drop constraint FK_FACULTAD_IN_AREA;

alter table AUXILIAR
   drop constraint FK_AREA_IN_AUXILIAR;

alter table AUXILIAR
   drop constraint FK_JEFE_IN_AUXILIAR;

alter table DEPARTAMENTO
   drop constraint FK_FACULTAD_IN_DEPT;

alter table DEPARTAMENTO
   drop constraint FK_VICER_IN_DEPT;

alter table DOCENTE
   drop constraint FK_PROGRAMA_IN_DOCENTE;

alter table DOCENTE
   drop constraint FK_JEFE_IN_DOCENTE;

alter table EDIFICIO
   drop constraint FK_SEDE_IN_EDIFICIO;

alter table LABORATORIO
   drop constraint FK_AUXILIAR_IN_LAB;

alter table LABORATORIO
   drop constraint EK_EDIFICIO_IN_LAB;

alter table OFICINA
   drop constraint FK_AREA_IN_OFICINA;

alter table OFICINA
   drop constraint FK_EDIFICIO_IN_OFICINA;

alter table PROCEDIMIENTO
   drop constraint FK_AUX_ENTREGA_IN_PROC;

alter table PROCEDIMIENTO
   drop constraint FK_DOCENTE_ENTREGA_IN_PROC;

alter table PROCEDIMIENTO
   drop constraint FK_AUXILIAR_IN_PROC;

alter table PROCEDIMIENTO
   drop constraint FK_ACTIVO_IN_PROC;

alter table PROGRAMA
   drop constraint FK_FACULTAD_IN_PROGRAMA;

alter table SALON
   drop constraint FK_EDIFICIO_IN_SALON;

drop index SE_ENCUENTRA_EN2_FK;

drop index USADO_POR2_FK;

drop index ACTIVO_COMPRA_FK;

drop table ACTIVO cascade constraints;

drop index AREA_DEPARTAMENTO_FK;

drop index AREA_FACULTAD_FK;

drop table AREA cascade constraints;

drop index TRABAJA_EN_FK;

drop table AUXILIAR cascade constraints;

drop table COMPRA cascade constraints;

drop index DEPARTAMENTO_FACULTAD_FK;

drop index DEPATAMENTO_VICERRECTORIA_FK;

drop table DEPARTAMENTO cascade constraints;

drop index TRABAJA_FK;

drop table DOCENTE cascade constraints;

drop index EDIFICIO_SEDE_FK;

drop table EDIFICIO cascade constraints;

drop table FACULTAD cascade constraints;

drop index LOCACION_EDIFICIO2_FK;

drop index AUXILIAR_LABORATORIO_FK;

drop table LABORATORIO cascade constraints;

drop index LOCACION_EDIFICIO_FK;

drop index AREA_OFICINA_FK;

drop table OFICINA cascade constraints;

drop index ENTREGA2_FK;

drop index PROCEDIMIENTO_ACTIVO_FK;

drop index PROCEDIMIENTO2_FK;

drop table PROCEDIMIENTO cascade constraints;

drop index PROGRAMA_FACULTAD_FK;

drop table PROGRAMA cascade constraints;

drop index LOCACION_EDIFICIO3_FK;

drop table SALON cascade constraints;

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
/* Table: AUXILIAR                                              */
/*==============================================================*/
create table AUXILIAR 
(
   ID_FUNCIONARIO       INTEGER              not null,
   TIPO_AUXILIAR        CHAR(3)              not null
      constraint CKC_TIPO_AUXILIAR_AUXILIAR check (TIPO_AUXILIAR in ('INV','MAN','LAB')),
   NOMBRE_FUNCIONARIO   VARCHAR2(50),
   INIC_CONTRATO_FUNCIONARIO DATE,
   FIN_CONTRATO_FUNCIONARIO DATE,
   CARGO_EMPLEADO       VARCHAR2(30),
   ID_JEFE              INTEGER,
   ID_AREA              INTEGER              not null,
   constraint PK_AUXILIAR primary key (ID_FUNCIONARIO)
);

/*==============================================================*/
/* Index: TRABAJA_EN_FK                                         */
/*==============================================================*/
create index TRABAJA_EN_FK on AUXILIAR (
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
/* Table: DOCENTE                                               */
/*==============================================================*/
create table DOCENTE 
(
   ID_FUNCIONARIO       INTEGER              not null,
   NOMBRE_FUNCIONARIO   VARCHAR2(50),
   INIC_CONTRATO_FUNCIONARIO DATE,
   FIN_CONTRATO_FUNCIONARIO DATE,
   ID_JEFE              INTEGER,
   TITULO_DOCENTE       VARCHAR2(100)        not null,
   ROL_DOCENTE          VARCHAR2(20)         not null,
   ID_FACULTAD          CHAR(3)              not null,
   ID_PROGRAMA          CHAR(10)             not null,
   constraint AK_IDENTIFIER_1_DOCENTE unique (ID_FUNCIONARIO)
);

/*==============================================================*/
/* Index: TRABAJA_FK                                            */
/*==============================================================*/
create index TRABAJA_FK on DOCENTE (
   ID_FACULTAD ASC,
   ID_PROGRAMA ASC
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
/* Table: LABORATORIO                                           */
/*==============================================================*/
create table LABORATORIO 
(
   ID_EDIFICIO          INTEGER              not null,
   ID_LOCACION          INTEGER              not null,
   NOMBRE_LOCACION      VARCHAR2(100),
   ID_AUXILIAR          INTEGER              not null,
   ACREDITACION_LABORATORIO VARCHAR2(20),
   constraint PK_LABORATORIO primary key (ID_LOCACION, ID_EDIFICIO),
   constraint AK_IDENTIFIER_1_LABORATO unique (ID_LOCACION)
);

/*==============================================================*/
/* Index: AUXILIAR_LABORATORIO_FK                               */
/*==============================================================*/
create index AUXILIAR_LABORATORIO_FK on LABORATORIO (
   ID_AUXILIAR ASC
);

/*==============================================================*/
/* Index: LOCACION_EDIFICIO2_FK                                 */
/*==============================================================*/
create index LOCACION_EDIFICIO2_FK on LABORATORIO (
   ID_EDIFICIO ASC
);

/*==============================================================*/
/* Table: OFICINA                                               */
/*==============================================================*/
create table OFICINA 
(
   ID_EDIFICIO          INTEGER              not null,
   ID_LOCACION          INTEGER              not null,
   PUESTOS_OFICINA      INTEGER              not null,
   ID_AREA              INTEGER              not null,
   NOMBRE_LOCACION      VARCHAR2(100),
   constraint PK_OFICINA primary key (ID_EDIFICIO, ID_LOCACION),
   constraint AK_IDENTIFIER_1_OFICINA unique (ID_LOCACION)
);

/*==============================================================*/
/* Index: AREA_OFICINA_FK                                       */
/*==============================================================*/
create index AREA_OFICINA_FK on OFICINA (
   ID_AREA ASC
);

/*==============================================================*/
/* Index: LOCACION_EDIFICIO_FK                                  */
/*==============================================================*/
create index LOCACION_EDIFICIO_FK on OFICINA (
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
/* Index: PROCEDIMIENTO2_FK                                     */
/*==============================================================*/
create index PROCEDIMIENTO2_FK on PROCEDIMIENTO (
   ID_AUXILIAR ASC
);

/*==============================================================*/
/* Index: PROCEDIMIENTO_ACTIVO_FK                               */
/*==============================================================*/
create index PROCEDIMIENTO_ACTIVO_FK on PROCEDIMIENTO (
   ID_ACTIVO ASC
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
/* Table: SALON                                                 */
/*==============================================================*/
create table SALON 
(
   ID_EDIFICIO          INTEGER              not null,
   ID_LOCACION          INTEGER              not null,
   NOMBRE_LOCACION      VARCHAR2(100),
   CAPACIDAD_SALON      INTEGER              not null,
   TIPO_SALON           CHAR(3)             
      constraint CKC_TIPO_SALON_SALON check (TIPO_SALON is null or (TIPO_SALON in ('AUD','TAL','COM'))),
   constraint PK_SALON primary key (ID_LOCACION, ID_EDIFICIO),
   constraint AK_IDENTIFIER_1_SALON unique (ID_LOCACION)
);

/*==============================================================*/
/* Index: LOCACION_EDIFICIO3_FK                                 */
/*==============================================================*/
create index LOCACION_EDIFICIO3_FK on SALON (
   ID_EDIFICIO ASC
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
   add constraint FK_OFICINA_IN_ACTIVO foreign key (ID_EDIFICIO, ID_LOCACION)
      references OFICINA (ID_EDIFICIO, ID_LOCACION);

alter table ACTIVO
   add constraint FK_LAB_IN_ACTIVO foreign key (ID_LOCACION, ID_EDIFICIO)
      references LABORATORIO (ID_LOCACION, ID_EDIFICIO);

alter table ACTIVO
   add constraint FK_SALON_IN_ACTIVO foreign key (ID_LOCACION, ID_EDIFICIO)
      references SALON (ID_LOCACION, ID_EDIFICIO);

alter table ACTIVO
   add constraint FK_ACTIVO_USADO_POR_AUX foreign key (ID_FUNCIONARIO)
      references AUXILIAR (ID_FUNCIONARIO);

alter table ACTIVO
   add constraint FK_DOCENTE_IN_ACTIVO foreign key (ID_FUNCIONARIO)
      references DOCENTE (ID_FUNCIONARIO);

alter table AREA
   add constraint FK_DEPARTAMENTO_IN_AREA foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO);

alter table AREA
   add constraint FK_FACULTAD_IN_AREA foreign key (ID_FACULTAD)
      references FACULTAD (ID_FACULTAD);

alter table AUXILIAR
   add constraint FK_AREA_IN_AUXILIAR foreign key (ID_AREA)
      references AREA (ID_AREA);

alter table AUXILIAR
   add constraint FK_JEFE_IN_AUXILIAR foreign key (ID_JEFE)
      references AUXILIAR (ID_FUNCIONARIO);

alter table DEPARTAMENTO
   add constraint FK_FACULTAD_IN_DEPT foreign key (ID_FACULTAD)
      references FACULTAD (ID_FACULTAD);

alter table DEPARTAMENTO
   add constraint FK_VICER_IN_DEPT foreign key (ID_VICERRECTORIA)
      references VICERRECTORIA (ID_VICERRECTORIA);

alter table DOCENTE
   add constraint FK_PROGRAMA_IN_DOCENTE foreign key (ID_FACULTAD, ID_PROGRAMA)
      references PROGRAMA (ID_FACULTAD, ID_PROGRAMA);

alter table DOCENTE
   add constraint FK_JEFE_IN_DOCENTE foreign key (ID_JEFE)
      references DOCENTE (ID_FUNCIONARIO);

alter table EDIFICIO
   add constraint FK_SEDE_IN_EDIFICIO foreign key (ID_SEDE)
      references SEDE (ID_SEDE);

alter table LABORATORIO
   add constraint FK_AUXILIAR_IN_LAB foreign key (ID_AUXILIAR)
      references AUXILIAR (ID_FUNCIONARIO);

alter table LABORATORIO
   add constraint EK_EDIFICIO_IN_LAB foreign key (ID_EDIFICIO)
      references EDIFICIO (ID_EDIFICIO);

alter table OFICINA
   add constraint FK_AREA_IN_OFICINA foreign key (ID_AREA)
      references AREA (ID_AREA);

alter table OFICINA
   add constraint FK_EDIFICIO_IN_OFICINA foreign key (ID_EDIFICIO)
      references EDIFICIO (ID_EDIFICIO);

alter table PROCEDIMIENTO
   add constraint FK_AUX_ENTREGA_IN_PROC foreign key (FUNCIONARIO_ENTREGA)
      references AUXILIAR (ID_FUNCIONARIO);

alter table PROCEDIMIENTO
   add constraint FK_DOCENTE_ENTREGA_IN_PROC foreign key (FUNCIONARIO_ENTREGA)
      references DOCENTE (ID_FUNCIONARIO);

alter table PROCEDIMIENTO
   add constraint FK_AUXILIAR_IN_PROC foreign key (ID_AUXILIAR)
      references AUXILIAR (ID_FUNCIONARIO);

alter table PROCEDIMIENTO
   add constraint FK_ACTIVO_IN_PROC foreign key (ID_ACTIVO)
      references ACTIVO (ID_ACTIVO);

alter table PROGRAMA
   add constraint FK_FACULTAD_IN_PROGRAMA foreign key (ID_FACULTAD)
      references FACULTAD (ID_FACULTAD);

alter table SALON
   add constraint FK_EDIFICIO_IN_SALON foreign key (ID_EDIFICIO)
      references EDIFICIO (ID_EDIFICIO);

