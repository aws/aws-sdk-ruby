Unreleased Changes
------------------

1.23.0 (2026-07-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2026-06-29)
------------------

* Feature - Amazon EVS introduces a VMware Cloud Foundation (VCF) self-deployed mode, along with new connectors to VCF components such as the Operations and SDDC managers to monitor coverage and usage.

1.21.0 (2026-05-26)
------------------

* Feature - Adding new BDD representation of endpoint ruleset

1.20.0 (2026-05-21)
------------------

* Feature - A new GetDepotUrl API has been added to retrieve a URL for accessing Amazon EVS custom addon packages. Customers can use this URL to configure vSphere Lifecycle Manager (vLCM) as an online depot source, enabling upgrades of addon components across ESXi hosts.

1.19.0 (2026-05-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2026-05-18)
------------------

* Feature - Amazon EVS now supports up to 32 hosts per EVS environment, increasing the previous host limit to allow a larger scale of VMware workload deployments and reduce operational overhead.

1.17.0 (2026-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2026-04-24)
------------------

* Feature - EVS now supports i7i.metal-24xl EC2 bare metal instance type, delivering high random IOPS performance with real-time latency, ideal for IO intensive and latency-sensitive workloads such as transactional databases, real-time analytics, and AI ML pre-processing.

1.15.0 (2026-04-20)
------------------

* Feature - Amazon EVS now allows you to create connectors to your vCenter appliances and create Windows Server entitlements for virtual machines running in your EVS environments

1.14.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2026-01-15)
------------------

* Feature - A new GetVersions API has been added to retrieve VCF, ESX versions, and EC2 instances provided by Amazon EVS. The CreateEnvironment API now allows you to select a VCF version and the CreateEnvironmentHost API introduces a optional esxVersion parameter.

1.11.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2025-10-24)
------------------

* Feature - Update endpoint ruleset parameters casing

1.7.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2025-09-11)
------------------

* Feature - CreateEnvironment API now supports parameters (isHcxPublic & hcxNetworkAclId) for HCX migration via public internet, adding flexibility for migration scenarios. New APIs have been added for associating (AssociateEipToVlan) & disassociating (DisassociateEipFromVlan) Elastic IP (EIP) addresses.

1.5.0 (2025-08-26)
------------------

* Feature - Remove incorrect endpoint tests

1.4.0 (2025-08-11)
------------------

* Feature - Update for general availability of Amazon Elastic VMware Service (EVS).

1.3.0 (2025-08-04)
------------------

* Feature - TagResource API now throws ServiceQuotaExceededException when the number of tags on the Amazon EVS resource exceeds the maximum allowed. TooManyTagsException is deprecated.

1.2.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2025-06-04)
------------------

* Feature - Initial release of `aws-sdk-evs`.

