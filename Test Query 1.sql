SELECT
    A.AccountNumber,
    A.CustomerName,
    A.CustomerType,
    R.Initiator AS WhoInitiatedRequest,
    R.RequestDate,
    R.RequestType
FROM
    Accounts A
JOIN
    Requests R ON A.AccountNumber = R.AccountNumber;
