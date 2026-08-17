Unreleased Changes
------------------

1.32.0 (2026-07-31)
------------------

* Feature - Removing Smithy RPC v2 CBOR support that was added in previous SDK release.

1.31.0 (2026-07-23)
------------------

* Feature - This release adds Smithy RPC v2 CBOR as an additional protocol alongside the existing AWS JSON 1.0. The SDK will prioritize its most performant protocol.

1.30.0 (2026-07-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2026-05-22)
------------------

* Feature - Adding new BDD representation of endpoint ruleset

1.28.0 (2026-05-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2026-05-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2026-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2025-11-19)
------------------

* Feature - Add GroupSharingPreference, CostCategoryGroupSharingPreferenceArn, and CostCategoryGroupSharingPreferenceEffectiveDate to Bill Estimate. Add GroupSharingPreference and CostCategoryGroupSharingPreferenceArn to Bill Scenario.

1.19.0 (2025-10-28)
------------------

* Feature - Update endpoint ruleset parameters casing

1.18.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2025-08-08)
------------------

* Feature - Removed incorrect endpoint tests

1.15.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2025-06-05)
------------------

* Feature - Updating the minimum for List APIs to be 1 (instead of 0)

1.11.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2025-05-29)
------------------

* Feature - Add AFTER_DISCOUNTS_AND_COMMITMENTS to Workload Estimate Rate Type. Set ListWorkLoadEstimateUsage maxResults range to minimum of 0 and maximum of 300.

1.9.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2025-03-27)
------------------

* Feature - Added standaloneAccountRateTypeSelections for GetPreferences and UpdatePreferences APIs. Added STALE enum value to status attribute in GetBillScenario and UpdateBillScenario APIs.

1.6.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2025-01-29)
------------------

* Feature - Added ConflictException error type in DeleteBillScenario, BatchDeleteBillScenarioCommitmentModification, BatchDeleteBillScenarioUsageModification, BatchUpdateBillScenarioUsageModification, and BatchUpdateBillScenarioCommitmentModification API operations.

1.3.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2024-12-26)
------------------

* Feature - Added ConflictException to DeleteBillEstimate.

1.1.0 (2024-12-10)
------------------

* Feature - Updated condition key inference from Workload Estimate, Bill Scenario, and Bill Estimate resources. Updated documentation links.

1.0.0 (2024-11-22)
------------------

* Feature - Initial release of `aws-sdk-bcmpricingcalculator`.

