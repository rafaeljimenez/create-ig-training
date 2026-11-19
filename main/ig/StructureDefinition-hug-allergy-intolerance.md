# HUG Allergy Intolerance - HUG FHIR Implementation Guide - Formation v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HUG Allergy Intolerance**

## Resource Profile: HUG Allergy Intolerance 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/hug-training/StructureDefinition/hug-allergy-intolerance | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:HUGAllergyIntolerance |

 
Profil de démonstration HUG pour les allergies 

**Utilisations:**

* Exemples pour ce/t/te Profil: [AllergyIntolerance/hug-allergy-example](AllergyIntolerance-hug-allergy-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.ch.hug-training|current/StructureDefinition/StructureDefinition-hug-allergy-intolerance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hug-allergy-intolerance.csv), [Excel](StructureDefinition-hug-allergy-intolerance.xlsx), [Schematron](StructureDefinition-hug-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hug-allergy-intolerance",
  "url" : "https://example.org/ig/hug-training/StructureDefinition/hug-allergy-intolerance",
  "version" : "0.1.0",
  "name" : "HUGAllergyIntolerance",
  "title" : "HUG Allergy Intolerance",
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
  "description" : "Profil de démonstration HUG pour les allergies",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CH",
      "display" : "Switzerland"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-allergyintolerance|6.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "min" : 1
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://example.org/ig/hug-training/ValueSet/hug-allergen-vs|0.1.0"
      }
    }]
  }
}

```
