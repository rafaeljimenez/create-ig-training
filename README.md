# HUG FHIR Implementation Guide — Training

A hands-on project to learn how to create a **FHIR Implementation Guide (IG)** for the **Hôpitaux universitaires de Genève (HUG)**, following Swiss interoperability standards.

Based on the HL7 Europe Working Group Meeting training in Málaga 2026, this project demonstrates how to define, validate, and publish FHIR artifacts using **FHIR Shorthand (FSH)**, **SUSHI**, and the **FHIR IG Publisher**.

The Implementation Guide is based on:

- **FHIR R4 (4.0.1)** — International FHIR standard.
- **CH Core (6.0.0)** — Swiss FHIR base profiles.
- **HUG-specific profiles** — Additional constraints for HUG use cases.

**Prerequisite:** A GitHub account. The public training workflow runs entirely on GitHub, without requiring local installation.

Original training material: https://nriss.github.io/create-ig-training/

---

## 1. Project overview

This project creates a demonstration Implementation Guide for HUG, focusing on the representation of patient allergies.

The goal is to demonstrate how HUG-specific FHIR profiles can inherit existing Swiss profiles while introducing additional requirements.

### FHIR profile hierarchy

FHIR R4  
↓  
CH Core 6.0.0  
↓  
HUG Training IG  
↓  
HUGAllergyIntolerance

The `HUGAllergyIntolerance` profile derives from `CHCoreAllergyIntolerance` and introduces additional constraints.

All clinical data included in this repository is **synthetic and intended for training purposes only**.

This repository is not an official HUG interoperability specification.

## 2. IG configuration

The Implementation Guide uses the following configuration:

| Property | Value |
|---|---|
| IG ID | `org.fhir.ch.hug-training` |
| IG Name | `HUGTrainingIG` |
| Version | `0.1.0` |
| FHIR Version | `4.0.1` |
| Jurisdiction | Switzerland (CH) |
| Status | Draft |
| Dependency | `ch.fhir.ig.ch-core: 6.0.0` |
| Canonical URL | `https://example.org/ig/hug-training` |

The canonical URL is a placeholder for the training project and must be replaced with an approved URL before official publication.

## 3. How to use this template

### Step 1 — Fork the repository

1. Fork the original repository to your GitHub account.
2. Name the repository `hug-fhir-ig-training`.
3. Keep the repository public if using the public FHIR IG Builder.

**Security:** Only publish synthetic examples and non-confidential specifications. For internal HUG development, use an approved private repository and internal build infrastructure.

### Step 2 — Configure the Implementation Guide

Update `sushi-config.yaml` with the HUG configuration.

Key properties:

- `id`: `org.fhir.ch.hug-training`
- `canonical`: `https://example.org/ig/hug-training`
- `name`: `HUGTrainingIG`
- `fhirVersion`: `4.0.1`
- `jurisdiction`: Switzerland
- `dependencies`: `ch.fhir.ig.ch-core: 6.0.0`

Update `ig.ini` to reference the generated ImplementationGuide resource:

`ig = fsh-generated/resources/ImplementationGuide-org.fhir.ch.hug-training.json`

### Step 3 — Configure automated IG generation

Install the [FHIR IG Builder](https://github.com/apps/fhir-ig-builder) GitHub application on your public fork.

The [FHIR Auto IG Builder](https://github.com/FHIR/auto-ig-builder) automatically generates the IG following repository commits.

Generated IG:

`https://build.fhir.org/ig/<account>/hug-fhir-ig-training/branches/main`

Replace `<account>` with your GitHub username and adapt the branch if necessary.

Build logs and generated guides are available at https://build.fhir.org/ig/.

### Step 4 — Create HUG FHIR artifacts

Create the following FSH files in `input/fsh/`.

| File | Description |
|---|---|
| `HUGAllergyIntolerance.fsh` | HUG allergy profile derived from CH Core |
| `HUGAllergenCodeSystem.fsh` | Demonstration allergen codes |
| `HUGAllergenValueSet.fsh` | Allowed codes for the HUG allergy profile |
| `HUGPatientExample.fsh` | Synthetic patient instance |
| `HUGAllergyExample.fsh` | Synthetic allergy instance referencing the patient |

The profile defines additional requirements, including mandatory clinical status and allergy coding.

The CodeSystem and ValueSet demonstrate terminology constraints. Their local demonstration codes are not intended for production clinical use.

### Step 5 — Generate and validate the IG

Commit the FSH artifacts to the repository.

The generation process uses:

1. **SUSHI** to convert FSH definitions into FHIR JSON resources.
2. **FHIR IG Publisher** to validate artifacts and generate the IG website.
3. **FHIR Auto IG Builder** to automate the process on GitHub.

After generation, inspect:

- The generated IG website.
- The **Artifacts** page.
- The validation and QA report.
- The generated StructureDefinitions, CodeSystem, ValueSet and example instances.

Review and resolve validation errors before considering the guide complete.

### Step 6 — Test profile conformance

Validate synthetic instances against `HUGAllergyIntolerance`.

Suggested test cases:

| Test case | Expected result |
|---|---|
| Valid allergy with an allowed code and required fields | Valid |
| Allergy without a required code | Invalid |
| Allergy with a code outside the required ValueSet | Invalid |
| Allergy violating an inherited CH Core constraint | Invalid |

A valid instance must satisfy both the HUG-specific constraints and all applicable inherited CH Core constraints.

## 4. Repository structure

The main files and directories are:

- `sushi-config.yaml` — IG configuration, metadata, dependencies, pages and menu.
- `ig.ini` — IG Publisher configuration.
- `input/fsh/` — FSH profiles, CodeSystems, ValueSets and instances.
- `input/pagecontent/` — Narrative documentation written in Markdown.
- `input/ignoreWarnings.txt` — Configuration for suppressed validation warnings.
- `input/translations/` — Translation files, where configured.
- `.github/workflows/` — GitHub Actions workflows, if configured.

## 5. Future HUG use cases

The same approach can be extended to additional interoperability scenarios:

- Patient identity and demographic information.
- Medication requests and electronic prescriptions.
- Clinical document exchange through the Swiss Electronic Patient Record (DEP).
- Patient summaries based on CH IPS.
- Integration with CARA and other Swiss healthcare systems.

These use cases would require additional profiles, terminology bindings, validation rules and alignment with the relevant Swiss Implementation Guides.

## 6. References

- [Original IG training — Málaga 2026](https://nriss.github.io/create-ig-training/)
- [HL7 FHIR R4](https://hl7.org/fhir/R4/)
- [CH Core Implementation Guide](https://fhir.ch/ig/ch-core/6.0.0/)
- [FHIR Shorthand documentation](https://fshschool.org/)
- [SUSHI configuration](https://fshschool.org/docs/sushi/configuration/)
- [FHIR IG Builder](https://github.com/apps/fhir-ig-builder)
- [FHIR Auto IG Builder](https://github.com/FHIR/auto-ig-builder)

## 7. Credits

Adapted from the [HL7 Europe IG training](https://nriss.github.io/create-ig-training/) presented during the HL7 Europe Working Group Meeting, Málaga 2026.

Original template based on [ansforge/IG-modele](https://github.com/ansforge/IG-modele).

**Publisher (training):** Hôpitaux universitaires de Genève (HUG)  
**Status:** Draft — Demonstration and training only  
**Version:** 0.1.0
