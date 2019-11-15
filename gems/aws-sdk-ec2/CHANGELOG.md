Unreleased Changes
------------------

1.116.0 (2019-11-15)
------------------

* Feature - You can now add tags while copying snapshots. Previously, a user had to first copy the snapshot and then add tags to the copied snapshot manually. Moving forward, you can specify the list of tags you wish to be applied to the copied snapshot as a parameter on the Copy Snapshot API.

1.115.0 (2019-11-04)
------------------

* Feature - Documentation updates for ec2

1.114.0 (2019-10-24)
------------------

* Feature - This release updates CreateFpgaImage to support tagging FPGA images on creation

1.113.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2019-10-10)
------------------

* Feature - New EC2 M5n, M5dn, R5n, R5dn instances with 100 Gbps network performance and Elastic Fabric Adapter (EFA) for ultra low latency; New A1.metal bare metal instance powered by AWS Graviton Processors

1.111.0 (2019-10-03)
------------------

* Feature - This release allows customers to purchase regional EC2 RIs on a future date.

1.110.0 (2019-09-20)
------------------

* Feature - G4 instances are Amazon EC2 instances based on NVIDIA T4 GPUs and are designed to provide cost-effective machine learning inference for applications, like image classification, object detection, recommender systems, automated speech recognition, and language translation. G4 instances are also a cost-effective platform for building and running graphics-intensive applications, such as remote graphics workstations, video transcoding, photo-realistic design, and game streaming in the cloud. To get started with G4 instances visit https://aws.amazon.com/ec2/instance-types/g4.

1.109.0 (2019-09-12)
------------------

* Feature - Fix for FleetActivityStatus and FleetStateCode enum

1.108.0 (2019-09-11)
------------------

* Feature - This release adds support for new data fields and log format in VPC flow logs.

1.107.0 (2019-09-09)
------------------

* Feature - This release expands Site-to-Site VPN tunnel options to allow customers to restrict security algorithms and configure timer settings for VPN connections. Customers can specify these new options while creating new VPN connections, or they can modify the tunnel options on existing connections using a new API.

1.106.0 (2019-08-23)
------------------

* Feature - This release of EC2 VM Import Export adds support for exporting Amazon Machine Image(AMI)s to a VM file

1.105.0 (2019-08-15)
------------------

* Feature - This release adds an option to use private certificates from AWS Certificate Manager (ACM) to authenticate a Site-to-Site VPN connection's tunnel endpoints and customer gateway device.

1.104.0 (2019-08-14)
------------------

* Feature - This release adds a new API called SendDiagnosticInterrupt, which allows you to send diagnostic interrupts to your EC2 instance.

1.103.0 (2019-08-05)
------------------

* Feature - Amazon EC2 now supports a new Spot allocation strategy "Capacity-optimized" that fulfills your request using Spot Instance pools that are optimally chosen based on the available Spot capacity.

1.102.0 (2019-07-26)
------------------

* Feature - You can now create EC2 Capacity Reservations using Availability Zone ID or Availability Zone name. You can view usage of Amazon EC2 Capacity Reservations per AWS account.

1.101.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2019-07-24)
------------------

* Feature - This release introduces support for split tunnel with AWS Client VPN, and also adds support for opt-in Regions in DescribeRegions API. In addition, customers can now also tag Launch Templates on creation.

1.99.0 (2019-07-03)
------------------

* Feature - AssignPrivateIpAddresses response includes two new fields: AssignedPrivateIpAddresses, NetworkInterfaceId

1.98.0 (2019-07-01)
------------------

* Feature - This release adds support for specifying a maximum hourly price for all On-Demand and Spot instances in both Spot Fleet and EC2 Fleet.

1.97.0 (2019-06-28)
------------------

* Feature - You can now launch 8xlarge and 16xlarge instance sizes on the general purpose M5 and memory optimized R5 instance types.

1.96.0 (2019-06-25)
------------------

* Feature - Starting today, you can use Traffic Mirroring  to copy network traffic from an elastic network interface of Amazon EC2 instances and then send it to out-of-band security and monitoring appliances for content inspection, threat monitoring, and troubleshooting. These appliances can be deployed as individual instances, or as a fleet of instances behind a Network Load Balancer with a User Datagram Protocol (UDP) listener. Traffic Mirroring supports filters and packet truncation, so that you only extract the traffic of interest to monitor by using monitoring tools of your choice.

