# HUG Patient Example - HUG FHIR Implementation Guide - Formation v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HUG Patient Example**

## Example Patient: HUG Patient Example

-------

**French**

-------

Profil: [CH Core Patient](http://fhir.ch/ig/ch-core/6.0.0/StructureDefinition-ch-core-patient.html)

Alice Exemple Female, Date de Naissance :1990-05-15

-------

-------

**English**

-------

Profile: [CH Core Patient](http://fhir.ch/ig/ch-core/6.0.0/StructureDefinition-ch-core-patient.html)

Alice Exemple Female, DoB: 1990-05-15

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "hug-patient-demo",
  "meta" : {
    "profile" : ["http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"]
  },
  "name" : [{
    "family" : "Exemple",
    "given" : ["Alice"]
  }],
  "gender" : "female",
  "birthDate" : "1990-05-15"
}

```
