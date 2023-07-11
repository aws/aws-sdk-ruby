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

1.82.0 (2022-12-15)
------------------

* Feature - Add support for Windows managed nodes groups.

1.81.0 (2022-12-07)
------------------

* Feature - Adds support for EKS add-ons configurationValues fields and DescribeAddonConfiguration function

1.80.0 (2022-11-29)
------------------

* Feature - Adds support for additional EKS add-ons metadata and filtering fields

1.79.0 (2022-11-16)
------------------

* Feature - Adds support for customer-provided placement groups for Kubernetes control plane instances when creating local EKS clusters on Outposts

1.78.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2022-09-12)
------------------

* Feature - Adding support for local Amazon EKS clusters on Outposts

1.76.0 (2022-09-07)
------------------

* Feature - Adds support for EKS Addons ResolveConflicts "preserve" flag. Also adds new update failed status for EKS Addons.

1.75.0 (2022-05-10)
------------------

* Feature - Adds BOTTLEROCKET_ARM_64_NVIDIA and BOTTLEROCKET_x86_64_NVIDIA AMI types to EKS managed nodegroups

1.74.0 (2022-03-08)
------------------

* Feature - Introducing a new enum for NodeGroup error code: Ec2SubnetMissingIpv6Assignment

1.73.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2022-01-05)
------------------

* Feature - Amazon EKS now supports running applications using IPv6 address space

1.70.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2021-11-22)
------------------

* Feature - Adding missing exceptions to RegisterCluster operation

1.67.0 (2021-11-15)
------------------

* Feature - Adding Tags support to Cluster Registrations.

1.66.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-10-27)
------------------

* Feature - EKS managed node groups now support BOTTLEROCKET_x86_64 and BOTTLEROCKET_ARM_64 AMI types.

1.64.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-09-07)
------------------

* Feature - Adding RegisterCluster and DeregisterCluster operations, to support connecting external clusters to EKS.

1.62.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2021-08-20)
------------------

* Feature - Adds support for EKS add-ons "preserve" flag, which allows customers to maintain software on their EKS clusters after removing it from EKS add-ons management.

1.60.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-07-12)
------------------

* Feature - Documentation updates for Wesley to support the parallel node upgrade feature.

1.57.0 (2021-07-08)
------------------

* Feature - Added waiters for EKS FargateProfiles.

1.56.0 (2021-07-06)
------------------

* Feature - Adding new error code UnsupportedAddonModification for Addons in EKS

1.55.0 (2021-06-07)
------------------

* Feature - Added updateConfig option that allows customers to control upgrade velocity in Managed Node Group.

1.54.0 (2021-05-19)
------------------

* Feature - Update the EKS AddonActive waiter.

1.53.0 (2021-05-10)
------------------

* Feature - This release updates create-nodegroup and update-nodegroup-config APIs for adding/updating taints on managed nodegroups.

1.52.0 (2021-04-26)
------------------

* Feature - This release updates existing Amazon EKS input validation so customers will see an InvalidParameterException instead of a ParamValidationError when they enter 0 for minSize and/or desiredSize. It also adds LaunchTemplate information to update responses and a new "CUSTOM" value for AMIType.

1.51.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2021-03-01)
------------------

* Feature - Adding new error code AdmissionRequestDenied for Addons in EKS

1.49.0 (2021-02-26)
------------------

* Feature - Amazon EKS now supports adding KMS envelope encryption to existing clusters to enhance security for secrets

1.48.0 (2021-02-12)
------------------

* Feature - Amazon EKS now supports OpenId Connect (OIDC) compatible identity providers as a user authentication option

1.47.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-12-01)
------------------

* Feature - Amazon EKS now allows you to define and manage the lifecycle for Kubernetes add-ons for your clusters. This release adds support for the AWS VPC CNI (vpc-cni).

1.45.0 (2020-10-09)
------------------

* Feature - This release introduces a new Amazon EKS error code: "ClusterUnreachable"

1.44.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-09-24)
------------------

* Feature - Amazon EKS now supports configuring your cluster's service CIDR during cluster creation.

1.42.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-08-13)
------------------

* Feature - Adding support for customer provided EC2 launch templates and AMIs to EKS Managed Nodegroups. Also adds support for Arm-based instances to EKS Managed Nodegroups.

1.39.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

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
