Unreleased Changes
------------------

1.126.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.125.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.124.0 (2023-06-30)
------------------

* Feature - Added new field  "credentialspecs" to the ecs task definition to support gMSA of windows/linux in both domainless and domain-joined mode

1.123.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2023-06-19)
------------------

* Feature - Documentation only update to address various tickets.

1.121.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.120.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.119.0 (2023-05-18)
------------------

* Feature - Documentation only release to address various tickets.

1.118.0 (2023-05-04)
------------------

* Feature - Documentation update for new error type NamespaceNotFoundException for CreateCluster and UpdateCluster

1.117.0 (2023-05-02)
------------------

* Feature - Documentation only update to address Amazon ECS tickets.

1.116.0 (2023-04-21)
------------------

* Feature - Documentation update to address various Amazon ECS tickets.

1.115.0 (2023-04-19)
------------------

* Feature - This release supports the Account Setting "TagResourceAuthorization" that allows for enhanced Tagging security controls.

1.114.0 (2023-04-14)
------------------

* Feature - This release supports  ephemeral storage for AWS Fargate Windows containers.

1.113.0 (2023-04-10)
------------------

* Feature - This release adds support for enabling FIPS compliance on Amazon ECS Fargate tasks

1.112.0 (2023-04-05)
------------------

* Feature - This is a document only updated to add information about Amazon Elastic Inference (EI).

1.111.0 (2023-02-23)
------------------

* Feature - This release supports deleting Amazon ECS task definitions that are in the INACTIVE state.

1.110.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.109.0 (2022-12-19)
------------------

* Feature - This release adds support for alarm-based rollbacks in ECS, a new feature that allows customers to add automated safeguards for Amazon ECS service rolling updates.

1.108.0 (2022-12-15)
------------------

* Feature - This release adds support for container port ranges in ECS, a new capability that allows customers to provide container port ranges to simplify use cases where multiple ports are in use in a container. This release updates TaskDefinition mutation APIs and the Task description APIs.

1.107.0 (2022-12-02)
------------------

* Feature - Documentation updates for Amazon ECS

1.106.0 (2022-11-28)
------------------

* Feature - This release adds support for ECS Service Connect, a new capability that simplifies writing and operating resilient distributed applications. This release updates the TaskDefinition, Cluster, Service mutation APIs with Service connect constructs and also adds a new ListServicesByNamespace API.

1.105.0 (2022-11-10)
------------------

* Feature - This release adds support for task scale-in protection with updateTaskProtection and getTaskProtection APIs. UpdateTaskProtection API can be used to protect a service managed task from being terminated by scale-in events and getTaskProtection API to get the scale-in protection status of a task.

1.104.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2022-10-13)
------------------

* Feature - Documentation update to address tickets.

1.102.0 (2022-10-04)
------------------

* Feature - Documentation updates to address various Amazon ECS tickets.

1.101.0 (2022-09-16)
------------------

* Feature - This release supports new task definition sizes.

1.100.0 (2022-06-21)
------------------

* Feature - Amazon ECS UpdateService now supports the following parameters: PlacementStrategies, PlacementConstraints and CapacityProviderStrategy.

1.99.0 (2022-03-22)
------------------

* Feature - Documentation only update to address tickets

1.98.0 (2022-03-15)
------------------

* Feature - Documentation only update to address tickets

1.97.0 (2022-03-07)
------------------

* Feature - Amazon ECS UpdateService API now supports additional parameters: loadBalancers, propagateTags, enableECSManagedTags, and serviceRegistries

1.96.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2022-01-05)
------------------

* Feature - Documentation update for ticket fixes.

1.93.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2021-11-23)
------------------

* Feature - Documentation update for ARM support on Amazon ECS.

1.90.0 (2021-11-10)
------------------

* Feature - This release adds support for container instance health.

1.89.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.88.0 (2021-10-28)
------------------

* Feature - Amazon ECS now supports running Fargate tasks on Windows Operating Systems Families which includes Windows Server 2019 Core and Windows Server 2019 Full.

1.87.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2021-10-12)
------------------

* Feature - Documentation only update to address tickets.

1.85.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2021-08-11)
------------------

* Feature - Documentation updates for ECS.

1.83.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2021-07-15)
------------------

* Feature - Documentation updates for support of awsvpc mode on Windows.

1.80.0 (2021-06-02)
------------------

* Feature - Documentation updates for Amazon ECS.

1.79.0 (2021-05-26)
------------------

* Feature - The release adds support for registering External instances to your Amazon ECS clusters.

1.78.0 (2021-05-10)
------------------

* Feature - This release contains updates for Amazon ECS.

1.77.0 (2021-04-29)
------------------

* Feature - Add support for EphemeralStorage on TaskDefinition and TaskOverride

1.76.0 (2021-03-15)
------------------

* Feature - This is for ecs exec feature release which includes two new APIs - execute-command and update-cluster and an AWS CLI customization for execute-command API

1.75.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2021-01-19)
------------------

* Feature - This release adds support to include task definition metadata information such as registeredAt, deregisteredAt, registeredBy as part of DescribeTaskDefinition API.

1.72.0 (2020-11-23)
------------------

* Feature - This release adds support for updating capacity providers, specifying custom instance warmup periods for capacity providers, and using deployment circuit breaker for your ECS Services.

1.71.0 (2020-11-09)
------------------

* Feature - This release provides native support for specifying Amazon FSx for Windows File Server file systems as volumes in your Amazon ECS task definitions.

1.70.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2020-06-11)
------------------

