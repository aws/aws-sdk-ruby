Unreleased Changes
------------------

1.75.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2023-06-21)
------------------

* Feature - This release introduces a new Amazon EMR EPI called ListSupportedInstanceTypes that returns a list of all instance types supported by a given EMR release.

1.71.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2023-06-06)
------------------

* Feature - This release provides customers the ability to specify an allocation strategies amongst PRICE_CAPACITY_OPTIMIZED, CAPACITY_OPTIMIZED, LOWEST_PRICE, DIVERSIFIED for Spot instances in Instance Feet cluster. This enables customers to choose an allocation strategy best suited for their workload.

1.69.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2023-05-10)
------------------

* Feature - EMR Studio now supports programmatically executing a Notebooks on an EMR on EKS cluster.  In addition, notebooks can now be executed by specifying its location in S3.

1.67.0 (2023-03-30)
------------------

* Feature - Updated DescribeCluster and ListClusters API responses to include ErrorDetail that specifies error code, programmatically accessible error data,and an error message. ErrorDetail provides the underlying reason for cluster failure and recommends actions to simplify troubleshooting of EMR clusters.

1.66.0 (2023-02-16)
------------------

* Feature - This release provides customers the ability to define a timeout period for procuring capacity during a resize operation for Instance Fleet clusters. Customers can specify this timeout using the ResizeSpecifications parameter supported by RunJobFlow, ModifyInstanceFleet and AddInstanceFleet APIs.

1.65.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.64.0 (2022-12-29)
------------------

* Feature - Added GetClusterSessionCredentials API to allow Amazon SageMaker Studio to connect to EMR on EC2 clusters with runtime roles and AWS Lake Formation-based access control for Apache Spark, Apache Hive, and Presto queries.

1.63.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2022-06-30)
------------------

* Feature - This release adds support for the ExecutionRoleArn parameter in the AddJobFlowSteps and DescribeStep APIs. Customers can use ExecutionRoleArn to specify the IAM role used for each job they submit using the AddJobFlowSteps API.

1.61.0 (2022-06-29)
------------------

* Feature - This release introduces additional optional parameter "Throughput" to VolumeSpecification to enable user to configure throughput for gp3 ebs volumes.

1.60.0 (2022-05-10)
------------------

* Feature - This release updates the Amazon EMR ModifyInstanceGroups API to support "MERGE" type cluster reconfiguration. Also, added the ability to specify a particular Amazon Linux release for all nodes in a cluster launch request.

1.59.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2022-02-02)
------------------

* Feature - Documentation updates for Amazon EMR.

1.56.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2021-09-09)
------------------

* Feature - This release enables customers to login to EMR Studio using AWS Identity and Access Management (IAM) identities or identities in their Identity Provider (IdP) via IAM.

1.51.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2021-08-27)
------------------

* Feature - Amazon EMR now supports auto-terminating idle EMR clusters. You can specify the idle timeout value when enabling auto-termination for both running and new clusters and Amazon EMR automatically terminates the cluster when idle timeout kicks in.

1.49.0 (2021-08-13)
------------------

* Feature - Amazon EMR customers can now specify custom AMIs at the instance level in their clusters. This allows using custom AMIs in clusters that have instances with different instruction set architectures, e.g. m5.xlarge (x86) and m6g.xlarge (ARM).

1.48.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2021-07-21)
------------------

* Feature - EMR now supports new DescribeReleaseLabel and ListReleaseLabel APIs. They can provide Amazon EMR release label details. You can programmatically list available releases and applications for a specific Amazon EMR release label.

1.45.0 (2021-03-15)
------------------

* Feature - Amazon EMR customers can now specify Resource Group to target Capacity Reservations in their EMR clusters with instance fleets using allocation strategy.

1.44.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-03-08)
------------------

* Feature - Amazon EMR customers can now specify how EC2 On-Demand Capacity Reservations are used in their EMR clusters with instance fleets using allocation strategy.

1.42.0 (2021-02-26)
------------------

