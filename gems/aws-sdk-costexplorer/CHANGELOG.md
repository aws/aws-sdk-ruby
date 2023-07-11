Unreleased Changes
------------------

1.88.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.82.0 (2022-12-14)
------------------

* Feature - This release supports percentage-based thresholds on Cost Anomaly Detection alert subscriptions.

1.81.0 (2022-12-07)
------------------

* Feature - This release adds the LinkedAccountName field to the GetAnomalies API response under RootCause

1.80.0 (2022-12-05)
------------------

* Feature - This release introduces two new APIs that offer a 1-click experience to refresh Savings Plans recommendations. The two APIs are StartSavingsPlansPurchaseRecommendationGeneration and ListSavingsPlansPurchaseRecommendationGeneration.

1.79.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2022-09-27)
------------------

* Feature - This release is to support retroactive Cost Categories. The new field will enable you to retroactively apply new and existing cost category rules to previous months.

1.77.0 (2022-06-07)
------------------

* Feature - Added two new APIs to support cost allocation tags operations: ListCostAllocationTags, UpdateCostAllocationTagsStatus.

1.76.0 (2022-03-22)
------------------

* Feature - Added three new APIs to support tagging and resource-level authorization on Cost Explorer resources: TagResource, UntagResource, ListTagsForResource.  Added optional parameters to CreateCostCategoryDefinition, CreateAnomalySubscription and CreateAnomalyMonitor APIs to support Tag On Create.

1.75.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2022-02-16)
------------------

* Feature - AWS Cost Anomaly Detection now supports SNS FIFO topic subscribers.

1.73.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2022-02-02)
------------------

* Feature - Doc-only update for Cost Explorer API that adds INVOICING_ENTITY dimensions

1.71.0 (2022-01-11)
------------------

* Feature - Doc only update for Cost Explorer API that fixes missing clarifications for MatchOptions definitions

1.70.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-08-17)
------------------

* Feature - This release is a new feature for Cost Categories: Split charge rules. Split charge rules enable you to allocate shared costs between your cost category values.

1.64.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-05-24)
------------------

* Feature - Introduced FindingReasonCodes, PlatformDifferences, DiskResourceUtilization and NetworkResourceUtilization to GetRightsizingRecommendation action

1.61.0 (2021-04-19)
------------------

* Feature - Adding support for Sagemaker savings plans in GetSavingsPlansPurchaseRecommendation API

1.60.0 (2021-03-23)
------------------

* Feature - You can now create cost categories with inherited value rules and specify default values for any uncategorized costs.

1.59.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-02-03)
------------------

* Feature - Clarify valid values for the filter parameter for certain APIs.

1.57.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2021-01-05)
------------------

* Feature - Add new GetCostcategories API - Support filter for GetDimensions, GetTags and GetCostcategories api - Support sortBy metrics for GetDimensions, GetTags and GetCostcategories api

1.55.0 (2020-12-22)
------------------

* Feature - This release adds additional metadata that may be applicable to the Rightsizing Recommendations.

1.54.0 (2020-12-16)
------------------

* Feature - This release updates the "MonitorArnList" from a list of String to be a list of Arn for both CreateAnomalySubscription and UpdateAnomalySubscription APIs

1.53.0 (2020-11-19)
------------------

* Feature - Additional metadata that may be applicable to the recommendation.

1.52.0 (2020-10-15)
------------------

* Feature - This release improves email validation for subscriptions on the SDK endpoints.

1.51.0 (2020-10-08)
------------------

* Feature - You can now create hierarchical cost categories by choosing "Cost Category" as a dimension. You can also track the status of your cost category updates to your cost and usage information.

1.50.0 (2020-10-07)
------------------

* Feature - Enables Rightsizing Recommendations to analyze and present EC2 instance-level EBS metrics when generating recommendations. Returns AccessDeniedException if the account is not opted into Rightsizing

1.49.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-09-23)
------------------

* Feature - This release provides access to Cost Anomaly Detection Public Preview APIs. Cost Anomaly Detection finds cost anomalies based on your historical cost and usage using Machine Learning models.

1.47.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-07-08)
------------------

* Feature - Customers can now see Instance Name alongside each rightsizing recommendation.

1.44.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.43.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-04-21)
------------------

* Feature - Cost Explorer Rightsizing Recommendations integrates with Compute Optimizer and begins offering across instance family rightsizing recommendations, adding to existing support for within instance family rightsizing recommendations.

1.39.0 (2020-04-20)
------------------

* Feature - Cost Categories API is now General Available with new dimensions and operations support. You can map costs by account name, service, and charge type dimensions as well as use contains, starts with, and ends with operations. Cost Categories can also be used in RI and SP coverage reports.

1.38.0 (2020-03-25)
------------------

* Feature - Customers can now receive Savings Plans recommendations at the member (linked) account level.

1.37.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-01-08)
------------------

* Feature - Documentation updates for CreateCostCategoryDefinition and UpdateCostCategoryDefinition API

1.35.0 (2020-01-02)
------------------

* Feature - Documentation updates for GetReservationUtilization for the Cost Explorer API.

1.34.0 (2019-11-25)
------------------

* Feature - This launch provides customers with access to Cost Category Public Beta APIs.

1.33.0 (2019-11-18)
------------------

* Feature - add EstimatedOnDemandCostWithCurrentCommitment to GetSavingsPlansPurchaseRecommendationRequest API

1.32.0 (2019-11-11)
------------------

* Feature - This launch provides customers with access to GetCostAndUsageWithResources API.

1.31.0 (2019-11-06)
------------------

* Feature - This launch provides customers with access to Savings Plans management APIs.

1.30.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2019-07-26)
------------------

* Feature - Adds support for resource optimization recommendations.

1.28.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2019-07-08)
------------------

* Feature - This release introduces a new operation called GetUsageForecast, which allows you to programmatically access AWS Cost Explorer's forecasting engine on usage data (running hours, data transfer, etc).

1.26.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-05-21)
------------------

* Feature - API update.

1.23.0 (2019-05-15)
------------------

* Feature - API update.

1.22.0 (2019-05-14)
------------------

* Feature - API update.

1.21.0 (2019-03-21)
------------------

* Feature - API update.

1.20.0 (2019-03-18)
------------------

* Feature - API update.

1.19.0 (2019-03-14)
------------------

* Feature - API update.

1.18.0 (2019-03-11)
------------------

* Feature - API update.

1.17.0 (2019-02-25)
------------------

* Feature - API update.

1.16.0 (2019-01-16)
------------------

* Feature - API update.

1.15.0 (2018-12-05)
------------------

* Feature - API update.

1.14.0 (2018-11-20)
------------------

* Feature - API update.

1.13.0 (2018-11-16)
------------------

* Feature - API update.

1.12.0 (2018-11-07)
------------------

* Feature - API update.

1.11.0 (2018-10-24)
------------------

* Feature - API update.

1.10.0 (2018-10-23)
------------------

* Feature - API update.

1.9.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.8.0 (2018-09-05)
------------------

* Feature - API update.

1.7.0 (2018-07-11)
------------------

* Feature - API update.

1.6.0 (2018-07-09)
------------------

* Feature - API update.

1.5.0 (2018-06-26)
------------------

* Feature - API update.

1.4.0 (2018-06-05)
------------------

* Feature - API update.

1.3.0 (2018-04-19)
------------------

* Feature - API update.

1.2.0 (2018-03-20)
------------------

* Feature - API update.

1.1.0 (2018-02-22)
------------------

* Feature - API update.

1.0.0 (2017-11-20)
------------------

* Feature - Initial release of `aws-sdk-costexplorer`.