* Feature - This release adds support for deleting capacity providers.

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.64.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2020-05-18)
------------------

* Feature - This release adds support for specifying environment files to add environment variables to your containers.

1.61.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2020-04-08)
------------------

* Feature - This release provides native support for specifying Amazon EFS file systems as volumes in your Amazon ECS task definitions.

1.59.0 (2020-03-16)
------------------

* Feature - This release adds the ability to update the task placement strategy and constraints for Amazon ECS services.

1.58.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2020-01-24)
------------------

* Feature - This release provides support for tagging Amazon ECS task sets for services using external deployment controllers.

1.56.0 (2020-01-17)
------------------

* Feature - This release provides a public preview for specifying Amazon EFS file systems as volumes in your Amazon ECS task definitions.

1.55.0 (2019-12-17)
------------------

* Feature - Documentation updates for Amazon ECS.

1.54.0 (2019-12-03)
------------------

* Feature - This release supports ECS Capacity Providers, Fargate Spot, and ECS Cluster Auto Scaling.  These features enable new ways for ECS to manage compute capacity used by tasks.

1.53.0 (2019-11-20)
------------------

* Feature - Added support for CPU and memory task-level overrides on the RunTask and StartTask APIs.  Added location information to Tasks.

1.52.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2019-09-27)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) removes FirelensConfiguration from the DescribeTask output during the FireLens public preview.

1.50.0 (2019-09-19)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for container image manifest digests. This enables you to identify all tasks launched using a container image pulled from ECR in order to correlate what was built with where it is running.

1.49.0 (2019-09-03)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for attaching Amazon Elastic Inference accelerators to your containers. This enables you to run deep learning inference workloads with hardware acceleration in a more efficient way.

1.48.0 (2019-08-30)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for modifying the cluster settings for existing clusters, which enables you to toggle whether Container Insights is enabled or not. Support is also introduced for custom log routing using the ECS FireLens integration.

1.47.0 (2019-08-29)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for including Docker container IDs in the API response when describing and stopping tasks. This enables customers to easily map containers to the tasks they are associated with.

1.46.0 (2019-08-16)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for controlling the usage of swap space on a per-container basis for Linux containers.

1.45.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2019-07-18)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for cluster settings. Cluster settings specify whether CloudWatch Container Insights is enabled or disabled for the cluster.

1.43.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2019-06-06)
------------------

* Feature - This release of Amazon Elastic Container Service (Amazon ECS) introduces support for launching container instances using supported Amazon EC2 instance types that have increased elastic network interface density. Using these instance types and opting in to the awsvpcTrunking account setting provides increased elastic network interface (ENI) density on newly launched container instances which allows you to place more tasks on each container instance.

1.40.0 (2019-05-21)
------------------

* Feature - API update.

1.39.0 (2019-05-15)
------------------

* Feature - API update.

1.38.0 (2019-05-14)
------------------

* Feature - API update.

1.37.0 (2019-05-01)
------------------

* Feature - API update.

1.36.0 (2019-03-27)
------------------

* Feature - API update.

1.35.0 (2019-03-22)
------------------

* Feature - API update.

1.34.0 (2019-03-21)
------------------

* Feature - API update.

1.33.0 (2019-03-18)
------------------

* Feature - API update.

1.32.0 (2019-03-14)
------------------

* Feature - API update.

1.31.0 (2019-03-07)
------------------

* Feature - API update.

1.30.0 (2019-02-08)
------------------

* Feature - API update.

1.29.0 (2019-02-04)
------------------

* Feature - API update.

1.28.0 (2019-01-04)
------------------

* Feature - API update.

1.27.0 (2018-12-11)
------------------

* Feature - API update.

1.26.0 (2018-11-28)
------------------

* Feature - API update.

1.25.0 (2018-11-20)
------------------

* Feature - API update.

1.24.0 (2018-11-16)
------------------

* Feature - API update.

1.23.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.23.0 (2018-11-15)
------------------

* Feature - API update.

1.22.0 (2018-10-24)
------------------

* Feature - API update.

1.21.0 (2018-10-23)
------------------

* Feature - API update.

1.20.0 (2018-09-17)
------------------

* Feature - API update.

1.19.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.18.0 (2018-09-05)
------------------

* Feature - API update.

1.17.0 (2018-08-09)
------------------

* Feature - API update.

1.16.0 (2018-07-25)
------------------

* Feature - API update.

1.15.0 (2018-06-26)
------------------

* Feature - API update.

1.14.0 (2018-06-12)
------------------

* Feature - API update.

1.13.0 (2018-05-22)
------------------

* Feature - API update.

1.12.0 (2018-03-22)
------------------

* Feature - API update.

1.11.0 (2018-03-20)
------------------

* Feature - API update.

1.10.0 (2018-03-08)
------------------

* Feature - API update.

1.9.0 (2018-03-06)
------------------

* Feature - API update.

1.8.0 (2017-12-22)
------------------

* Feature - API update.

1.7.0 (2017-12-08)
------------------

* Feature - API update.

1.6.0 (2017-12-04)
------------------

* Feature - API update.

1.5.0 (2017-11-29)
------------------

* Feature - API update.

1.4.0 (2017-11-15)
------------------

* Feature - API update.

1.3.0 (2017-11-03)
------------------

* Feature - API update.

1.2.0 (2017-09-22)
------------------

* Feature - API update.

1.1.0 (2017-09-13)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-ecs` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc14 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc13 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc8 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-05)
------------------

* Feature - API update.

1.0.0.rc3 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc2 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-ecs` gem.
