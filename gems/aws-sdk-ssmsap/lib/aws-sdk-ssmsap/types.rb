# frozen_string_literal: true

# This is generated code!

module Aws::SsmSap
  # This module contains the types returned by client operations.
  module Types

    # <p>An SAP application registered with AWS Systems Manager for SAP.</p>
    # @!attribute id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute app_registry_arn
    #   <p>The Amazon Resource Name (ARN) of the Application Registry.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the application.</p>
    #   @return [String]
    # @!attribute discovery_status
    #   <p>The latest discovery result for the application.</p>
    #   @return [String]
    # @!attribute components
    #   <p>The components of the application.</p>
    #   @return [Array<String>]
    # @!attribute last_updated
    #   <p>The time at which the application was last updated.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The status message.</p>
    #   @return [String]
    # @!attribute associated_application_arns
    #   <p>The Amazon Resource Names of the associated AWS Systems Manager for SAP
    #            applications.</p>
    #   @return [Array<String>]
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
      :associated_application_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The credentials of your SAP application.</p>
    # @!attribute database_name
    #   <p>The name of the SAP HANA database.</p>
    #   @return [String]
    # @!attribute credential_type
    #   <p>The type of the application credentials. </p>
    #   @return [String]
    # @!attribute secret_id
    #   <p>The secret ID created in AWS Secrets Manager to store the credentials of the SAP
    #            application. </p>
    #   @return [String]
    class ApplicationCredential < Struct.new(
      :database_name,
      :credential_type,
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the SAP application registered with AWS Systems Manager for SAP.
    #       </p>
    # @!attribute id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute discovery_status
    #   <p>The status of the latest discovery.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags on the application.</p>
    #   @return [Hash<String, String>]
    class ApplicationSummary < Struct.new(
      :id,
      :discovery_status,
      :type,
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of the associated host.</p>
    # @!attribute hostname
    #   <p>The name of the host.</p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>The ID of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>The IP addresses of the associated host.</p>
    #   @return [Array<Types::IpAddressMember>]
    # @!attribute os_version
    #   <p>The version of the operating system.</p>
    #   @return [String]
    class AssociatedHost < Struct.new(
      :hostname,
      :ec2_instance_id,
      :ip_addresses,
      :os_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration parameters for AWS Backint Agent for SAP HANA. You can backup your SAP
    #          HANA database with AWS Backup or Amazon S3.</p>
    # @!attribute backint_mode
    #   <p>AWS service for your database backup.</p>
    #   @return [String]
    # @!attribute ensure_no_backup_in_process
    #   <p/>
    #   @return [Boolean]
    class BackintConfig < Struct.new(
      :backint_mode,
      :ensure_no_backup_in_process,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The SAP component of your application.</p>
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    # @!attribute sid
    #   <p>The SAP System Identifier of the application component.</p>
    #   @return [String]
    # @!attribute system_number
    #   <p>The SAP system number of the application component.</p>
    #   @return [String]
    # @!attribute parent_component
    #   <p>The parent component of a highly available environment. For example, in a highly
    #            available SAP on AWS workload, the parent component consists of the entire setup,
    #            including the child components.</p>
    #   @return [String]
    # @!attribute child_components
    #   <p>The child components of a highly available environment. For example, in a highly
    #            available SAP on AWS workload, the child component consists of the primary and secondar
    #            instances.</p>
    #   @return [Array<String>]
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The type of the component.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the component.</p>
    #            <ul>
    #               <li>
    #                  <p>ACTIVATED - this status has been deprecated.</p>
    #               </li>
    #               <li>
    #                  <p>STARTING - the component is in the process of being started.</p>
    #               </li>
    #               <li>
    #                  <p>STOPPED - the component is not running.</p>
    #               </li>
    #               <li>
    #                  <p>STOPPING - the component is in the process of being stopped.</p>
    #               </li>
    #               <li>
    #                  <p>RUNNING - the component is running.</p>
    #               </li>
    #               <li>
    #                  <p>RUNNING_WITH_ERROR - one or more child component(s) of the parent component is not
    #                  running. Call <a href="https://docs.aws.amazon.com/ssmsap/latest/APIReference/API_GetComponent.html">
    #                        <code>GetComponent</code>
    #                     </a> to review the status of each child
    #                  component.</p>
    #               </li>
    #               <li>
    #                  <p>UNDEFINED - AWS Systems Manager for SAP cannot provide the component status
    #                  based on the discovered information. Verify your SAP application.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sap_hostname
    #   <p>The hostname of the component.</p>
    #   @return [String]
    # @!attribute sap_feature
    #   <p>The SAP feature of the component.</p>
    #   @return [String]
    # @!attribute sap_kernel_version
    #   <p>The kernel version of the component.</p>
    #   @return [String]
    # @!attribute hdb_version
    #   <p>The SAP HANA version of the component.</p>
    #   @return [String]
    # @!attribute resilience
    #   <p>Details of the SAP HANA system replication for the component.</p>
    #   @return [Types::Resilience]
    # @!attribute associated_host
    #   <p>The associated host of the component.</p>
    #   @return [Types::AssociatedHost]
    # @!attribute databases
    #   <p>The SAP HANA databases of the component.</p>
    #   @return [Array<String>]
    # @!attribute hosts
    #   <p>The hosts of the component.</p>
    #   @deprecated
    #     This shape is no longer used. Please use AssociatedHost.
    #   @return [Array<Types::Host>]
    # @!attribute primary_host
    #   <p>The primary host of the component.</p>
    #   @deprecated
    #     This shape is no longer used. Please use AssociatedHost.
    #   @return [String]
    # @!attribute database_connection
    #   <p>The connection specifications for the database of the component.</p>
    #   @return [Types::DatabaseConnection]
    # @!attribute last_updated
    #   <p>The time at which the component was last updated.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   @return [String]
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
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is information about the component of 
    #          your SAP application, such as Web Dispatcher.</p>
    # @!attribute component_type
    #   <p>This string is the type of the component.</p>
    #            <p>Accepted value is <code>WD</code>.</p>
    #   @return [String]
    # @!attribute sid
    #   <p>This string is the SAP System ID of the component.</p>
    #            <p>Accepted values are alphanumeric.</p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>This is the Amazon EC2 instance on which your SAP component is running.</p>
    #            <p>Accepted values are alphanumeric.</p>
    #   @return [String]
    class ComponentInfo < Struct.new(
      :component_type,
      :sid,
      :ec2_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the component.</p>
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The type of the component.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component summary.</p>
    #   @return [String]
    class ComponentSummary < Struct.new(
      :application_id,
      :component_id,
      :component_type,
      :tags,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict has occurred.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The SAP HANA database of the application registered with AWS Systems Manager for
    #          SAP.</p>
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>The credentials of the database.</p>
    #   @return [Array<Types::ApplicationCredential>]
    # @!attribute database_id
    #   <p>The ID of the SAP HANA database.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database.</p>
    #   @return [String]
    # @!attribute database_type
    #   <p>The type of the database.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the database.</p>
    #   @return [String]
    # @!attribute primary_host
    #   <p>The primary host of the database.</p>
    #   @return [String]
    # @!attribute sql_port
    #   <p>The SQL port of the database.</p>
    #   @return [Integer]
    # @!attribute last_updated
    #   <p>The time at which the database was last updated.</p>
    #   @return [Time]
    # @!attribute connected_component_arns
    #   <p>The Amazon Resource Names of the connected AWS Systems Manager for SAP
    #            components.</p>
    #   @return [Array<String>]
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
      :connected_component_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The connection specifications for the database.</p>
    # @!attribute database_connection_method
    #   <p>The method of connection.</p>
    #   @return [String]
    # @!attribute database_arn
    #   <p>The Amazon Resource Name of the connected SAP HANA database.</p>
    #   @return [String]
    # @!attribute connection_ip
    #   <p>The IP address for connection.</p>
    #   @return [String]
    class DatabaseConnection < Struct.new(
      :database_connection_method,
      :database_arn,
      :connection_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the database.</p>
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    # @!attribute database_id
    #   <p>The ID of the database.</p>
    #   @return [String]
    # @!attribute database_type
    #   <p>The type of the database.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the database.</p>
    #   @return [Hash<String, String>]
    class DatabaseSummary < Struct.new(
      :application_id,
      :component_id,
      :database_id,
      :database_type,
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_type
    #   <p>Delete or restore the permissions on the target database.</p>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the source resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class DeleteResourcePermissionOperationInput < Struct.new(
      :action_type,
      :source_resource_arn,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy that removes permissions on the target database.</p>
    #   @return [String]
    class DeleteResourcePermissionOperationOutput < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class DeregisterApplicationOperationInput < Struct.new(
      :application_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterApplicationOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A specific result obtained by specifying the name, value, and operator. </p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The filter values. Filter values are case-sensitive. If you specify multiple values for
    #            a filter, the values are joined with an OR, and the request returns all results that match
    #            any of the specified values</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator for the filter. </p>
    #   @return [String]
    class Filter < Struct.new(
      :name,
      :value,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application. </p>
    #   @return [String]
    # @!attribute app_registry_arn
    #   <p>The Amazon Resource Name (ARN) of the application registry.</p>
    #   @return [String]
    class GetApplicationOperationInput < Struct.new(
      :application_id,
      :application_arn,
      :app_registry_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>Returns all of the metadata of an application registered with AWS Systems Manager for
    #            SAP.</p>
    #   @return [Types::Application]
    # @!attribute tags
    #   <p>The tags of a registered application.</p>
    #   @return [Hash<String, String>]
    class GetApplicationOperationOutput < Struct.new(
      :application,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    class GetComponentOperationInput < Struct.new(
      :application_id,
      :component_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>The component of an application registered with AWS Systems Manager for SAP.</p>
    #   @return [Types::Component]
    # @!attribute tags
    #   <p>The tags of a component.</p>
    #   @return [Hash<String, String>]
    class GetComponentOperationOutput < Struct.new(
      :component,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    # @!attribute database_id
    #   <p>The ID of the database.</p>
    #   @return [String]
    # @!attribute database_arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    #   @return [String]
    class GetDatabaseOperationInput < Struct.new(
      :application_id,
      :component_id,
      :database_id,
      :database_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute database
    #   <p>The SAP HANA database of an application registered with AWS Systems Manager for
    #            SAP.</p>
    #   @return [Types::Database]
    # @!attribute tags
    #   <p>The tags of a database.</p>
    #   @return [Hash<String, String>]
    class GetDatabaseOperationOutput < Struct.new(
      :database,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    class GetOperationOperationInput < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>Returns the details of an operation.</p>
    #   @return [Types::Operation]
    class GetOperationOperationOutput < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_type
    #   <p/>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class GetResourcePermissionOperationInput < Struct.new(
      :action_type,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p/>
    #   @return [String]
    class GetResourcePermissionOperationOutput < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of the Dedicated Host. </p>
    # @!attribute host_name
    #   <p>The name of the Dedicated Host.</p>
    #   @return [String]
    # @!attribute host_ip
    #   <p>The IP address of the Dedicated Host. </p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>The ID of Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID of the instance on the Dedicated Host.</p>
    #   @return [String]
    # @!attribute host_role
    #   <p>The role of the Dedicated Host.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The version of the operating system.</p>
    #   @return [String]
    class Host < Struct.new(
      :host_name,
      :host_ip,
      :ec2_instance_id,
      :instance_id,
      :host_role,
      :os_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information of the IP address.</p>
    # @!attribute ip_address
    #   <p>The IP address.</p>
    #   @return [String]
    # @!attribute primary
    #   <p>The primary IP address.</p>
    #   @return [Boolean]
    # @!attribute allocation_type
    #   <p>The type of allocation for the IP address.</p>
    #   @return [String]
    class IpAddressMember < Struct.new(
      :ip_address,
      :primary,
      :allocation_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>The filter of name, value, and operator.</p>
    #   @return [Array<Types::Filter>]
    class ListApplicationsOperationInput < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>The applications registered with AWS Systems Manager for SAP.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class ListApplicationsOperationOutput < Struct.new(
      :applications,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value.</p>
    #            <p>If you do not specify a value for MaxResults, the request returns 50 items per page by
    #            default.</p>
    #   @return [Integer]
    class ListComponentsOperationInput < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute components
    #   <p>List of components registered with AWS System Manager for SAP.</p>
    #   @return [Array<Types::ComponentSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class ListComponentsOperationOutput < Struct.new(
      :components,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute component_id
    #   <p>The ID of the component.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value. If you do not specify a value
    #            for MaxResults, the request returns 50 items per page by default.</p>
    #   @return [Integer]
    class ListDatabasesOperationInput < Struct.new(
      :application_id,
      :component_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute databases
    #   <p>The SAP HANA databases of an application.</p>
    #   @return [Array<Types::DatabaseSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class ListDatabasesOperationOutput < Struct.new(
      :databases,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value.</p>
    #            <p>If you do not specify a value for <code>MaxResults</code>, the request returns 50 items
    #            per page by default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Optionally specify filters to narrow the returned operation event items.</p>
    #            <p>Valid filter names include <code>status</code>, <code>resourceID</code>, and
    #               <code>resourceType</code>. The valid operator for all three filters is
    #               <code>Equals</code>.</p>
    #   @return [Array<Types::Filter>]
    class ListOperationEventsInput < Struct.new(
      :operation_id,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_events
    #   <p>A returned list of operation events that meet the filter criteria.</p>
    #   @return [Array<Types::OperationEvent>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class ListOperationEventsOutput < Struct.new(
      :operation_events,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value. If you do not specify a value
    #            for MaxResults, the request returns 50 items per page by default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters of an operation.</p>
    #   @return [Array<Types::Filter>]
    class ListOperationsOperationInput < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>List of operations performed by AWS Systems Manager for SAP.</p>
    #   @return [Array<Types::Operation>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    #   @return [String]
    class ListOperationsOperationOutput < Struct.new(
      :operations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p/>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operations performed by AWS Systems Manager for SAP.</p>
    # @!attribute id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the operation.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the operation.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties of the operation.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_type
    #   <p>The resource type of the operation.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the operation.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the operation.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the operation.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the operation.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time at which the operation was last updated.</p>
    #   @return [Time]
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
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation event returns details for an operation, including key milestones which can
    #          be used to monitor and track operations in progress.</p>
    #          <p>Operation events contain:</p>
    #          <ul>
    #             <li>
    #                <p>Description string</p>
    #             </li>
    #             <li>
    #                <p>Resource, including its ARN and type</p>
    #             </li>
    #             <li>
    #                <p>Status</p>
    #             </li>
    #             <li>
    #                <p>StatusMessage string</p>
    #             </li>
    #             <li>
    #                <p>TimeStamp</p>
    #             </li>
    #          </ul>
    #          <p>Operation event examples include StartApplication or StopApplication.</p>
    # @!attribute description
    #   <p>A description of the operation event. For example, "Stop the EC2 instance
    #            i-abcdefgh987654321".</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource involved in the operations event.</p>
    #            <p>Contains <code>ResourceArn</code> ARN and <code>ResourceType</code>.</p>
    #   @return [Types::Resource]
    # @!attribute status
    #   <p>The status of the operation event. The possible statuses are: <code>IN_PROGRESS</code>,
    #               <code>COMPLETED</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message relating to a specific operation event.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the specified operation event.</p>
    #   @return [Time]
    class OperationEvent < Struct.new(
      :description,
      :resource,
      :status,
      :status_message,
      :timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_type
    #   <p/>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p/>
    #   @return [String]
    # @!attribute resource_arn
    #   <p/>
    #   @return [String]
    class PutResourcePermissionOperationInput < Struct.new(
      :action_type,
      :source_resource_arn,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p/>
    #   @return [String]
    class PutResourcePermissionOperationOutput < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute application_type
    #   <p>The type of the application.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>The Amazon EC2 instances on which your SAP application is running.</p>
    #   @return [Array<String>]
    # @!attribute sap_instance_number
    #   <p>The SAP instance number of the application.</p>
    #   @return [String]
    # @!attribute sid
    #   <p>The System ID of the application.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be attached to the SAP application.</p>
    #   @return [Hash<String, String>]
    # @!attribute credentials
    #   <p>The credentials of the SAP application.</p>
    #   @return [Array<Types::ApplicationCredential>]
    # @!attribute database_arn
    #   <p>The Amazon Resource Name of the SAP HANA database.</p>
    #   @return [String]
    # @!attribute components_info
    #   <p>This is an optional parameter for component details 
    #            to which the SAP ABAP application is attached, 
    #            such as Web Dispatcher.</p>
    #            <p>This is an array of ApplicationComponent objects. 
    #            You may input 0 to 5 items.</p>
    #   @return [Array<Types::ComponentInfo>]
    class RegisterApplicationOperationInput < Struct.new(
      :application_id,
      :application_type,
      :instances,
      :sap_instance_number,
      :sid,
      :tags,
      :credentials,
      :database_arn,
      :components_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The application registered with AWS Systems Manager for SAP.</p>
    #   @return [Types::Application]
    # @!attribute operation_id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    class RegisterApplicationOperationOutput < Struct.new(
      :application,
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the SAP HANA system replication for the instance.</p>
    # @!attribute hsr_tier
    #   <p>The tier of the component.</p>
    #   @return [String]
    # @!attribute hsr_replication_mode
    #   <p>The replication mode of the component.</p>
    #   @return [String]
    # @!attribute hsr_operation_mode
    #   <p>The operation mode of the component.</p>
    #   @return [String]
    # @!attribute cluster_status
    #   <p>The cluster status of the component.</p>
    #   @return [String]
    # @!attribute enqueue_replication
    #   <p>Indicates if or not enqueue replication is enabled for the ASCS component.</p>
    #   @return [Boolean]
    class Resilience < Struct.new(
      :hsr_tier,
      :hsr_replication_mode,
      :hsr_operation_mode,
      :cluster_status,
      :enqueue_replication,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource contains a <code>ResourceArn</code> and the
    #          <code>ResourceType</code>.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the source resource.</p>
    #            <p>Example of <code>ResourceArn</code>:
    #               "<code>arn:aws:ec2:us-east-1:111111111111:instance/i-abcdefgh987654321</code>"</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <p>Example of <code>ResourceType</code>: "<code>AWS::SystemsManagerSAP::Component</code>"
    #            or "<code>AWS::EC2::Instance</code>".</p>
    #   @return [String]
    class Resource < Struct.new(
      :resource_arn,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is not available.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class StartApplicationInput < Struct.new(
      :application_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    class StartApplicationOutput < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class StartApplicationRefreshInput < Struct.new(
      :application_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    class StartApplicationRefreshOutput < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute stop_connected_entity
    #   <p>Specify the <code>ConnectedEntityType</code>. Accepted type is <code>DBMS</code>.</p>
    #            <p>If this parameter is included, the connected DBMS (Database Management System) will be
    #            stopped.</p>
    #   @return [String]
    # @!attribute include_ec2_instance_shutdown
    #   <p>Boolean. If included and if set to <code>True</code>, the StopApplication operation will
    #            shut down the associated Amazon EC2 instance in addition to the application.</p>
    #   @return [Boolean]
    class StopApplicationInput < Struct.new(
      :application_id,
      :stop_connected_entity,
      :include_ec2_instance_shutdown,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    class StopApplicationOutput < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags on a resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not authorized.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Adds/updates or removes credentials for applications registered with AWS Systems
    #            Manager for SAP.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute credentials_to_add_or_update
    #   <p>The credentials to be added or updated.</p>
    #   @return [Array<Types::ApplicationCredential>]
    # @!attribute credentials_to_remove
    #   <p>The credentials to be removed.</p>
    #   @return [Array<Types::ApplicationCredential>]
    # @!attribute backint
    #   <p>Installation of AWS Backint Agent for SAP HANA.</p>
    #   @return [Types::BackintConfig]
    # @!attribute database_arn
    #   <p>The Amazon Resource Name of the SAP HANA database that replaces the current SAP HANA
    #            connection with the SAP_ABAP application.</p>
    #   @return [String]
    class UpdateApplicationSettingsOperationInput < Struct.new(
      :application_id,
      :credentials_to_add_or_update,
      :credentials_to_remove,
      :backint,
      :database_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>The update message.</p>
    #   @return [String]
    # @!attribute operation_ids
    #   <p>The IDs of the operations.</p>
    #   @return [Array<String>]
    class UpdateApplicationSettingsOperationOutput < Struct.new(
      :message,
      :operation_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