* Feature - Added UpdateStudio API that allows updating a few attributes of an EMR Studio.

1.41.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-11-23)
------------------

* Feature - Add API support for EMR Studio, a new notebook-first IDE for data scientists and data engineers with single sign-on, Jupyter notebooks, automated infrastructure provisioning, and job diagnosis.

1.39.0 (2020-10-01)
------------------

* Feature - Documentation updates for elasticmapreduce

1.38.0 (2020-09-30)
------------------

* Feature - Amazon EMR customers can now use EC2 placement group to influence the placement of master nodes in a high-availability (HA) cluster across distinct underlying hardware to improve cluster availability.

1.37.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-08-28)
------------------

* Feature - Amazon EMR adds support for ICMP, port -1, in Block Public Access Exceptions and API access for EMR Notebooks execution. You can now non-interactively execute EMR Notebooks and pass input parameters.

1.35.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-06-24)
------------------

* Feature - Amazon EMR customers can now set allocation strategies for On-Demand and Spot instances in their EMR clusters with instance fleets. These allocation strategies use real-time capacity insights to provision clusters faster and make the most efficient use of available spare capacity to allocate Spot instances to reduce interruptions.

1.32.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-06-22)
------------------

* Feature - Adding support for MaximumCoreCapacityUnits parameter for EMR Managed Scaling. It allows users to control how many units/nodes are added to the CORE group/fleet. Remaining units/nodes are added to the TASK groups/fleet in the cluster.

1.30.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.30.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-06-01)
------------------

* Feature - Amazon EMR now supports encrypting log files with AWS Key Management Service (KMS) customer managed keys.

1.28.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-04-21)
------------------

* Feature - Amazon EMR adds support for configuring a managed scaling policy for an Amazon EMR cluster. This enables automatic resizing of a cluster to optimize for job execution speed and reduced cluster cost.

1.25.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-11-22)
------------------

* Feature - Amazon EMR adds support for concurrent step execution and cancelling running steps. Amazon EMR has added a new Outpost ARN field in the ListCluster and DescribeCluster API responses that is populated for clusters launched in an AWS Outpost subnet.

1.23.0 (2019-11-15)
------------------

* Feature - Access to the cluster ARN makes it easier for you to author resource-level permissions policies in AWS Identity and Access Management. To simplify the process of obtaining the cluster ARN, Amazon EMR has added a new field containing the cluster ARN to all API responses that include the cluster ID.

1.22.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2019-08-16)
------------------

* Feature - Amazon EMR  has introduced an account level configuration called Block Public Access that allows you to block clusters with ports open to traffic from public IP sources (i.e. 0.0.0.0/0 for IPv4 and ::/0 for IPv6) from launching.  Individual ports or port ranges can be added as exceptions to allow public access.

1.20.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-05-21)
------------------

* Feature - API update.

1.16.0 (2019-05-15)
------------------

* Feature - API update.

1.15.0 (2019-05-14)
------------------

* Feature - API update.

1.14.0 (2019-04-01)
------------------

* Feature - API update.

1.13.0 (2019-03-22)
------------------

* Feature - API update.

1.12.0 (2019-03-21)
------------------

* Feature - API update.

1.11.0 (2019-03-18)
------------------

* Feature - API update.

1.10.0 (2019-03-14)
------------------

* Feature - API update.

1.9.0 (2019-01-11)
------------------

* Feature - API update.

1.8.0 (2018-11-20)
------------------

* Feature - API update.

1.7.0 (2018-10-24)
------------------

* Feature - API update.

1.6.0 (2018-10-23)
------------------

* Feature - API update.

1.5.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.4.0 (2018-09-05)
------------------

* Feature - API update.

1.3.0 (2018-07-12)
------------------

* Feature - API update.

1.2.0 (2018-06-26)
------------------

* Feature - API update.

1.1.0 (2017-11-22)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-emr` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc12 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc11 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-20)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc7 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc6 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-emr` gem.
