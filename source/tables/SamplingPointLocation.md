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
| SPL_01 | CountryCode | varchar(2) | string | PK |  |  | Y |
| SPL_02 | AssessmentMethodId | varchar(50) | string | PK |  | ComplianceAssessmentMethod<br>SamplingPoint<br>SamplingProcess<br>ObservationMeasurementResult | Y |
| SPL_03 | LocationBegin | datetime | datetime | PK |  |  | Y |
| SPL_04 | LocationEnd | datetime | datetime |  |  |  | Y |
| SPL_05 | StationArea | varchar(100) | string |  | [areaclassification](https://dd.eionet.europa.eu/vocabulary/aq/areaclassification/view) |  | Y |
| SPL_06 | SamplingPointCategory | varchar(50) | string |  | Code list to be developed |  | Y |
| SPL_07 | Hotspot | bit | boolean |  |  |  | Y |
| SPL_08 | Supersite | bit | boolean |  |  |  | Y |
| SPL_09 | Latitude | decimal(8,4) | numeric |  |  |  | Y |
| SPL_10 | Longitude | decimal(8,4) | numeric |  |  |  | Y |
| SPL_11 | Altitude | decimal(10,1) | numeric |  |  |  | Y |
| SPL_12 | InletHeight | decimal(10,1) | numeric |  |  |  | Y |
| SPL_13 | BuildingDistance | decimal(10,1) | numeric |  |  |  | Y |
| SPL_14 | KerbDistance | decimal(10,1) | numeric |  |  |  | Y |
| SPL_15 | EmissionSourceDistance | decimal(10,1) | numeric |  |  |  | Y |
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

Y

### SPL_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point), given by data provider.

**In Reporting**

Y

### SPL_03 - LocationBegin

**Content**

Start time of the location characteristic(s)

**Remarks**

The permissible modifications in the location characteristics will be verified by adequate QC.

**In Reporting**

Y

### SPL_04 - LocationEnd

**Content**

End time of the location characteristic(s)

**In Reporting**

Y

### SPL_05 - StationArea

**Content**

Classification of the air quality measurement station's area (urban, suburban, rural, etc.).

**Remarks**

A change in station area implies closing the associated sampling points by ending the SamplingProcess, declaring a new station and the associated new sampling points.

**In Reporting**

Y

### SPL_06 - SamplingPointCategory

**Content**

Intention or reason for placing sampling point.

**Code list / reference**

Code list to be developed.

**Remarks**

Potential categories: traffic, background, industrial, port, airport, residential heating, multisource.

**In Reporting**

Y

### SPL_07 - Hotspot

**Content**

Indicator if the measurement site is considered as a hotspot.

**Remarks**

Y/N.

Hotspot relates to the provisions of the recasted Air Quality Directive 2024/2881, Article 4(27) and others.

**In Reporting**

Y

### SPL_08 - Supersite

**Content**

Indicator if the measurement site is classified as a "Super Site" for advanced monitoring.

**Remarks**

Y/N.

**In Reporting**

Y

### SPL_09 - Latitude

**Content**

Latitude coordinate of the air quality station location (decimal degrees).

**In Reporting**

Y

### SPL_10 - Longitude

**Content**

Longitude coordinate of the air quality station location (decimal degrees).

**In Reporting**

Y

### SPL_11 - Altitude

**Content**

Altitude of the air quality station location in meters above sea level.

**In Reporting**

Y

### SPL_12 - InletHeight

**Content**

Height of the sampling inlet where air quality measurements are taken (in meters).

**In Reporting**

Y

### SPL_13 - BuildingDistance

**Content**

Horizontal distance from the sampling inlet to the nearest building (in meters).

**In Reporting**

Y

### SPL_14 - KerbDistance

**Content**

Horizontal distance from the sampling inlet to the nearest road kerb (in meters).

**In Reporting**

Y

### SPL_15 - EmissionSourceDistance

**Content**

Horizontal distance from the main emission source (in meters).

**In Reporting**

Y

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

