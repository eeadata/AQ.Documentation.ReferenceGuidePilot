# SRSInventory

```{image} ../_static/table-icons/SRSInventory.png
:alt: SRSInventory
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
| SRY_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| SRY_02 | SRSApplicationId | varchar(50) | string | PK |  |  | N |
| SRY_03 | Country | varchar(20) | string |  |  |  | N |
| SRY_04 | SpatialResolution | int | numeric |  |  |  | N |
| SRY_05 | ValueCount | ??? | ??? |  |  |  | N |
| SRY_06 | RawDataURL | varchar(50) | string |  |  |  | N |
| SRY_07 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### SRY_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### SRY_02 - SRSApplicationId

**Content**

Identifier of the specific spatial representativeness given by data provider.

**In Reporting**

N - No corresponding reporting table.

### SRY_03 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### SRY_04 - SpatialResolution

**Content**

Description of the spatial resolution of the model output, indicating the level of detail - new code list.

**In Reporting**

N - No corresponding reporting table.

### SRY_05 - ValueCount

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### SRY_06 - RawDataURL

**Content**

URL of parquet file

**In Reporting**

N - No corresponding reporting table.

### SRY_07 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

