Unreleased Changes
------------------

1.94.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2023-04-04)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling

1.88.0 (2023-04-04)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling

1.87.0 (2023-03-30)
------------------

* Feature - Amazon EC2 Auto Scaling now supports Elastic Load Balancing traffic sources with the AttachTrafficSources, DetachTrafficSources, and DescribeTrafficSources APIs. This release also introduces a new activity status, "WaitingForConnectionDraining", for VPC Lattice to the DescribeScalingActivities API.

1.86.0 (2023-02-10)
------------------

* Feature - You can now either terminate/replace, ignore, or wait for EC2 Auto Scaling instances on standby or protected from scale in. Also, you can also roll back changes from a failed instance refresh.

1.85.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.84.0 (2022-12-08)
------------------

* Feature - Adds support for metric math for target tracking scaling policies, saving you the cost and effort of publishing a custom metric to CloudWatch. Also adds support for VPC Lattice by adding the Attach/Detach/DescribeTrafficSources APIs and a new health check type to the CreateAutoScalingGroup API.

1.83.0 (2022-11-10)
------------------

* Feature - This release adds a new price capacity optimized allocation strategy for Spot Instances to help customers optimize provisioning of Spot Instances via EC2 Auto Scaling, EC2 Fleet, and Spot Fleet. It allocates Spot Instances based on both spare capacity availability and Spot Instance price.

1.82.0 (2022-11-07)
------------------

* Feature - This release adds support for two new attributes for attribute-based instance type selection - NetworkBandwidthGbps and AllowedInstanceTypes.

1.81.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2022-07-25)
------------------

* Feature - Documentation update for Amazon EC2 Auto Scaling.

1.79.0 (2022-04-19)
------------------

* Feature - EC2 Auto Scaling now adds default instance warm-up times for all scaling activities, health check replacements, and other replacement events in the Auto Scaling instance lifecycle.

1.78.0 (2022-02-24)
------------------

* Feature - You can now hibernate instances in a warm pool to stop instances without deleting their RAM contents. You can now also return instances to the warm pool on scale in, instead of always terminating capacity that you will need later.

1.77.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2021-11-26)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling.

1.73.0 (2021-11-24)
------------------

* Feature - Customers can now configure predictive scaling policies to proactively scale EC2 Auto Scaling groups based on any CloudWatch metrics that more accurately represent the load on the group than the four predefined metrics. They can also use math expressions to further customize the metrics.

1.72.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2021-10-27)
------------------

* Feature - This release adds support for attribute-based instance type selection, a new EC2 Auto Scaling feature that lets customers express their instance requirements as a set of attributes, such as vCPU, memory, and storage.

1.70.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-10-14)
------------------

* Feature - Amazon EC2 Auto Scaling now supports filtering describe Auto Scaling groups API using tags

1.68.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2021-08-05)
------------------

* Feature - EC2 Auto Scaling adds configuration checks and Launch Template validation to Instance Refresh.

1.66.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-06-30)
------------------

* Feature - Amazon EC2 Auto Scaling infrastructure improvements and optimizations.

1.63.0 (2021-06-04)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling

1.62.0 (2021-06-02)
------------------

* Feature - You can now launch EC2 instances with GP3 volumes when using Auto Scaling groups with Launch Configurations

1.61.0 (2021-05-19)
------------------

* Feature - With this release, customers can easily use Predictive Scaling as a policy directly through Amazon EC2 Auto Scaling configurations to proactively scale their applications ahead of predicted demand.

1.60.0 (2021-04-08)
------------------

* Feature - Amazon EC2 Auto Scaling announces Warm Pools that help applications to scale out faster by pre-initializing EC2 instances and save money by requiring fewer continuously running instances

1.59.0 (2021-03-18)
------------------

* Feature - Amazon EC2 Auto Scaling Instance Refresh now supports phased deployments.

1.58.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2021-03-09)
------------------

* Feature - EC2 Auto Scaling now supports setting a local time zone for cron expressions in scheduled actions, removing the need to adjust for Daylight Saving Time (DST)

1.56.0 (2021-03-08)
------------------

* Feature - Documentation updates for autoscaling for capacity-optimized-prioritized SpotAllocationStrategy

1.55.0 (2021-02-23)
------------------

* Feature - Adds a new optional IncludeDeletedGroups parameter to the DescribeScalingActivities API.

