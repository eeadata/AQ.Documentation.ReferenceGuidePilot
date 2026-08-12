# MOEResultInventory

```{image} ../_static/table-icons/MOEResultInventory.png
:alt: MOEResultInventory
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
| MOI_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| MOI_02 | AssessmentMethodId | varchar(50) | string | PK |  |  | N |
| MOI_03 | DataAggregationProcessId | varchar(50) | string | PK |  |  | N |
| MOI_04 | Year |  |  | PK |  |  | N |
| MOI_05 | PollutantId | int | numeric |  |  |  | N |
| MOI_06 | Unit | varchar(10) | string |  |  |  | N |
| MOI_07 | Validity | int | numeric |  |  |  | N |
| MOI_08 | SpatialResolution | int | numeric |  |  |  | N |
| MOI_09 | Country | varchar(20) | string |  |  |  | N |
| MOI_10 | Pollutant | varchar(50) | string |  |  |  | N |
| MOI_11 | DataAggregationProcess | varchar(XXX) | string |  |  |  | N |
| MOI_12 | ValueCount | int | numeric |  |  |  | N |
| MOI_13 | StartInYear | datetime | datetime |  |  |  | N |
| MOI_14 | EndInYear | datetime | datetime |  |  |  | N |
| MOI_15 | MinResultTimeInYear | ??? | ??? |  |  |  | N |
| MOI_16 | MaxResultTimeInYear | ??? | ??? |  |  |  | N |
| MOI_17 | SourceDataFlow | ??? | ??? |  |  |  | N |
| MOI_18 | RawDataURL | varchar(50) | string |  |  |  | N |
| MOI_19 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### MOI_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### MOI_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (model), given by provider.

**In Reporting**

N - No corresponding reporting table.

### MOI_03 - DataAggregationProcessId

**Content**

Identifier for the process of aggregating model data into statistical values.

**In Reporting**

N - No corresponding reporting table.

### MOI_04 - Year

**Content**

year covered by the modelled data.

**In Reporting**

N - No corresponding reporting table.

### MOI_05 - PollutantId

**Content**

Code of the air pollutant being modeled, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### MOI_06 - Unit

**Content**

Unit of measurement for the air pollution level (e.g., &micro;g/m&sup3;).

**In Reporting**

N - No corresponding reporting table.

### MOI_07 - Validity

**Content**

Indicator of whether the model data is valid or flagged.

**In Reporting**

N - No corresponding reporting table.

### MOI_08 - SpatialResolution

**Content**

Description of the spatial resolution of the model output, indicating the level of detail - new code list.

**In Reporting**

N - No corresponding reporting table.

### MOI_09 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### MOI_10 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### MOI_11 - DataAggregationProcess

**Content**

Label of the process of data aggregation into statistical values.

**In Reporting**

N - No corresponding reporting table.

### MOI_12 - ValueCount

**Content**

Number of values reported in the model.

**In Reporting**

N - No corresponding reporting table.

### MOI_13 - StartInYear

**Content**

Datetime  of the first data transmitted

**In Reporting**

N - No corresponding reporting table.

### MOI_14 - EndInYear

**Content**

Datetime of the last data transmitted

**In Reporting**

N - No corresponding reporting table.

### MOI_15 - MinResultTimeInYear

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### MOI_16 - MaxResultTimeInYear

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### MOI_17 - SourceDataFlow

**Content**

Indicate whether the data were transmitted in E1b (Reportnet2) or within the new system Reportnet3.

**In Reporting**

N - No corresponding reporting table.

### MOI_18 - RawDataURL

**Content**

URL of parquet file

**In Reporting**

N - No corresponding reporting table.

### MOI_19 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

