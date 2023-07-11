Unreleased Changes
------------------

1.45.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2023-06-05)
------------------

* Feature - Added new variable types, new DateTime data type, and new rules engine functions for interacting and working with DateTime data types.

1.40.0 (2023-05-31)
------------------

* Feature - This release enables publishing event predictions from Amazon Fraud Detector (AFD) to Amazon EventBridge. For example, after getting predictions from AFD, Amazon EventBridge rules can be configured to trigger notification through an SNS topic, send a message with SES, or trigger Lambda workflows.

1.39.0 (2023-02-15)
------------------

* Feature - This release introduces Lists feature which allows customers to reference a set of values in Fraud Detector's rules. With Lists, customers can dynamically manage these attributes in real time. Lists can be created/deleted and its contents can be modified using the Fraud Detector API.

1.38.0 (2023-02-06)
------------------

* Feature - My AWS Service (Amazon Fraud Detector) - This release introduces Cold Start Model Training which optimizes training for small datasets and adds intelligent methods for treating unlabeled data. You can now train Online Fraud Insights or Transaction Fraud Insights models with minimal historical-data.

1.37.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.36.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2022-10-18)
------------------

* Feature - Documentation Updates for Amazon Fraud Detector

1.34.0 (2022-07-21)
------------------

* Feature - The release introduces Account Takeover Insights (ATI) model. The ATI model detects fraud relating to account takeover. This release also adds support for new variable types: ARE_CREDENTIALS_VALID and SESSION_ID and adds new structures to Model Version APIs.

1.33.0 (2022-06-10)
------------------

* Feature - Documentation updates for Amazon Fraud Detector (AWSHawksNest)

1.32.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2022-01-26)
------------------

* Feature - Added new APIs for viewing past predictions and obtaining prediction metadata including prediction explanations: ListEventPredictions and GetEventPredictionMetadata

1.29.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2021-10-11)
------------------

* Feature - New model type: Transaction Fraud Insights, which is optimized for online transaction fraud. Stored Events, which allows customers to send and store data directly within Amazon Fraud Detector. Batch Import, which allows customers to upload a CSV file of historic event data for processing and storage

1.24.0 (2021-09-03)
------------------

* Feature - Enhanced GetEventPrediction API response to include risk scores from imported SageMaker models

1.23.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2021-08-23)
------------------

* Feature - Updated an element of the DescribeModelVersion API response (LogitMetrics -> logOddsMetrics) for clarity. Added new exceptions to several APIs to protect against unlikely scenarios.

1.21.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

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
