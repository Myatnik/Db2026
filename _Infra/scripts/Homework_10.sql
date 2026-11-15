-- 1
/*
SELECT TOP 1 * FROM dbo.bm_StorageOperations;
SELECT TOP 1 * FROM dbo.bm_StorageOperationsType;
SELECT TOP 1 * FROM dbo.product;
SELECT TOP 1 * FROM dbo.vendors;
SELECT TOP 1 * FROM dbo.bm_Contracts;
SELECT TOP 1 * FROM dbo.storages;
*/

-- 2
/*
SELECT TOP 1 * FROM dbo.journal;
SELECT TOP 1 * FROM dbo.stores;
SELECT TOP 1 * FROM dbo.transtype;
*/

-- 3
/*
SELECT TOP 1 * FROM dbo.vendors;
SELECT TOP 1 * FROM dbo.clientgroup;
SELECT TOP 1 * FROM dbo.city;
SELECT TOP 1 * FROM dbo.province;
*/

--4
/*
SELECT * FROM dbo.personnel ORDER BY personid DESC OFFSET 98 ROWS FETCH NEXT 1 ROWS ONLY;
*/

-- 1
select top 1
    so.ID,
    so.DocumentID,
    sot.Description as OperationID,
    so.SourceID,
    so.BludoID,
    pr.description as ProductID,
    ve.firstname as VendorID,
    so.ContractID,
    st.description as StorageID,
    so.RangeID
from
    dbo.bm_StorageOperations so,
    dbo.bm_StorageOperationsType sot,
    dbo.product pr,
    dbo.vendors ve,
    dbo.storages st
where
    so.OperationID = sot.ID and
    so.ProductID = pr.id and
    so.VendorID = ve.id and
    so.StorageID = st.id;


select top 1
    jo.storeid,
    jo.posid,
    jo.departmentid,
    jo.grouptranstype,
    tt.PreviewGroupType as transtype,
    jo.receiptn,
    jo.status,
    jo.dater,
    jo.sizeid,
    jo.price
from
    dbo.journal jo,
    dbo.transtype tt
where
    jo.transtype = tt.transtypeid;


select top 1
    ve.id,
    ve.clientid,
    ve.clientgroup,
    ve.serialnumber,
    ve.lastname,
    ve.firstname,
    ve.address,
    ci.name as cityid,
    ve.provinceid,
    ve.postcode
from
    dbo.vendors ve,
    --dbo.clientgroup cg, --у них нет пересечений
    dbo.city ci
    --dbo.province pr --у них тоже
where
    --ve.clientgroup = cg.clientgroupid and
    ve.cityid = ci.cityid;
    --ve.provinceid = pr.provinceid;

select top 1
    pe.personid,
    pe.lastname,
    pe.firstname,
    pe.middlename,
    pe.address,
    ci.name as cityid,
    pr.name as provinceid,
    pe.postcode,
    pe.areacode,
    pe.teln
from
    dbo.personnel pe,
    dbo.city ci,
    dbo.province pr
where
    pe.cityid = ci.cityid and
    pe.provinceid = pr.provinceid;