1.95.0 (2019-06-18)
------------------

* Feature - You can now launch new 12xlarge, 24xlarge, and metal instance sizes on the Amazon EC2 compute optimized C5 instance types featuring 2nd Gen Intel Xeon Scalable Processors.

1.94.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2019-06-14)
------------------

* Feature - Correction to enumerations in EC2 client.

1.92.0 (2019-06-13)
------------------

* Feature - G4 instances are Amazon EC2 instances based on NVIDIA T4 GPUs and are designed to provide cost-effective machine learning inference for applications, like image classification, object detection, recommender systems, automated speech recognition, and language translation. G4 instances are also a cost-effective platform for building and running graphics-intensive applications, such as remote graphics workstations, video transcoding, photo-realistic design, and game streaming in the cloud. To get started with G4 instances visit https://aws.amazon.com/ec2/instance-types/g4.

1.91.0 (2019-06-07)
------------------

* Feature - Adds DNS entries and NLB ARNs to describe-vpc-endpoint-connections API response. Adds owner ID to describe-vpc-endpoints and create-vpc-endpoint API responses.

1.90.0 (2019-06-04)
------------------

* Feature - This release adds support for Host Recovery feature which automatically restarts instances on to a new replacement host if failures are detected on Dedicated Host.

1.89.0 (2019-06-03)
------------------

* Feature - Amazon EC2 I3en instances are the new storage-optimized instances offering up to 60 TB NVMe SSD instance storage and up to 100 Gbps of network bandwidth.

1.88.0 (2019-05-29)
------------------

* Feature - Customers can now simultaneously take snapshots of multiple EBS volumes attached to an EC2 instance. With this new capability, snapshots guarantee crash-consistency across multiple volumes by preserving the order of IO operations. This new feature is fully integrated with Amazon Data Lifecycle Manager (DLM) allowing customers to automatically manage snapshots by creating lifecycle policies.

1.87.0 (2019-05-23)
------------------

* Feature - New APIs to enable EBS encryption by default feature. Once EBS encryption by default is enabled in a region within the account, all new EBS volumes and snapshot copies are always encrypted

1.86.0 (2019-05-22)
------------------

* Feature - This release adds idempotency support for associate, create route and authorization APIs for AWS Client VPN Endpoints.

1.85.0 (2019-05-21)
------------------

* Feature - API update.

1.84.0 (2019-05-15)
------------------

* Feature - API update.

1.83.0 (2019-05-14)
------------------

* Feature - API update.

1.82.0 (2019-05-01)
------------------

* Feature - API update.

1.81.0 (2019-04-29)
------------------

* Feature - API update.

1.80.0 (2019-04-24)
------------------

* Feature - API update.

1.79.0 (2019-04-17)
------------------

* Feature - API update.

1.78.0 (2019-04-02)
------------------

* Feature - API update.

1.77.0 (2019-03-27)
------------------

* Feature - API update.

1.76.0 (2019-03-22)
------------------

* Feature - API update.

1.75.0 (2019-03-21)
------------------

* Feature - API update.

1.74.0 (2019-03-18)
------------------

* Feature - API update.

1.73.0 (2019-03-14)
------------------

* Feature - API update.

1.72.0 (2019-03-06)
------------------

* Feature - API update.

1.71.0 (2019-03-01)
------------------

* Feature - API update.

1.70.0 (2019-02-14)
------------------

* Feature - API update.

1.69.0 (2019-02-06)
------------------

* Feature - API update.

1.68.0 (2019-02-05)
------------------

* Feature - API update.

1.67.0 (2019-01-18)
------------------

* Feature - API update.

1.66.0 (2019-01-10)
------------------

* Feature - API update.

1.65.0 (2018-12-19)
------------------

* Feature - API update.

1.64.0 (2018-12-18)
------------------

* Feature - API update.

1.63.0 (2018-12-07)
------------------

* Feature - API update.

1.62.0 (2018-11-29)
------------------

* Feature - API update.

1.61.0 (2018-11-28)
------------------

* Feature - API update.

1.60.0 (2018-11-27)
------------------

* Feature - API update.

1.59.0 (2018-11-20)
------------------

* Feature - API update.

1.58.0 (2018-11-19)
------------------

* Feature - API update.

1.57.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.57.0 (2018-11-14)
------------------

