Unreleased Changes
------------------

1.26.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2023-06-12)
------------------

* Feature - This release adds support for SkipUnavailable connection property for cross cluster search

1.21.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2023-05-11)
------------------

* Feature - This release fixes DescribePackages API error with null filter value parameter.

1.19.0 (2023-05-04)
------------------

* Feature - DescribeDomainNodes: A new API that provides configuration information for nodes part of the domain

1.18.0 (2023-05-03)
------------------

* Feature - Amazon OpenSearch Service adds the option to deploy a domain across multiple Availability Zones, with each AZ containing a complete copy of data and with nodes in one AZ acting as a standby. This option provides 99.99% availability and consistent performance in the event of infrastructure failure.

1.17.0 (2023-02-22)
------------------

* Feature - This release lets customers configure Off-peak window and software update related properties for a new/existing domain. It enhances the capabilities of StartServiceSoftwareUpdate API; adds 2 new APIs - ListScheduledActions & UpdateScheduledAction; and allows Auto-tune to make use of Off-peak window.

1.16.0 (2023-01-31)
------------------

* Feature - Amazon OpenSearch Service adds the option for a VPC endpoint connection between two domains when the local domain uses OpenSearch version 1.3 or 2.3. You can now use remote reindex to copy indices from one VPC domain to another without a reverse proxy.

1.15.0 (2023-01-19)
------------------

* Feature - This release adds the enhanced dry run option, that checks for validation errors that might occur when deploying configuration changes and provides a summary of these errors, if any. The feature will also indicate whether a blue/green deployment will be required to apply a change.

1.14.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.13.0 (2022-11-08)
------------------

* Feature - Amazon OpenSearch Service now offers managed VPC endpoints to connect to your Amazon OpenSearch Service VPC-enabled domain in a Virtual Private Cloud (VPC). This feature allows you to privately access OpenSearch Service domain without using public IPs or requiring traffic to traverse the Internet.

1.12.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2022-07-28)
------------------

* Feature - This release adds support for gp3 EBS (Elastic Block Store) storage.

1.10.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2022-01-27)
------------------

* Feature - Allows customers to get progress updates for blue/green deployments

1.7.0 (2022-01-06)
------------------

* Feature - Amazon OpenSearch Service adds support for Fine Grained Access Control for existing domains running Elasticsearch version 6.7 and above

1.6.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2021-11-23)
------------------

* Feature - This release adds an optional parameter dry-run for the UpdateDomainConfig API to perform basic validation checks, and detect the deployment type that will be required for the configuration change, without actually applying the change.

1.3.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2021-09-17)
------------------

* Feature - This release adds an optional parameter in the ListDomainNames API to filter domains based on the engine type (OpenSearch/Elasticsearch).

1.0.0 (2021-09-08)
------------------

* Feature - Initial release of `aws-sdk-opensearchservice`.

