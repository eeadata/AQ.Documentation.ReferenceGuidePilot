# ZoneGeometryGrid

```{image} ../_static/table-icons/ZoneGeometryGrid.png
:alt: ZoneGeometryGrid
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
| ZGG_01 | CountryCode | varchar(2) | string | PK |  |  | N |
| ZGG_02 | ZoneId | varchar(20) | string | PK |  |  | N |
| ZGG_03 | X | bigint | numeric | PK |  |  | N |
| ZGG_04 | Y | bigint | numeric | PK |  |  | N |
| ZGG_05 | Country | varchar(20) | string |  |  |  | N |
| ZGG_06 | Area | ??? | ??? |  |  |  | N |
| ZGG_07 | GridNum100m | bigint | numeric |  |  |  | N |
| ZGG_08 | GridNum1km | bigint | numeric |  |  |  | N |
| ZGG_09 | GridNum10km | bigint | numeric |  |  |  | N |
| ZGG_10 | Deletion | bit | boolean |  |  |  | N |

```{note}
There is no corresponding table in the reporting data model. Therefore, all attributes are marked `N`.
```

## Attribute details

### ZGG_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

N - No corresponding reporting table.

### ZGG_02 - ZoneId

**Content**

Identifier of the air quality zone, given by data provider.

**In Reporting**

N - No corresponding reporting table.

### ZGG_03 - X

**Content**

X-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting table.

### ZGG_04 - Y

**Content**

Y-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting table.

### ZGG_05 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting table.

### ZGG_06 - Area

**Content**

???

**In Reporting**

N - No corresponding reporting table.

### ZGG_07 - GridNum100m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### ZGG_08 - GridNum1km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### ZGG_09 - GridNum10km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution 

**In Reporting**

N - No corresponding reporting table.

### ZGG_10 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting table.

