Unreleased Changes
------------------

1.119.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2025-07-29)
------------------

* Feature - AWS Batch for SageMaker Training jobs feature support.  Includes new APIs for service job submission (e.g., SubmitServiceJob) and managing service environments (e.g., CreateServiceEnvironment) that enable queueing SageMaker Training jobs.

1.117.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2025-06-24)
------------------

* Feature - Add userdataType to LaunchTemplateSpecification and LaunchTemplateSpecificationOverride.

1.115.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.113.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2025-03-27)
------------------

* Feature - This release will enable two features: Firelens log driver, and Execute Command on Batch jobs on ECS. Both features will be passed through to ECS.

1.111.0 (2025-02-26)
------------------

* Feature - AWS Batch: Resource Aware Scheduling feature support

1.110.0 (2025-02-18)
------------------

* Feature - This documentation-only update corrects some typos.

1.109.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2025-01-21)
------------------

* Feature - Documentation-only update: clarified the description of the shareDecaySeconds parameter of the FairsharePolicy data type, clarified the description of the priority parameter of the JobQueueDetail data type.

1.107.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2024-12-17)
------------------

* Feature - This feature allows AWS Batch on Amazon EKS to support configuration of Pod Annotations, overriding Namespace on which the Batch job's Pod runs on, and allows Subpath and Persistent Volume claim to be set for AWS Batch on Amazon EKS jobs.

1.105.0 (2024-11-08)
------------------

* Feature - This feature allows override LaunchTemplates to be specified in an AWS Batch Compute Environment.

1.104.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2024-10-31)
------------------

* Feature - Add `podNamespace` to `EksAttemptDetail` and `containerID` to `EksAttemptContainerDetail`.

1.102.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.99.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2024-08-16)
------------------

* Feature - Improvements of integration between AWS Batch and EC2.

1.94.0 (2024-07-10)
------------------

* Feature - This feature allows AWS Batch Jobs with EKS container orchestration type to be run as Multi-Node Parallel Jobs.

1.93.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2024-06-17)
------------------

* Feature - Add v2 smoke tests and smithy smokeTests trait for SDK testing.

1.89.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.88.0 (2024-06-03)
------------------

* Feature - This release adds support for the AWS Batch GetJobQueueSnapshot API operation.

1.87.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2024-04-11)
------------------

* Feature - This release adds the task properties field to attempt details and the name field on EKS container detail.

1.84.0 (2024-03-27)
------------------

* Feature - This feature allows AWS Batch to support configuration of imagePullSecrets and allowPrivilegeEscalation for jobs running on EKS

1.83.0 (2024-03-08)
------------------

* Feature - This release adds JobStateTimeLimitActions setting to the Job Queue API. It allows you to configure an action Batch can take for a blocking job in front of the queue after the defined period of time. The new parameter applies for ECS, EKS, and FARGATE Job Queues.

1.82.0 (2024-02-28)
------------------

* Feature - This release adds Batch support for configuration of multicontainer jobs in ECS, Fargate, and EKS. This support is available for all types of jobs, including both array jobs and multi-node parallel jobs.

1.81.0 (2024-02-09)
------------------

* Feature - This feature allows Batch to support configuration of repository credentials for jobs running on ECS

1.80.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2023-08-01)
------------------

* Feature - This release adds support for price capacity optimized allocation strategy for Spot Instances.

1.75.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-07-03)
------------------

* Feature - This feature allows customers to use AWS Batch with Linux with ARM64 CPU Architecture and X86_64 CPU Architecture with Windows OS on Fargate Platform.

1.72.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2023-03-30)
------------------

* Feature - This feature allows Batch on EKS to support configuration of Pod Labels through Metadata for Batch on EKS Jobs.

1.68.0 (2023-03-23)
------------------

* Feature - This feature allows Batch to support configuration of ephemeral storage size for jobs running on FARGATE

1.67.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.66.0 (2022-12-20)
------------------

* Feature - Adds isCancelled and isTerminated to DescribeJobs response.

1.65.0 (2022-11-16)
------------------

* Feature - Documentation updates related to Batch on EKS

1.64.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2022-10-24)
------------------

* Feature - This release adds support for AWS Batch on Amazon EKS.

