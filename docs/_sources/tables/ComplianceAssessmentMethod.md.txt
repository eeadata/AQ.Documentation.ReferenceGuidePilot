# ComplianceAssessmentMethod

```{image} ../_static/table-icons/ComplianceAssessmentMethod.png
:alt: ComplianceAssessmentMethod
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
| CAM_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-01-countrycode) |
| CAM_03 | AssessmentRegimeId | varchar(50) | string | PK |  | AssessmentRegimeZone | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-03-assessmentregimeid) |
| CAM_04 | DataAggregationProcessId | varchar(50) | string | PK | [aggregationprocess](https://dd.eionet.europa.eu/vocabulary/aq/aggregationprocess/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-04-dataaggregationprocessid) |
| CAM_05 | AssessmentMethodId | varchar(100) | string | PK |  | SamplingPoint<br>SamplingProcess<br>SamplingPointLocation<br>ObservationMeasurementResult<br>ModelObjectiveEstimation<br>MOEResultInline<br>MOEResultExternal | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-05-assessmentmethodid) |
| CAM_02 | ReportingYear | int | numeric | PK |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-02-reportingyear) |
| CAM_15 | AttainmentId | varchar(50) | string |  |  | CompliancePlanLink<br>PollutionLevelAdjustment | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-15-attainmentid) |
| CAM_06 | PollutantId | int | numeric |  | [pollutant](https://dd.eionet.europa.eu/vocabulary/aq/pollutant/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-06-pollutantid) |
| CAM_07 | AssessmentType | varchar(50) | string |  | [assessmenttype](https://dd.eionet.europa.eu/vocabulary/aq/assessmenttype/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-07-assessmenttype) |
| CAM_08 | IsExceedance | varchar(5) | string |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-08-isexceedance) |
| CAM_10 | PollutionLevel | decimal(10,3) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-10-pollutionlevel) |
| CAM_11 | PollutionLevelAdjusted | decimal(10,3) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-11-pollutionleveladjusted) |
| CAM_26 | AbsoluteUncertaintyLimit | decimal(10,2) | numeric |  |  |  | N |
| CAM_12 | RelativeUncertaintyLimit | decimal(10,2) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-12-relativeuncertaintylimit) |
| CAM_13 | AssessmentMQI | decimal(5,2) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-13-assessmentmqi) |
| CAM_14 | CorrectionFlag | bit | boolean |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-14-correctionflag) |
| CAM_16 | SRSId | varchar(50) | string |  |  | SpatialRepresentativeness | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-16-srsid) |
| CAM_17 | PreliminaryReason | varchar(50) | string |  | [exceedancereason](https://dd.eionet.europa.eu/vocabulary/aq/exceedancereason/view) |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-17-preliminaryreason) |
| CAM_18 | Deletion | bit | boolean |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-18-deletion) |
| CAM_09 | DataCoverage | decimal(5,2) | numeric |  |  |  | [Y](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-09-datacoverage) |
| CAM_19 | Country | varchar(20) | string |  |  |  | N |
| CAM_20 | SamplingPointReferenceId | varchar(32) | string |  |  |  | N |
| CAM_21 | Pollutant | varchar(50) | string |  |  |  | N |
| CAM_22 | DataAggregationProcess | varchar(xxx) | string |  |  |  | N |
| CAM_23 | EEAAdjustmentEstimation | ??? | ??? |  |  |  | N |
| CAM_24 | EEAExceedanceAssessment | varchar(5) | string |  |  |  | N |
| CAM_25 | EEAMQIEstimation | ??? | ??? |  |  |  | N |

```{note}
`AbsoluteUncertaintyLimit`, `Country`, `SamplingPointReferenceId`, `Pollutant`, `DataAggregationProcess`, `EEAAdjustmentEstimation`, `EEAExceedanceAssessment` and `EEAMQIEstimation` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### CAM_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-01-countrycode)

### CAM_03 - AssessmentRegimeId

**Content**

Identifier of the air quality assessment regime, given by data provider.

**Remarks**

It will be cross-checked against the AssessmentRegimeZone table.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-03-assessmentregimeid)

### CAM_04 - DataAggregationProcessId

**Content**

Identifier of the process used for aggregating air quality data into statistical values.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-04-dataaggregationprocessid)

### CAM_05 - AssessmentMethodId

**Content**

Identifier of the assessment method used for air quality evaluation, given by data provider.

**Remarks**

Either SamplingPoint or Model/OBE, it will be cross-checked against the SamplingPoint table or the Model table, also - indirectly - against the ObservationMeasurementResult table and/or the ModellingResult tables.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-05-assessmentmethodid)

### CAM_02 - ReportingYear

**Content**

Year for which the data has been reported.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-02-reportingyear)

