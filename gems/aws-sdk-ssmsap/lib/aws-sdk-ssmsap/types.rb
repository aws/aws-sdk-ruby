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
    # @!attribute [rw] discovery_status
    #   The latest discovery result for the application.
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
    # @!attribute [rw] associated_application_arns
    #   The Amazon Resource Names of the associated AWS Systems Manager for
    #   SAP applications.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Application AWS API Documentation
    #
    class Application < Struct.new(
      :id,
      :type,
      :arn,
      :app_registry_arn,
      :status,
      :discovery_status,
      :components,
      :last_updated,
      :status_message,
      :associated_application_arns)
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
    # @!attribute [rw] discovery_status
    #   The status of the latest discovery.
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
      :discovery_status,
      :type,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of the associated host.
    #
    # @!attribute [rw] hostname
    #   The name of the host.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   The IP addresses of the associated host.
    #   @return [Array<Types::IpAddressMember>]
    #
    # @!attribute [rw] os_version
    #   The version of the operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/AssociatedHost AWS API Documentation
    #
    class AssociatedHost < Struct.new(
      :hostname,
      :ec2_instance_id,
      :ip_addresses,
      :os_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for AWS Backint Agent for SAP HANA. You can
    # backup your SAP HANA database with AWS Backup or Amazon S3.
    #
    # @!attribute [rw] backint_mode
    #   AWS service for your database backup.
    #   @return [String]
    #
    # @!attribute [rw] ensure_no_backup_in_process
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/BackintConfig AWS API Documentation
    #
    class BackintConfig < Struct.new(
      :backint_mode,
      :ensure_no_backup_in_process)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SAP component of your application.
    #
    # @!attribute [rw] component_id
    #   The ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The SAP System Identifier of the application component.
    #   @return [String]
    #
    # @!attribute [rw] system_number
    #   The SAP system number of the application component.
    #   @return [String]
    #
    # @!attribute [rw] parent_component
    #   The parent component of a highly available environment. For example,
    #   in a highly available SAP on AWS workload, the parent component
    #   consists of the entire setup, including the child components.
    #   @return [String]
    #
    # @!attribute [rw] child_components
    #   The child components of a highly available environment. For example,
    #   in a highly available SAP on AWS workload, the child component
    #   consists of the primary and secondar instances.
    #   @return [Array<String>]
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
    #
    #   * ACTIVATED - this status has been deprecated.
    #
    #   * STARTING - the component is in the process of being started.
    #
    #   * STOPPED - the component is not running.
    #
    #   * STOPPING - the component is in the process of being stopped.
    #
    #   * RUNNING - the component is running.
    #
    #   * RUNNING\_WITH\_ERROR - one or more child component(s) of the
    #     parent component is not running. Call [ `GetComponent` ][1] to
    #     review the status of each child component.
    #
    #   * UNDEFINED - AWS Systems Manager for SAP cannot provide the
    #     component status based on the discovered information. Verify your
    #     SAP application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ssmsap/latest/APIReference/API_GetComponent.html
    #   @return [String]
    #
    # @!attribute [rw] sap_hostname
    #   The hostname of the component.
    #   @return [String]
    #
    # @!attribute [rw] sap_feature
    #   The SAP feature of the component.
    #   @return [String]
    #
    # @!attribute [rw] sap_kernel_version
    #   The kernel version of the component.
    #   @return [String]
    #
    # @!attribute [rw] hdb_version
    #   The SAP HANA version of the component.
    #   @return [String]
    #
    # @!attribute [rw] resilience
    #   Details of the SAP HANA system replication for the component.
    #   @return [Types::Resilience]
    #
    # @!attribute [rw] associated_host
    #   The associated host of the component.
    #   @return [Types::AssociatedHost]
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
    # @!attribute [rw] database_connection
    #   The connection specifications for the database of the component.
    #   @return [Types::DatabaseConnection]
    #
    # @!attribute [rw] last_updated
    #   The time at which the component was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Component AWS API Documentation
    #
    class Component < Struct.new(
      :component_id,
      :sid,
      :system_number,
      :parent_component,
      :child_components,
      :application_id,
      :component_type,
      :status,
      :sap_hostname,
      :sap_feature,
      :sap_kernel_version,
      :hdb_version,
      :resilience,
      :associated_host,
      :databases,
      :hosts,
      :primary_host,
      :database_connection,
      :last_updated,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is information about the component of your SAP application, such
    # as Web Dispatcher.
    #
    # @!attribute [rw] component_type
    #   This string is the type of the component.
    #
    #   Accepted value is `WD`.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   This string is the SAP System ID of the component.
    #
    #   Accepted values are alphanumeric.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   This is the Amazon EC2 instance on which your SAP component is
    #   running.
    #
    #   Accepted values are alphanumeric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ComponentInfo AWS API Documentation
    #
    class ComponentInfo < Struct.new(
      :component_type,
      :sid,
      :ec2_instance_id)
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :application_id,
      :component_id,
      :component_type,
      :tags,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a configuration check definition supported by AWS Systems
    # Manager for SAP.
    #
    # @!attribute [rw] id
    #   The unique identifier of the configuration check.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration check.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the configuration check validates.
    #   @return [String]
    #
    # @!attribute [rw] applicable_application_types
    #   The list of SSMSAP application types that this configuration check
    #   can be evaluated against.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ConfigurationCheckDefinition AWS API Documentation
    #
    class ConfigurationCheckDefinition < Struct.new(
      :id,
      :name,
      :description,
      :applicable_application_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a configuration check operation that has been executed
    # against an application.
    #
    # @!attribute [rw] id
    #   The unique identifier of the configuration check operation.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The ID of the application against which the configuration check was
    #   performed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the configuration check operation.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message providing additional details about the status of the
    #   configuration check operation.
    #   @return [String]
    #
    # @!attribute [rw] configuration_check_id
    #   The unique identifier of the configuration check that was performed.
    #   @return [String]
    #
    # @!attribute [rw] configuration_check_name
    #   The name of the configuration check that was performed.
    #   @return [String]
    #
    # @!attribute [rw] configuration_check_description
    #   A description of the configuration check that was performed.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the configuration check operation started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the configuration check operation completed.
    #   @return [Time]
    #
    # @!attribute [rw] rule_status_counts
    #   A summary of all the rule results, showing counts for each status
    #   type.
    #   @return [Types::RuleStatusCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ConfigurationCheckOperation AWS API Documentation
    #
    class ConfigurationCheckOperation < Struct.new(
      :id,
      :application_id,
      :status,
      :status_message,
      :configuration_check_id,
      :configuration_check_name,
      :configuration_check_description,
      :start_time,
      :end_time,
      :rule_status_counts)
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
    # @!attribute [rw] connected_component_arns
    #   The Amazon Resource Names of the connected AWS Systems Manager for
    #   SAP components.
    #   @return [Array<String>]
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
      :last_updated,
      :connected_component_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection specifications for the database.
    #
    # @!attribute [rw] database_connection_method
    #   The method of connection.
    #   @return [String]
    #
    # @!attribute [rw] database_arn
    #   The Amazon Resource Name of the connected SAP HANA database.
    #   @return [String]
    #
    # @!attribute [rw] connection_ip
    #   The IP address for connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DatabaseConnection AWS API Documentation
    #
    class DatabaseConnection < Struct.new(
      :database_connection_method,
      :database_arn,
      :connection_ip)
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
    # @!attribute [rw] tags
    #   The tags of a component.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetComponentOutput AWS API Documentation
    #
    class GetComponentOutput < Struct.new(
      :component,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The ID of the configuration check operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetConfigurationCheckOperationInput AWS API Documentation
    #
    class GetConfigurationCheckOperationInput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_check_operation
    #   Returns the details of a configuration check operation.
    #   @return [Types::ConfigurationCheckOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetConfigurationCheckOperationOutput AWS API Documentation
    #
    class GetConfigurationCheckOperationOutput < Struct.new(
      :configuration_check_operation)
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
    # @!attribute [rw] host_ip
    #   The IP address of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The ID of Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID of the instance on the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] host_role
    #   The role of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The version of the operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Host AWS API Documentation
    #
    class Host < Struct.new(
      :host_name,
      :host_ip,
      :ec2_instance_id,
      :instance_id,
      :host_role,
      :os_version)
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

    # Provides information of the IP address.
    #
    # @!attribute [rw] ip_address
    #   The IP address.
    #   @return [String]
    #
    # @!attribute [rw] primary
    #   The primary IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] allocation_type
    #   The type of allocation for the IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/IpAddressMember AWS API Documentation
    #
    class IpAddressMember < Struct.new(
      :ip_address,
      :primary,
      :allocation_type)
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
    # @!attribute [rw] filters
    #   The filter of name, value, and operator.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListApplicationsInput AWS API Documentation
    #
    class ListApplicationsInput < Struct.new(
      :next_token,
      :max_results,
      :filters)
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

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListConfigurationCheckDefinitionsInput AWS API Documentation
    #
    class ListConfigurationCheckDefinitionsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_checks
    #   The configuration check types supported by AWS Systems Manager for
    #   SAP.
    #   @return [Array<Types::ConfigurationCheckDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListConfigurationCheckDefinitionsOutput AWS API Documentation
    #
    class ListConfigurationCheckDefinitionsOutput < Struct.new(
      :configuration_checks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] list_mode
    #   The mode for listing configuration check operations. Defaults to
    #   "LATEST\_PER\_CHECK".
    #
    #   * LATEST\_PER\_CHECK - Will list the latest configuration check
    #     operation per check type.
    #
    #   * ALL\_OPERATIONS - Will list all configuration check operations
    #     performed on the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListConfigurationCheckOperationsInput AWS API Documentation
    #
    class ListConfigurationCheckOperationsInput < Struct.new(
      :application_id,
      :list_mode,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_check_operations
    #   The configuration check operations performed by AWS Systems Manager
    #   for SAP.
    #   @return [Array<Types::ConfigurationCheckOperation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListConfigurationCheckOperationsOutput AWS API Documentation
    #
    class ListConfigurationCheckOperationsOutput < Struct.new(
      :configuration_check_operations,
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

    # @!attribute [rw] operation_id
    #   The ID of the operation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #
    #   If you do not specify a value for `MaxResults`, the request returns
    #   50 items per page by default.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optionally specify filters to narrow the returned operation event
    #   items.
    #
    #   Valid filter names include `status`, `resourceID`, and
    #   `resourceType`. The valid operator for all three filters is
    #   `Equals`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListOperationEventsInput AWS API Documentation
    #
    class ListOperationEventsInput < Struct.new(
      :operation_id,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_events
    #   A returned list of operation events that meet the filter criteria.
    #   @return [Array<Types::OperationEvent>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListOperationEventsOutput AWS API Documentation
    #
    class ListOperationEventsOutput < Struct.new(
      :operation_events,
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

    # @!attribute [rw] operation_id
    #   The ID of the configuration check operation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListSubCheckResultsInput AWS API Documentation
    #
    class ListSubCheckResultsInput < Struct.new(
      :operation_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sub_check_results
    #   The sub-check results of a configuration check operation.
    #   @return [Array<Types::SubCheckResult>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListSubCheckResultsOutput AWS API Documentation
    #
    class ListSubCheckResultsOutput < Struct.new(
      :sub_check_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sub_check_result_id
    #   The ID of the sub check result.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListSubCheckRuleResultsInput AWS API Documentation
    #
    class ListSubCheckRuleResultsInput < Struct.new(
      :sub_check_result_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_results
    #   The rule results of a sub-check belonging to a configuration check
    #   operation.
    #   @return [Array<Types::RuleResult>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListSubCheckRuleResultsOutput AWS API Documentation
    #
    class ListSubCheckRuleResultsOutput < Struct.new(
      :rule_results,
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

    # An operation event returns details for an operation, including key
    # milestones which can be used to monitor and track operations in
    # progress.
    #
    # Operation events contain:
    #
    # * Description string
    #
    # * Resource, including its ARN and type
    #
    # * Status
    #
    # * StatusMessage string
    #
    # * TimeStamp
    #
    # Operation event examples include StartApplication or StopApplication.
    #
    # @!attribute [rw] description
    #   A description of the operation event. For example, "Stop the EC2
    #   instance i-abcdefgh987654321".
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource involved in the operations event.
    #
    #   Contains `ResourceArn` ARN and `ResourceType`.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] status
    #   The status of the operation event. The possible statuses are:
    #   `IN_PROGRESS`, `COMPLETED`, and `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message relating to a specific operation event.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the specified operation event.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/OperationEvent AWS API Documentation
    #
    class OperationEvent < Struct.new(
      :description,
      :resource,
      :status,
      :status_message,
      :timestamp)
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
    # @!attribute [rw] database_arn
    #   The Amazon Resource Name of the SAP HANA database.
    #   @return [String]
    #
    # @!attribute [rw] components_info
    #   This is an optional parameter for component details to which the SAP
    #   ABAP application is attached, such as Web Dispatcher.
    #
    #   This is an array of ApplicationComponent objects. You may input 0 to
    #   5 items.
    #   @return [Array<Types::ComponentInfo>]
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
      :credentials,
      :database_arn,
      :components_info)
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

    # Details of the SAP HANA system replication for the instance.
    #
    # @!attribute [rw] hsr_tier
    #   The tier of the component.
    #   @return [String]
    #
    # @!attribute [rw] hsr_replication_mode
    #   The replication mode of the component.
    #   @return [String]
    #
    # @!attribute [rw] hsr_operation_mode
    #   The operation mode of the component.
    #   @return [String]
    #
    # @!attribute [rw] cluster_status
    #   The cluster status of the component.
    #   @return [String]
    #
    # @!attribute [rw] enqueue_replication
    #   Indicates if or not enqueue replication is enabled for the ASCS
    #   component.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Resilience AWS API Documentation
    #
    class Resilience < Struct.new(
      :hsr_tier,
      :hsr_replication_mode,
      :hsr_operation_mode,
      :cluster_status,
      :enqueue_replication)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource contains a `ResourceArn` and the `ResourceType`.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the source resource.
    #
    #   Example of `ResourceArn`:
    #   "`arn:aws:ec2:us-east-1:111111111111:instance/i-abcdefgh987654321`"
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   Example of `ResourceType`: "`AWS::SystemsManagerSAP::Component`"
    #   or "`AWS::EC2::Instance`".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :resource_arn,
      :resource_type)
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

    # Represents the result of a single rule within a configuration check.
    #
    # @!attribute [rw] id
    #   The unique identifier of the rule result.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the rule validates.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the rule result.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message providing details about the rule result.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Additional metadata associated with the rule result.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/RuleResult AWS API Documentation
    #
    class RuleResult < Struct.new(
      :id,
      :description,
      :status,
      :message,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of rule results, providing counts for each status type.
    #
    # @!attribute [rw] failed
    #   The number of rules that failed.
    #   @return [Integer]
    #
    # @!attribute [rw] warning
    #   The number of rules that returned warnings.
    #   @return [Integer]
    #
    # @!attribute [rw] info
    #   The number of rules that returned informational results.
    #   @return [Integer]
    #
    # @!attribute [rw] passed
    #   The number of rules that passed.
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   The number of rules with unknown status.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/RuleStatusCounts AWS API Documentation
    #
    class RuleStatusCounts < Struct.new(
      :failed,
      :warning,
      :info,
      :passed,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StartApplicationInput AWS API Documentation
    #
    class StartApplicationInput < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The ID of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StartApplicationOutput AWS API Documentation
    #
    class StartApplicationOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StartApplicationRefreshInput AWS API Documentation
    #
    class StartApplicationRefreshInput < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The ID of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StartApplicationRefreshOutput AWS API Documentation
    #
    class StartApplicationRefreshOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] configuration_check_ids
    #   The list of configuration checks to perform.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StartConfigurationChecksInput AWS API Documentation
    #
    class StartConfigurationChecksInput < Struct.new(
      :application_id,
      :configuration_check_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_check_operations
    #   The configuration check operations that were started.
    #   @return [Array<Types::ConfigurationCheckOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StartConfigurationChecksOutput AWS API Documentation
    #
    class StartConfigurationChecksOutput < Struct.new(
      :configuration_check_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] stop_connected_entity
    #   Specify the `ConnectedEntityType`. Accepted type is `DBMS`.
    #
    #   If this parameter is included, the connected DBMS (Database
    #   Management System) will be stopped.
    #   @return [String]
    #
    # @!attribute [rw] include_ec2_instance_shutdown
    #   Boolean. If included and if set to `True`, the StopApplication
    #   operation will shut down the associated Amazon EC2 instance in
    #   addition to the application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StopApplicationInput AWS API Documentation
    #
    class StopApplicationInput < Struct.new(
      :application_id,
      :stop_connected_entity,
      :include_ec2_instance_shutdown)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The ID of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/StopApplicationOutput AWS API Documentation
    #
    class StopApplicationOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the result of a sub-check within a configuration check
    # operation.
    #
    # @!attribute [rw] id
    #   The unique identifier of the sub-check result.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the sub-check.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the sub-check validates.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A list of references or documentation links related to the
    #   sub-check.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/SubCheckResult AWS API Documentation
    #
    class SubCheckResult < Struct.new(
      :id,
      :name,
      :description,
      :references)
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

    # The request is not authorized.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] backint
    #   Installation of AWS Backint Agent for SAP HANA.
    #   @return [Types::BackintConfig]
    #
    # @!attribute [rw] database_arn
    #   The Amazon Resource Name of the SAP HANA database that replaces the
    #   current SAP HANA connection with the SAP\_ABAP application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UpdateApplicationSettingsInput AWS API Documentation
    #
    class UpdateApplicationSettingsInput < Struct.new(
      :application_id,
      :credentials_to_add_or_update,
      :credentials_to_remove,
      :backint,
      :database_arn)
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

