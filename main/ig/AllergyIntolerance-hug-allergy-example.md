# HUG Allergy Example - HUG FHIR Implementation Guide - Formation v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HUG Allergy Example**

## Example AllergyIntolerance: HUG Allergy Example

-------

**French**

-------

Profil: [HUG Allergy Intolerance](StructureDefinition-hug-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Latex

**patient**: [Alice Exemple Female, Date de Naissance :1990-05-15](Patient-hug-patient-demo.md)

-------

**English**

-------

Profile: [HUG Allergy Intolerance](StructureDefinition-hug-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Latex

**patient**: [Alice Exemple Female, DoB: 1990-05-15](Patient-hug-patient-demo.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "hug-allergy-example",
  "meta" : {
    "profile" : ["https://example.org/ig/hug-training/StructureDefinition/hug-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://example.org/ig/hug-training/CodeSystem/hug-allergen-cs",
      "code" : "latex",
      "display" : "Latex"
    }]
  },
  "patient" : {
    "reference" : "Patient/hug-patient-demo"
  }
}

```
