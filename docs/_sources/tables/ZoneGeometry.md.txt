# ZoneGeometry

```{image} ../_static/table-icons/ZoneGeometry.png
:alt: ZoneGeometry
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
| ZGE_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ZoneGeometry.html#zge-01-countrycode) |
| ZGE_02 | ZoneId | varchar(20) | string | PK |  | AssessmentRegimeZone | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ZoneGeometry.html#zge-02-zoneid) |
| ZGE_04 | ZoneGeometry | ??? | ??? |  |  |  | N |
| ZGE_03 | ZoneGeometryGeoJson | varbinary | geometry |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ZoneGeometry.html#zge-03-zonegeometrygeojson) |
| ZGE_05 | Country | varchar(20) | string |  |  |  | N |
| ZGE_06 | Deletion | bit | boolean |  |  |  | N |

```{note}
`ZoneGeometry`, `Country` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### ZGE_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ZoneGeometry.html#zge-01-countrycode)

### ZGE_02 - ZoneId

**Content**

Identifier of the air quality zone, given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ZoneGeometry.html#zge-02-zoneid)

### ZGE_04 - ZoneGeometry

**Content**

???

**In Reporting**

N - No corresponding reporting attribute.

### ZGE_03 - ZoneGeometryGeoJson

**Content**

Geospatial representation of the air quality zone (e.g., polygon geometry).

**Remarks**

It is allowed to report zone geometries in coordinate systems with the following EPSG codes:
- 3035,
- 4258,
- 4326.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ZoneGeometry.html#zge-03-zonegeometrygeojson)

### ZGE_05 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### ZGE_06 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

