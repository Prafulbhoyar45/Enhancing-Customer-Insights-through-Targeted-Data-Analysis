SELECT
    CF.CDM_ID,
    CF.CustomerSubmittedEmail_ByEmployeeID,
    E.Employee_ID,
    CT.CustomerType_ID,
    AC.CSI_System_ID
FROM
    [CUSTFORM].[CustomerForm] CF
INNER JOIN
    [CUSTREQUESTFLOW].[ApprovedCustomer_SystemID] AC
ON
    CF.CDM_ID = AC.CDM_ID
INNER JOIN
    [ADM].[Employee] E
ON
    CF.CustomerSubmittedEmail_ByEmployeeID = E.Employee_ID
INNER JOIN
    [CUSTFORM].[CustomerType] CT
ON
    CF.CustomerType_ID = CT.CustomerType_ID
WHERE
    AC.CSI_System_Name = 'ORCL';
