# Plan

```{image} ../_static/table-icons/Plan.png
:alt: Plan
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
| PLA_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| PLA_03 | PlanId | varchar(50) | string | PK |  |  | N |
| PLA_06 | PlanCategory | varchar(20) | string |  |  |  | N |
| PLA_07 | PlanTitle | nvarchar(1000) | string |  |  |  | N |
| PLA_08 | PlanAdoptionDate | date | datetime |  |  |  | N |
| PLA_09 | PlanBeginDate | date | datetime |  |  |  | N |
| PLA_10 | PlanEndDate | date | datetime |  |  |  | N |
| PLA_11 | PlanDocumentId | varchar(150) | string |  |  |  | N |
| PLA_12 | Deletion | bit | boolean |  |  |  | N |
| PLA_13 | Country | varchar(20) | string |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### PLA_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### PLA_03 - PlanId

**Content**

Identifier of the air quality plan, given by data provider.

**In Reporting**

N - No corresponding reporting table.

### PLA_06 - PlanCategory

**Content**

Category of the air quality plan (e.g., roadmap, short-term plan, plan).

**In Reporting**

N - No corresponding reporting table.

### PLA_07 - PlanTitle

**Content**

Title of the plan

**In Reporting**

N - No corresponding reporting table.

### PLA_08 - PlanAdoptionDate

**Content**

Date of official adoption of the plan by the responsible authorities

**In Reporting**

N - No corresponding reporting table.

### PLA_09 - PlanBeginDate

**Content**

Start date (enforcement date) for the plan

**In Reporting**

N - No corresponding reporting table.

### PLA_10 - PlanEndDate

**Content**

End date for the plan

**In Reporting**

N - No corresponding reporting table.

### PLA_11 - PlanDocumentId

**Content**

Identifier of the air quality plan document given by data provider.

**In Reporting**

N - No corresponding reporting table.

### PLA_12 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

### PLA_13 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

