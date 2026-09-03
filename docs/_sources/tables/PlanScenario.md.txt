# PlanScenario

```{image} ../_static/table-icons/PlanScenario.png
:alt: PlanScenario
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
| PSC_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-01-countrycode) |
| PSC_02 | PlanId | varchar(50) | string | PK |  | CompliancePlanLink | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-02-planid) |
| PSC_03 | ScenarioId | varchar(50) | string | PK |  | CompliancePlanLink<br>ScenarioMeasure | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-03-scenarioid) |
| PSC_04 | ScenarioCategory | varchar(20) | string | PK | [scenariocategory](https://dd.eionet.europa.eu/vocabulary/aq/scenariocategory) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-04-scenariocategory) |
| PSC_05 | ScenarioNationalCode | varchar(50) | string |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-05-scenarionationalcode) |
| PSC_06 | PollutantId | int | numeric |  | [pollutant](https://dd.eionet.europa.eu/vocabulary/aq/pollutant/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-06-pollutantid) |
| PSC_07 | DataAggregationProcessId | varchar(50) | string |  | [aggregationprocess](https://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-07-dataaggregationprocessid) |
| PSC_08 | ScenarioYear | int | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-08-scenarioyear) |
| PSC_09 | ScenarioPollutionLevel | decimal(10,2) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-09-scenariopollutionlevel) |
| PSC_10 | ExposedPopulation | int | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-10-exposedpopulation) |
| PSC_11 | ScenarioAssessmentMethodId | varchar(100) | string |  |  | ModelObjectiveEstimation | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-11-scenarioassessmentmethodid) |
| PSC_12 | Country | varchar(20) | string |  |  |  | N |
| PSC_13 | Pollutant | varchar(50) | string |  |  |  | N |
| PSC_14 | DataAggregationProcess | varchar(XXX) | string |  |  |  | N |
| PSC_15 | EEAExposedPopulation | int | numeric |  |  |  | N |
| PSC_16 | Deletion | bit | boolean |  |  |  | N |

```{note}
`Country`, `Pollutant`, `DataAggregationProcess`, `EEAExposedPopulation` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### PSC_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-01-countrycode)

### PSC_02 - PlanId

**Content**

Identifier of the air quality plan, given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-02-planid)

### PSC_03 - ScenarioId

**Content**

Identifier of the scenario, given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-03-scenarioid)

### PSC_04 - ScenarioCategory

**Content**

Classification of the scenario (e.g., reference, baseline, projection).

**Remarks**

ScenarioCategory: reference, baseline or projection. It should be included in the composite PK in the next iteration of schema version.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-04-scenariocategory)

### PSC_05 - ScenarioNationalCode

**Content**

Unique local code assigned to the evaluation scenario by the data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-05-scenarionationalcode)

### PSC_06 - PollutantId

**Content**

Code of the air pollutant being considered in the scenario.

**Remarks**

AirPollutantCode: must correspond to the AirPollutantCode of the AttainmentId.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-06-pollutantid)

### PSC_07 - DataAggregationProcessId

**Content**

Identifier for the process used to aggregate air quality data in the scenario.

**Remarks**

DataAggregationProcessId: the data aggregation used for the scenario; it must correspond to the DataAggregationProcessId of the AttainmentId.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-07-dataaggregationprocessid)

### PSC_08 - ScenarioYear

**Content**

The calendar year for which the scenario has been modeled.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-08-scenarioyear)

### PSC_09 - ScenarioPollutionLevel

**Content**

Estimated air pollution level in the scenario year.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-09-scenariopollutionlevel)

### PSC_10 - ExposedPopulation

**Content**

Population exposed to the level of air pollution.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-10-exposedpopulation)

### PSC_11 - ScenarioAssessmentMethodId

**Content**

Identifier of the assessment method - model -  used in the scenario, given by data provider.

**Remarks**

AssessmentMethodId: the model/OBE used for producing the scenario (also to be declared in the Model table). It may be cross-checked against Model table, also - indirectly - against ModellingResult table.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/PlanScenario.html#psc-11-scenarioassessmentmethodid)

### PSC_12 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### PSC_13 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting attribute.

### PSC_14 - DataAggregationProcess

**Content**

Label of the process of data aggregation into statistical values.

**In Reporting**

N - No corresponding reporting attribute.

### PSC_15 - EEAExposedPopulation

**Content**

Population exposed to the level of air pollution as calculated by EEA.

**In Reporting**

N - No corresponding reporting attribute.

### PSC_16 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

