# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppSync
  module Types

    # Describes an API key.
    #
    # Customers invoke AWS AppSync GraphQL APIs with API keys as an identity
    # mechanism. There are two key versions:
    #
    # **da1**\: This version was introduced at launch in November 2017.
    # These keys always expire after 7 days. Key expiration is managed by
    # DynamoDB TTL. The keys will cease to be valid after Feb 21, 2018 and
    # should not be used after that date.
    #
    # * `ListApiKeys` returns the expiration time in milliseconds.
    #
    # * `CreateApiKey` returns the expiration time in milliseconds.
    #
    # * `UpdateApiKey` is not available for this key version.
    #
    # * `DeleteApiKey` deletes the item from the table.
    #
    # * Expiration is stored in DynamoDB as milliseconds. This results in a
    #   bug where keys are not automatically deleted because DynamoDB
    #   expects the TTL to be stored in seconds. As a one-time action, we
    #   will delete these keys from the table after Feb 21, 2018.
    #
    # **da2**\: This version was introduced in February 2018 when AppSync
    # added support to extend key expiration.
    #
    # * `ListApiKeys` returns the expiration time in seconds.
    #
    # * `CreateApiKey` returns the expiration time in seconds and accepts a
    #   user-provided expiration time in seconds.
    #
    # * `UpdateApiKey` returns the expiration time in seconds and accepts a
    #   user-provided expiration time in seconds. Key expiration can only be
    #   updated while the key has not expired.
    #
    # * `DeleteApiKey` deletes the item from the table.
    #
    # * Expiration is stored in DynamoDB as seconds.
    #
    # @!attribute [rw] id
    #   The API key ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the purpose of the API key.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The time after which the API key expires. The date is represented as
    #   seconds since the epoch, rounded down to the nearest hour.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiKey AWS API Documentation
    #
    class ApiKey < Struct.new(
      :id,
      :description,
      :expires)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         description: "String",
    #         expires: 1,
    #       }
    #
    # @!attribute [rw] api_id
    #   The ID for your GraphQL API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the purpose of the API key.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The time from creation time after which the API key expires. The
    #   date is represented as seconds since the epoch, rounded down to the
    #   nearest hour. The default value for this parameter is 7 days from
    #   creation time. For more information, see .
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiKeyRequest AWS API Documentation
    #
    class CreateApiKeyRequest < Struct.new(
      :api_id,
      :description,
      :expires)
      include Aws::Structure
    end

    # @!attribute [rw] api_key
    #   The API key.
    #   @return [Types::ApiKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiKeyResponse AWS API Documentation
    #
    class CreateApiKeyResponse < Struct.new(
      :api_key)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         name: "ResourceName", # required
    #         description: "String",
    #         type: "AWS_LAMBDA", # required, accepts AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, NONE, HTTP
    #         service_role_arn: "String",
    #         dynamodb_config: {
    #           table_name: "String", # required
    #           aws_region: "String", # required
    #           use_caller_credentials: false,
    #         },
    #         lambda_config: {
    #           lambda_function_arn: "String", # required
    #         },
    #         elasticsearch_config: {
    #           endpoint: "String", # required
    #           aws_region: "String", # required
    #         },
    #         http_config: {
    #           endpoint: "String",
    #         },
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID for the GraphQL API for the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-supplied name for the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The IAM service role ARN for the data source. The system assumes
    #   this role when accessing the data source.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb_config
    #   DynamoDB settings.
    #   @return [Types::DynamodbDataSourceConfig]
    #
    # @!attribute [rw] lambda_config
    #   AWS Lambda settings.
    #   @return [Types::LambdaDataSourceConfig]
    #
    # @!attribute [rw] elasticsearch_config
    #   Amazon Elasticsearch settings.
    #   @return [Types::ElasticsearchDataSourceConfig]
    #
    # @!attribute [rw] http_config
    #   Http endpoint settings.
    #   @return [Types::HttpDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :api_id,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :http_config)
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The `DataSource` object.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :data_source)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGraphqlApiRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         log_config: {
    #           field_log_level: "NONE", # required, accepts NONE, ERROR, ALL
    #           cloud_watch_logs_role_arn: "String", # required
    #         },
    #         authentication_type: "API_KEY", # required, accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           default_action: "ALLOW", # required, accepts ALLOW, DENY
    #           app_id_client_regex: "String",
    #         },
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1,
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A user-supplied name for the `GraphqlApi`.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch logs configuration.
    #   @return [Types::LogConfig]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type: API key, IAM, or Amazon Cognito User Pools.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito User Pool configuration.
    #   @return [Types::UserPoolConfig]
    #
    # @!attribute [rw] open_id_connect_config
    #   The Open Id Connect configuration configuration.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateGraphqlApiRequest AWS API Documentation
    #
    class CreateGraphqlApiRequest < Struct.new(
      :name,
      :log_config,
      :authentication_type,
      :user_pool_config,
      :open_id_connect_config)
      include Aws::Structure
    end

    # @!attribute [rw] graphql_api
    #   The `GraphqlApi`.
    #   @return [Types::GraphqlApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateGraphqlApiResponse AWS API Documentation
    #
    class CreateGraphqlApiResponse < Struct.new(
      :graphql_api)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResolverRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #         field_name: "ResourceName", # required
    #         data_source_name: "ResourceName", # required
    #         request_mapping_template: "MappingTemplate", # required
    #         response_mapping_template: "MappingTemplate",
    #       }
    #
    # @!attribute [rw] api_id
    #   The ID for the GraphQL API for which the resolver is being created.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the `Type`.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The name of the field to attach the resolver to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The name of the data source for which the resolver is being created.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The mapping template to be used for requests.
    #
    #   A resolver uses a request mapping template to convert a GraphQL
    #   expression into a format that a data source can understand. Mapping
    #   templates are written in Apache Velocity Template Language (VTL).
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The mapping template to be used for responses from the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateResolverRequest AWS API Documentation
    #
    class CreateResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template)
      include Aws::Structure
    end

    # @!attribute [rw] resolver
    #   The `Resolver` object.
    #   @return [Types::Resolver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateResolverResponse AWS API Documentation
    #
    class CreateResolverResponse < Struct.new(
      :resolver)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTypeRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         definition: "String", # required
    #         format: "SDL", # required, accepts SDL, JSON
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The type definition, in GraphQL Schema Definition Language (SDL)
    #   format.
    #
    #   For more information, see the [GraphQL SDL documentation][1].
    #
    #
    #
    #   [1]: http://graphql.org/learn/schema/
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateTypeRequest AWS API Documentation
    #
    class CreateTypeRequest < Struct.new(
      :api_id,
      :definition,
      :format)
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The `Type` object.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateTypeResponse AWS API Documentation
    #
    class CreateTypeResponse < Struct.new(
      :type)
      include Aws::Structure
    end

    # Describes a data source.
    #
    # @!attribute [rw] data_source_arn
    #   The data source ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #
    #   * **AMAZON\_DYNAMODB**\: The data source is an Amazon DynamoDB
    #     table.
    #
    #   * **AMAZON\_ELASTICSEARCH**\: The data source is an Amazon
    #     Elasticsearch Service domain.
    #
    #   * **AWS\_LAMBDA**\: The data source is an AWS Lambda function.
    #
    #   * **NONE**\: There is no data source. This type is used when when
    #     you wish to invoke a GraphQL operation without connecting to a
    #     data source, such as performing data transformation with resolvers
    #     or triggering a subscription to be invoked from a mutation.
    #
    #   * **HTTP**\: The data source is an HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The IAM service role ARN for the data source. The system assumes
    #   this role when accessing the data source.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb_config
    #   DynamoDB settings.
    #   @return [Types::DynamodbDataSourceConfig]
    #
    # @!attribute [rw] lambda_config
    #   Lambda settings.
    #   @return [Types::LambdaDataSourceConfig]
    #
    # @!attribute [rw] elasticsearch_config
    #   Amazon Elasticsearch settings.
    #   @return [Types::ElasticsearchDataSourceConfig]
    #
    # @!attribute [rw] http_config
    #   Http endpoint settings.
    #   @return [Types::HttpDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :data_source_arn,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :http_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         id: "String", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the API key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiKeyRequest AWS API Documentation
    #
    class DeleteApiKeyRequest < Struct.new(
      :api_id,
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiKeyResponse AWS API Documentation
    #
    class DeleteApiKeyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :api_id,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteGraphqlApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteGraphqlApiRequest AWS API Documentation
    #
    class DeleteGraphqlApiRequest < Struct.new(
      :api_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteGraphqlApiResponse AWS API Documentation
    #
    class DeleteGraphqlApiResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResolverRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #         field_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the resolver type.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The resolver field name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteResolverRequest AWS API Documentation
    #
    class DeleteResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteResolverResponse AWS API Documentation
    #
    class DeleteResolverResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTypeRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteTypeRequest AWS API Documentation
    #
    class DeleteTypeRequest < Struct.new(
      :api_id,
      :type_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteTypeResponse AWS API Documentation
    #
    class DeleteTypeResponse < Aws::EmptyStructure; end

    # Describes a DynamoDB data source configuration.
    #
    # @note When making an API call, you may pass DynamodbDataSourceConfig
    #   data as a hash:
    #
    #       {
    #         table_name: "String", # required
    #         aws_region: "String", # required
    #         use_caller_credentials: false,
    #       }
    #
    # @!attribute [rw] table_name
    #   The table name.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS region.
    #   @return [String]
    #
    # @!attribute [rw] use_caller_credentials
    #   Set to TRUE to use Amazon Cognito credentials with this data source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DynamodbDataSourceConfig AWS API Documentation
    #
    class DynamodbDataSourceConfig < Struct.new(
      :table_name,
      :aws_region,
      :use_caller_credentials)
      include Aws::Structure
    end

    # Describes an Elasticsearch data source configuration.
    #
    # @note When making an API call, you may pass ElasticsearchDataSourceConfig
    #   data as a hash:
    #
    #       {
    #         endpoint: "String", # required
    #         aws_region: "String", # required
    #       }
    #
    # @!attribute [rw] endpoint
    #   The endpoint.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ElasticsearchDataSourceConfig AWS API Documentation
    #
    class ElasticsearchDataSourceConfig < Struct.new(
      :endpoint,
      :aws_region)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSourceRequest AWS API Documentation
    #
    class GetDataSourceRequest < Struct.new(
      :api_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The `DataSource` object.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSourceResponse AWS API Documentation
    #
    class GetDataSourceResponse < Struct.new(
      :data_source)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGraphqlApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID for the GraphQL API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetGraphqlApiRequest AWS API Documentation
    #
    class GetGraphqlApiRequest < Struct.new(
      :api_id)
      include Aws::Structure
    end

    # @!attribute [rw] graphql_api
    #   The `GraphqlApi` object.
    #   @return [Types::GraphqlApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetGraphqlApiResponse AWS API Documentation
    #
    class GetGraphqlApiResponse < Struct.new(
      :graphql_api)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntrospectionSchemaRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         format: "SDL", # required, accepts SDL, JSON
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The schema format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetIntrospectionSchemaRequest AWS API Documentation
    #
    class GetIntrospectionSchemaRequest < Struct.new(
      :api_id,
      :format)
      include Aws::Structure
    end

    # @!attribute [rw] schema
    #   The schema, in GraphQL Schema Definition Language (SDL) format.
    #
    #   For more information, see the [GraphQL SDL documentation][1].
    #
    #
    #
    #   [1]: http://graphql.org/learn/schema/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetIntrospectionSchemaResponse AWS API Documentation
    #
    class GetIntrospectionSchemaResponse < Struct.new(
      :schema)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResolverRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #         field_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The resolver type name.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The resolver field name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetResolverRequest AWS API Documentation
    #
    class GetResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name)
      include Aws::Structure
    end

    # @!attribute [rw] resolver
    #   The `Resolver` object.
    #   @return [Types::Resolver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetResolverResponse AWS API Documentation
    #
    class GetResolverResponse < Struct.new(
      :resolver)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSchemaCreationStatusRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSchemaCreationStatusRequest AWS API Documentation
    #
    class GetSchemaCreationStatusRequest < Struct.new(
      :api_id)
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current state of the schema (PROCESSING, ACTIVE, or DELETING).
    #   Once the schema is in the ACTIVE state, you can add data.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Detailed information about the status of the schema creation
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSchemaCreationStatusResponse AWS API Documentation
    #
    class GetSchemaCreationStatusResponse < Struct.new(
      :status,
      :details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTypeRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #         format: "SDL", # required, accepts SDL, JSON
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetTypeRequest AWS API Documentation
    #
    class GetTypeRequest < Struct.new(
      :api_id,
      :type_name,
      :format)
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The `Type` object.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetTypeResponse AWS API Documentation
    #
    class GetTypeResponse < Struct.new(
      :type)
      include Aws::Structure
    end

    # Describes a GraphQL API.
    #
    # @!attribute [rw] name
    #   The API name.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch Logs configuration.
    #   @return [Types::LogConfig]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito User Pool configuration.
    #   @return [Types::UserPoolConfig]
    #
    # @!attribute [rw] open_id_connect_config
    #   The Open Id Connect configuration.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @!attribute [rw] arn
    #   The ARN.
    #   @return [String]
    #
    # @!attribute [rw] uris
    #   The URIs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GraphqlApi AWS API Documentation
    #
    class GraphqlApi < Struct.new(
      :name,
      :api_id,
      :authentication_type,
      :log_config,
      :user_pool_config,
      :open_id_connect_config,
      :arn,
      :uris)
      include Aws::Structure
    end

    # Describes a Http data source configuration.
    #
    # @note When making an API call, you may pass HttpDataSourceConfig
    #   data as a hash:
    #
    #       {
    #         endpoint: "String",
    #       }
    #
    # @!attribute [rw] endpoint
    #   The Http url endpoint. You can either specify the domain name or ip
    #   and port combination and the url scheme must be http(s). If the port
    #   is not specified, AWS AppSync will use the default port 80 for http
    #   endpoint and port 443 for https endpoints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/HttpDataSourceConfig AWS API Documentation
    #
    class HttpDataSourceConfig < Struct.new(
      :endpoint)
      include Aws::Structure
    end

    # Describes a Lambda data source configuration.
    #
    # @note When making an API call, you may pass LambdaDataSourceConfig
    #   data as a hash:
    #
    #       {
    #         lambda_function_arn: "String", # required
    #       }
    #
    # @!attribute [rw] lambda_function_arn
    #   The ARN for the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LambdaDataSourceConfig AWS API Documentation
    #
    class LambdaDataSourceConfig < Struct.new(
      :lambda_function_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApiKeysRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListApiKeysRequest AWS API Documentation
    #
    class ListApiKeysRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] api_keys
    #   The `ApiKey` objects.
    #   @return [Array<Types::ApiKey>]
    #
    # @!attribute [rw] next_token
    #   An identifier to be passed in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListApiKeysResponse AWS API Documentation
    #
    class ListApiKeysResponse < Struct.new(
      :api_keys,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSourcesRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] data_sources
    #   The `DataSource` objects.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   An identifier to be passed in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGraphqlApisRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListGraphqlApisRequest AWS API Documentation
    #
    class ListGraphqlApisRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] graphql_apis
    #   The `GraphqlApi` objects.
    #   @return [Array<Types::GraphqlApi>]
    #
    # @!attribute [rw] next_token
    #   An identifier to be passed in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListGraphqlApisResponse AWS API Documentation
    #
    class ListGraphqlApisResponse < Struct.new(
      :graphql_apis,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResolversRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "String", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversRequest AWS API Documentation
    #
    class ListResolversRequest < Struct.new(
      :api_id,
      :type_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] resolvers
    #   The `Resolver` objects.
    #   @return [Array<Types::Resolver>]
    #
    # @!attribute [rw] next_token
    #   An identifier to be passed in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversResponse AWS API Documentation
    #
    class ListResolversResponse < Struct.new(
      :resolvers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTypesRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         format: "SDL", # required, accepts SDL, JSON
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypesRequest AWS API Documentation
    #
    class ListTypesRequest < Struct.new(
      :api_id,
      :format,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] types
    #   The `Type` objects.
    #   @return [Array<Types::Type>]
    #
    # @!attribute [rw] next_token
    #   An identifier to be passed in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypesResponse AWS API Documentation
    #
    class ListTypesResponse < Struct.new(
      :types,
      :next_token)
      include Aws::Structure
    end

    # The CloudWatch Logs configuration.
    #
    # @note When making an API call, you may pass LogConfig
    #   data as a hash:
    #
    #       {
    #         field_log_level: "NONE", # required, accepts NONE, ERROR, ALL
    #         cloud_watch_logs_role_arn: "String", # required
    #       }
    #
    # @!attribute [rw] field_log_level
    #   The field logging level. Values can be NONE, ERROR, ALL.
    #
    #   * **NONE**\: No field-level logs are captured.
    #
    #   * **ERROR**\: Logs the following information only for the fields
    #     that are in error:
    #
    #     * The error section in the server response.
    #
    #     * Field-level errors.
    #
    #     * The generated request/response functions that got resolved for
    #       error fields.
    #
    #   * **ALL**\: The following information is logged for all fields in
    #     the query:
    #
    #     * Field-level tracing information.
    #
    #     * The generated request/response functions that got resolved for
    #       each field.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The service role that AWS AppSync will assume to publish to Amazon
    #   CloudWatch logs in your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LogConfig AWS API Documentation
    #
    class LogConfig < Struct.new(
      :field_log_level,
      :cloud_watch_logs_role_arn)
      include Aws::Structure
    end

    # Describes an Open Id Connect configuration.
    #
    # @note When making an API call, you may pass OpenIDConnectConfig
    #   data as a hash:
    #
    #       {
    #         issuer: "String", # required
    #         client_id: "String",
    #         iat_ttl: 1,
    #         auth_ttl: 1,
    #       }
    #
    # @!attribute [rw] issuer
    #   The issuer for the open id connect configuration. The issuer
    #   returned by discovery MUST exactly match the value of iss in the ID
    #   Token.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client identifier of the Relying party at the OpenID Provider.
    #   This identifier is typically obtained when the Relying party is
    #   registered with the OpenID Provider. You can specify a regular
    #   expression so the AWS AppSync can validate against multiple client
    #   identifiers at a time
    #   @return [String]
    #
    # @!attribute [rw] iat_ttl
    #   The number of milliseconds a token is valid after being issued to a
    #   user.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_ttl
    #   The number of milliseconds a token is valid after being
    #   authenticated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/OpenIDConnectConfig AWS API Documentation
    #
    class OpenIDConnectConfig < Struct.new(
      :issuer,
      :client_id,
      :iat_ttl,
      :auth_ttl)
      include Aws::Structure
    end

    # Describes a resolver.
    #
    # @!attribute [rw] type_name
    #   The resolver type name.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The resolver field name.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The resolver data source name.
    #   @return [String]
    #
    # @!attribute [rw] resolver_arn
    #   The resolver ARN.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The response mapping template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/Resolver AWS API Documentation
    #
    class Resolver < Struct.new(
      :type_name,
      :field_name,
      :data_source_name,
      :resolver_arn,
      :request_mapping_template,
      :response_mapping_template)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSchemaCreationRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         definition: "data", # required
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The schema definition, in GraphQL schema language format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreationRequest AWS API Documentation
    #
    class StartSchemaCreationRequest < Struct.new(
      :api_id,
      :definition)
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current state of the schema (PROCESSING, ACTIVE, or DELETING).
    #   Once the schema is in the ACTIVE state, you can add data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreationResponse AWS API Documentation
    #
    class StartSchemaCreationResponse < Struct.new(
      :status)
      include Aws::Structure
    end

    # Describes a type.
    #
    # @!attribute [rw] name
    #   The type name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The type description.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The type ARN.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The type definition.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/Type AWS API Documentation
    #
    class Type < Struct.new(
      :name,
      :description,
      :arn,
      :definition,
      :format)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         id: "String", # required
    #         description: "String",
    #         expires: 1,
    #       }
    #
    # @!attribute [rw] api_id
    #   The ID for the GraphQL API
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The API key ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the purpose of the API key.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The time from update time after which the API key expires. The date
    #   is represented as seconds since the epoch. For more information, see
    #   .
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiKeyRequest AWS API Documentation
    #
    class UpdateApiKeyRequest < Struct.new(
      :api_id,
      :id,
      :description,
      :expires)
      include Aws::Structure
    end

    # @!attribute [rw] api_key
    #   The API key.
    #   @return [Types::ApiKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiKeyResponse AWS API Documentation
    #
    class UpdateApiKeyResponse < Struct.new(
      :api_key)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         name: "ResourceName", # required
    #         description: "String",
    #         type: "AWS_LAMBDA", # required, accepts AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, NONE, HTTP
    #         service_role_arn: "String",
    #         dynamodb_config: {
    #           table_name: "String", # required
    #           aws_region: "String", # required
    #           use_caller_credentials: false,
    #         },
    #         lambda_config: {
    #           lambda_function_arn: "String", # required
    #         },
    #         elasticsearch_config: {
    #           endpoint: "String", # required
    #           aws_region: "String", # required
    #         },
    #         http_config: {
    #           endpoint: "String",
    #         },
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The new data source type.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The new service role ARN for the data source.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb_config
    #   The new DynamoDB configuration.
    #   @return [Types::DynamodbDataSourceConfig]
    #
    # @!attribute [rw] lambda_config
    #   The new Lambda configuration.
    #   @return [Types::LambdaDataSourceConfig]
    #
    # @!attribute [rw] elasticsearch_config
    #   The new Elasticsearch configuration.
    #   @return [Types::ElasticsearchDataSourceConfig]
    #
    # @!attribute [rw] http_config
    #   The new http endpoint configuration
    #   @return [Types::HttpDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :api_id,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :http_config)
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The updated `DataSource` object.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Struct.new(
      :data_source)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGraphqlApiRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         name: "String", # required
    #         log_config: {
    #           field_log_level: "NONE", # required, accepts NONE, ERROR, ALL
    #           cloud_watch_logs_role_arn: "String", # required
    #         },
    #         authentication_type: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           default_action: "ALLOW", # required, accepts ALLOW, DENY
    #           app_id_client_regex: "String",
    #         },
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1,
    #         },
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the `GraphqlApi` object.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch logs configuration for the `GraphqlApi`
    #   object.
    #   @return [Types::LogConfig]
    #
    # @!attribute [rw] authentication_type
    #   The new authentication type for the `GraphqlApi` object.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_config
    #   The new Amazon Cognito User Pool configuration for the `GraphqlApi`
    #   object.
    #   @return [Types::UserPoolConfig]
    #
    # @!attribute [rw] open_id_connect_config
    #   The Open Id Connect configuration configuration for the `GraphqlApi`
    #   object.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateGraphqlApiRequest AWS API Documentation
    #
    class UpdateGraphqlApiRequest < Struct.new(
      :api_id,
      :name,
      :log_config,
      :authentication_type,
      :user_pool_config,
      :open_id_connect_config)
      include Aws::Structure
    end

    # @!attribute [rw] graphql_api
    #   The updated `GraphqlApi` object.
    #   @return [Types::GraphqlApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateGraphqlApiResponse AWS API Documentation
    #
    class UpdateGraphqlApiResponse < Struct.new(
      :graphql_api)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResolverRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #         field_name: "ResourceName", # required
    #         data_source_name: "ResourceName", # required
    #         request_mapping_template: "MappingTemplate", # required
    #         response_mapping_template: "MappingTemplate",
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The new type name.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The new field name.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The new data source name.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The new request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The new response mapping template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateResolverRequest AWS API Documentation
    #
    class UpdateResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template)
      include Aws::Structure
    end

    # @!attribute [rw] resolver
    #   The updated `Resolver` object.
    #   @return [Types::Resolver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateResolverResponse AWS API Documentation
    #
    class UpdateResolverResponse < Struct.new(
      :resolver)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTypeRequest
    #   data as a hash:
    #
    #       {
    #         api_id: "String", # required
    #         type_name: "ResourceName", # required
    #         definition: "String",
    #         format: "SDL", # required, accepts SDL, JSON
    #       }
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The new type name.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The new definition.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The new type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateTypeRequest AWS API Documentation
    #
    class UpdateTypeRequest < Struct.new(
      :api_id,
      :type_name,
      :definition,
      :format)
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The updated `Type` object.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateTypeResponse AWS API Documentation
    #
    class UpdateTypeResponse < Struct.new(
      :type)
      include Aws::Structure
    end

    # Describes an Amazon Cognito User Pool configuration.
    #
    # @note When making an API call, you may pass UserPoolConfig
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "String", # required
    #         aws_region: "String", # required
    #         default_action: "ALLOW", # required, accepts ALLOW, DENY
    #         app_id_client_regex: "String",
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS region in which the user pool was created.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action that you want your GraphQL API to take when a request
    #   that uses Amazon Cognito User Pool authentication doesn't match the
    #   Amazon Cognito User Pool configuration.
    #   @return [String]
    #
    # @!attribute [rw] app_id_client_regex
    #   A regular expression for validating the incoming Amazon Cognito User
    #   Pool app client ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UserPoolConfig AWS API Documentation
    #
    class UserPoolConfig < Struct.new(
      :user_pool_id,
      :aws_region,
      :default_action,
      :app_id_client_regex)
      include Aws::Structure
    end

  end
end
