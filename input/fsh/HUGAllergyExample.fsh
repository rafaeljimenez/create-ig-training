Instance: hug-allergy-example
InstanceOf: HUGAllergyIntolerance
Usage: #example
Title: "HUG Allergy Example"
Description: "Allergie fictive au latex"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code = HUGAllergenCS#latex "Latex"
* patient = Reference(hug-patient-demo)
