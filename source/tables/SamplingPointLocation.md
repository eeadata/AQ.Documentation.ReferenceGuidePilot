# SamplingPointLocation

```{image} ../_static/table-icons/SamplingPointLocation.png
:alt: SamplingPointLocation
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
| SPL_01 | CountryCode | varchar(2) | string | PK |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-01-countrycode) |
| SPL_02 | AssessmentMethodId | varchar(50) | string | PK |  | ComplianceAssessmentMethod<br>SamplingPoint<br>SamplingProcess<br>ObservationMeasurementResult | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-02-assessmentmethodid) |
| SPL_03 | LocationBegin | datetime | datetime | PK |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-03-locationbegin) |
| SPL_04 | LocationEnd | datetime | datetime |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-04-locationend) |
| SPL_05 | StationArea | varchar(100) | string |  | [areaclassification](https://dd.eionet.europa.eu/vocabulary/aq/areaclassification/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-05-stationarea) |
| SPL_06 | SamplingPointCategory | varchar(50) | string |  | Code list to be developed |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-06-samplingpointcategory) |
| SPL_07 | Hotspot | bit | boolean |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-07-hotspot) |
| SPL_08 | Supersite | bit | boolean |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-08-supersite) |
| SPL_09 | Latitude | decimal(8,4) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-09-latitude) |
| SPL_10 | Longitude | decimal(8,4) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-10-longitude) |
| SPL_11 | Altitude | decimal(10,1) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-11-altitude) |
| SPL_12 | InletHeight | decimal(10,1) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-12-inletheight) |
| SPL_13 | BuildingDistance | decimal(10,1) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-13-buildingdistance) |
| SPL_14 | KerbDistance | decimal(10,1) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-14-kerbdistance) |
| SPL_15 | EmissionSourceDistance | decimal(10,1) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-15-emissionsourcedistance) |
| SPL_16 | Country | varchar(20) | string |  |  |  | N |
| SPL_17 | X | bigint | numeric |  |  |  | N |
| SPL_18 | Y | bigint | numeric |  |  |  | N |
| SPL_19 | GridNum10m | bigint | numeric |  |  |  | N |
| SPL_20 | GridNum100m | bigint | numeric |  |  |  | N |
| SPL_21 | GridNum1km | bigint | numeric |  |  |  | N |
| SPL_22 | GridNum10km | bigint | numeric |  |  |  | N |
| SPL_23 | Deletion | bit | boolean |  |  |  | N |
| SPL_24 | SamplingPointType | varchar(20) | string |  |  |  | N |

```{note}
`Country`, `X`, `Y`, `GridNum10m`, `GridNum100m`, `GridNum1km`, `GridNum10km`, `Deletion` and `SamplingPointType` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### SPL_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-01-countrycode)

### SPL_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point), given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-02-assessmentmethodid)

### SPL_03 - LocationBegin

**Content**

Start time of the location characteristic(s)

**Remarks**

The permissible modifications in the location characteristics will be verified by adequate QC.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-03-locationbegin)

### SPL_04 - LocationEnd

**Content**

End time of the location characteristic(s)

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-04-locationend)

### SPL_05 - StationArea

**Content**

Classification of the air quality measurement station's area (urban, suburban, rural, etc.).

**Remarks**

A change in station area implies closing the associated sampling points by ending the SamplingProcess, declaring a new station and the associated new sampling points.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-05-stationarea)

### SPL_06 - SamplingPointCategory

**Content**

Intention or reason for placing sampling point.

**Code list / reference**

Code list to be developed.

**Remarks**

Potential categories: traffic, background, industrial, port, airport, residential heating, multisource.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-06-samplingpointcategory)

### SPL_07 - Hotspot

**Content**

Indicator if the measurement site is considered as a hotspot.

**Remarks**

Y/N.

Hotspot relates to the provisions of the recasted Air Quality Directive 2024/2881, Article 4(27) and others.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-07-hotspot)

### SPL_08 - Supersite

**Content**

Indicator if the measurement site is classified as a "Super Site" for advanced monitoring.

**Remarks**

Y/N.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-08-supersite)

### SPL_09 - Latitude

**Content**

Latitude coordinate of the air quality station location (decimal degrees).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-09-latitude)

### SPL_10 - Longitude

**Content**

Longitude coordinate of the air quality station location (decimal degrees).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-10-longitude)

### SPL_11 - Altitude

**Content**

Altitude of the air quality station location in meters above sea level.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-11-altitude)

### SPL_12 - InletHeight

**Content**

Height of the sampling inlet where air quality measurements are taken (in meters).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-12-inletheight)

### SPL_13 - BuildingDistance

**Content**

Horizontal distance from the sampling inlet to the nearest building (in meters).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-13-buildingdistance)

### SPL_14 - KerbDistance

**Content**

Horizontal distance from the sampling inlet to the nearest road kerb (in meters).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-14-kerbdistance)

### SPL_15 - EmissionSourceDistance

**Content**

Horizontal distance from the main emission source (in meters).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/SamplingPointLocation.html#spl-15-emissionsourcedistance)

### SPL_16 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### SPL_17 - X

**Content**

X-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting attribute.

### SPL_18 - Y

**Content**

Y-coordinate of the modeled data point in a projected coordinate reference system.

**In Reporting**

N - No corresponding reporting attribute.

### SPL_19 - GridNum10m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution. 

**In Reporting**

N - No corresponding reporting attribute.

### SPL_20 - GridNum100m

**Content**

Grid cell identifier in the EEA grid according to spatial resolution. 

**In Reporting**

N - No corresponding reporting attribute.

### SPL_21 - GridNum1km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution. 

**In Reporting**

N - No corresponding reporting attribute.

### SPL_22 - GridNum10km

**Content**

Grid cell identifier in the EEA grid according to spatial resolution. 

**In Reporting**

N - No corresponding reporting attribute.

### SPL_23 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

### SPL_24 - SamplingPointType

**Content**

Type of air quality measurement station (background, industrial, traffic-related, etc.) as under Reportnet2.

**In Reporting**

N - No corresponding reporting attribute.

