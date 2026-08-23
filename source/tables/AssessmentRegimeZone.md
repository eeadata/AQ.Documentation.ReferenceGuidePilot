# AssessmentRegimeZone

```{image} ../_static/table-icons/AssessmentRegimeZone.png
:alt: AssessmentRegimeZone
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
| ARZ_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-01-countrycode) |
| ARZ_02 | AssessmentRegimeId | varchar(50) | string | PK |  | ComplianceAssessmentMethod | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-02-assessmentregimeid) |
| ARZ_03 | ZoneId | varchar(50) | string |  |  | ZoneGeometry | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-03-zoneid) |
| ARZ_04 | ZoneNationalCode | varchar(50) | string |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-04-zonenationalcode) |
| ARZ_05 | ZoneArea | decimal(10,2) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-05-zonearea) |
| ARZ_06 | ZoneCategory | varchar(20) | string |  | [zonecategory](https://dd.eionet.europa.eu/vocabulary/aq/zonecategory/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-06-zonecategory) |
| ARZ_07 | ZoneType | varchar(20) | string |  | [zonetype](https://dd.eionet.europa.eu/vocabulary/aq/zonetype/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-07-zonetype) |
| ARZ_08 | ZoneName | varchar(150) | string |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-08-zonename) |
| ARZ_09 | PollutantId | int | numeric |  | [pollutant](https://dd.eionet.europa.eu/vocabulary/aq/pollutant/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-09-pollutantid) |
| ARZ_10 | ProtectionTarget | varchar(50) | string |  | [protectiontarget](https://dd.eionet.europa.eu/vocabulary/aq/protectiontarget/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-10-protectiontarget) |
| ARZ_11 | ObjectiveType | varchar(50) | string |  | [objectivetype](https://dd.eionet.europa.eu/vocabulary/aq/objectivetype/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-11-objectivetype) |
| ARZ_12 | ReportingMetric | varchar(50) | string |  | [reportingmetric](https://dd.eionet.europa.eu/vocabulary/aq/reportingmetric/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-12-reportingmetric) |
| ARZ_13 | AssessmentThresholdExceedance | varchar(20) | string |  | [assessmentthresholdexceedance](https://dd.eionet.europa.eu/vocabulary/aq/assessmentthresholdexceedance/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-13-assessmentthresholdexceedance) |
| ARZ_14 | PostponementYear | int | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-14-postponementyear) |
| ARZ_15 | FixedMeasurementReduction | bit | boolean |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-15-fixedmeasurementreduction) |
| ARZ_16 | ZoneResidentPopulationYear | int | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-16-zoneresidentpopulationyear) |
| ARZ_17 | ZoneResidentPopulation | int | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-17-zoneresidentpopulation) |
| ARZ_18 | ClassificationYear | int | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-18-classificationyear) |
| ARZ_19 | ClassificationDocumentId | varchar(150) | string |  |  | Documentation | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-19-classificationdocumentid) |
| ARZ_20 | Country | varchar(20) | string |  |  |  | N |
| ARZ_21 | ReportingYear | int | numeric |  |  |  | N |
| ARZ_22 | Pollutant | varchar(50) | string |  |  |  | N |
| ARZ_23 | RequiredFixedSamplingPoints | int | numeric |  |  |  | N |
| ARZ_24 | ReportedFixedSamplingPoints | int | numeric |  |  |  | N |
| ARZ_25 | RequiredFixedRandomSamplingPoints | int | numeric |  |  |  | N |
| ARZ_26 | ReportedFixedRandomSamplingPoints | int | numeric |  |  |  | N |
| ARZ_27 | RequiredIndicativeSamplingPoints | int | numeric |  |  |  | N |
| ARZ_28 | ReportedIndicativeSamplingPoints | int | numeric |  |  |  | N |
| ARZ_29 | RequiredObjectiveEstimation | int | numeric |  |  |  | N |
| ARZ_30 | ReportedObjectiveEstimation | int | numeric |  |  |  | N |
| ARZ_31 | SRSCoverage | decimal(7,2) | numeric |  |  |  | N |
| ARZ_32 | RequiredModels | int | numeric |  |  |  | N |
| ARZ_33 | ReportedModels | int | numeric |  |  |  | N |
| ARZ_34 | ModellingResultCoverage | decimal(7,2) | numeric |  |  |  | N |
| ARZ_35 | AREZoneExceedanceStatus | bit | boolean |  |  |  | N |
| ARZ_36 | ExccedanceAreaCoverage | decimal(7,2) | numeric |  |  |  | N |
| ARZ_37 | ReportedNumberOfMeasures | int | numeric |  |  |  | N |
| ARZ_38 | Deletion | bit | boolean |  |  |  | N |

```{note}
`Country`, `ReportingYear`, `Pollutant`, `RequiredFixedSamplingPoints`, `ReportedFixedSamplingPoints`, `RequiredFixedRandomSamplingPoints`, `ReportedFixedRandomSamplingPoints`, `RequiredIndicativeSamplingPoints`, `ReportedIndicativeSamplingPoints`, `RequiredObjectiveEstimation`, `ReportedObjectiveEstimation`, `SRSCoverage`, `RequiredModels`, `ReportedModels`, `ModellingResultCoverage`, `AREZoneExceedanceStatus`, `ExccedanceAreaCoverage`, `ReportedNumberOfMeasures` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### ARZ_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-01-countrycode)

