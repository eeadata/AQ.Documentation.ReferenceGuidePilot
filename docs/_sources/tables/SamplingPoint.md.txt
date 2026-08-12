# SamplingPoint

```{image} ../_static/table-icons/SamplingPoint.png
:alt: SamplingPoint
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
| SPO_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | Y |
| SPO_02 | AssessmentMethodId | varchar(50) | string | PK |  | ComplianceAssessmentMethod<br>SamplingProcess<br>SamplingPointLocation<br>ObservationMeasurementResult | Y |
| SPO_03 | SamplingPointReferenceId | varchar(32) | string |  |  |  | Y |
| SPO_04 | PollutantId | int | numeric |  | [pollutant](https://dd.eionet.europa.eu/vocabulary/aq/pollutant/view) |  | Y |
| SPO_05 | StationEoICode | varchar(10) | string |  |  | MeasurementStation | Y |
| SPO_06 | Country | varchar(20) | string |  |  |  | N |
| SPO_07 | SamplingPointStatus | bit | boolean |  |  |  | N |
| SPO_08 | Pollutant | varchar(50) | string |  |  |  | N |
| SPO_09 | Deletion | bit | boolean |  |  |  | N |

```{note}
`Country`, `SamplingPointStatus`, `Pollutant` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### SPO_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### SPO_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point), given by data provider.

**Remarks**

A sampling point (AssessmentMethodId) can be closed (set as inactive) by ending the ProcessId (specifying ProcessActivityEnd).

The same sampling point (AssessmentMethodId) can be re-open (also with the same ProcessId) by adding new record with new ProcessActivityBegin.

**In Reporting**

Y

### SPO_03 - SamplingPointReferenceId

**Content**

Reference identifier of the assessment method (sampling point), either re-used or given by data provider following strict rules.

**Remarks**

Following rules of SPO reference code, unique within CountryCode reported and it can serve as reference code list.

**In Reporting**

Y

### SPO_04 - PollutantId

**Content**

Code of the air pollutant being measured, as per Data Dictionary standards.

**Remarks**

Only one for the same AssessmentMethodId/SamplingPointReferenceId.

**In Reporting**

Y

### SPO_05 - StationEoICode

**Content**

EoI (Exchange of Information) code of the air quality measurement station, as in AirBase, either re-used or given by data provider following strict rules.

**Code list / reference**

There will be no specific code list in Data Dictionary but the Station table in reference data flow will serve as code list for AirQualityStationEoICode values.

**Remarks**

StationEoICode must be always provided and cannot be modified.

Station will become inactive if all sampling points in that station are inactive.

The same Station can become active again if there are new active sampling points or existing sampling points become active again.

It will be cross-checked against Station table.

**In Reporting**

Y

### SPO_06 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### SPO_07 - SamplingPointStatus

**Content**

Indicator wheter the SPO is operational or not.

**In Reporting**

N - No corresponding reporting attribute.

### SPO_08 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting attribute.

### SPO_09 - Deletion

**Content**

Flag to indicate that this element must be deleted..

**In Reporting**

N - No corresponding reporting attribute.

