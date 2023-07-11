Unreleased Changes
------------------

1.75.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-06-30)
------------------

* Feature - Add outbound Basic authentication support to AS2 connectors

1.72.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2023-06-21)
------------------

* Feature - This release adds a new parameter StructuredLogDestinations to CreateServer, UpdateServer APIs.

1.70.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2023-05-15)
------------------

* Feature - This release introduces the ability to require both password and SSH key when users authenticate to your Transfer Family servers that use the SFTP protocol.

1.67.0 (2023-02-07)
------------------

* Feature - Updated the documentation for the ImportCertificate API call, and added examples.

1.66.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.65.0 (2022-12-27)
------------------

* Feature - Add additional operations to throw ThrottlingExceptions

1.64.0 (2022-12-21)
------------------

* Feature - This release adds support for Decrypt as a workflow step type.

1.63.0 (2022-11-18)
------------------

* Feature - Adds a NONE encryption algorithm type to AS2 connectors, providing support for skipping encryption of the AS2 message body when a HTTPS URL is also specified.

1.62.0 (2022-11-16)
------------------

* Feature - Allow additional operations to throw ThrottlingException

1.61.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2022-10-13)
------------------

* Feature - This release adds an option for customers to configure workflows that are triggered when files are only partially received from a client due to premature session disconnect.

1.59.0 (2022-09-13)
------------------

* Feature - This release introduces the ability to have multiple server host keys for any of your Transfer Family servers that use the SFTP protocol.

1.58.0 (2022-08-24)
------------------

* Feature - Documentation updates for AWS Transfer Family

1.57.0 (2022-07-26)
------------------

* Feature - AWS Transfer Family now supports Applicability Statement 2 (AS2), a network protocol used for the secure and reliable transfer of critical Business-to-Business (B2B) data over the public internet using HTTP/HTTPS as the transport mechanism.

1.56.0 (2022-06-22)
------------------

* Feature - Until today, the service supported only RSA host keys and user keys. Now with this launch, Transfer Family has expanded the support for ECDSA and ED25519 host keys and user keys, enabling customers to support a broader set of clients by choosing RSA, ECDSA, and ED25519 host and user keys.

1.55.0 (2022-05-18)
------------------

* Feature - AWS Transfer Family now supports SetStat server configuration option, which provides the ability to ignore SetStat command issued by file transfer clients, enabling customers to upload files without any errors.

1.54.0 (2022-05-12)
------------------

* Feature - AWS Transfer Family now accepts ECDSA keys for server host keys

1.53.0 (2022-04-19)
------------------

* Feature - This release contains corrected HomeDirectoryMappings examples for several API functions: CreateAccess, UpdateAccess, CreateUser, and UpdateUser,.

1.52.0 (2022-03-23)
------------------

* Feature - Documentation updates for AWS Transfer Family to describe how to remove an associated workflow from a server.

1.51.0 (2022-03-10)
------------------

* Feature - Adding more descriptive error types for managed workflows

1.50.0 (2022-03-04)
------------------

* Feature - Add waiters for server online and offline.

1.49.0 (2022-02-24)
------------------

* Feature - Support automatic pagination when listing AWS Transfer Family resources.

1.48.0 (2022-02-23)
------------------

* Feature - The file input selection feature provides the ability to use either the originally uploaded file or the output file from the previous workflow step, enabling customers to make multiple copies of the original file while keeping the source file intact for file archival.

1.47.0 (2022-02-18)
------------------

* Feature - Properties for Transfer Family used with SFTP, FTP, and FTPS protocols. Display Banners are bodies of text that can be displayed before and/or after a user authenticates onto a server using one of the previously mentioned protocols.

1.46.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2021-12-21)
------------------

* Feature - Property for Transfer Family used with the FTPS protocol. TLS Session Resumption provides a mechanism to resume or share a negotiated secret key between the control and data connection for an FTPS session.

1.44.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-11-15)
------------------

* Feature - AWS Transfer Family now supports integrating a custom identity provider using AWS Lambda

1.42.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-09-28)
------------------

* Feature - Added changes for managed workflows feature APIs.

1.39.0 (2021-09-02)
------------------

* Feature - AWS Transfer Family introduces Managed Workflows for creating, executing, monitoring, and standardizing post file transfer processing

1.38.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-06-24)
------------------

* Feature - Customers can successfully use legacy clients with Transfer Family endpoints enabled for FTPS and FTP behind routers, firewalls, and load balancers by providing a Custom IP address used for data channel communication.

1.34.0 (2021-06-09)
------------------

* Feature - Documentation updates for the AWS Transfer Family service.

1.33.0 (2021-05-25)
------------------

* Feature - AWS Transfer Family customers can now use AWS Managed Active Directory or AD Connector to authenticate their end users, enabling seamless migration of file transfer workflows that rely on AD authentication, without changing end users' credentials or needing a custom authorizer.

1.32.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-02-25)
------------------

* Feature - Corrected the upper limit for TestIdentityProvider input lengths to 1024 characters

1.30.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2021-01-06)
------------------

* Feature - This release adds support for Amazon EFS, so customers can transfer files over SFTP, FTPS and FTP in and out of Amazon S3 as well as Amazon EFS.

1.28.0 (2020-10-15)
------------------

* Feature - Add support to associate VPC Security Groups at server creation.

1.27.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2020-08-12)
------------------

* Feature - Adds security policies to control cryptographic algorithms advertised by your server, additional characters in usernames and length increase, and FIPS compliant endpoints in the US and Canada regions.

1.23.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.22.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-06-09)
------------------

* Feature - This release updates the API so customers can test use of Source IP to allow, deny or limit access to data in their S3 buckets after integrating their identity provider.

1.20.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-04-23)
------------------

* Feature - This release adds support for transfers over FTPS and FTP in and out of Amazon S3, which makes it easy to migrate File Transfer Protocol over SSL (FTPS) and FTP workloads to AWS, in addition to the existing support for Secure File Transfer Protocol (SFTP).

1.17.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2020-01-10)
------------------

* Feature - This release introduces a new endpoint type that allows you to attach Elastic IP addresses from your AWS account with your server's endpoint directly and whitelist access to your server by client's internet IP address(es) using VPC Security Groups.

1.15.0 (2019-10-28)
------------------

* Feature - This release adds logical directories support to your AWS SFTP server endpoint, so you can now create logical directory structures mapped to Amazon Simple Storage Service (Amazon S3) bucket paths for users created and stored within the service. Amazon S3 bucket names and paths can now be hidden from AWS SFTP users, providing an additional level of privacy to meet security requirements. You can lock down your SFTP users' access to designated folders (commonly referred to as 'chroot'), and simplify complex folder structures for data distribution through SFTP without replicating files across multiple users.

1.14.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2019-08-20)
------------------

* Feature - New field in response of TestIdentityProvider

1.12.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-05-21)
------------------

* Feature - API update.

1.8.0 (2019-05-15)
------------------

* Feature - API update.

1.7.0 (2019-05-14)
------------------

* Feature - API update.

1.6.0 (2019-04-29)
------------------

* Feature - API update.

1.5.0 (2019-03-27)
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

1.1.0 (2019-02-21)
------------------

* Feature - API update.

1.0.0 (2018-11-26)
------------------

* Feature - Initial release of `aws-sdk-transfer`.
