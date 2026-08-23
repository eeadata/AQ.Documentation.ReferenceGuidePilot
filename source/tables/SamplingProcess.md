# SamplingProcess

```{image} ../_static/table-icons/SamplingProcess.png
:alt: SamplingProcess
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
| SPP_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-01-countrycode) |
| SPP_02 | ProcessId | varchar(150) | string | PK |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-02-processid) |
| SPP_03 | AssessmentMethodId | varchar(50) | string | PK |  | ComplianceAssessmentMethod<br>SamplingPoint<br>SamplingPointLocation<br>ObservationMeasurementResult | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-03-assessmentmethodid) |
| SPP_04 | ProcessActivityBegin | datetime | datetime | PK |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-04-processactivitybegin) |
| SPP_05 | ProcessActivityEnd | datetime | datetime |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-05-processactivityend) |
| SPP_06 | PollutantId | int | numeric |  | [pollutant](https://dd.eionet.europa.eu/vocabulary/aq/pollutant/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-06-pollutantid) |
| SPP_07 | MeasurementType | varchar(50) | string |  | [measurementtype](https://dd.eionet.europa.eu/vocabulary/aq/measurementtype/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-07-measurementtype) |
| SPP_08 | Method | varchar(50) | string |  | [measurementmethod](https://dd.eionet.europa.eu/vocabulary/aq/measurementmethod/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-08-method) |
| SPP_09 | Equipment | varchar(50) | string |  | [measurementequipment](https://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-09-equipment) |
| SPP_10 | AnalyticalTechnique | varchar(50) | string |  | [analyticaltechnique](https://dd.eionet.europa.eu/vocabulary/aq/analyticaltechnique/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-10-analyticaltechnique) |
| SPP_11 | EquivalenceDemonstrated | varchar(50) | string |  | [equivalencedemonstrated](https://dd.eionet.europa.eu/vocabulary/aq/equivalencedemonstrated) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-11-equivalencedemonstrated) |
| SPP_12 | DataQualityDocumentId | varchar(150) | string |  |  | Documentation | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-12-dataqualitydocumentid) |
| SPP_13 | EquivalenceDemonstrationDocumentId | varchar(150) | string |  |  | Documentation | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-13-equivalencedemonstrationdocumentid) |
| SPP_14 | ProcessDocumentId | varchar(150) | string |  |  | Documentation | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-14-processdocumentid) |
| SPP_15 | Country | varchar(20) | string |  |  |  | N |
| SPP_16 | SamplingPointReferenceId | varchar(32) | string |  |  |  | N |
| SPP_17 | Pollutant | varchar(50) | string |  |  |  | N |
| SPP_18 | Deletion | bit | boolean |  |  |  | N |

```{note}
`Country`, `SamplingPointReferenceId`, `Pollutant` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### SPP_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-01-countrycode)

### SPP_02 - ProcessId

**Content**

Identifier of the sampling process, given by data provider.

**Remarks**

The same ProcessId can be re-used for the same equipment configurations under different sampling points (AssessmentMethodId).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-02-processid)

### SPP_03 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point) given by data provider.

**Remarks**

A sampling point (AssessmentMethodId) can be closed (set as inactive) by ending the ProcessId (specifying ProcessActivityEnd).
The same sampling point can be re-opened, also with the same ProcessId, by adding new record with new ProcessActivityBegin.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-03-assessmentmethodid)

### SPP_04 - ProcessActivityBegin

**Content**

Start time of the measurement process.

**Remarks**

If there is more than one ProcessId within the same AssessmentMethodId, then ProcessActivityBegin - ProcessActivityEnd should not overlap within the same AssessmentMethodId.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-04-processactivitybegin)

### SPP_05 - ProcessActivityEnd

**Content**

End time of the measurement process.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-05-processactivityend)

### SPP_06 - PollutantId

**Content**

Code of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-06-pollutantid)

### SPP_07 - MeasurementType

**Content**

Classification of measurement methods into generic types.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-07-measurementtype)

### SPP_08 - Method

**Content**

Specific method used for measuring air pollutants.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-08-method)

### SPP_09 - Equipment

**Content**

Equipment used for air pollutant measurement.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-09-equipment)

### SPP_10 - AnalyticalTechnique

**Content**

Analytical technique used for measuring pollutants.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-10-analyticaltechnique)

### SPP_11 - EquivalenceDemonstrated

**Content**

Status of equivalence demonstration according to regulatory requirements.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-11-equivalencedemonstrated)

### SPP_12 - DataQualityDocumentId

**Content**

Identifier of the Quality Assurance report given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-12-dataqualitydocumentid)

### SPP_13 - EquivalenceDemonstrationDocumentId

**Content**

Identifier of the Equivalence demonstration report given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-13-equivalencedemonstrationdocumentid)

### SPP_14 - ProcessDocumentId

**Content**

Identifier of the documentation on process and data quality given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingProcess.html#spp-14-processdocumentid)

### SPP_15 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### SPP_16 - SamplingPointReferenceId

**Content**

Reference identifier of the assessment method (sampling point), either re-used or given by data provider following strict rules.

**In Reporting**

N - No corresponding reporting attribute.

### SPP_17 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting attribute.

### SPP_18 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

