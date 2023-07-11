Unreleased Changes
------------------

1.54.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.48.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2022-08-17)
------------------

* Feature - AWS App Mesh release to support Multiple Listener and Access Log Format feature

1.46.0 (2022-05-18)
------------------

* Feature - This release updates the existing Create and Update APIs for meshes and virtual nodes by adding a new IP preference field. This new IP preference field can be used to control the IP versions being used with the mesh and allows for IPv6 support within App Mesh.

1.45.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-06-10)
------------------

* Feature - AppMesh now supports additional routing capabilities in match and rewrites for Gateway Routes and Routes. Additionally, App Mesh also supports specifying DNS Response Types in Virtual Nodes.

1.35.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-02-02)
------------------

* Feature - App Mesh now supports mutual TLS with two-way peer authentication. You can specify client certificates, server-side TLS validation, and matching of Subject Alternative Names.

1.33.0 (2020-11-20)
------------------

* Feature - This release makes tag value a required attribute of the tag's key-value pair.

1.32.0 (2020-11-05)
------------------

* Feature - This release adds circuit breaking capabilities to your mesh with connection pooling and outlier detection support.

1.31.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-07-09)
------------------

* Feature - AppMesh now supports Ingress which allows resources outside a mesh to communicate to resources that are inside the mesh. See https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html

1.27.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-06-17)
------------------

* Feature - Adds support for route and virtual node listener timeouts.

1.25.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.25.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2020-05-20)
------------------

* Feature - List APIs for all resources now contain additional information: when a resource was created, last updated, and its current version number.

1.22.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-03-06)
------------------

* Feature - App Mesh now supports sharing a Mesh with other AWS accounts. Customers can use AWS Resource Access Manager to share their Mesh with other accounts in their organization to connection applications within a single service mesh. See https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html for details.

1.19.1 (2020-03-02)
------------------

* Issue - Republish the previously yanked version.

1.19.0 (2020-02-28)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - App Mesh now supports Transport Layer Security (TLS) between Virtual Nodes in a Mesh. Customers can use managed certificates from an AWS Certificate Manager Private Certificate Authority or bring their own certificates from the local file system to encrypt traffic between their workloads. See https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual-node-tls.html for details.

1.18.0 (2019-10-24)
------------------

* Feature - This release adds support for the gRPC and HTTP/2 protocols.

1.17.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-09-09)
------------------

* Feature - This release adds support for http retry policies.

1.15.0 (2019-08-19)
------------------

* Feature - Fix for HttpMethod enum

1.14.0 (2019-08-15)
------------------

* Feature - This release adds support for http header based routing and route prioritization.

1.13.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-06-13)
------------------

* Feature - This release adds support for AWS Cloud Map as a service discovery method for virtual nodes.

1.9.0 (2019-05-21)
------------------

* Feature - API update.

1.8.0 (2019-05-15)
------------------

* Feature - API update.

1.7.0 (2019-05-14)
------------------

* Feature - API update.

1.6.0 (2019-03-27)
------------------

* Feature - API update.

1.5.0 (2019-03-21)
------------------

* Feature - API update.

1.4.0 (2019-03-18)
------------------

* Feature - API update.

1.3.0 (2019-03-14)
------------------

* Feature - API update.

1.2.0 (2019-03-07)
------------------

* Feature - API update.

1.1.0 (2019-01-07)
------------------

* Feature - API update.

1.0.0 (2018-11-29)
------------------

* Feature - Initial release of `aws-sdk-appmesh`.
