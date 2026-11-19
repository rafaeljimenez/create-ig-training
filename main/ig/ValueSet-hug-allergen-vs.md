# HUG Allergen Value Set - HUG FHIR Implementation Guide - Formation v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HUG Allergen Value Set**

## ValueSet: HUG Allergen Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/hug-training/ValueSet/hug-allergen-vs | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:HUGAllergenVS |

 
Allergenes autorises pour la demonstration 

 **References** 

* [HUG Allergy Intolerance](StructureDefinition-hug-allergy-intolerance.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "hug-allergen-vs",
  "url" : "https://example.org/ig/hug-training/ValueSet/hug-allergen-vs",
  "version" : "0.1.0",
  "name" : "HUGAllergenVS",
  "title" : "HUG Allergen Value Set",
  "status" : "draft",
  "date" : "2026-11-19T10:52:17+00:00",
  "publisher" : "Hôpitaux universitaires de Genève (démonstration)",
  "contact" : [{
    "name" : "Hôpitaux universitaires de Genève (démonstration)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hug.ch"
    }]
  }],
  "description" : "Allergenes autorises pour la demonstration",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CH",
      "display" : "Switzerland"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://example.org/ig/hug-training/CodeSystem/hug-allergen-cs",
      "version" : "0.1.0"
    }]
  }
}

```
