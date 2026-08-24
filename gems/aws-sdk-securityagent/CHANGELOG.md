Unreleased Changes
------------------

1.12.0 (2026-08-13)
------------------

* Feature - Add support for setting a maximum task-hour budget cap on penetration tests and code reviews, and for revalidating previously reported findings via a new REVALIDATION job type.

1.11.0 (2026-08-07)
------------------

* Feature - Added enableEmailMfa input field on Actor to enable email-based MFA during penetration tests. When enabled, a server-generated mfaForwardingAddress is returned. Set up a forwarding rule in your email provider to forward MFA emails to this address so the agent can complete email-based MFA login flows

1.10.0 (2026-07-30)
------------------

* Feature - Adds support for providing a branch override when configured integrated repositories

1.9.0 (2026-07-27)
------------------

* Feature - AWS Security Agent adds a new task hours field that reflects the active work done for a task.

1.8.0 (2026-07-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2026-06-17)
------------------

* Feature - Updated AWS Security Agent SDK model with new APIs for threat modeling, code review, security requirements, and additional integration providers.

1.6.0 (2026-05-28)
------------------

* Feature - Adding new BDD representation of endpoint ruleset

1.5.0 (2026-05-22)
------------------

* Feature - Adds support for verification scripts on penetration test findings. Customers can now download executable scripts to independently reproduce confirmed vulnerabilities, with instructions and required environment variables provided for each finding.

1.4.0 (2026-05-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2026-05-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2026-05-13)
------------------

* Feature - Add support for code reviews, a new resource type that enables automated security-focused static analysis of source code repositories.

1.1.0 (2026-05-04)
------------------

* Feature - AWS Security Agent is adding a new target domain verification method for private VPC penetration testing. Additionally, the target domain resource will now have a verification status reason field to surface additional details about domain verification

1.0.0 (2026-03-31)
------------------

* Feature - Initial release of `aws-sdk-securityagent`.

