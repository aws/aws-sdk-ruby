Unreleased Changes
------------------

1.89.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.88.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-02-02)
------------------

* Feature - The GWLB Flex Health Check project updates the default values of healthy-threshold-count from 3 to 5 and unhealthy-threshold-count from 3 to 2

1.83.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.82.0 (2022-11-17)
------------------

* Feature - Provides new target group attributes to turn on/off cross zone load balancing and configure target group health for Network Load Balancers and Application Load Balancers. Provides improvements to health check configuration for Network Load Balancers.

1.81.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2022-10-07)
------------------

* Feature - Gateway Load Balancer adds a new feature (target_failover) for customers to rebalance existing flows to a healthy target after marked unhealthy or deregistered. This allows graceful patching/upgrades of target appliances during maintenance windows, and helps reduce unhealthy target failover time.

1.79.0 (2022-08-25)
------------------

* Feature - Documentation updates for ELBv2.  Gateway Load Balancer now supports Configurable Flow Stickiness, enabling you to configure the hashing used to maintain stickiness of flows to a specific target appliance.

1.78.0 (2022-06-29)
------------------

* Feature - This release adds two attributes for ALB. One, helps to preserve the host header and the other helps to modify, preserve, or remove the X-Forwarded-For header in the HTTP request.

1.77.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2021-11-23)
------------------

* Feature - This release allows you to create internal Application and Network Load Balancers in dualstack mode. This release also adds an attribute to block internet gateway (IGW) access to the load balancer, preventing unintended access to your internal load balancers through an internet gateway.

1.72.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2021-10-14)
------------------

* Feature - Adds new option to filter by availability on each type of load balancer when describing ssl policies.

1.69.0 (2021-10-11)
------------------

* Feature - Enable support for ALB IPv6 Target Groups (IP Address Type)

1.68.0 (2021-09-27)
------------------

* Feature - Adds new ALB-type target group to facilitate forwarding traffic from NLB to ALB

1.67.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2021-07-30)
------------------

* Feature - Client Port Preservation ALB Attribute Launch

1.65.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-07-22)
------------------

* Feature - Adds support for enabling TLS protocol version and cipher suite headers to be sent to backend targets for Application Load Balancers.

1.63.0 (2021-07-21)
------------------

* Feature - Adds support for enabling TLS protocol version and cipher suite headers to be sent to backend targets for Application Load Balancers.

1.62.0 (2021-07-02)
------------------

* Feature - Documentation updates for elasticloadbalancingv2

1.61.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-02-12)
------------------

* Feature - Adds a target group attribute for application-based stickiness for Application Load Balancers and an update to the client IP preservation attribute for Network Load Balancers.

1.59.0 (2021-02-08)
------------------

* Feature - Adds a target group attribute for application-based stickiness for Application Load Balancers.

1.58.0 (2021-02-05)
------------------

* Feature - Adds a target group attribute for client IP preservation for Network Load Balancers.

1.57.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2020-11-13)
------------------

* Feature - Adds dualstack support for Network Load Balancers (TCP/TLS only), an attribute for WAF fail open for Application Load Balancers, and an attribute for connection draining for Network Load Balancers.

1.55.0 (2020-11-10)
------------------

* Feature - Added support for Gateway Load Balancers, which make it easy to deploy, scale, and run third-party virtual networking appliances.

1.54.0 (2020-10-29)
------------------

* Feature - Application Load Balancer (ALB) now supports the gRPC protocol-version. With this release, customers can use ALB to route and load balance gRPC traffic between gRPC enabled clients and microservices.

1.53.0 (2020-10-02)
------------------

* Feature - This release adds support for tagging listeners, rules, and target groups on creation. This release also supported tagging operations through tagging api's for listeners and rules.

1.52.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-09-08)
------------------

* Feature - Adds support for Application Load Balancers on Outposts.

1.49.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-08-17)
------------------

* Feature - Adds support for HTTP Desync Mitigation in Application Load Balancers.

1.47.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.45.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-05-27)
------------------

* Feature - This release added support for HTTP/2 ALPN preference lists for Network Load Balancers

1.42.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.1 (2020-03-02)
------------------

* Issue - Republish the previously yanked version.

1.40.0 (2020-02-28)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - Added a target group attribute to support sticky sessions for Network Load Balancers.

1.39.0 (2019-11-25)
------------------

* Feature - This release of Elastic Load Balancing V2 adds new subnet features for Network Load Balancers and a new routing algorithm for Application Load Balancers.

1.38.0 (2019-11-19)
------------------

* Feature - This release allows forward actions on Application Load Balancers to route requests to multiple target groups, based on the weight you specify for each target group.

1.37.0 (2019-11-15)
------------------

* Feature - Documentation-only change to the default value of the routing.http.drop_invalid_header_fields.enabled attribute.

1.36.0 (2019-11-12)
------------------

* Feature - You can configure your Application Load Balancer to either drop invalid header fields or forward them to targets.

1.35.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2019-09-12)
------------------

* Feature - Documentation updates for elasticloadbalancingv2: This release adds support for TLS SNI on Network Load Balancers

1.33.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2019-06-24)
------------------

* Feature - This release adds support for UDP on Network Load Balancers

1.30.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2019-05-21)
------------------

* Feature - API update.

1.28.0 (2019-05-15)
------------------

* Feature - API update.

1.27.0 (2019-05-14)
------------------

* Feature - API update.

1.26.0 (2019-03-27)
------------------

* Feature - API update.

1.25.0 (2019-03-22)
------------------

* Feature - API update.

1.24.0 (2019-03-21)
------------------

* Feature - API update.

1.23.0 (2019-03-18)
------------------

* Feature - API update.

1.22.0 (2019-03-14)
------------------

* Feature - API update.

1.21.0 (2019-02-25)
------------------

* Feature - API update.

1.20.0 (2019-01-24)
------------------

* Feature - API update.

1.19.0 (2018-12-06)
------------------

* Feature - API update.

1.18.0 (2018-11-29)
------------------

* Feature - API update.

1.17.0 (2018-11-20)
------------------

* Feature - API update.

1.16.0 (2018-10-24)
------------------

* Feature - API update.

1.15.0 (2018-10-23)
------------------

* Feature - API update.

1.14.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.13.0 (2018-09-05)
------------------

* Feature - API update.

1.12.0 (2018-07-25)
------------------

* Feature - API update.

1.11.0 (2018-06-26)
------------------

* Feature - API update.

1.10.0 (2018-05-30)
------------------

* Feature - API update.

1.9.0 (2018-05-24)
------------------

* Feature - API update.

1.8.0 (2018-02-22)
------------------

* Feature - API update.

1.7.0 (2018-01-11)
------------------

* Feature - API update.

1.6.0 (2017-11-17)
------------------

* Feature - API update.

1.5.0 (2017-11-07)
------------------

* Feature - API update.

1.4.0 (2017-10-10)
------------------

* Feature - API update.

1.3.0 (2017-09-13)
------------------

* Feature - API update.

1.2.0 (2017-09-07)
------------------

* Feature - API update.

1.1.0 (2017-08-31)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-elasticloadbalancingv2` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc13 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc12 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc8 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc2 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-elasticloadbalancingv2` gem.
