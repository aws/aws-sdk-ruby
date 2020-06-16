Unreleased Changes
------------------

1.38.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.38.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-03-24)
------------------

* Feature - Adding new error codes: Ec2SubnetInvalidConfiguration and NodeCreationFailure for Nodegroups in EKS

1.34.0 (2020-03-23)
------------------

* Feature - Adding new error code IamLimitExceeded for Nodegroups in EKS

1.33.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-03-05)
------------------

* Feature - Amazon EKS now supports adding a KMS key to your cluster for envelope encryption of Kubernetes secrets.

1.31.0 (2020-01-24)
------------------

* Feature - Adding new error codes for Nodegroups in EKS

1.30.0 (2019-12-20)
------------------

* Feature - Amazon EKS now supports restricting access to the API server public endpoint by applying CIDR blocks

1.29.0 (2019-12-03)
------------------

* Feature - Introducing Amazon EKS with Fargate. Customers can now use Amazon EKS to launch pods directly onto AWS Fargate, the serverless compute engine built for containers on AWS.

1.28.0 (2019-11-15)
------------------

* Feature - Introducing Amazon EKS managed node groups, a new feature that lets you easily provision worker nodes for Amazon EKS clusters and keep them up to date using the Amazon EKS management console, CLI, and APIs.

1.27.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-09-16)
------------------

* Feature - This release lets customers add tags to an Amazon EKS cluster. These tags can be used to control access to the EKS API for managing the cluster using IAM. The Amazon EKS TagResource API allows customers to associate tags with their cluster. Customers can list tags for a cluster using the ListTagsForResource API and remove tags from a cluster with the UntagResource API. Note: tags are specific to the EKS cluster resource, they do not propagate to other AWS resources used by the cluster.

1.25.0 (2019-09-04)
------------------

* Feature - Amazon EKS DescribeCluster API returns a new OIDC issuer field that can be used to create OIDC identity provider for IAM for Service Accounts feature.

1.24.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-06-25)
------------------

* Feature - Changing Amazon EKS full service name to Amazon Elastic Kubernetes Service.

1.21.0 (2019-06-19)
------------------

* Feature - Changing Amazon EKS full service name to Amazon Elastic Kubernetes Service.

1.20.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-05-21)
------------------

* Feature - API update.

1.18.0 (2019-05-15)
------------------

* Feature - API update.

1.17.0 (2019-05-14)
------------------

* Feature - API update.

1.16.0 (2019-05-08)
------------------

* Feature - API update.

1.15.0 (2019-04-04)
------------------

* Feature - API update.

1.14.0 (2019-03-22)
------------------

* Feature - API update.

1.13.0 (2019-03-21)
------------------

* Feature - API update.

1.12.0 (2019-03-19)
------------------

* Feature - API update.

1.11.0 (2019-03-18)
------------------

* Feature - API update.

1.10.0 (2019-03-14)
------------------

* Feature - API update.

1.9.0 (2018-12-12)
------------------

* Feature - API update.

1.8.0 (2018-11-20)
------------------

* Feature - API update.

1.7.0 (2018-11-05)
------------------

* Feature - API update.

1.6.0 (2018-10-24)
------------------

* Feature - API update.

1.5.0 (2018-10-23)
------------------

* Feature - API update.

1.4.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.3.0 (2018-09-05)
------------------

* Feature - API update.

1.2.0 (2018-08-31)
------------------

* Feature - API update.

1.1.0 (2018-06-26)
------------------

* Feature - API update.

1.0.0 (2018-06-04)
------------------

* Feature - Initial release of `aws-sdk-eks`.