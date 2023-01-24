# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SsmSap
  module Types

    # An SAP application registered with AWS Systems Manager for SAP.
    #
    # @!attribute [rw] id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] app_registry_arn
    #   The Amazon Resource Name (ARN) of the Application Registry.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components of the application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated
    #   The time at which the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Application AWS API Documentation
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

    # The credentials of your SAP application.
    #
    # @!attribute [rw] database_name
    #   The name of the SAP HANA database.
    #   @return [String]
    #
    # @!attribute [rw] credential_type
    #   The type of the application credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_id
    #   The secret ID created in AWS Secrets Manager to store the
    #   credentials of the SAP application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ApplicationCredential AWS API Documentation
    #
    class ApplicationCredential < Struct.new(
      :database_name,
      :credential_type,
      :secret_id)
      SENSITIVE = [:secret_id]
      include Aws::Structure
    end

    # The summary of the SAP application registered with AWS Systems Manager
    # for SAP.
    #
    # @!attribute [rw] id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags on the application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :id,
      :type,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SAP component of your application.
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of the component.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the component.
    #   @return [String]
    #
    # @!attribute [rw] databases
    #   The SAP HANA databases of the component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hosts
    #   The hosts of the component.
    #   @return [Array<Types::Host>]
    #
    # @!attribute [rw] primary_host
    #   The primary host of the component.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The time at which the component was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Component AWS API Documentation
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

    # The summary of the component.
    #
    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of the component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the component.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :application_id,
      :component_id,
      :component_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SAP HANA database of the application registered with AWS Systems
    # Manager for SAP.
    #
    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The credentials of the database.
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @!attribute [rw] database_id
    #   The ID of the SAP HANA database.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] database_type
    #   The type of the database.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the database.
    #   @return [String]
    #
    # @!attribute [rw] primary_host
    #   The primary host of the database.
    #   @return [String]
    #
    # @!attribute [rw] sql_port
    #   The SQL port of the database.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated
    #   The time at which the database was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Database AWS API Documentation
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

    # The summary of the database.
    #
    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] database_id
    #   The ID of the database.
    #   @return [String]
    #
    # @!attribute [rw] database_type
    #   The type of the database.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the database.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DatabaseSummary AWS API Documentation
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

    # @!attribute [rw] action_type
    #   Delete or restore the permissions on the target database.
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   The Amazon Resource Name (ARN) of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DeleteResourcePermissionInput AWS API Documentation
    #
    class DeleteResourcePermissionInput < Struct.new(
      :action_type,
      :source_resource_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy that removes permissions on the target database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DeleteResourcePermissionOutput AWS API Documentation
    #
    class DeleteResourcePermissionOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DeregisterApplicationInput AWS API Documentation
    #
    class DeregisterApplicationInput < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DeregisterApplicationOutput AWS API Documentation
    #
    class DeregisterApplicationOutput < Aws::EmptyStructure; end

    # A specific result obtained by specifying the name, value, and
    # operator.
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter values. Filter values are case-sensitive. If you specify
    #   multiple values for a filter, the values are joined with an OR, and
    #   the request returns all results that match any of the specified
    #   values
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator for the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :value,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] app_registry_arn
    #   The Amazon Resource Name (ARN) of the application registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetApplicationInput AWS API Documentation
    #
    class GetApplicationInput < Struct.new(
      :application_id,
      :application_arn,
      :app_registry_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   Returns all of the metadata of an application registered with AWS
    #   Systems Manager for SAP.
    #   @return [Types::Application]
    #
    # @!attribute [rw] tags
    #   The tags of a registered application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetApplicationOutput AWS API Documentation
    #
    class GetApplicationOutput < Struct.new(
      :application,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetComponentInput AWS API Documentation
    #
    class GetComponentInput < Struct.new(
      :application_id,
      :component_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component
    #   The component of an application registered with AWS Systems Manager
    #   for SAP.
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetComponentOutput AWS API Documentation
    #
    class GetComponentOutput < Struct.new(
      :component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] database_id
    #   The ID of the database.
    #   @return [String]
    #
    # @!attribute [rw] database_arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetDatabaseInput AWS API Documentation
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
    #   The SAP HANA database of an application registered with AWS Systems
    #   Manager for SAP.
    #   @return [Types::Database]
    #
    # @!attribute [rw] tags
    #   The tags of a database.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetDatabaseOutput AWS API Documentation
    #
    class GetDatabaseOutput < Struct.new(
      :database,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The ID of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetOperationInput AWS API Documentation
    #
    class GetOperationInput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   Returns the details of an operation.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetOperationOutput AWS API Documentation
    #
    class GetOperationOutput < Struct.new(
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_type
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetResourcePermissionInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetResourcePermissionOutput AWS API Documentation
    #
    class GetResourcePermissionOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of the Dedicated Host.
    #
    # @!attribute [rw] host_name
    #   The name of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] host_role
    #   The role of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] host_ip
    #   The IP address of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID of the instance on the Dedicated Host.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Host AWS API Documentation
    #
    class Host < Struct.new(
      :host_name,
      :host_role,
      :host_ip,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListApplicationsInput AWS API Documentation
    #
    class ListApplicationsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   The applications registered with AWS Systems Manager for SAP.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListApplicationsOutput AWS API Documentation
    #
    class ListApplicationsOutput < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #
    #   If you do not specify a value for MaxResults, the request returns 50
    #   items per page by default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListComponentsInput AWS API Documentation
    #
    class ListComponentsInput < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] components
    #   List of components registered with AWS System Manager for SAP.
    #   @return [Array<Types::ComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListComponentsOutput AWS API Documentation
    #
    class ListComponentsOutput < Struct.new(
      :components,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value. If you do not specify a value for MaxResults, the
    #   request returns 50 items per page by default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListDatabasesInput AWS API Documentation
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
    #   The SAP HANA databases of an application.
    #   @return [Array<Types::DatabaseSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListDatabasesOutput AWS API Documentation
    #
    class ListDatabasesOutput < Struct.new(
      :databases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value. If you do not specify a value for MaxResults, the
    #   request returns 50 items per page by default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters of an operation.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListOperationsInput AWS API Documentation
    #
    class ListOperationsInput < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   List of operations performed by AWS Systems Manager for SAP.
    #   @return [Array<Types::Operation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListOperationsOutput AWS API Documentation
    #
    class ListOperationsOutput < Struct.new(
      :operations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operations performed by AWS Systems Manager for SAP.
    #
    # @!attribute [rw] id
    #   The ID of the operation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the operation.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of the operation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the operation.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the operation.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the operation.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time at which the operation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Operation AWS API Documentation
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

    # @!attribute [rw] action_type
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/PutResourcePermissionInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/PutResourcePermissionOutput AWS API Documentation
    #
    class PutResourcePermissionOutput < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_type
    #   The type of the application.
    #   @return [String]
    #
    # @!attribute [rw] instances
    #   The Amazon EC2 instances on which your SAP application is running.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sap_instance_number
    #   The SAP instance number of the application.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The System ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be attached to the SAP application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] credentials
    #   The credentials of the SAP application.
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/RegisterApplicationInput AWS API Documentation
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
    #   The application registered with AWS Systems Manager for SAP.
    #   @return [Types::Application]
    #
    # @!attribute [rw] operation_id
    #   The ID of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/RegisterApplicationOutput AWS API Documentation
    #
    class RegisterApplicationOutput < Struct.new(
      :application,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags on a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Adds/updates or removes credentials for applications registered with
    #   AWS Systems Manager for SAP.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] credentials_to_add_or_update
    #   The credentials to be added or updated.
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @!attribute [rw] credentials_to_remove
    #   The credentials to be removed.
    #   @return [Array<Types::ApplicationCredential>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UpdateApplicationSettingsInput AWS API Documentation
    #
    class UpdateApplicationSettingsInput < Struct.new(
      :application_id,
      :credentials_to_add_or_update,
      :credentials_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The update message.
    #   @return [String]
    #
    # @!attribute [rw] operation_ids
    #   The IDs of the operations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UpdateApplicationSettingsOutput AWS API Documentation
    #
    class UpdateApplicationSettingsOutput < Struct.new(
      :message,
      :operation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
