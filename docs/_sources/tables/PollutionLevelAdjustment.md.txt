# PollutionLevelAdjustment

```{image} ../_static/table-icons/PollutionLevelAdjustment.png
:alt: PollutionLevelAdjustment
:align: right
:width: 200px
```

```{contents}
:local:
:depth: 2
```

## Attributes

| Attribute Code | Attribute Name | SQL DB Data Type | ReportNet3 Data Type | Properties | Code list | Related table(s) | In Reporting |
| -------------- | -------------- | ---------------- | -------------------- | ---------- | --------- | ---------------- | :----------: |
| ADJ_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | Y |
| ADJ_02 | AttainmentId | varchar(50) | string | PK |  | ComplianceAssessmentMethod | Y |
| ADJ_03 | AdjustmentSource | varchar(50) | string | PK | [adjustmentsourcetype](https://dd.eionet.europa.eu/vocabulary/aq/adjustmentsourcetype/view) |  | Y |
| ADJ_04 | AdjustmentAssessmentMethodId | varchar(10) | string |  |  | ModelObjectiveEstimation | Y |
| ADJ_05 | AdjustmentDocumentId | varchar(150) | string |  |  | Documentation | Y |
| ADJ_06 | Country | varchar(20) | string |  |  |  | N |
| ADJ_07 | Deletion | bit | boolean |  |  |  | N |

```{note}
`Country` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### ADJ_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### ADJ_02 - AttainmentId

**Content**

Identifier of the air quality compliance situation, given by data provider.

**Remarks**

It will be cross-checked against the ComplianceAssessmentMethod table.

**In Reporting**

Y

### ADJ_03 - AdjustmentSource

**Content**

Description of the source being adjusted (e.g., sea spray, volcanic activity).

**In Reporting**

Y

### ADJ_04 - AdjustmentAssessmentMethodId

**Content**

Identifier of the method - model - used for deduction assessment, given by data provider.

**Remarks**

AdjAssessmentMethodId is a model or OBE identifier that points to the method (model/OBE in the Model table) which was used for the assessments of the deduction.
If there are several different adjustment types/sources, different AdjAssessmentMethodIds must be used, so that it is possible to distinguish between corresponding adjustment values reported in the ModellingResult (Inline or External) table.
It will be cross-checked against the Model table, also - indirectly - against the ModellingResult tables.

**In Reporting**

Y

### ADJ_05 - AdjustmentDocumentId

**Content**

Identifier of the report detailing the adjustment procedure given by data provider.

**In Reporting**

Y

### ADJ_06 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### ADJ_07 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

