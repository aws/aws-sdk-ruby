Unreleased Changes
------------------

1.20.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2021-07-09)
------------------

* Feature - This release adds support for ML Explainability to display model variable importance value in Amazon Fraud Detector.

1.18.0 (2021-03-30)
------------------

* Feature - This release adds support for Batch Predictions in Amazon Fraud Detector.

1.17.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2021-01-13)
------------------

* Feature - Added support for cancelling a model version that is TRAINING_IN_PROGRESS.

1.14.0 (2020-11-05)
------------------

* Feature - Added support for deleting resources like Variables, ExternalModels, Outcomes, Models, ModelVersions, Labels, EventTypes and EntityTypes. Updated DeleteEvent operation to catch missing exceptions.

1.13.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2020-09-25)
------------------

* Feature - Increased maximum length of eventVariables values for GetEventPrediction from 256 to 1024.

1.11.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-07-27)
------------------

* Feature - Moved the eventTypeName attribute for PutExternalModel API to inputConfiguration. Model ID's no longer allow hyphens.

1.8.0 (2020-07-24)
------------------

* Feature - GetPrediction has been replaced with GetEventPrediction. PutExternalModel has been simplified to accept a role ARN.

1.7.0 (2020-07-20)
------------------

* Feature - Introduced flexible model training dataset requirements for Online Fraud Insights so that customers can choose any two inputs to train a model instead of being required to use 'email' and 'IP address' at minimum. Added support for resource ARNs, resource tags, resource-based IAM policies and identity-based policies that limit access to a resource based on tags. Added support for customer-managed customer master key (CMK) data encryption. Added new Event Type, Entity Type, and Label APIs. An event type defines the structure for an event sent to Amazon Fraud Detector, including the variables sent as part of the event, the entity performing the event, and the labels that classify the event. Introduced the GetEventPrediction API.

1.6.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.5.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2020-04-17)
------------------

* Feature - Added support for a new rule engine execution mode. Customers will be able to configure their detector versions to evaluate all rules and return outcomes from all 'matched' rules in the GetPrediction API response. Added support for deleting Detectors (DeleteDetector) and Rule Versions (DeleteRuleVersion).

1.1.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2019-12-03)
------------------

* Feature - Initial release of `aws-sdk-frauddetector`.