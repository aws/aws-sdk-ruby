Unreleased Changes
------------------

1.119.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2025-10-09)
------------------

* Feature - This release adds the ability to throw WafLimitsExceededException when the maximum number of Application Load Balancer (ALB) associations per AWS WAF v2 WebACL is exceeded.

1.117.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2025-08-22)
------------------

* Feature - test and verified, safe to release

1.115.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.113.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2025-06-17)
------------------

* Feature - AWS WAF can now suggest protection packs for you based on the application information you provide when you create a webACL.

1.111.0 (2025-06-11)
------------------

* Feature - WAF now provides two DDoS protection options: resource-level monitoring for Application Load Balancers and the AWSManagedRulesAntiDDoSRuleSet managed rule group for CloudFront distributions.

1.110.0 (2025-06-05)
------------------

* Feature - AWS WAF adds support for ASN-based traffic filtering and support for ASN-based rate limiting.

1.109.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2025-03-26)
------------------

* Feature - This release adds the ability to associate an AWS WAF v2 web ACL with an AWS Amplify App.

1.105.0 (2025-03-17)
------------------

* Feature - AWS WAF now lets you inspect fragments of request URIs. You can specify the scope of the URI to inspect and narrow the set of URI fragments.

1.104.0 (2025-03-06)
------------------

* Feature - You can now perform an exact match or rate limit aggregation against the web request's JA4 fingerprint.

1.103.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2025-02-14)
------------------

* Feature - The WAFv2 API now supports configuring data protection in webACLs.

1.101.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.99.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2024-10-21)
------------------

* Feature - Add a property to WebACL to indicate whether it's been retrofitted by Firewall Manager.

1.96.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2024-08-29)
------------------

* Feature - The minimum request rate for a rate-based rule is now 10. Before this, it was 100.

1.88.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2024-07-01)
------------------

* Feature - JSON body inspection: Update documentation to clarify that JSON parsing doesn't include full validation.

1.86.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2024-05-22)
------------------

* Feature - You can now use Security Lake to collect web ACL traffic data.

1.81.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2024-04-11)
------------------

* Feature - Adds an updated version of smoke tests, including smithy trait, for SDK testing.

1.78.0 (2024-03-07)
------------------

* Feature - You can increase the max request body inspection size for some regional resources. The size setting is in the web ACL association config. Also, the AWSManagedRulesBotControlRuleSet EnableMachineLearning setting now takes a Boolean instead of a primitive boolean type, for languages like Java.

1.77.0 (2024-02-28)
------------------

* Feature - AWS WAF now supports configurable time windows for request aggregation with rate-based rules. Customers can now select time windows of 1 minute, 2 minutes or 10 minutes, in addition to the previously supported 5 minutes.

1.76.0 (2024-02-06)
------------------

* Feature - You can now delete an API key that you've created for use with your CAPTCHA JavaScript integration API.

1.75.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2023-10-27)
------------------

* Feature - Updates the descriptions for the calls that manage web ACL associations, to provide information for customer-managed IAM policies.

1.71.0 (2023-09-28)
------------------

* Feature - Correct and improve the documentation for the FieldToMatch option JA3 fingerprint.

1.70.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2023-09-25)
------------------

* Feature - You can now perform an exact match against the web request's JA3 fingerprint.

1.68.0 (2023-09-06)
------------------

* Feature - The targeted protection level of the Bot Control managed rule group now provides optional, machine-learning analysis of traffic statistics to detect some bot-related activity. You can enable or disable the machine learning functionality through the API.

1.67.0 (2023-07-19)
------------------

* Feature - Added the URI path to the custom aggregation keys that you can specify for a rate-based rule.

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
