# MOEResultGrid

```{image} ../_static/table-icons/MOEResultGrid.png
:alt: MOEResultGrid
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
| MOG_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| MRG_02 | AssessmentMethodId | varchar(50) | string | PK |  |  | N |
| MRG_03 | Start | datetime | datetime | PK |  |  | N |
| MRG_04 | DataAggregationProcessId | varchar(50) | string | PK |  |  | N |
| MRG_05 | X | bigint | numeric | PK |  |  | N |
| MRG_06 | Y | bigint | numeric | PK |  |  | N |
| MRG_07 | PollutantId | int | numeric |  |  |  | N |
| MRG_08 | End | datetime | datetime |  |  |  | N |
| MRG_09 | Value | decimal(10,2) | numeric |  |  |  | N |
| MRG_10 | Unit | varchar(10) | string |  |  |  | N |
| MRG_11 | Validity | int | numeric |  |  |  | N |
| MRG_12 | ResultTime | datetime | datetime |  |  |  | N |
| MRG_13 | Country | varchar(20) | string |  |  |  | N |
| MRG_14 | Pollutant | varchar(50) | string |  |  |  | N |
| MRG_15 | DataAggregationProcess | varchar(XXX) | string |  |  |  | N |
| MRG_16 | Verification | int | numeric |  |  |  | N |
| MRG_17 | Area |  |  |  |  |  | N |
| MRG_18 | GridNum10m | bigint | numeric |  |  |  | N |
| MRG_19 | GridNum100m | bigint | numeric |  |  |  | N |
| MRG_20 | GridNum1km | bigint | numeric |  |  |  | N |
| MRG_21 | GridNum10km | bigint | numeric |  |  |  | N |
| MRG_22 | SourceDataFlow | ??? | ??? |  |  |  | N |
| MRG_23 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### MOG_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### MRG_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (model), given by provider.

**In Reporting**

N - No corresponding reporting table.

### MRG_03 - Start

**Content**

Start date and time of the model simulation period.

**In Reporting**

N - No corresponding reporting table.

### MRG_04 - DataAggregationProcessId

**Content**

Identifier for the process of aggregating model data into statistical values.

**In Reporting**

N - No corresponding reporting table.

### MRG_05 - X

**Content**

X-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting table.

### MRG_06 - Y

**Content**

Y-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting table.

### MRG_07 - PollutantId

**Content**

Code of the air pollutant being modeled, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### MRG_08 - End

**Content**

End date and time of the model simulation period.

**In Reporting**

N - No corresponding reporting table.

### MRG_09 - Value

**Content**

Modeled concentration or level of the air pollutant.

**In Reporting**

N - No corresponding reporting table.

### MRG_10 - Unit

**Content**

Unit of measurement for the air pollution level (e.g., &micro;g/m&sup3;).

**In Reporting**

N - No corresponding reporting table.

### MRG_11 - Validity

**Content**

Indicator of whether the model data is valid or flagged.

**In Reporting**

N - No corresponding reporting table.

### MRG_12 - ResultTime

**Content**

Time at which the model results were generated or recorded.

**In Reporting**

N - No corresponding reporting table.

### MRG_13 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### MRG_14 - Pollutant

**Content**

Name of the air pollutant being modeled, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting table.

### MRG_15 - DataAggregationProcess

**Content**

Label of the process of data aggregation into statistical values.

**In Reporting**

N - No corresponding reporting table.

### MRG_16 - Verification

**Content**

Information based on verification flags found in reported time series.

**In Reporting**

N - No corresponding reporting table.

### MRG_17 - Area

**In Reporting**

N - No corresponding reporting table.

### MRG_18 - GridNum10m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### MRG_19 - GridNum100m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### MRG_20 - GridNum1km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### MRG_21 - GridNum10km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### MRG_22 - SourceDataFlow

**Content**

Indicate whether the data were transmitted in E1b (Reportnet2) or within the new system Reportnet3.

**In Reporting**

N - No corresponding reporting table.

### MRG_23 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

