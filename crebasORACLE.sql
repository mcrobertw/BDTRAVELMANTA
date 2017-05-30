
/*==============================================================*/
/* Table: AGENCIA                                               */
/*==============================================================*/
create table AGENCIA 
(
   ID_AGENCIA           INTEGER              not null,
   COMPANIA             VARCHAR2(40),
   SURCURSAL            VARCHAR2(40),
   GERENTE              VARCHAR2(40),
   constraint PK_AGENCIA primary key (ID_AGENCIA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE 
(
   ID_CLIENTE           INTEGER              not null,
   ID_VUELO             INTEGER,
   NOMBRE               VARCHAR2(20),
   APELLIDOS            VARCHAR2(20),
   TELEFONO             VARCHAR2(20),
   DIRECCION            VARCHAR2(20),
   EMAIL                VARCHAR2(20),
   TIPO_VIAJE           VARCHAR2(40),
   FECHA_ESTIMADA_REGRESO DATE,
   FECHA_NACIMIENTO DATE                 null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO 
(
   ID_VUELO             INTEGER              not null,
   ID_AGENCIA           INTEGER,
   DESTINO              VARCHAR2(12),
   PRECIO               VARCHAR2(12),
   FECHA_SALIDA         DATE,
   constraint PK_VUELO primary key (ID_VUELO)
);

alter table CLIENTE
   add constraint FK_CLIENTE_VUELO_CLI_VUELO foreign key (ID_VUELO)
      references VUELO (ID_VUELO);

alter table VUELO
   add constraint FK_VUELO_AGENCIA_V_AGENCIA foreign key (ID_AGENCIA)
      references AGENCIA (ID_AGENCIA);

