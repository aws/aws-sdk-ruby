Unreleased Changes
------------------

1.46.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2023-07-05)
------------------

* Feature - Update to Amazon Comprehend Medical documentation.

1.43.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2023-06-08)
------------------

* Feature - This release supports a new set of entities and traits.

1.40.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.38.0 (2022-11-16)
------------------

* Feature - This release supports new set of entities and traits. It also adds new category (BEHAVIORAL_ENVIRONMENTAL_SOCIAL).

1.37.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-12-08)
------------------

* Feature - This release adds a new set of APIs (synchronous and batch) to support the SNOMED-CT ontology.

1.32.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-04-13)
------------------

* Feature - The InferICD10CM API now returns TIME_EXPRESSION entities that refer to medical conditions.

1.25.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-06-30)
------------------

* Feature - This release adds the relationships between MedicalCondition and Anatomy in DetectEntitiesV2 API.

1.19.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.18.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2020-05-06)
------------------

* Feature - New Batch Ontology APIs for ICD-10 and RxNorm will provide batch capability of linking the information extracted by Comprehend Medical to medical ontologies. The new ontology linking APIs make it easy to detect medications and medical conditions in unstructured clinical text and link them to RxNorm and ICD-10-CM codes respectively. This new feature can help you reduce the cost, time and effort of processing large amounts of unstructured medical text with high accuracy.

1.14.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2020-03-02)
------------------

* Feature - New Time Expression feature, part of DetectEntitiesV2 API will provide temporal relations to existing NERe entities such as Medication, Test, Treatment, Procedure and Medical conditions.

1.12.0 (2019-12-16)
------------------

* Feature - New Ontology linking APIs will provides medication concepts normalization and Diagnoses codes from input text. In this release we will provide two APIs -  RxNorm and ICD10-CM.

1.11.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-09-24)
------------------

* Feature - Use Amazon Comprehend Medical to analyze medical text stored in the specified Amazon S3 bucket. Use the console to create and manage batch analysis jobs, or use the batch APIs to detect both medical entities and protected health information (PHI). The batch APIs start, stop, list, and retrieve information about batch analysis jobs. This release also includes DetectEntitiesV2 operation which returns the Acuity and Direction entities as attributes instead of types.

1.9.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2019-05-21)
------------------

* Feature - API update.

1.5.0 (2019-05-15)
------------------

* Feature - API update.

1.4.0 (2019-05-14)
------------------

* Feature - API update.

1.3.0 (2019-03-21)
------------------

* Feature - API update.

1.2.0 (2019-03-18)
------------------

* Feature - API update.

1.1.0 (2019-03-14)
------------------

* Feature - API update.

1.0.0 (2018-11-28)
------------------

* Feature - Initial release of `aws-sdk-comprehendmedical`.