### CAM_15 - AttainmentId

**Content**

Identifier of the air quality compliance situation, given by data provider (preliminary reason level).

**Remarks**

AttainmentId distinguishes each compliance situation. If there is no exceedance in the zone/assessment regime, there will be only one AttainmentId. If exceedance occurs, if it is caused (most probably) by the same reason and its extent (delineated by sampling point SRAs or modelling results) covers the whole zone, there will be also only one AttainmentId. However, if single exceedance (caused by the same reason) does not cover the whole zone, there will be 2 AttainmentIds - one for the exceedance situation and one for the non-exceedance situation in the same zone/assessment regime. Also - if the exceedances in the same zone/assessment regime are caused by different reasons, there will be more than 1 AttainmentIds.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-15-attainmentid)

### CAM_06 - PollutantId

**Content**

Code of the air pollutant for which the assessment is being conducted.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-06-pollutantid)

### CAM_07 - AssessmentType

**Content**

Classification of assessment methods into common types.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-07-assessmenttype)

### CAM_08 - IsExceedance

**Content**

Statement indicating whether pollution levels exceed environmental objectives.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-08-isexceedance)

### CAM_10 - PollutionLevel

**Content**

Measured or modeled concentration level of the air pollutant.

**Remarks**

AirPollutionLevel must be reported for every AssessmentMethodId.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-10-pollutionlevel)

### CAM_11 - PollutionLevelAdjusted

**Content**

Adjusted concentration level of the air pollutant, accounting for specific corrections.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-11-pollutionleveladjusted)

### CAM_26 - AbsoluteUncertaintyLimit

**Content**

The maximum absolute uncertainty for assessment method (given for measurement).

**In Reporting**

N - No corresponding reporting attribute.

### CAM_12 - RelativeUncertaintyLimit

**Content**

The maximum relative uncertaintyfor assessment method (given for measurement).

**Remarks**

RelativeUncertaintyLimit must be reported for every AssessmentMethodId which refer to sampling points.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-12-relativeuncertaintylimit)

### CAM_13 - AssessmentMQI

**Content**

Modelling Quality Indicator

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-13-assessmentmqi)

### CAM_14 - CorrectionFlag

**Content**

Correction factor for measured values applied (Y/N)

**Remarks**

Y/N. Correction is a string/boolean to be used in order to certify that, in case the SamplingProcess is equivalent to the reference method, the values have been corrected adequately (e.g. PM but also ozone with the cross section).

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-14-correctionflag)

### CAM_16 - SRSId

**Content**

Identifier of the area representing spatial representativeness.

**Remarks**

Identifier linking to either SPO representativeness or to exceedance extent.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-16-srsid)

### CAM_17 - PreliminaryReason

**Content**

Initial justification or reasoning for reported exceedance levels.

**Remarks**

This is crucial for distinguishing between different compliance situations in the same zone/assessment regime and pointing the relevant actions (air quality plans). It does not have to be precise at the first assessment of new exceedance and it can be changed from one year to another.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-17-preliminaryreason)

### CAM_18 - Deletion

**Content**

Flag to indicate that this element and all related information must be deleted..

**Remarks**

Y/N

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-18-deletion)

### CAM_09 - DataCoverage

**Content**

The proportion of the calendar year for which valid measurement data are available, expressed as a percentage.

**Remarks**

One element of DQO (see Directive 2024/2881 Section B.

**In Reporting**

[Y – View reporting attribute](https://eeadata.github.io/AQ.Documentation.ReportingGuide/tables/ComplianceAssessmentMethod.html#cam-09-datacoverage)

### CAM_19 - Country

**Content**

Name of the country.

**In Reporting**

N - No corresponding reporting attribute.

### CAM_20 - SamplingPointReferenceId

**Content**

Reference identifier of the assessment method (sampling point), either re-used or given by data provider following strict rules.

**In Reporting**

N - No corresponding reporting attribute.

### CAM_21 - Pollutant

**Content**

Name of the air pollutant being measured, as per Data Dictionary standards.

**In Reporting**

N - No corresponding reporting attribute.

### CAM_22 - DataAggregationProcess

**Content**

Label of the process of data aggregation into statistical values.

**In Reporting**

N - No corresponding reporting attribute.

### CAM_23 - EEAAdjustmentEstimation

**Content**

???

**In Reporting**

N - No corresponding reporting attribute.

### CAM_24 - EEAExceedanceAssessment

**Content**

 Indicating whether pollution levels exceed environmental objectives based on EEA aggregation values.

**In Reporting**

N - No corresponding reporting attribute.

### CAM_25 - EEAMQIEstimation

**Content**

???

**In Reporting**

N - No corresponding reporting attribute.

