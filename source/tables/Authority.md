# Authority

```{image} ../_static/table-icons/Authority.png
:alt: Authority
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
| AUT_01 | CountryCode | varchar(2) | string | PK | [countries](https://dd.eionet.europa.eu/vocabulary/common/countries) | | Y |
| AUT_02 | AuthorityInstanceId | varchar(50) | string | PK | | | Y |
| AUT_03 | AuthorityRole | varchar(50) | string | PK | [authorityobject](https://dd.eionet.europa.eu/vocabulary/aq/authorityobject) | | Y |
| AUT_04 | Email | varchar(50) | string | PK | | | Y |
| AUT_11 | ReportingTime | datetime | datetime | PK | | | N |
| AUT_05 | AuthorityInstance | varchar(20) | string | | [authorityinstance](https://dd.eionet.europa.eu/vocabulary/aq/authorityinstance) | | Y |
| AUT_06 | AuthorityName | varchar(150) | string | | | | Y |
| AUT_07 | AuthorityURL | varchar(150) | string | | | | Y |
| AUT_08 | AuthorityAddress | varchar(150) | string | | | | Y |
| AUT_09 | PersonName | varchar(150) | string | | | | Y |
| AUT_10 | AuthorityStatus | varchar(10) | string | | [aq/authoritystatus/](https://dd.eionet.europa.eu/vocabulary/aq/authoritystatus/) | | Y |
| AUT_12 | Country | varchar(20) | string | | | | N |
| AUT_13 | Deletion | bit | boolean | | | | N |

```{note}
`ReportingTime`, `Country` and `Deletion` are Reference attributes without a corresponding attribute in the reporting data model.
```

## Attribute details

### AUT_01 – CountryCode

**Content**

Country or territory ISO2 code.

**In Reporting**

Y

### AUT_02 – AuthorityInstanceId

**Content**

Unique identifier depending on authority instance, e.g. ZoneId or NUTS code.

**Remarks**

If AuthorityInstance is zone then AuthorityInstanceId is a ZoneId, if nuts then nuts code, if network - network id, etc.

It will be cross-checked against ARZ, STA, SPO or MOD table depending on the instance level.

**In Reporting**

Y

### AUT_03 – AuthorityRole

**Content**

A general object identifier or classification (topic e.g. reporting, assessment etc.).

**In Reporting**

Y

### AUT_04 – Email

**Content**

Email address of the contact person.

**Remarks**

Email have to be filled in but reporting details on person’s email are necessary only for reporters who need access to the ReportNet3.

An informed consent statement will be attached clarifying that this data will be used for establishing access rights and filling it in means both access request and consent for data use.

In other cases the attribute should be filled in as "Not Reported" or with organisation generic email address.

**In Reporting**

Y

### AUT_11 – ReportingTime

**Content**

Date and time when the information is submitted..

**In Reporting**

N – No corresponding reporting attribute.

### AUT_05 – AuthorityInstance

**Content**

Name of the authority instance: zone, network, nuts0, nuts1, nuts2, nuts3, station, SPO... - new code list

**In Reporting**

Y

### AUT_06 – AuthorityName

**Content**

Name of the institute or organization.

**In Reporting**

Y

### AUT_07 – AuthorityURL

**Content**

Website URL of the institute.

**In Reporting**

Y

### AUT_08 – AuthorityAddress

**Content**

Address of the institute.

**In Reporting**

Y

### AUT_09 – PersonName

**Content**

Name of the contact person in the authority or institute.

**Remarks**

PersonName have to be filled in but reporting details on person’s name are necessary only for reporters who need access to the ReportNet3.

An informed consent statement will be attached clarifying that this data will be used for establishing access rights and filling it in means both access request and consent for data use.

In other cases the attribute should be filled in as "Not Reported".

**In Reporting**

Y

### AUT_10 – AuthorityStatus

**Content**

Status or classification of the authority (e.g., active/inactive) - new code list

**In Reporting**

Y

### AUT_12 – Country

**Content**

Name of the country.

**In Reporting**

N – No corresponding reporting attribute.

### AUT_13 – Deletion

**Content**

Flag to indicate that this element must be deleted..

**In Reporting**

N – No corresponding reporting attribute.
