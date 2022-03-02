SELECT
    PAT.[PatientId]
    , PAT.ReferralNumber
    , AUTH.[OrganAuthBasic]

FROM
    [DCIDSDW].[Dim].[Patient] PAT

    LEFT JOIN [DCIDSDW].[Dim].[Authorization] AUTH