1.62.0 (2022-05-18)
------------------

* Feature - Documentation updates for AWS Batch.

1.61.0 (2022-04-14)
------------------

* Feature - Enables configuration updates for compute environments with BEST_FIT_PROGRESSIVE and SPOT_CAPACITY_OPTIMIZED allocation strategies.

1.60.0 (2022-03-25)
------------------

* Feature - Bug Fix: Fixed a bug where shapes were marked as unboxed and were not serialized and sent over the wire, causing an API error from the service.

1.59.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-11-19)
------------------

* Feature - Documentation updates for AWS Batch.

1.54.0 (2021-11-09)
------------------

* Feature - Adds support for scheduling policy APIs.

1.53.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-07-27)
------------------

* Feature - Add support for ListJob filters

1.47.0 (2021-03-31)
------------------

* Feature - AWS Batch adds support for Amazon EFS File System

1.46.0 (2021-03-17)
------------------

* Feature - Making serviceRole an optional parameter when creating a compute environment. If serviceRole is not provided then Service Linked Role will be created (or reused if it already exists).

1.45.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-12-21)
------------------

* Feature - Documentation updates for batch

1.42.0 (2020-12-03)
------------------

* Feature - This release adds support for customer to run Batch Jobs on ECS Fargate, the serverless compute engine built for containers on AWS. Customer can also propagate Job and Job Definition Tags to ECS Task.

1.41.0 (2020-11-24)
------------------

* Feature - Add Ec2Configuration in ComputeEnvironment.ComputeResources. Use in CreateComputeEnvironment API to enable AmazonLinux2 support.

1.40.0 (2020-10-20)
------------------

* Feature - Adding evaluateOnExit to job retry strategies.

1.39.0 (2020-10-02)
------------------

* Feature - Support tagging for Batch resources (compute environment, job queue, job definition and job) and tag based access control on Batch APIs

1.38.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-09-25)
------------------

* Feature - Support custom logging, executionRole, secrets, and linuxParameters (initProcessEnabled, maxSwap, swappiness, sharedMemorySize, and tmpfs). Also, add new context keys for awslogs.

1.36.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.32.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-01-17)
------------------

* Feature - This release ensures INACTIVE job definitions are permanently deleted after 180 days.

1.27.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-10-17)
------------------

* Feature - Adding support for Compute Environment Allocation Strategies

1.25.0 (2019-08-06)
------------------

* Feature - Documentation updates for AWS Batch

1.24.0 (2019-07-26)
------------------

* Feature - AWS Batch now supports SDK auto-pagination and Job-level docker devices.

1.23.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2019-05-21)
------------------

* Feature - API update.

1.19.0 (2019-05-15)
------------------

* Feature - API update.

1.18.0 (2019-05-14)
------------------

* Feature - API update.

1.17.0 (2019-04-25)
------------------

* Feature - API update.

1.16.0 (2019-04-03)
------------------

* Feature - API update.

1.15.0 (2019-03-21)
------------------

* Feature - API update.

1.14.0 (2019-03-18)
------------------

* Feature - API update.

1.13.0 (2019-03-14)
------------------

* Feature - API update.

1.12.0 (2018-11-20)
------------------

* Feature - API update.

1.11.0 (2018-11-19)
------------------

* Feature - API update.

1.10.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.10.0 (2018-11-12)
------------------

* Feature - API update.

1.9.0 (2018-10-24)
------------------

* Feature - API update.

1.8.0 (2018-10-23)
------------------

* Feature - API update.

1.7.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.6.0 (2018-09-05)
------------------

* Feature - API update.

1.5.0 (2018-06-26)
------------------

* Feature - API update.

1.4.0 (2018-04-06)
------------------

* Feature - API update.

1.3.0 (2017-11-29)
------------------

* Feature - API update.

1.2.0 (2017-11-08)
------------------

* Feature - API update.

1.1.0 (2017-09-13)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-batch` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc11 (2017-08-14)
------------------

* Feature - API update.

1.0.0.rc10 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-25)
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

1.0.0.rc1 (2017-01-24)
------------------

* Feature - Initial preview release of `aws-sdk-batch` gem.