* Feature - API update.

1.56.0 (2018-11-07)
------------------

* Feature - API update.

1.55.0 (2018-11-06)
------------------

* Feature - API update.

1.54.0 (2018-10-25)
------------------

* Feature - API update.

1.53.0 (2018-10-24)
------------------

* Feature - API update.

1.52.0 (2018-10-23)
------------------

* Feature - API update.

1.51.0 (2018-10-11)
------------------

* Feature - API update.

1.50.0 (2018-09-28)
------------------

* Feature - API update.

1.49.0 (2018-09-25)
------------------

* Feature - API update.

1.48.0 (2018-09-20)
------------------

* Feature - API update.

1.47.0 (2018-09-17)
------------------

* Feature - API update.

1.46.0 (2018-09-12)
------------------

* Feature - API update.

1.45.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.44.0 (2018-09-05)
------------------

* Feature - API update.

1.43.0 (2018-08-21)
------------------

* Feature - API update.

1.42.0 (2018-08-16)
------------------

* Feature - API update.

1.41.0 (2018-08-07)
------------------

* Feature - API update.

1.40.0 (2018-07-26)
------------------

* Feature - API update.

1.39.0 (2018-07-25)
------------------

* Feature - API update.

1.38.0 (2018-07-10)
------------------

* Feature - API update.

1.37.0 (2018-07-03)
------------------

* Feature - API update.

1.36.0 (2018-06-26)
------------------

* Feature - API update.

1.35.0 (2018-06-04)
------------------

* Feature - API update.

1.34.0 (2018-05-17)
------------------

* Feature - API update.

1.33.0 (2018-05-10)
------------------

* Feature - API update.

1.32.0 (2018-05-08)
------------------

* Feature - API update.

1.31.0 (2018-05-02)
------------------

* Feature - API update.

1.30.0 (2018-04-19)
------------------

* Feature - API update.

1.29.0 (2018-03-01)
------------------

* Feature - API update.

1.28.0 (2018-02-21)
------------------

* Feature - API update.

1.27.0 (2018-02-12)
------------------

* Feature - API update.

1.26.0 (2018-02-09)
------------------

* Feature - API update.

1.25.0 (2018-01-17)
------------------

* Feature - API update.

1.24.0 (2017-12-22)
------------------

* Feature - API update.

1.23.0 (2017-12-21)
------------------

* Feature - API update.

1.22.0 (2017-12-19)
------------------

* Feature - API update.

1.21.0 (2017-11-30)
------------------

* Feature - API update.

1.20.0 (2017-11-30)
------------------

* Feature - API update.

1.19.0 (2017-11-29)
------------------

* Feature - API update.

1.18.0 (2017-11-16)
------------------

* Feature - API update.

1.17.0 (2017-11-09)
------------------

* Feature - API update.

1.16.0 (2017-11-08)
------------------

* Feature - API update.

1.15.0 (2017-11-07)
------------------

* Feature - API update.

1.14.0 (2017-10-26)
------------------

* Feature - API update.

1.13.0 (2017-10-20)
------------------

* Feature - API update.

1.12.0 (2017-10-16)
------------------

* Feature - API update.

1.11.0 (2017-10-10)
------------------

* Feature - API update.

1.10.0 (2017-10-03)
------------------

* Feature - API update.

1.9.0 (2017-09-21)
------------------

* Feature - API update.

1.8.0 (2017-09-19)
------------------

* Feature - API update.

1.7.0 (2017-09-18)
------------------

* Feature - API update.

* Issue - Update smoke test clean up steps

1.6.0 (2017-09-14)
------------------

* Feature - API update.

1.5.0 (2017-09-13)
------------------

* Feature - API update.

1.4.0 (2017-09-12)
------------------

* Feature - API update.

1.3.0 (2017-09-11)
------------------

* Feature - API update.

1.2.0 (2017-09-07)
------------------

* Feature - API update.

1.1.0 (2017-08-31)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-ec2` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc19 (2017-08-29)
------------------

* Feature - API update.

1.0.0.rc18 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc17 (2017-08-11)
------------------

* Feature - API update.

1.0.0.rc16 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc15 (2017-07-27)
------------------

* Feature - API update.

1.0.0.rc14 (2017-07-26)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-24)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-14)
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

* Issue - Fix resource model load path

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-ec2` gem.

