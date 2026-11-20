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
    so.ID,
    so.DocumentID,
    sot.Description as OperationID,
    so.SourceID,
    so.BludoID,
    pr.description as ProductID,
    so.ClientID,
    so.ContractID,
    st.description as StorageID,
    so.RangeID
from
    dbo.bm_StorageOperations_Table so,
    dbo.bm_StorageOperationsType sot,
    dbo.product pr,
    dbo.storages st
where
    so.OperationID = sot.ID and
    so.ProductID = pr.id and
    so.StorageID = st.id;

-- 2
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

-- 3
select top 1
    so.id as operationID,
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
    dbo.bm_StorageOperations so,
    dbo.vendors ve,
    --dbo.clientgroup cg, --у них нет пересечений
    dbo.city ci
    --dbo.province pr --у них тоже
where
    so.VendorID = ve.id and
    --ve.clientgroup = cg.clientgroupid and
    ve.cityid = ci.cityid;
    --ve.provinceid = pr.provinceid;

-- 4
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
    pe.teln,
    pe.securityaccess
    --sa.description as securityaccess
from
    dbo.personnel pe,
    dbo.city ci,
    --dbo.securityaccess sa,
    dbo.province pr
where
    pe.cityid = ci.cityid and
    --pe.securityaccess = sa.securityaccessid and
    pe.provinceid = pr.provinceid;

-- 5
select top 1
    so.ID,
    so.DocumentID,
    sot.Description as OperationID,
    so.SourceID,
    so.BludoID,
    pr.description as ProductID,
    pr.VendorID,
    so.ContractID,
    st.description as StorageID,
    so.RangeID
from
    dbo.bm_StorageOperations so,
    dbo.bm_StorageOperationsType sot,
    dbo.product pr,
    dbo.storages st
where
    so.OperationID = sot.ID and
    so.ProductID = pr.id and
    so.StorageID = st.id;