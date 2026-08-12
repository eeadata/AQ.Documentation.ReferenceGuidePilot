# ObservationMeasurementResultPNSD

```{image} ../_static/table-icons/ObservationMeasurementResultPNSD.png
:alt: ObservationMeasurementResultPNSD
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
| OMP_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) |  | Y |
| OMP_02 | AssessmentMethodId | varchar(50) | string | PK |  |  | Y |
| OMP_03 | Start | datetime | datetime | PK |  |  | Y |
| OMP_04 | LowerRange | int | numeric | PK |  |  | Y |
| OMP_05 | PollutantId | int | numeric |  | [pollutant](https://dd.eionet.europa.eu/vocabulary/aq/pollutant/view) |  | Y |
| OMP_06 | End | datetime | datetime |  |  |  | Y |
| OMP_07 | Value | decimal(10,2) | numeric |  |  |  | Y |
| OMP_08 | Unit | varchar(10) | string |  | [concentration](https://dd.eionet.europa.eu/vocabulary/uom/concentration/) |  | Y |
| OMP_09 | Validity | int | numeric |  | [observationvalidity](https://dd.eionet.europa.eu/vocabulary/aq/observationvalidity/view) |  | Y |
| OMP_10 | Verification | int | numeric |  | [observationverification](https://dd.eionet.europa.eu/vocabulary/aq/observationverification/view) |  | Y |
| OMP_11 | TimeResolution | varchar(10) | string |  | [primaryObservation](https://dd.eionet.europa.eu/vocabulary/aq/primaryObservation/view) |  | Y |
| OMP_12 | ResultTime | datetime | datetime |  |  |  | Y |
| OMP_13 | UpperRange | int | numeric |  |  |  | Y |
| OMP_14 | Temperature | decimal(5,2) | numeric |  |  |  | Y |
| OMP_15 | RelativeHumidity | decimal(5,2) | numeric |  |  |  | Y |
| OMP_16 | Pressure | decimal(5,2) | numeric |  |  |  | Y |
| OMP_17 | Inversion | varchar(20) | string |  | [PNSDinversion](https://dd.eionet.europa.eu/vocabulary/aq/PNSDinversion) |  | Y |

## Attribute details

### OMP_01 - CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### OMP_02 - AssessmentMethodId

**Content**

Identifier of the assessment method (sampling point), given by data provider.

**Remarks**

It will be cross-checked against the SamplingPoint table.

**In Reporting**

Y

### OMP_03 - Start

**Content**

Start date and time of the measurement period.

**Remarks**

Start must be provided with time zone information.

**In Reporting**

Y

### OMP_04 - LowerRange

**Content**

Lower range of PNSD bin.

**In Reporting**

Y

### OMP_05 - PollutantId

**Content**

Code of the air pollutant being measured, as per Data Dictionary standards.

**Remarks**

End must be provided with time zone information.

**In Reporting**

Y

### OMP_06 - End

**Content**

End date and time of the measurement period.

**In Reporting**

Y

### OMP_07 - Value

**Content**

Measured concentration or level of the air pollutant.

**In Reporting**

Y

### OMP_08 - Unit

**Content**

Unit of measurement for the air pollution level (e.g., &micro;g/m&sup3;).

**In Reporting**

Y

### OMP_09 - Validity

**Content**

Indicator of whether the measurement data is valid or not.

**In Reporting**

Y

### OMP_10 - Verification

**Content**

Information based on verification flags found in reported time series.

**In Reporting**

Y

### OMP_11 - TimeResolution

**Content**

Time resolution of the reported measurement observations (e.g., hourly, daily).

**In Reporting**

Y

### OMP_12 - ResultTime

**Content**

Time at which the result was generated or recorded.

**In Reporting**

Y

### OMP_13 - UpperRange

**Content**

Upper range of PNSD bin.

**In Reporting**

Y

### OMP_14 - Temperature

**Content**

Temperature measured along tihe PNSD (deg Celsius).

**In Reporting**

Y

### OMP_15 - RelativeHumidity

**Content**

Relative humidity measured along tihe PNSD (%).

**In Reporting**

Y

### OMP_16 - Pressure

**Content**

Pressure measured along tihe PNSD (hPa).

**In Reporting**

Y

### OMP_17 - Inversion

**Content**

Inversion method used by country (code list flag).

**In Reporting**

Y

