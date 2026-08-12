# MeasurementStation

```{image} ../_static/table-icons/MeasurementStation.png
:alt: MeasurementStation
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
| STA_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) | | Y |
| STA_02 | StationEoICode | varchar(10) | string | PK | | SamplingPoint | Y |
| STA_10 | ReportingTime | datetime | datetime | PK | | | N |
| STA_03 | NetworkId | varchar(50) | string | | | | Y |
| STA_04 | NetworkName | varchar(150) | string | | | | Y |
| STA_05 | NetworkOrganisationalLevel | varchar(20) | string | | [administrativelevel](https://dd.eionet.europa.eu/vocabulary/aq/administrativelevel/view) | | Y |
| STA_06 | Timezone | varchar(20) | string | | [timezone](https://dd.eionet.europa.eu/vocabulary/aq/timezone) | | Y |
| STA_07 | StationNationalCode | varchar(50) | string | | | | Y |
| STA_08 | StationName | varchar(50) | string | | | | Y |
| STA_09 | NetworkDocumentId | varchar(150) | string | | | Documentation | Y |
| STA_11 | Country | varchar(20) | string | | | | N |
| STA_12 | City | | | | | | N |
| STA_13 | CityCode | | | | | | N |
| STA_14 | Deletion | bit | boolean | | | | N |

```{note}
`ReportingTime`, `Country`, `City`, `CityCode` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### STA_01 – CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### STA_02 – StationEoICode

**Content**

EoI (Exchange of Information) code of the air quality measurement station, as in AirBase, either re-used or given by data provider following strict rules.

**Code list / reference**

There will be no specific code list in Data Dictionary but the Station table in reference data flow will serve as code list for AirQualityStationEoICode values.

**Remarks**

StationEoICode must be always provided and cannot be modified.

Station will become inactive if all sampling points in that station are inactive.

The same Station can become active again if there are new active sampling points or existing sampling points become active again.

**In Reporting**

Y

### STA_10 – ReportingTime

**Content**

Date and time when the information is submitted..

**In Reporting**

N – No corresponding reporting attribute.

### STA_03 – NetworkId

**Content**

Identifier of the air quality network, given by data provider.

**In Reporting**

Y

### STA_04 – NetworkName

**Content**

Name of the air quality measurement network, given by data provider.

**In Reporting**

Y

### STA_05 – NetworkOrganisationalLevel

**Content**

Level of administration or organization responsible for the air quality network (national, regional, local).

**In Reporting**

Y

### STA_06 – Timezone

**Content**

Time zone in which air quality measurements and statistics are recorded.

**Remarks**

TimeZone must be provided and will be used for calculations of AQ statistics.

If TimeZone is modified, all statistics will be recalculated accordingly.

**In Reporting**

Y

### STA_07 – StationNationalCode

**Content**

National code of the air quality measurement station, given by data provider.

**In Reporting**

Y

### STA_08 – StationName

**Content**

Name of the air quality measurement station.

**In Reporting**

Y

### STA_09 – NetworkDocumentId

**Content**

Identifier of the documentation on network and station.

**In Reporting**

Y

### STA_11 – Country

**Content**

Name of the country.

**In Reporting**

N – No corresponding reporting attribute.

### STA_12 – City

**In Reporting**

N – No corresponding reporting attribute.

### STA_13 – CityCode

**In Reporting**

N – No corresponding reporting attribute.

### STA_14 – Deletion

**Content**

Flag to indicate that this element must be deleted..

**In Reporting**

N – No corresponding reporting attribute.
