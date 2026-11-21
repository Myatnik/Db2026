create database db2026;

create table bm_StorageOperations
(
    ID bigint,
    DocumentID bigint,
    OperationID bigint,
    SourceID bigint,
    BludoID bigint,
    ProductID bigint,
    VendorID bigint,
    ContractID bigint,
    StorageID bigint,
    RangeID bigint
);

create table bm_StorageOperations_Table
(
    ID bigint,
    DocumentID bigint,
    OperationID bigint,
    SourceID bigint,
    BludoID bigint,
    ProductID bigint,
    ClientID bigint,
    Price numeric,
    StorageID bigint,
    RangeID bigint
);

create table bm_StorageOperationsType
(
    ID bigint,
    Description varchar,
    Factor int,
    DateAdd datetime
);

create table product
(
    id bigint,
    productid varchar,
    description varchar,
    subcategoryid varchar,
    vendorid bigint,
    bdl int,
    pricegroupid tinyint,
    price1 numeric,
    price2 numeric,
    price3 numeric
);

create table vendors
(
    id bigint,
    clientid varchar,
    clientgroup int,
    serialnumber numeric,
    lastname varchar,
    firstname varchar,
    address varchar,
    cityid int,
    provinceid varchar,
    postcode varchar
);

create table clients
(
    id bigint,
    clientid varchar,
    clientgroup int,
    serialnumber numeric,
    lastname varchar,
    firstname varchar,
    middlename varchar,
    address varchar,
    cityid int,
    provinceid varchar
);

create table bm_Contracts
(
    ID bigint,
    ParentType varchar,
    CompanyID bigint,
    VendorID bigint,
    ContractNumber varchar,
    Period datetime
);

create table storages
(
    id bigint,
    CompanyID int,
    description varchar,
    CityID int,
    ProvinceID int,
    PostCode varchar,
    Address varchar,
    ResponsibleID int,
    DepartmentID bigint
);

create table journal
(
    storeid int,
    posid int,
    departmentid int,
    grouptranstype int,
    transtype int,
    receiptn numeric,
    status tinyint,
    dater datetime,
    sizeid varchar,
    price numeric
);

create table stores
(
    id bigint,
    storeid int,
    description varchar,
    address varchar,
    city int
);

create table transtype
(
    transtypeid int,
    transgroupid int,
    PreviewGroupType varchar,
    description varchar
);

create table bm_ClientDocuments
(
    ID bigint,
    ClientID bigint,
    DocumentTypeID bigint,
    Serial varchar,
    Number varchar,
    Period date,
    Comments varchar,
    DateAdd datetime
);

create table clientgroup
(
    clientgroupid int,
    description varchar,
    dates datetime,
    datef datetime,
    discount numeric,
    discountvalue numeric,
    typediscount tinyint,
    pricelevel int,
    reward int,
    discountl numeric
);

create table city
(
    cityid int,
    name varchar
);

create table province
(
    provinceid bigint,
    name varchar
);

create table personnel
(
    personid int,
    lastname varchar,
    firstname varchar,
    middlename varchar,
    address varchar,
    cityid int,
    provinceid char,
    postcode char,
    areacode smallint,
    teln int,
    securityaccess int
);

create table securityaccess
(
    securityaccessid int,
    description varchar
);

create table vw_PersonnelJobInfo
(
    StartPeriod datetime,
    ManagerName varchar,
    Personid int,
    StopPeriod datetime
);