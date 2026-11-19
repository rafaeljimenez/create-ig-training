# HUG Allergen Code System - HUG FHIR Implementation Guide - Formation v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HUG Allergen Code System**

## CodeSystem: HUG Allergen Code System 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/hug-training/CodeSystem/hug-allergen-cs | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:HUGAllergenCS |

 
Codes fictifs pour l'atelier HUG 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HUG Allergen Value Set](ValueSet-hug-allergen-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hug-allergen-cs",
  "url" : "https://example.org/ig/hug-training/CodeSystem/hug-allergen-cs",
  "version" : "0.1.0",
  "name" : "HUGAllergenCS",
  "title" : "HUG Allergen Code System",
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
  "description" : "Codes fictifs pour l'atelier HUG",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CH",
      "display" : "Switzerland"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "latex",
    "display" : "Latex"
  },
  {
    "code" : "penicillin",
    "display" : "Penicillin"
  },
  {
    "code" : "peanut",
    "display" : "Peanut"
  }]
}

```
