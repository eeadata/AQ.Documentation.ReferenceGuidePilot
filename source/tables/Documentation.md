# Documentation

```{image} ../_static/table-icons/Documentation.png
:alt: Documentation
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
| DOC_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-01-countrycode) |
| DOC_02 | DataTable | varchar(50) | string | PK | [datatable](https://dd.eionet.europa.eu/vocabulary/aq/datatable) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-02-datatable) |
| DOC_03 | DocumentType | varchar(50) | string | PK | [documenttype](https://dd.eionet.europa.eu/vocabulary/aq/documenttype) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-03-documenttype) |
| DOC_04 | DocumentId | varchar(500) | string | PK |  | MeasurementStation<br>SamplingProcess<br>ModelObjectiveEstimation<br>AssessmentRegimeZone<br>CompliancePlanLink<br>SourceApportionment<br>PollutionLevelAdjustment | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-04-documentid) |
| DOC_07 | ReportingTime | datetime | datetime | PK |  |  | N |
| DOC_06 | DocumentOriginalURL | varchar(100) | string |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-06-documentoriginalurl) |
| DOC_08 | Country | varchar(20) | string |  |  |  | N |
| DOC_09 | DocumentURL | varchar(50) | string |  |  |  | N |
| DOC_10 | Deletion | bit | boolean |  |  |  | N |

```{note}
`ReportingTime`, `Country`, `DocumentURL` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

```{note}
Attributes with ReportNet3 data type `date` or `datetime` shall use the ISO 8601 format. Date-time values may include a local UTC offset.
```

## Attribute details

### DOC_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-01-countrycode)

### DOC_02 - DataTable

**Content**

Table name of origin.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-02-datatable)

### DOC_03 - DocumentType

**Content**

Document content type.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-03-documenttype)

### DOC_04 - DocumentId

**Content**

Identifier of the document given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-04-documentid)

### DOC_07 - ReportingTime

**Content**

Date and time when the information is submitted.

**In Reporting**

N - No corresponding reporting attribute.

### DOC_06 - DocumentOriginalURL

**Content**

URL where doc is stored (MS)

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/Documentation.html#doc-06-documentoriginalurl)

### DOC_08 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### DOC_09 - DocumentURL

**Content**

URL where document is stored (EEA)

**In Reporting**

N - No corresponding reporting attribute.

### DOC_10 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

