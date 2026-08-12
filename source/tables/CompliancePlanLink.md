# CompliancePlanLink

```{image} ../_static/table-icons/CompliancePlanLink.png
:alt: CompliancePlanLink
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
| CPL_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | Y |
| CPL_02 | AttainmentId | varchar(50) | string | PK |  | ComplianceAssessmentMethod | Y |
| CPL_03 | PlanId | varchar(50) | string | PK |  | PlanScenario | Y |
| CPL_04 | ScenarioId | varchar(50) | string | PK |  | PlanScenario | Y |
| CPL_05 | SourceApportionmentId | varchar(50) | string | PK |  | SourceApportionment | Y |
| CPL_12 | Deletion | bit | boolean |  |  |  | Y |
| CPL_13 | Country | varchar(20) | string |  |  |  | N |
| CPL_14 | ReportingYear | int | numeric |  |  |  | N |

```{note}
`Country` and `ReportingYear` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### CPL_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### CPL_02 - AttainmentId

**Content**

Identifier of the air quality compliance situation, given by data provider.

**Remarks**

Several AttainmentIds can point to the same PlanId (e.g. the plan covers different pollutants or successive years of exceedance for the same pollutant). Alternatively, there might be several plans applying to the same AttainmentId (e.g. different authority level, or successive plans). It will be cross-checked against the ComplianceAssessmentMethod table.

**In Reporting**

Y

### CPL_03 - PlanId

**Content**

Identifier of the air quality plan, given by data provider.

**Remarks**

It will be cross-checked against the PlanScenario table.

**In Reporting**

Y

### CPL_04 - ScenarioId

**Content**

Identifier of the scenario, given by data provider.

**Remarks**

ScenarioId, several scenarios can apply to the same PlanId (e.g. different pollutant and/or data aggregation) and vice versa. It will be cross-checked against the PlanScenario table.

**In Reporting**

Y

### CPL_05 - SourceApportionmentId

**Content**

Identifier of the source apportionment, given by data provider.

**Remarks**

SourceApportionmentId, there might be only one SourceApportionment per ScenarioId but several per PlanId (e.g.: different pollutant and/or data aggregation). It will be cross-checked against the SourceApportionment table.

**In Reporting**

Y

### CPL_12 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**Remarks**

Y/N

**In Reporting**

Y

### CPL_13 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### CPL_14 - ReportingYear

**Content**

Year for which the data/info has been reported.

**In Reporting**

N - No corresponding reporting attribute.

