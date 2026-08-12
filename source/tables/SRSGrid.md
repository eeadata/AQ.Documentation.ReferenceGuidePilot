# SRSGrid

```{image} ../_static/table-icons/SRSGrid.png
:alt: SRSGrid
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
| SRG_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| SRG_02 | SRSApplicationId | varchar(50) | string | PK |  |  | N |
| SRG_03 | X | bigint | numeric | PK |  |  | N |
| SRG_04 | Y | bigint | numeric | PK |  |  | N |
| SRG_05 | Area | ??? | ??? |  |  |  | N |
| SRG_06 | Country | varchar(20) | string |  |  |  | N |
| SRG_07 | GridNum10m | bigint | numeric |  |  |  | N |
| SRG_08 | GridNum100m | bigint | numeric |  |  |  | N |
| SRG_09 | GridNum1km | bigint | numeric |  |  |  | N |
| SRG_10 | GridNum10km | bigint | numeric |  |  |  | N |
| SRG_10 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### SRG_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### SRG_02 - SRSApplicationId

**Content**

Identifier of the specific spatial representativeness given by data provider.

**In Reporting**

N - No corresponding reporting table.

### SRG_03 - X

**Content**

X-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting table.

### SRG_04 - Y

**Content**

Y-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting table.

### SRG_05 - Area

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### SRG_06 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### SRG_07 - GridNum10m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### SRG_08 - GridNum100m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### SRG_09 - GridNum1km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### SRG_10 - GridNum10km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### SRG_10 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

