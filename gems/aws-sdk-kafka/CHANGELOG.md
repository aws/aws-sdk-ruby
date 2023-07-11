Unreleased Changes
------------------

1.61.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2023-05-15)
------------------

* Feature - Added a fix to make clusterarn a required field in ListClientVpcConnections and RejectClientVpcConnection APIs

1.55.0 (2023-04-27)
------------------

* Feature - Amazon MSK has added new APIs that allows multi-VPC private connectivity and cluster policy support for Amazon MSK clusters that simplify connectivity and access between your Apache Kafka clients hosted in different VPCs and AWS accounts and your Amazon MSK clusters.

1.54.0 (2023-01-30)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.53.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.52.0 (2022-10-26)
------------------

* Feature - This release adds support for Tiered Storage. UpdateStorage allows you to control the Storage Mode for supported storage tiers.

1.51.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2022-06-20)
------------------

* Feature - Documentation updates to use Az Id during cluster creation.

1.49.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2022-01-27)
------------------

* Feature - Amazon MSK has updated the CreateCluster and UpdateBrokerStorage API that allows you to specify volume throughput during cluster creation and broker volume updates.

1.46.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2021-11-30)
------------------

* Feature - This release adds three new V2 APIs. CreateClusterV2 for creating both provisioned and serverless clusters. DescribeClusterV2 for getting information about provisioned and serverless clusters and ListClustersV2 for listing all clusters (both provisioned and serverless) in your account.

1.44.0 (2021-11-18)
------------------

* Feature - Amazon MSK has added a new API that allows you to update the connectivity settings for an existing cluster to enable public accessibility.

1.43.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-09-21)
------------------

* Feature - Added StateInfo to ClusterInfo

1.40.0 (2021-09-08)
------------------

* Feature - Amazon MSK has added a new API that allows you to update the encrypting and authentication settings for an existing cluster.

1.39.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-05-06)
------------------

* Feature - IAM Access Control for Amazon MSK enables you to create clusters that use IAM to authenticate clients and to allow or deny Apache Kafka actions for those clients.

1.35.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-01-21)
------------------

* Feature - Amazon MSK has added a new API that allows you to update all the brokers in the cluster to the specified type.

1.32.0 (2020-12-04)
------------------

* Feature - Adding HEALING to ClusterState.

1.31.0 (2020-11-23)
------------------

* Feature - Adding MAINTENANCE and REBOOTING_BROKER to Cluster states.

1.30.0 (2020-11-20)
------------------

* Feature - This release adds support for PER TOPIC PER PARTITION monitoring on AWS MSK clusters.

1.29.0 (2020-10-01)
------------------

* Feature - Added support for Enabling Zookeeper Encryption in Transit for AWS MSK.

1.28.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-09-15)
------------------

* Feature - Added new API's to support SASL SCRAM Authentication with MSK Clusters.

1.26.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-08-24)
------------------

* Feature - Add UpdateConfiguration and DeleteConfiguration operations.

1.24.0 (2020-07-30)
------------------

* Feature - Amazon MSK has added a new API that allows you to reboot brokers within a cluster.

1.23.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.22.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-05-28)
------------------

* Feature - New APIs for upgrading the Apache Kafka version of a cluster and to find out compatible upgrade paths

1.20.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-02-25)
------------------

* Feature - Amazon MSK has added support for Broker Log delivery to CloudWatch, S3, and Firehose.

1.17.0 (2020-02-04)
------------------

* Feature - This release enables AWS MSK customers to list Apache Kafka versions that are supported on AWS MSK clusters. Also includes changes to expose additional details of a cluster's state in DescribeCluster and ListClusters APIs.

1.16.0 (2019-12-09)
------------------

* Feature - AWS MSK has added support for Open Monitoring with Prometheus.

1.15.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2019-10-16)
------------------

* Feature - AWS MSK has added support for adding brokers to a cluster.

1.13.0 (2019-10-09)
------------------

* Feature - Updated documentation for Amazon Managed Streaming for Kafka service.

1.12.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-05-30)
------------------

* Feature - Updated APIs for Amazon MSK to enable new features such as encryption in transit, client authentication, and scaling storage.

1.8.0 (2019-05-21)
------------------

* Feature - API update.

1.7.0 (2019-05-20)
------------------

* Feature - API update.

1.6.0 (2019-05-15)
------------------

* Feature - API update.

1.5.0 (2019-05-14)
------------------

* Feature - API update.

1.4.0 (2019-04-18)
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

1.0.0 (2018-11-29)
------------------

* Feature - Initial release of `aws-sdk-kafka`.