### ARZ_02 - AssessmentRegimeId

**Content**

Identifier of the air quality assessment regime, given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-02-assessmentregimeid)

### ARZ_03 - ZoneId

**Content**

Identifier of the air quality zone, given by data provider.

**Remarks**

It will be cross-checked against the ZoneGeometry table.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-03-zoneid)

### ARZ_04 - ZoneNationalCode

**Content**

Unique identifier of the air quality zone, given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-04-zonenationalcode)

### ARZ_05 - ZoneArea

**Content**

Total area of the air quality zone.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-05-zonearea)

### ARZ_06 - ZoneCategory

**Content**

Category of the air quality zone (aq zone or nuts) - new code list

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-06-zonecategory)

### ARZ_07 - ZoneType

**Content**

Type of air quality zone (e.g., agglomeration and non-agglomeration).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-07-zonetype)

### ARZ_08 - ZoneName

**Content**

Geographical name of the air quality zone.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-08-zonename)

### ARZ_09 - PollutantId

**Content**

Code of the air pollutant for which the assessment is being conducted.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-09-pollutantid)

### ARZ_10 - ProtectionTarget

**Content**

Protection target for air quality (e.g., human health, vegetation).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-10-protectiontarget)

### ARZ_11 - ObjectiveType

**Content**

Type of environmental objective related to air quality assessment.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-11-objectivetype)

### ARZ_12 - ReportingMetric

**Content**

Metric corresponding to the standard (objective type)

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-12-reportingmetric)

### ARZ_13 - AssessmentThresholdExceedance

**Content**

Status indicating whether an assessment threshold has been exceeded.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-13-assessmentthresholdexceedance)

### ARZ_14 - PostponementYear

**Content**

Year of postponement applied to the air quality zone, pollutant, target, objective and metric/aggregation.

**Remarks**

PostponementYear relates to the postponement of attainment deadline and exemption from the obligation to apply certain limit values foreseen in the recasted Air Quality Directive 2024/2881 art. 18.
Leaving this attribute blank will mean that no postponement does apply.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-14-postponementyear)

### ARZ_15 - FixedMeasurementReduction

**Content**

Use of indicative measurements and/or modelling to reduce fixed measurement network.

**Remarks**

Y/N.

FixedSPOReduction relates to the reduction of the number of sampling points for fixed measurements, which may be reduced by up to 50% under certain conditions as foreseen in the recasted Air Quality Directive 2024/2881 art. 9 &sect;3.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-15-fixedmeasurementreduction)

### ARZ_16 - ZoneResidentPopulationYear

**Content**

Reference year for the resident population data in the zone.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-16-zoneresidentpopulationyear)

### ARZ_17 - ZoneResidentPopulation

**Content**

Number of people residing within the air quality zone.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-17-zoneresidentpopulation)

### ARZ_18 - ClassificationYear

**Content**

The year of the last classification of the pollution level in the zone.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-18-classificationyear)

### ARZ_19 - ClassificationDocumentId

**Content**

Identifier of the report detailing the classification procedure given by data provider.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/AssessmentRegimeZone.html#arz-19-classificationdocumentid)

### ARZ_20 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_21 - ReportingYear

**Content**

Year for which the data/info has been reported.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_22 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_23 - RequiredFixedSamplingPoints

**Content**

Number of fixed SPO required based on the criteria laid down in the Air Quality Directive.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_24 - ReportedFixedSamplingPoints

**Content**

Number of fixed SPO effectively operational and reporting.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_25 - RequiredFixedRandomSamplingPoints

**Content**

Number of fixed random SPO required based on the criteria laid down in the Air Quality Directive (NOTE that in recast directive, fixedrandom = fixed)

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_26 - ReportedFixedRandomSamplingPoints

**Content**

Number of fixed random SPO effectively operational and reporting.  (NOTE that in recast directive, fixedrandom = fixed)

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_27 - RequiredIndicativeSamplingPoints

**Content**

Number of indicative SPO required based on the criteria laid down in the Air Quality Directive.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_28 - ReportedIndicativeSamplingPoints

**Content**

Number of indicative SPO effectively operational and reporting.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_29 - RequiredObjectiveEstimation

**Content**

Number of objective estimation required based on the criteria laid down in the Air Quality Directive.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_30 - ReportedObjectiveEstimation

**Content**

Number of objective estimation effectively reported.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_31 - SRSCoverage

**Content**

Area covered by the different SPO in the zone (in km2).

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_32 - RequiredModels

**Content**

Number of models required based on the criteria laid down in the Air Quality Directive.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_33 - ReportedModels

**Content**

Number of models effectively reported.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_34 - ModellingResultCoverage

**Content**

Area covered by the different models in the zone.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_35 - AREZoneExceedanceStatus

**Content**

Indicator of the zone level exceedance status.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_36 - ExccedanceAreaCoverage

**Content**

Area of exceedance within the zone in km2.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_37 - ReportedNumberOfMeasures

**Content**

Number of measures reported for this Assessment Regime Zone in the reported plans.

**In Reporting**

N - No corresponding reporting attribute.

### ARZ_38 - Deletion

**Content**

Flag to indicate that this element must be deleted..

**In Reporting**

N - No corresponding reporting attribute.

