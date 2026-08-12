# ObservationMeasurementInventory

```{image} ../_static/table-icons/ObservationMeasurementInventory.png
:alt: ObservationMeasurementInventory
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
| OMI_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| OMI_02 | AssessmentMethodId | varchar(50) | string | PK |  |  | N |
| OMI_08 | Validity | int | numeric | PK |  |  | N |
| OMI_09 | Verification | int | numeric | PK |  |  | N |
| OMI_11 | TimeResolution | varchar(10) | string | PK |  |  | N |
| OMI_12 | Year |  |  | PK |  |  | N |
| OMI_04 | PollutantId | int | numeric |  |  |  | N |
| OMI_07 | Unit | varchar(10) | string |  |  |  | N |
| OMI_13 | Country | varchar(20) | string |  |  |  | N |
| OMI_14 | SamplingPointReferenceId | varchar(32) | string |  |  |  | N |
| OMI_15 | Pollutant | varchar(50) | string |  |  |  | N |
| OMI_16 | ValueCount | int | numeric |  |  |  | N |
| OMI_17 | StartInYear | datetime | datetime |  |  |  | N |
| OMI_18 | EndInYear | datetime | datetime |  |  |  | N |
| OMI_19 | MinResultTimeInYear | ??? | ??? |  |  |  | N |
| OMI_20 | MaxResultTimeInYear | ??? | ??? |  |  |  | N |
| OMI_21 | SourceDataFlow | ??? | ??? |  |  |  | N |
| OMI_22 | RawDataURL | varchar(50) | string |  |  |  | N |
| OMI_23 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### OMI_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### OMI_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point), given by data provider.

**In Reporting**

N - No corresponding reporting table.

### OMI_08 - Validity

**Content**

Indicator of whether the measurement data is valid or not.

**In Reporting**

N - No corresponding reporting table.

### OMI_09 - Verification

**Content**

Information based on verification flags found in reported time series.

**In Reporting**

N - No corresponding reporting table.

### OMI_11 - TimeResolution

**Content**

Time resolution of the reported measurement observations (e.g., hourly, daily, var).

**In Reporting**

N - No corresponding reporting table.

### OMI_12 - Year

**Content**

Year covered by the measurement data.

**In Reporting**

N - No corresponding reporting table.

### OMI_04 - PollutantId

**Content**

Code of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### OMI_07 - Unit

**Content**

Unit of measurement for the air pollution level (e.g., &micro;g/m&sup3;).

**In Reporting**

N - No corresponding reporting table.

### OMI_13 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### OMI_14 - SamplingPointReferenceId

**Content**

Reference identifier of the assessment method (sampling point), either re-used or given by data provider following strict rules.

**In Reporting**

N - No corresponding reporting table.

### OMI_15 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### OMI_16 - ValueCount

**Content**

Number of values in the time seies and corresponding to the PKs.

**In Reporting**

N - No corresponding reporting table.

### OMI_17 - StartInYear

**Content**

Datetime  of the first data transmitted

**In Reporting**

N - No corresponding reporting table.

### OMI_18 - EndInYear

**Content**

Datetime of the last data transmitted

**In Reporting**

N - No corresponding reporting table.

### OMI_19 - MinResultTimeInYear

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### OMI_20 - MaxResultTimeInYear

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### OMI_21 - SourceDataFlow

**Content**

Indicate whether the data were transmitted in E1a or E2a (Reportnet2) or within the new system Reportnet3.

**In Reporting**

N - No corresponding reporting table.

### OMI_22 - RawDataURL

**Content**

URL of parquet file

**In Reporting**

N - No corresponding reporting table.

### OMI_23 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

