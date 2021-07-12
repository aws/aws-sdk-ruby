Unreleased Changes
------------------

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

