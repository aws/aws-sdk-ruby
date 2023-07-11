Unreleased Changes
------------------

1.48.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2023-06-27)
------------------

* Feature - This release adds support to bypass SSO with the SAPOData connector when connecting to an SAP instance.

1.44.0 (2023-06-20)
------------------

* Feature - This release adds new API to reset connector metadata cache

1.43.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2023-06-01)
------------------

* Feature - Added ability to select DataTransferApiType for DescribeConnector and CreateFlow requests when using Async supported connectors. Added supportedDataTransferType to DescribeConnector/DescribeConnectors/ListConnector response.

1.41.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2023-05-02)
------------------

* Feature - This release adds new API to cancel flow executions.

1.39.0 (2023-04-28)
------------------

* Feature - Adds Jwt Support for Salesforce Credentials.

1.38.0 (2023-04-24)
------------------

* Feature - Increased the max length for RefreshToken and AuthCode from 2048 to 4096.

1.37.0 (2023-04-17)
------------------

* Feature - This release adds a Client Token parameter to the following AppFlow APIs: Create/Update Connector Profile, Create/Update Flow, Start Flow, Register Connector, Update Connector Registration. The Client Token parameter allows idempotent operations for these APIs.

1.36.0 (2023-02-23)
------------------

* Feature - This release enables the customers to choose whether to use Private Link for Metadata and Authorization call when using a private Salesforce connections

1.35.0 (2023-01-19)
------------------

* Feature - Adding support for Salesforce Pardot connector in Amazon AppFlow.

1.34.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.33.0 (2022-12-16)
------------------

* Feature - This release updates the ListConnectorEntities API action so that it returns paginated responses that customers can retrieve with next tokens.

1.32.0 (2022-11-22)
------------------

* Feature - Adding support for Amazon AppFlow to transfer the data to Amazon Redshift databases through Amazon Redshift Data API service. This feature will support the Redshift destination connector on both public and private accessible Amazon Redshift Clusters and Amazon Redshift Serverless.

1.31.0 (2022-11-18)
------------------

* Feature - AppFlow provides a new API called UpdateConnectorRegistration to update a custom connector that customers have previously registered. With this API, customers no longer need to unregister and then register a connector to make an update.

1.30.0 (2022-11-17)
------------------

* Feature - AppFlow simplifies the preparation and cataloging of SaaS data into the AWS Glue Data Catalog where your data can be discovered and accessed by AWS analytics and ML services. AppFlow now also supports data field partitioning and file size optimization to improve query performance and reduce cost.

1.29.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2022-10-13)
------------------

* Feature - With this update, you can choose which Salesforce API is used by Amazon AppFlow to transfer data to or from your Salesforce account. You can choose the Salesforce REST API or Bulk API 2.0. You can also choose for Amazon AppFlow to pick the API automatically.

1.27.0 (2022-05-27)
------------------

* Feature - Adding the following features/changes: Parquet output that preserves typing from the source connector, Failed executions threshold before deactivation for scheduled flows, increasing max size of access and refresh token from 2048 to 4096

1.26.0 (2022-04-14)
------------------

* Feature - Enables users to pass custom token URL parameters for Oauth2 authentication during create connector profile

1.25.0 (2022-03-03)
------------------

* Feature - Launching Amazon AppFlow Marketo as a destination connector SDK.

1.24.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2022-02-14)
------------------

* Feature - Launching Amazon AppFlow SAP as a destination connector SDK.

1.22.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2022-02-02)
------------------

* Feature - Launching Amazon AppFlow Custom Connector SDK.

1.20.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2021-10-20)
------------------

* Feature - Feature to add support for  JSON-L format for S3 as a source.

1.16.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2021-08-19)
------------------

* Feature - This release adds support for SAPOData connector and extends Veeva connector for document extraction.

1.13.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2021-06-10)
------------------

* Feature - Adding MAP_ALL task type support.

1.10.0 (2021-04-05)
------------------

* Feature - Added destination properties for Zendesk.

1.9.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2021-03-05)
------------------

* Feature - Documentation updates for AppFlow.

1.7.0 (2021-02-24)
------------------

* Feature - Adding 'Amazon Honeycode' , 'Amazon Lookout for Metrics' and  'Amazon Connect Customer Profiles' as Destinations.

1.6.0 (2021-02-04)
------------------

* Feature - Adding schedule offset as an input for scheduled flows in CreateFlow API. Also, adding data pull start time and data pull end time for DescribeFlowExecutionRecords API response.

1.5.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-11-24)
------------------

* Feature - Upsolver as a destination connector and documentation update.

1.3.0 (2020-10-22)
------------------

* Feature - Salesforce connector creation with customer provided client id and client secret, incremental pull configuration, salesforce upsert write operations and execution ID when on-demand flows are executed.

1.2.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2020-08-26)
------------------

* Feature - Initial release of `aws-sdk-appflow`.
