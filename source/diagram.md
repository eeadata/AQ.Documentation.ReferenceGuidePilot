# Data model diagram

The following diagram provides an overview of the Reportnet air quality reference data model (v502).

```{image} _static/r3_reference_schema.png
:alt: Reportnet 3 reference data model
:align: center
:width: 100%
```

```{note}
The numbering follows the table numbering used in the AQ eReporting data model, allowing corresponding tables to be identified consistently across both guides. The numbers are therefore not always consecutive: missing numbers correspond to reporting tables that are not included in the Reference data model. Additional Reference tables related to an existing numbered table are identified using letter suffixes (`A`, `B`, `C`, etc.).

`ObservationMeasurementResultPNSD` is documented in the Reference Guide but is not currently included in the diagram, as its position and relationships within the data model are still being clarified.
```

## Tables shown in the diagram

| No  | Table                                           |
| --- | ----------------------------------------------- |
| 1   | {doc}`tables/Authority`                         |
| 2   | {doc}`tables/MeasurementStation`                |
| 3   | {doc}`tables/SamplingPoint`                     |
| 4   | {doc}`tables/SamplingPointLocation`             |
| 5   | {doc}`tables/SamplingProcess`                   |
| 6   | {doc}`tables/ModelObjectiveEstimation`          |
| 6A  | {doc}`tables/MOEResultGrid`                     |
| 6B  | {doc}`tables/MOEResultInventory`                |
| 7A  | {doc}`tables/ObservationMeasurementStatistics` |
| 7B  | {doc}`tables/ObservationMeasurementInventory`  |
| 10  | {doc}`tables/ZoneGeometry`                      |
| 10A | {doc}`tables/ZoneGeometryGrid`                  |
| 11  | {doc}`tables/AssessmentRegimeZone`              |
| 12  | {doc}`tables/ComplianceAssessmentMethod`        |
| 13  | {doc}`tables/SpatialRepresentativeness`         |
| 13A | {doc}`tables/SRSGrid`                           |
| 13B | {doc}`tables/SRSInventory`                      |
| 16  | {doc}`tables/PollutionLevelAdjustment`          |
| 17  | {doc}`tables/CompliancePlanLink`                |
| 17A | {doc}`tables/Plan`                              |
| 18  | {doc}`tables/PlanScenario`                      |
| 19  | {doc}`tables/SourceApportionment`               |
| 20  | {doc}`tables/ScenarioMeasure`                   |
| 21  | {doc}`tables/Measure`                           |
| 22  | {doc}`tables/Documentation`                     |
