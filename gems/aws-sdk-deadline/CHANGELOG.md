Unreleased Changes
------------------

1.54.0 (2026-05-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2026-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2026-04-29)
------------------

* Feature - Adds support for rtx-pro-server-6000 GPU accelerator for service-managed fleets.

1.51.0 (2026-04-13)
------------------

* Feature - Adds GetMonitorSettings and UpdateMonitorSettings APIs to Deadline Cloud. Enables reading and writing monitor settings as key-value pairs (up to 64 keys per monitor). UpdateMonitorSettings supports upsert and delete (via empty value) semantics and is idempotent.

1.50.0 (2026-04-06)
------------------

* Feature - Added 8 batch APIs (BatchGetJob, BatchGetStep, BatchGetTask, BatchGetSession, BatchGetSessionAction, BatchGetWorker, BatchUpdateJob, BatchUpdateTask) for bulk operations. Monitors can now use an Identity Center instance in a different region via the identityCenterRegion parameter.

1.49.0 (2026-04-02)
------------------

* Feature - AWS Deadline Cloud now supports configurable scheduling on each queue. The scheduling configuration controls how workers are distributed across jobs.

1.48.0 (2026-03-30)
------------------

* Feature - AWS Deadline Cloud now supports three new fleet auto scaling settings. With scale out rate, you can configure how quickly workers launch. With worker idle duration, you can set how long workers wait before shutting down. With standby worker count, you can keep idle workers ready for fast job start.

1.47.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2026-03-06)
------------------

* Feature - AWS Deadline Cloud now supports cost scale factors for farms, enabling studios to adjust reported costs to reflect their actual rendering economics. Adjusted costs are reflected in Deadline Cloud's Usage Explorer and Budgets.

1.45.0 (2026-02-06)
------------------

* Feature - Adds support for tagging jobs during job creation

1.44.0 (2026-01-27)
------------------

* Feature - AWS Deadline Cloud now supports editing job names and descriptions after submission.

1.43.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2026-01-15)
------------------

* Feature - AWS Deadline Cloud now supports tagging Budget resources with ABAC for permissions management and selecting up to 16 filter values in the monitor and Search API.

1.41.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2025-10-30)
------------------

* Feature - Update endpoint ruleset parameters casing

1.37.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2025-08-21)
------------------

* Feature - Remove incorrect endpoint tests

1.34.0 (2025-08-11)
------------------

* Feature - Adds support for Wait and Save feature in service-managed fleets

1.33.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2025-07-29)
------------------

* Feature - Adds support for tag management on monitors.

1.30.0 (2025-07-21)
------------------

* Feature - Add support for VPC resource endpoints in Service Managed Fleets

1.29.0 (2025-07-03)
------------------

* Feature - Added fields for output manifest reporting and task chunking parameters

1.28.0 (2025-06-26)
------------------

* Feature - Added fields to track cumulative task retry attempts for steps and jobs

1.27.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2025-05-27)
------------------

* Feature - AWS Deadline Cloud service-managed fleets now support storage profiles. With storage profiles, you can map file paths between a workstation and the worker hosts running the job.

1.25.0 (2025-05-12)
------------------

* Feature - AWS Deadline Cloud service-managed fleets now support configuration scripts. Configuration scripts make it easy to install additional software, like plugins and packages, onto a worker.

1.24.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2025-04-30)
------------------

* Feature - Adds support for tag management on workers and tag inheritance from fleets to their associated workers.

1.22.0 (2025-03-31)
------------------

* Feature - With this release you can use a new field to specify the search term match type. Search term match types currently support fuzzy and contains matching.

1.21.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2025-01-28)
------------------

* Feature - feature: Deadline: Add support for limiting the concurrent usage of external resources, like floating licenses, using limits and the ability to constrain the maximum number of workers that work on a job

1.18.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2024-11-14)
------------------

* Feature - Adds support for select GPU accelerated instance types when creating new service-managed fleets.

1.16.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2024-10-07)
------------------

* Feature - Add support for using the template from a previous job during job creation and listing parameter definitions for a job.

1.14.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2024-08-19)
------------------

* Feature - This release adds additional search fields and provides sorting by multiple fields.

1.7.0 (2024-07-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2024-04-01)
------------------

* Feature - Initial release of `aws-sdk-deadline`.

