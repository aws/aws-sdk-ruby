Unreleased Changes
------------------

1.7.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.7.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - This release allows customers to choose from a list of predefined deployment strategies while starting deployments.

1.6.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2020-05-07)
------------------

* Feature - The description of the AWS AppConfig GetConfiguration API action was amended to include important information about calling ClientConfigurationVersion when you configure clients to call GetConfiguration.

1.4.0 (2020-03-31)
------------------

* Feature - This release adds an event log to deployments. In the case of a deployment rollback, the event log details the rollback reason.

1.3.0 (2020-03-13)
------------------

* Feature - This release adds S3 as a configuration source provider.

1.2.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2020-02-20)
------------------

* Feature - This release adds exponential growth type support for deployment strategies.

1.0.0 (2019-11-25)
------------------

* Feature - Initial release of `aws-sdk-appconfig`.