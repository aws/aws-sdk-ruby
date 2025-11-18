Unreleased Changes
------------------

1.89.0 (2025-11-17)
------------------

* Feature - Adding DICTIONARY_DGA to dns-threat-protection as a new enum type. Customers can now set rules for dictionary dga protection

1.88.0 (2025-10-27)
------------------

* Feature - Update endpoint ruleset parameters casing

1.87.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2025-08-21)
------------------

* Feature - Remove incorrect endpoint tests

1.84.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2025-06-24)
------------------

* Feature - Add support for iterative DNS queries through the new INBOUND_DELEGATION endpoint. Add delegation support through the Outbound Endpoints with DELEGATE rules.

1.80.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2024-11-15)
------------------

* Feature - Route 53 Resolver DNS Firewall Advanced Rules allows you to monitor and block suspicious DNS traffic based on anomalies detected in the queries, such as DNS tunneling and Domain Generation Algorithms (DGAs).

1.72.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2024-10-10)
------------------

* Feature - Route 53 Resolver Forwarding Rules can now include a server name indication (SNI) in the target address for rules that use the DNS-over-HTTPS (DoH) protocol. When a DoH-enabled Outbound Resolver Endpoint forwards a request to a DoH server, it will provide the SNI in the TLS handshake.

1.70.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2024-07-08)
------------------

* Feature - Add v2 smoke tests and smithy smokeTests trait for SDK testing.

1.63.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2024-05-09)
------------------

* Feature - Update the DNS Firewall settings to correct a spelling issue.

1.56.0 (2024-04-30)
------------------

* Feature - Release of FirewallDomainRedirectionAction parameter on the Route 53 DNS Firewall Rule.  This allows customers to configure a DNS Firewall rule to inspect all the domains in the DNS redirection chain (default) , such as CNAME, ALIAS, DNAME, etc., or just the first domain and trust the rest.

1.55.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2024-01-08)
------------------

* Feature - This release adds support for query type configuration on firewall rules that enables customers for granular action (ALLOW, ALERT, BLOCK) by DNS query type.

1.52.0 (2023-12-18)
------------------

* Feature - Add DOH protocols in resolver endpoints.

1.51.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2023-09-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2023-07-20)
------------------

* Feature - This release adds support for Route 53 On Outposts, a new feature that allows customers to run Route 53 Resolver and Resolver endpoints locally on their Outposts.

1.46.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2023-05-11)
------------------

* Feature - Update FIPS endpoints for GovCloud (US) regions in SDK.

1.40.0 (2023-03-08)
------------------

* Feature - Add dual-stack and IPv6 support for Route 53 Resolver Endpoint,Add IPv6 target IP in Route 53 Resolver Forwarding Rule

1.39.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.38.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2021-10-25)
------------------

* Feature - New API for ResolverConfig, which allows autodefined rules for reverse DNS resolution to be disabled for a VPC

1.31.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2021-08-18)
------------------

* Feature - Documentation updates for Route 53 Resolver

1.28.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-06-03)
------------------

* Feature - Documentation updates for Route 53 Resolver

1.25.0 (2021-04-01)
------------------

* Feature - Route 53 Resolver DNS Firewall is a firewall service that allows you to filter and regulate outbound DNS traffic for your VPCs.

1.24.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2020-12-17)
------------------

* Feature - Route 53 Resolver adds support for enabling resolver DNSSEC validation in virtual private cloud (VPC).

1.21.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2020-08-26)
------------------

* Feature - Route 53 Resolver adds support for resolver query logs

1.18.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.15.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2019-05-21)
------------------

* Feature - API update.

1.6.0 (2019-05-15)
------------------

* Feature - API update.

1.5.0 (2019-05-14)
------------------

* Feature - API update.

1.4.0 (2019-03-21)
------------------

* Feature - API update.

1.3.0 (2019-03-18)
------------------

* Feature - API update.

1.2.0 (2019-03-14)
------------------

* Feature - API update.

1.1.0 (2018-11-20)
------------------

* Feature - API update.

1.0.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.0.0 (2018-11-15)
------------------

* Feature - Initial release of `aws-sdk-route53resolver`.
