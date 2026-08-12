# SpatialRepresentativeness

```{image} ../_static/table-icons/SpatialRepresentativeness.png
:alt: SpatialRepresentativeness
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
| SRS_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | Y |
| SRS_02 | SRSId | varchar(50) | string | PK |  | ComplianceAssessmentMethod | Y |
| SRS_03 | SRSApplicationId | varchar(50) | string | PK |  | SRSInline<br>SRSExternal | Y |
| SRS_04 | SRSApplication | varchar(50) | string |  | [SRapplication](https://dd.eionet.europa.eu/vocabulary/aq/SRapplication) |  | Y |
| SRS_05 | ResultEncoding | varchar(10) | string |  | [resultencoding](https://dd.eionet.europa.eu/vocabulary/aq/resultencoding/view) |  | Y |
| SRS_06 | RepresentativenessAssessmentMethodId | varchar(50) | string |  |  | ModelObjectiveEstimation | Y |
| SRS_07 | Country | varchar(20) | string |  |  |  | N |
| SRS_08 | Deletion | bit | boolean |  |  |  | N |

```{note}
`Country` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### SRS_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### SRS_02 - SRSId

**Content**

Identifier of the area representing the sampling point's measurement spatial coverage or the extent of the exceedance, given by data provider.

**In Reporting**

Y

### SRS_03 - SRSApplicationId

**Content**

Identifier pointing to the specific spatial representativeness given by data provider.

**Remarks**

The same SRSId can have several SRSApplication_Id (e.g. one for the SPO representativeness area and one for the exceedance extent).

**In Reporting**

Y

### SRS_04 - SRSApplication

**Content**

Application of spatial representativeness (SPO representativeness or the exceedance extent).

**Remarks**

New code list (SPO representativeness area, exceedance extent area).

**In Reporting**

Y

### SRS_05 - ResultEncoding

**Content**

Encoding method used for model results ('internal' or 'external').

**In Reporting**

Y

### SRS_06 - RepresentativenessAssessmentMethodId

**Content**

Identifier of the assessment method (model) used for defining the area (either representativeness or extent), given by data provider.

**Remarks**

AssessmentMethodId is a model or OBE identifier that points to the method (model/OBE in the Model table) which was used for the assessments of the SPO representativeness area or the exceedance extent.

**In Reporting**

Y

### SRS_07 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### SRS_08 - Deletion

**Content**

Flag to indicate that this element must be deleted.

**In Reporting**

N - No corresponding reporting attribute.

