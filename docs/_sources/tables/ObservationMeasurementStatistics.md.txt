# ObservationMeasurementStatistics

```{image} ../_static/table-icons/ObservationMeasurementStatistics.png
:alt: ObservationMeasurementStatistics
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
| OMS_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| OMS_02 | AssessmentMethodId | varchar(50) | string | PK |  |  | N |
| OMS_03 | Start | datetime | datetime | PK |  |  | N |
| OMS_04 | End | datetime | datetime | PK |  |  | N |
| OMS_05 | DataAggregationProcessId | varchar(50) | string | PK |  |  | N |
| OMS_06 | PollutantId | int | numeric |  |  |  | N |
| OMS_07 | Value | decimal(10,2) | numeric |  |  |  | N |
| OMS_08 | Unit | varchar(10) | string |  |  |  | N |
| OMS_09 | Validity | int | numeric |  |  |  | N |
| OMS_10 | Verification | int | numeric |  |  |  | N |
| OMS_11 | DataCapture | decimal(5,2) | numeric |  |  |  | N |
| OMS_12 | ResultTime | datetime | datetime |  |  |  | N |
| OMS_13 | Country | varchar(20) | string |  |  |  | N |
| OMS_14 | SamplingPointReferenceId | varchar(32) | string |  |  |  | N |
| OMS_15 | Pollutant | varchar(50) | string |  |  |  | N |
| OMS_16 | DataAggregationProcess | varchar(xxx) | string |  |  |  | N |
| OMS_17 | DataCoverage | decimal(5,2) | numeric |  |  |  | N |
| OMS_18 | SourceDataFlow | ? | ? |  |  |  | N |
| OMS_19 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### OMS_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### OMS_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point), given by data provider.

**In Reporting**

N - No corresponding reporting table.

### OMS_03 - Start

**Content**

Start date and time of the measurement period.

**In Reporting**

N - No corresponding reporting table.

### OMS_04 - End

**Content**

End date and time of the measurement period.

**In Reporting**

N - No corresponding reporting table.

### OMS_05 - DataAggregationProcessId

**Content**

Identifier for the process of aggregating model data into statistical values.

**In Reporting**

N - No corresponding reporting table.

### OMS_06 - PollutantId

**Content**

Code of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### OMS_07 - Value

**Content**

Measured concentration or level of the air pollutant.

**In Reporting**

N - No corresponding reporting table.

### OMS_08 - Unit

**Content**

Unit of measurement for the air pollution level (e.g., &micro;g/m&sup3;).

**In Reporting**

N - No corresponding reporting table.

### OMS_09 - Validity

**Content**

Indicator of whether the measurement data is valid or not.

**In Reporting**

N - No corresponding reporting table.

### OMS_10 - Verification

**Content**

Information based on verification flags found in reported time series.

**In Reporting**

N - No corresponding reporting table.

### OMS_11 - DataCapture

**Content**

The proportion of valid measurement time relative to total measured time, expressed as a percentage.

**In Reporting**

N - No corresponding reporting table.

### OMS_12 - ResultTime

**Content**

Time at which the result was generated or recorded.

**In Reporting**

N - No corresponding reporting table.

### OMS_13 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### OMS_14 - SamplingPointReferenceId

**Content**

Reference identifier of the assessment method (sampling point), either re-used or given by data provider following strict rules.

**In Reporting**

N - No corresponding reporting table.

### OMS_15 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### OMS_16 - DataAggregationProcess

**Content**

Label of the process of data aggregation into statistical values.

**In Reporting**

N - No corresponding reporting table.

### OMS_17 - DataCoverage

**Content**

The proportion of the calendar year for which valid measurement data are available, expressed as a percentage.

**In Reporting**

N - No corresponding reporting table.

### OMS_18 - SourceDataFlow

**Content**

Indicate whether the data were transmitted in E1a or E2a (Reportnet2) or within the new system Reportnet3.

**In Reporting**

N - No corresponding reporting table.

### OMS_19 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

