/*==============================================================*/
/* Table: AGENCIA                                               */
/*==============================================================*/
create table AGENCIA (
   ID_AGENCIA           int                  not null,
   COMPANIA             varchar(40)          null,
   SURCURSAL            varchar(40)          null,
   GERENTE              varchar(40)          null,
   constraint PK_AGENCIA primary key nonclustered (ID_AGENCIA)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           int                  not null,
   ID_VUELO             int                  null,
   NOMBRE               varchar(12)          null,
   APELLIDOS            varchar(12)          null,
   TELEFONO             varchar(12)          null,
   DIRECCION            varchar(12)          null,
   EMAIL                varchar(12)          null,
   TIPO_VIAJE           varchar(40)          null,
   FECHA_ESTIMADA_REGRESO datetime             null,
   constraint PK_CLIENTE primary key nonclustered (ID_CLIENTE)
)
go

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO (
   ID_VUELO             int                  not null,
   ID_AGENCIA           int                  null,
   DESTINO              varchar(12)          null,
   PRECIO               varchar(12)          null,
   FECHA_SALIDA         datetime             null,
   constraint PK_VUELO primary key nonclustered (ID_VUELO)
)
go

