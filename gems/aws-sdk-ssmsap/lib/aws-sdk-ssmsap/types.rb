# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SsmSap
  module Types

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] app_registry_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] components
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/Application AWS API Documentation
    #
    class Application < Struct.new(
      :id,
      :type,
      :arn,
      :app_registry_arn,
      :status,
      :components,
      :last_updated,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ApplicationCredential
    #   data as a hash:
    #
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN", # required, accepts ADMIN
    #         secret_id: "SecretId", # required
    #       }
    #
    # @!attribute [rw] database_name
    #   @return [String]
    #
    # @!attribute [rw] credential_type
    #   @return [String]
    #
    # @!attribute [rw] secret_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ApplicationCredential AWS API Documentation
    #
    class ApplicationCredential < Struct.new(
      :database_name,
      :credential_type,
      :secret_id)
      SENSITIVE = [:secret_id]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :id,
      :type,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] databases
    #   @return [Array<String>]
    #
    # @!attribute [rw] hosts
    #   @return [Array<Types::Host>]
    #
    # @!attribute [rw] primary_host
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/Component AWS API Documentation
    #
    class Component < Struct.new(
      :component_id,
      :application_id,
      :component_type,
      :status,
      :databases,
      :hosts,
      :primary_host,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :application_id,
      :component_id,
      :component_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @!attribute [rw] database_id
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   @return [String]
    #
    # @!attribute [rw] database_type
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] primary_host
    #   @return [String]
    #
    # @!attribute [rw] sql_port
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/Database AWS API Documentation
    #
    class Database < Struct.new(
      :application_id,
      :component_id,
      :credentials,
      :database_id,
      :database_name,
      :database_type,
      :arn,
      :status,
      :primary_host,
      :sql_port,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @!attribute [rw] database_id
    #   @return [String]
    #
    # @!attribute [rw] database_type
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/DatabaseSummary AWS API Documentation
    #
    class DatabaseSummary < Struct.new(
      :application_id,
      :component_id,
      :database_id,
      :database_type,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcePermissionInput
    #   data as a hash:
    #
    #       {
    #         action_type: "RESTORE", # accepts RESTORE
    #         source_resource_arn: "Arn",
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] action_type
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/DeleteResourcePermissionInput AWS API Documentation
    #
    class DeleteResourcePermissionInput < Struct.new(
      :action_type,
      :source_resource_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/DeleteResourcePermissionOutput AWS API Documentation
    #
    class DeleteResourcePermissionOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/DeregisterApplicationInput AWS API Documentation
    #
    class DeregisterApplicationInput < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/DeregisterApplicationOutput AWS API Documentation
    #
    class DeregisterApplicationOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId",
    #         application_arn: "SsmSapArn",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetApplicationInput AWS API Documentation
    #
    class GetApplicationInput < Struct.new(
      :application_id,
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   @return [Types::Application]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetApplicationOutput AWS API Documentation
    #
    class GetApplicationOutput < Struct.new(
      :application,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComponentInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         component_id: "ComponentId", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetComponentInput AWS API Documentation
    #
    class GetComponentInput < Struct.new(
      :application_id,
      :component_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetComponentOutput AWS API Documentation
    #
    class GetComponentOutput < Struct.new(
      :component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDatabaseInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId",
    #         component_id: "ComponentId",
    #         database_id: "DatabaseId",
    #         database_arn: "SsmSapArn",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @!attribute [rw] database_id
    #   @return [String]
    #
    # @!attribute [rw] database_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetDatabaseInput AWS API Documentation
    #
    class GetDatabaseInput < Struct.new(
      :application_id,
      :component_id,
      :database_id,
      :database_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   @return [Types::Database]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetDatabaseOutput AWS API Documentation
    #
    class GetDatabaseOutput < Struct.new(
      :database,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationInput
    #   data as a hash:
    #
    #       {
    #         operation_id: "OperationId", # required
    #       }
    #
    # @!attribute [rw] operation_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetOperationInput AWS API Documentation
    #
    class GetOperationInput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetOperationOutput AWS API Documentation
    #
    class GetOperationOutput < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePermissionInput
    #   data as a hash:
    #
    #       {
    #         action_type: "RESTORE", # accepts RESTORE
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] action_type
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetResourcePermissionInput AWS API Documentation
    #
    class GetResourcePermissionInput < Struct.new(
      :action_type,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/GetResourcePermissionOutput AWS API Documentation
    #
    class GetResourcePermissionOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host_name
    #   @return [String]
    #
    # @!attribute [rw] host_role
    #   @return [String]
    #
    # @!attribute [rw] host_ip
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/Host AWS API Documentation
    #
    class Host < Struct.new(
      :host_name,
      :host_role,
      :host_ip,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListApplicationsInput AWS API Documentation
    #
    class ListApplicationsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListApplicationsOutput AWS API Documentation
    #
    class ListApplicationsOutput < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComponentsInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListComponentsInput AWS API Documentation
    #
    class ListComponentsInput < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] components
    #   @return [Array<Types::ComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListComponentsOutput AWS API Documentation
    #
    class ListComponentsOutput < Struct.new(
      :components,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatabasesInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId",
    #         component_id: "ComponentId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListDatabasesInput AWS API Documentation
    #
    class ListDatabasesInput < Struct.new(
      :application_id,
      :component_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] databases
    #   @return [Array<Types::DatabaseSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListDatabasesOutput AWS API Documentation
    #
    class ListDatabasesOutput < Struct.new(
      :databases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "SsmSapArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/Operation AWS API Documentation
    #
    class Operation < Struct.new(
      :id,
      :type,
      :status,
      :status_message,
      :properties,
      :resource_type,
      :resource_id,
      :resource_arn,
      :start_time,
      :end_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourcePermissionInput
    #   data as a hash:
    #
    #       {
    #         action_type: "RESTORE", # required, accepts RESTORE
    #         source_resource_arn: "Arn", # required
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] action_type
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/PutResourcePermissionInput AWS API Documentation
    #
    class PutResourcePermissionInput < Struct.new(
      :action_type,
      :source_resource_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/PutResourcePermissionOutput AWS API Documentation
    #
    class PutResourcePermissionOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterApplicationInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         application_type: "HANA", # required, accepts HANA
    #         instances: ["InstanceId"], # required
    #         sap_instance_number: "SAPInstanceNumber",
    #         sid: "SID",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         credentials: [ # required
    #           {
    #             database_name: "DatabaseName", # required
    #             credential_type: "ADMIN", # required, accepts ADMIN
    #             secret_id: "SecretId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] application_type
    #   @return [String]
    #
    # @!attribute [rw] instances
    #   @return [Array<String>]
    #
    # @!attribute [rw] sap_instance_number
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] credentials
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/RegisterApplicationInput AWS API Documentation
    #
    class RegisterApplicationInput < Struct.new(
      :application_id,
      :application_type,
      :instances,
      :sap_instance_number,
      :sid,
      :tags,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   @return [Types::Application]
    #
    # @!attribute [rw] operation_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/RegisterApplicationOutput AWS API Documentation
    #
    class RegisterApplicationOutput < Struct.new(
      :application,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "SsmSapArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "SsmSapArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateApplicationSettingsInput
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         credentials_to_add_or_update: [
    #           {
    #             database_name: "DatabaseName", # required
    #             credential_type: "ADMIN", # required, accepts ADMIN
    #             secret_id: "SecretId", # required
    #           },
    #         ],
    #         credentials_to_remove: [
    #           {
    #             database_name: "DatabaseName", # required
    #             credential_type: "ADMIN", # required, accepts ADMIN
    #             secret_id: "SecretId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] credentials_to_add_or_update
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @!attribute [rw] credentials_to_remove
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/UpdateApplicationSettingsInput AWS API Documentation
    #
    class UpdateApplicationSettingsInput < Struct.new(
      :application_id,
      :credentials_to_add_or_update,
      :credentials_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] operation_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/UpdateApplicationSettingsOutput AWS API Documentation
    #
    class UpdateApplicationSettingsOutput < Struct.new(
      :message,
      :operation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssmsap-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
