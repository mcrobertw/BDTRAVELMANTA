
/*==============================================================*/
/* Table: AGENCIA                                               */
/*==============================================================*/
create table AGENCIA (
   ID_AGENCIA           INT4                 not null,
   COMPANIA             VARCHAR(40)          null,
   SURCURSAL            VARCHAR(40)          null,
   GERENTE              VARCHAR(40)          null,
   constraint PK_AGENCIA primary key (ID_AGENCIA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           INT4                 not null,
   ID_VUELO             INT4                 null,
   NOMBRE               VARCHAR(20)          null,
   APELLIDOS            VARCHAR(20)          null,
   TELEFONO             VARCHAR(20)          null,
   DIRECCION            VARCHAR(20)          null,
   EMAIL                VARCHAR(20)          null,
   TIPO_VIAJE           VARCHAR(40)          null,
   FECHA_ESTIMADA_REGRESO DATE                 null,
   FECHA_NACIMIENTO DATE                 null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO (
   ID_VUELO             INT4                 not null,
   ID_AGENCIA           INT4                 null,
   DESTINO              VARCHAR(12)          null,
   PRECIO               VARCHAR(12)          null,
   FECHA_SALIDA         DATE                 null,
   constraint PK_VUELO primary key (ID_VUELO)
);

alter table CLIENTE
   add constraint FK_CLIENTE_VUELO_CLI_VUELO foreign key (ID_VUELO)
      references VUELO (ID_VUELO)
      on delete restrict on update restrict;

alter table VUELO
   add constraint FK_VUELO_AGENCIA_V_AGENCIA foreign key (ID_AGENCIA)
      references AGENCIA (ID_AGENCIA)
      on delete restrict on update restrict;