1.54.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2021-01-06)
------------------

* Feature - This update increases the number of instance types that can be added to the overrides within an mixed instances group configuration.

1.52.0 (2020-12-11)
------------------

* Feature - Documentation updates and corrections for Amazon EC2 Auto Scaling API Reference and SDKs.

1.51.0 (2020-11-23)
------------------

* Feature - Documentation updates and corrections for Amazon EC2 Auto Scaling API Reference and SDKs.

1.50.0 (2020-11-19)
------------------

* Feature - You can now create Auto Scaling groups with multiple launch templates using a mixed instances policy, making it easy to deploy an AMI with an architecture that is different from the rest of the group.

1.49.0 (2020-11-10)
------------------

* Feature - Documentation updates and corrections for Amazon EC2 Auto Scaling API Reference and SDKs.

1.48.0 (2020-11-04)
------------------

* Feature - Capacity Rebalance helps you manage and maintain workload availability during Spot interruptions by proactively augmenting your Auto Scaling group with a new instance before interrupting an old one.

1.47.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-07-28)
------------------

* Feature - Now you can enable Instance Metadata Service Version 2 (IMDSv2) or disable the instance metadata endpoint with Launch Configurations.

1.43.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-06-29)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling.

1.41.0 (2020-06-24)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling.

1.40.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2020-06-16)
------------------

* Feature - Introducing instance refresh, a feature that helps you update all instances in an Auto Scaling group in a rolling fashion (for example, to apply a new AMI or instance type). You can control the pace of the refresh by defining the percentage of the group that must remain running/healthy during the replacement process and the time for new instances to warm up between replacements.

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

1.36.0 (2020-05-22)
------------------

* Feature - Documentation updates for Amazon EC2 Auto Scaling

1.35.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-04-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-02-19)
------------------

* Feature - Doc update for EC2 Auto Scaling: Add Enabled parameter for PutScalingPolicy

1.31.0 (2020-02-18)
------------------

* Feature - Amazon EC2 Auto Scaling now supports the ability to enable/disable target tracking, step scaling, and simple scaling policies.

1.30.0 (2019-11-19)
------------------

* Feature - Amazon EC2 Auto Scaling now supports Instance Weighting and Max Instance Lifetime. Instance Weighting allows specifying the capacity units for each instance type included in the MixedInstancesPolicy and how they would contribute to your application's performance. Max Instance Lifetime allows specifying the maximum length of time that an instance can be in service. If any instances are approaching this limit, Amazon EC2 Auto Scaling gradually replaces them.

1.29.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2019-08-12)
------------------

* Feature - Amazon EC2 Auto Scaling now supports a new Spot allocation strategy "capacity-optimized" that fulfills your request using Spot Instance pools that are optimally chosen based on the available Spot capacity.

1.27.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-07-17)
------------------

* Feature - Documentation updates for autoscaling

1.25.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-05-21)
------------------

* Feature - API update.

1.22.0 (2019-05-15)
------------------

* Feature - API update.

1.21.0 (2019-05-14)
------------------

* Feature - API update.

1.20.0 (2019-03-22)
------------------

* Feature - API update.

1.19.0 (2019-03-21)
------------------

* Feature - API update.

1.18.0 (2019-03-21)
------------------

* Feature - API update.

1.17.0 (2019-03-18)
------------------

* Feature - API update.

1.16.0 (2019-03-14)
------------------

* Feature - API update.

1.15.0 (2019-03-07)
------------------

* Feature - API update.

1.14.0 (2019-02-25)
------------------

* Feature - API update.

1.13.0 (2018-11-20)
------------------

* Feature - API update.

1.12.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.12.0 (2018-11-14)
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

1.7.0 (2018-08-14)
------------------

* Feature - API update.

1.6.0 (2018-06-26)
------------------

* Feature - API update.

1.5.0 (2018-02-20)
------------------

* Feature - API update.

1.4.0 (2017-11-30)
------------------

* Feature - API update.

1.3.0 (2017-09-14)
------------------

* Feature - API update.

1.2.0 (2017-09-13)
------------------

* Feature - API update.

1.1.0 (2017-09-11)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-autoscaling` gemspec metadata.

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

1.0.0.rc9 (2017-07-12)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc6 (2017-06-26)
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

* Issue - Fix resource model load path

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-autoscaling` gem.
