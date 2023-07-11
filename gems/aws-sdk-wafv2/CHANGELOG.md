Unreleased Changes
------------------

1.66.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2023-06-13)
------------------

* Feature - You can now detect and block fraudulent account creation attempts with the new AWS WAF Fraud Control account creation fraud prevention (ACFP) managed rule group AWSManagedRulesACFPRuleSet.

1.61.0 (2023-06-02)
------------------

* Feature - Added APIs to describe managed products. The APIs retrieve information about rule groups that are managed by AWS and by AWS Marketplace sellers.

1.60.0 (2023-06-01)
------------------

* Feature - Corrected the information for the header order FieldToMatch setting

1.59.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2023-05-30)
------------------

* Feature - This SDK release provides customers the ability to use Header Order as a field to match.

1.57.0 (2023-05-16)
------------------

* Feature - My AWS Service (placeholder) - You can now rate limit web requests based on aggregation keys other than IP addresses, and you can aggregate using combinations of keys. You can also rate limit all requests that match a scope-down statement, without further aggregation.

1.56.0 (2023-04-28)
------------------

* Feature - You can now associate a web ACL with a Verified Access instance.

1.55.0 (2023-04-20)
------------------

* Feature - You can now create encrypted API keys to use in a client application integration of the JavaScript CAPTCHA API . You can also retrieve a list of your API keys and the JavaScript application integration URL.

1.54.0 (2023-04-11)
------------------

* Feature - For web ACLs that protect CloudFront protections, the default request body inspection size is now 16 KB, and you can use the new association configuration to increase the inspection size further, up to 64 KB. Sizes over 16 KB can incur additional costs.

1.53.0 (2023-04-04)
------------------

* Feature - This release rolls back association config feature for webACLs that protect CloudFront protections.

1.52.0 (2023-04-04)
------------------

* Feature - This release rolls back association config feature for webACLs that protect CloudFront protections.

1.51.0 (2023-04-03)
------------------

* Feature - For web ACLs that protect CloudFront protections, the default request body inspection size is now 16 KB, and you can use the new association configuration to increase the inspection size further, up to 64 KB. Sizes over 16 KB can incur additional costs.

1.50.0 (2023-02-23)
------------------

* Feature - You can now associate an AWS WAF v2 web ACL with an AWS App Runner service.

1.49.0 (2023-02-16)
------------------

* Feature - Added a notice for account takeover prevention (ATP). The interface incorrectly lets you to configure ATP response inspection in regional web ACLs in Region US East (N. Virginia), without returning an error. ATP response inspection is only available in web ACLs that protect CloudFront distributions.

1.48.0 (2023-02-15)
------------------

* Feature - For protected CloudFront distributions, you can now use the AWS WAF Fraud Control account takeover prevention (ATP) managed rule group to block new login attempts from clients that have recently submitted too many failed login attempts.

1.47.0 (2023-01-18)
------------------

* Feature - Improved the visibility of the guidance for updating AWS WAF resources, such as web ACLs and rule groups.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.46.0 (2022-12-12)
------------------

* Feature - Documents the naming requirement for logging destinations that you use with web ACLs.

1.45.0 (2022-11-07)
------------------

* Feature - The geo match statement now adds labels for country and region. You can match requests at the region level by combining a geo match statement with label match statements.

1.44.0 (2022-10-27)
------------------

* Feature - This release adds the following: Challenge rule action, to silently verify client browsers; rule group rule action override to any valid rule action, not just Count; token sharing between protected applications for challenge/CAPTCHA token; targeted rules option for Bot Control managed rule group.

1.43.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2022-09-23)
------------------

* Feature - Add the default specification for ResourceType in ListResourcesForWebACL.

1.41.0 (2022-08-03)
------------------

* Feature - You can now associate an AWS WAF web ACL with an Amazon Cognito user pool.

1.40.0 (2022-07-15)
------------------

* Feature - This SDK release provide customers ability to add sensitivity level for WAF SQLI Match Statements.

1.39.0 (2022-04-29)
------------------

* Feature - You can now inspect all request headers and all cookies. You can now specify how to handle oversize body contents in your rules that inspect the body.

1.38.0 (2022-04-08)
------------------

* Feature - Add a new CurrentDefaultVersion field to ListAvailableManagedRuleGroupVersions API response; add a new VersioningSupported boolean to each ManagedRuleGroup returned from ListAvailableManagedRuleGroups API response.

1.37.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2022-02-22)
------------------

* Feature - Updated descriptions for logging configuration.

1.35.0 (2022-02-10)
------------------

* Feature - Adds support for AWS WAF Fraud Control account takeover prevention (ATP), with configuration options for the new managed rule group AWSManagedRulesATPRuleSet and support for application integration SDKs for Android and iOS mobile apps.

1.34.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-11-15)
------------------

* Feature - Your options for logging web ACL traffic now include Amazon CloudWatch Logs log groups and Amazon S3 buckets.

1.30.0 (2021-11-08)
------------------

* Feature - You can now configure rules to run a CAPTCHA check against web requests and, as needed, send a CAPTCHA challenge to the client.

1.29.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-09-22)
------------------

* Feature - Added the regex match rule statement, for matching web requests against a single regular expression.

1.26.0 (2021-09-14)
------------------

* Feature - This release adds support for including rate based rules in a rule group.

1.25.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2021-08-09)
------------------

* Feature - This release adds APIs to support versioning feature of AWS WAF Managed rule groups

1.23.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2021-06-24)
------------------

* Feature - Added support for 15 new text transformation.

1.20.0 (2021-04-01)
------------------

* Feature - Added support for ScopeDownStatement for ManagedRuleGroups, Labels, LabelMatchStatement, and LoggingFilter. For more information on these features, see the AWS WAF Developer Guide.

1.19.0 (2021-03-29)
------------------

* Feature - Added custom request handling and custom response support in rule actions and default action; Added the option to inspect the web request body as parsed and filtered JSON.

1.18.0 (2021-03-11)
------------------

* Feature - Correct the documentation about JSON body parsing behavior and IP set update behavior

1.17.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2021-02-12)
------------------

* Feature - Added the option to inspect the web request body as parsed and filtered JSON (new FieldToMatch type JsonBody), in addition to the existing option to inspect the web request body as plain text.

1.15.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2020-10-01)
------------------

* Feature - AWS WAF is now available for AWS AppSync GraphQL APIs. AWS WAF protects against malicious attacks with AWS Managed Rules or your own custom rules. For more information see the AWS WAF Developer Guide.

1.13.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2020-07-31)
------------------

* Feature - Add ManagedByFirewallManager flag to the logging configuration, which indicates whether AWS Firewall Manager controls the configuration.

1.9.0 (2020-07-09)
------------------

* Feature - Added the option to use IP addresses from an HTTP header that you specify, instead of using the web request origin. Available for IP set matching, geo matching, and rate-based rule count aggregation.

1.8.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.6.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2020-03-31)
------------------

* Feature - Added support for AWS Firewall Manager for WAFv2 and PermissionPolicy APIs for WAFv2.

1.2.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2020-02-21)
------------------

* Feature - Documentation updates for AWS WAF (wafv2) to correct the guidance for associating a web ACL to a CloudFront distribution.

1.0.0 (2019-11-25)
------------------

* Feature - Initial release of `aws-sdk-wafv2`.
