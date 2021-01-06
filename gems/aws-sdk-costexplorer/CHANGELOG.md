Unreleased Changes
------------------

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
