SELECT 'INSERT INTO bm_StorageOperations(ID, DocumentID, OperationID, SourceID, BludoID, ProductID, VendorID, ContractID, StorageID, RangeID) VALUES ('
    + ISNULL(CAST(ID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(DocumentID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(OperationID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(SourceID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(BludoID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(ProductID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(VendorID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(ContractID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(StorageID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(RangeID AS varchar(50)), 'NULL')
    + ');' AS sql
FROM bm_StorageOperations;

SELECT 'INSERT INTO bm_StorageOperations_Table(ID, DocumentID, OperationID, SourceID, BludoID, ProductID, ClientID, Price, StorageID, RangeID) VALUES ('
    + ISNULL(CAST(ID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(DocumentID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(OperationID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(SourceID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(BludoID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(ProductID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(ClientID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(Price AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(StorageID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(RangeID AS varchar(50)), 'NULL')
    + ');' AS sql
FROM bm_StorageOperations_Table;

SELECT 'INSERT INTO bm_StorageOperationsType(ID, Description, Factor, DateAdd) VALUES ('
    + ISNULL(CAST(ID AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(Description, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(Factor AS varchar(50)), 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), DateAdd, 121), 'NULL')
    + ');' AS sql
FROM bm_StorageOperationsType;

SELECT 'INSERT INTO product(id, productid, description, subcategoryid, vendorid, bdl, pricegroupid, price1, price2, price3) VALUES ('
    + ISNULL(CAST(id AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(productid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(description, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(subcategoryid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(vendorid AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(bdl AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(pricegroupid AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(price1 AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(price2 AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(price3 AS varchar(50)), 'NULL')
    + ');' AS sql
FROM product;

SELECT 'INSERT INTO vendors(id, clientid, clientgroup, serialnumber, lastname, firstname, address, cityid, provinceid, postcode) VALUES ('
    + ISNULL(CAST(id AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(clientid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(clientgroup AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(serialnumber AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(lastname, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(firstname, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(address, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(cityid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(provinceid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(postcode, '''', '''''') + '''', 'NULL')
    + ');' AS sql
FROM vendors;

SELECT 'INSERT INTO clients(id, clientid, clientgroup, serialnumber, lastname, firstname, middlename, address, cityid, provinceid) VALUES ('
    + ISNULL(CAST(id AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(clientid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(clientgroup AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(serialnumber AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(lastname, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(firstname, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(middlename, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(address, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(cityid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(provinceid, '''', '''''') + '''', 'NULL')
    + ');' AS sql
FROM clients;

SELECT 'INSERT INTO bm_Contracts(ID, ParentType, CompanyID, VendorID, ContractNumber, Period) VALUES ('
    + ISNULL(CAST(ID AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(ParentType, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(CompanyID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(VendorID AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(ContractNumber, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), Period, 121), 'NULL')
    + ');' AS sql
FROM bm_Contracts;

SELECT 'INSERT INTO storages(id, CompanyID, description, CityID, ProvinceID, PostCode, Address, ResponsibleID, DepartmentID) VALUES ('
    + ISNULL(CAST(id AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(CompanyID AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(description, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(CityID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(ProvinceID AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(PostCode, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(Address, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(ResponsibleID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(DepartmentID AS varchar(50)), 'NULL')
    + ');' AS sql
FROM storages;

SELECT 'INSERT INTO journal(storeid, posid, departmentid, grouptranstype, transtype, receiptn, status, dater, sizeid, price) VALUES ('
    + ISNULL(CAST(storeid AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(posid AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(departmentid AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(grouptranstype AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(transtype AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(receiptn AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(status AS varchar(50)), 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), dater, 121), 'NULL') + ','
    + ISNULL('''' + REPLACE(sizeid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(price AS varchar(50)), 'NULL')
    + ');' AS sql
FROM journal;

SELECT 'INSERT INTO stores(id, storeid, description, address, city) VALUES ('
    + ISNULL(CAST(id AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(storeid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(description, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(address, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(city AS varchar(50)), 'NULL')
    + ');' AS sql
FROM stores;

SELECT 'INSERT INTO transtype(transtypeid, transgroupid, PreviewGroupType, description) VALUES ('
    + ISNULL(CAST(transtypeid AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(transgroupid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(PreviewGroupType, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(description, '''', '''''') + '''', 'NULL')
    + ');' AS sql
FROM transtype;

SELECT 'INSERT INTO bm_ClientDocuments(ID, ClientID, DocumentTypeID, Serial, Number, Period, Comments, DateAdd) VALUES ('
    + ISNULL(CAST(ID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(ClientID AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(DocumentTypeID AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(Serial, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(Number, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CONVERT(varchar(10), Period, 23), 'NULL') + ','
    + ISNULL('''' + REPLACE(Comments, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), DateAdd, 121), 'NULL')
    + ');' AS sql
FROM bm_ClientDocuments;

SELECT 'INSERT INTO clientgroup(clientgroupid, description, dates, datef, discount, discountvalue, typediscount, pricelevel, reward, discountl) VALUES ('
    + ISNULL(CAST(clientgroupid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(description, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), dates, 121), 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), datef, 121), 'NULL') + ','
    + ISNULL(CAST(discount AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(discountvalue AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(typediscount AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(pricelevel AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(reward AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(discountl AS varchar(50)), 'NULL')
    + ');' AS sql
FROM clientgroup;

SELECT 'INSERT INTO city(cityid, name) VALUES ('
    + ISNULL(CAST(cityid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(name, '''', '''''') + '''', 'NULL')
    + ');' AS sql
FROM city;

SELECT 'INSERT INTO province(provinceid, name) VALUES ('
    + ISNULL(CAST(provinceid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(name, '''', '''''') + '''', 'NULL')
    + ');' AS sql
FROM province;

SELECT 'INSERT INTO personnel(personid, lastname, firstname, middlename, address, cityid, provinceid, postcode, areacode, teln, securityaccess) VALUES ('
    + ISNULL(CAST(personid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(lastname, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(firstname, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(middlename, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(address, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(cityid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(provinceid, '''', '''''') + '''', 'NULL') + ','
    + ISNULL('''' + REPLACE(postcode, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(areacode AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(teln AS varchar(50)), 'NULL') + ','
    + ISNULL(CAST(securityaccess AS varchar(50)), 'NULL')
    + ');' AS sql
FROM personnel; 

SELECT 'INSERT INTO securityaccess(securityaccessid, description) VALUES ('
    + ISNULL(CAST(securityaccessid AS varchar(50)), 'NULL') + ','
    + ISNULL('''' + REPLACE(description, '''', '''''') + '''', 'NULL')
    + ');' AS sql
FROM securityaccess;

SELECT 'INSERT INTO vw_PersonnelJobInfo(StartPeriod, ManagerName, Parsonid, StopPeriod) VALUES ('
    + ISNULL(CONVERT(varchar(23), StartPeriod, 121), 'NULL') + ','
    + ISNULL('''' + REPLACE(ManagerName, '''', '''''') + '''', 'NULL') + ','
    + ISNULL(CAST(Personid AS varchar(50)), 'NULL') + ','
    + ISNULL(CONVERT(varchar(23), StopPeriod, 121), 'NULL')
    + ');' AS sql
FROM vw_PersonnelJobInfo;