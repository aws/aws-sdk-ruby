Unreleased Changes
------------------

1.20.0 (2022-02-07)
------------------

* Feature - This release updates 3 API parameters. UpdateAssessmentFrameworkControlSet now requires the controls attribute, and CreateAssessmentFrameworkControl requires the id attribute. Additionally, UpdateAssessmentFramework now has a minimum length constraint for the controlSets attribute.

1.19.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2021-11-18)
------------------

* Feature - This release introduces a new feature for Audit Manager: Dashboard views. You can now view insights data for your active assessments, and quickly identify non-compliant evidence that needs to be remediated.

1.15.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2021-10-25)
------------------

* Feature - This release introduces a new feature for Audit Manager: Custom framework sharing. You can now share your custom frameworks with another AWS account, or replicate them into another AWS Region under your own account.

1.13.0 (2021-10-22)
------------------

* Feature - This release introduces character restrictions for ControlSet names. We updated regex patterns for the following attributes: ControlSet, CreateAssessmentFrameworkControlSet, and UpdateAssessmentFrameworkControlSet.

1.12.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2021-07-16)
------------------

* Feature - This release relaxes the S3 URL character restrictions in AWS Audit Manager. Regex patterns have been updated for the following attributes: s3RelativePath, destination, and s3ResourcePath. 'AWS' terms have also been replaced with entities to align with China Rebrand documentation efforts.

1.7.0 (2021-05-05)
------------------

* Feature - This release updates the CreateAssessmentFrameworkControlSet and UpdateAssessmentFrameworkControlSet API data types. For both of these data types, the control set name is now a required attribute.

1.6.0 (2021-04-27)
------------------

* Feature - This release restricts using backslashes in control, assessment, and framework names. The controlSetName field of the UpdateAssessmentFrameworkControlSet API now allows strings without backslashes.

1.5.0 (2021-04-05)
------------------

* Feature - AWS Audit Manager has updated the GetAssessment API operation to include a new response field called userRole. The userRole field indicates the role information and IAM ARN of the API caller.

1.4.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2021-02-03)
------------------

* Feature - This release adds AccessDeniedException to GetServicesInScope API.

1.2.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2021-01-12)
------------------

* Feature - This release introduces tag support for assessment frameworks. You can now add, remove, and get tags from existing frameworks, and specify the tags to apply when creating a custom framework.

1.0.0 (2020-12-08)
------------------

* Feature - Initial release of `aws-sdk-auditmanager`.

