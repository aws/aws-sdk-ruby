# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationInsights
  # This module contains the types returned by client operations.
  module Types

    # <p> User does not have permissions to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    #   @return [Types::WorkloadConfiguration]
    class AddWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    # @!attribute workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    #   @return [Types::WorkloadConfiguration]
    class AddWorkloadResponse < Struct.new(
      :workload_id,
      :workload_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a standalone resource or similarly grouped resources that the application is
    #          made up of.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_remarks
    #   <p> If logging is supported for the resource type, indicates whether the component has
    #            configured logs to be monitored. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type. Supported resource types include EC2 instances, Auto Scaling group,
    #            Classic ELB, Application ELB, and SQS Queue.</p>
    #   @return [String]
    # @!attribute os_type
    #   <p> The operating system of the component. </p>
    #   @return [String]
    # @!attribute tier
    #   <p>The stack tier of the application component.</p>
    #   @return [String]
    # @!attribute monitor
    #   <p>Indicates whether the application component is monitored. </p>
    #   @return [Boolean]
    # @!attribute detected_workload
    #   <p> Workloads detected in the application component. </p>
    #   @return [Hash<String, Hash<String, String>>]
    class ApplicationComponent < Struct.new(
      :component_name,
      :component_remarks,
      :resource_type,
      :os_type,
      :tier,
      :monitor,
      :detected_workload,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the status of the application.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the application.</p>
    #   @return [String]
    # @!attribute resource_group_name
    #   <p>The name of the resource group used for the application.</p>
    #   @return [String]
    # @!attribute life_cycle
    #   <p>The lifecycle of the application. </p>
    #   @return [String]
    # @!attribute ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItems to receive SNS notifications for opsItem updates. </p>
    #   @return [String]
    # @!attribute sns_notification_arn
    #   <p>
    #            The SNS topic ARN that is associated with SNS notifications for updates or issues.
    #         </p>
    #   @return [String]
    # @!attribute ops_center_enabled
    #   <p> Indicates whether Application Insights will create opsItems for any problem detected by
    #            Application Insights for an application. </p>
    #   @return [Boolean]
    # @!attribute cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #   @return [Boolean]
    # @!attribute remarks
    #   <p>The issues on the user side that block Application Insights from successfully monitoring
    #            an application. Example remarks include:</p>
    #            <ul>
    #               <li>
    #                  <p>“Configuring application, detected 1 Errors, 3 Warnings”</p>
    #               </li>
    #               <li>
    #                  <p>“Configuring application, detected 1 Unconfigured Components”</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute auto_config_enabled
    #   <p> Indicates whether auto-configuration is turned on for this application. </p>
    #   @return [Boolean]
    # @!attribute discovery_type
    #   <p> The method used by Application Insights to onboard your resources. </p>
    #   @return [String]
    # @!attribute attach_missing_permission
    #   <p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>
    #   @return [Boolean]
    class ApplicationInfo < Struct.new(
      :account_id,
      :resource_group_name,
      :life_cycle,
      :ops_item_sns_topic_arn,
      :sns_notification_arn,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :remarks,
      :auto_config_enabled,
      :discovery_type,
      :attach_missing_permission,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not understood by the server.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The event information. </p>
    # @!attribute resource_group_name
    #   <p>The name of the resource group of the application to which the configuration event belongs.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the application to which the configuration event belongs.</p>
    #   @return [String]
    # @!attribute monitored_resource_arn
    #   <p> The resource monitored by Application Insights. </p>
    #   @return [String]
    # @!attribute event_status
    #   <p> The status of the configuration update event. Possible values include INFO, WARN, and
    #            ERROR. </p>
    #   @return [String]
    # @!attribute event_resource_type
    #   <p> The resource type that Application Insights attempted to configure, for example,
    #            CLOUDWATCH_ALARM. </p>
    #   @return [String]
    # @!attribute event_time
    #   <p> The timestamp of the event. </p>
    #   @return [Time]
    # @!attribute event_detail
    #   <p> The details of the event in plain text. </p>
    #   @return [String]
    # @!attribute event_resource_name
    #   <p> The name of the resource Application Insights attempted to configure. </p>
    #   @return [String]
    class ConfigurationEvent < Struct.new(
      :resource_group_name,
      :account_id,
      :monitored_resource_arn,
      :event_status,
      :event_resource_type,
      :event_time,
      :event_detail,
      :event_resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    #   @return [Boolean]
    # @!attribute cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #   @return [Boolean]
    # @!attribute ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem. </p>
    #   @return [String]
    # @!attribute sns_notification_arn
    #   <p>
    #            The SNS notification topic ARN.
    #         </p>
    #   @return [String]
    # @!attribute tags
    #   <p>List of tags to add to the application. tag key (<code>Key</code>) and an associated tag
    #            value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum
    #            length of a tag value is 256 characters.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute auto_config_enabled
    #   <p> Indicates whether Application Insights automatically configures unmonitored resources
    #            in the resource group. </p>
    #   @return [Boolean]
    # @!attribute auto_create
    #   <p> Configures all of the resources in the resource group by applying the recommended
    #            configurations. </p>
    #   @return [Boolean]
    # @!attribute grouping_type
    #   <p>Application Insights can create applications based on a resource group or on an account.
    #            To create an account-based application using all of the resources in the account, set this
    #            parameter to <code>ACCOUNT_BASED</code>. </p>
    #   @return [String]
    # @!attribute attach_missing_permission
    #   <p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>
    #   @return [Boolean]
    class CreateApplicationRequest < Struct.new(
      :resource_group_name,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :ops_item_sns_topic_arn,
      :sns_notification_arn,
      :tags,
      :auto_config_enabled,
      :auto_create,
      :grouping_type,
      :attach_missing_permission,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_info
    #   <p>Information about the application.</p>
    #   @return [Types::ApplicationInfo]
    class CreateApplicationResponse < Struct.new(
      :application_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #   @return [Array<String>]
    class CreateComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :resource_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateComponentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            Amazon Web Services provided patterns. </p>
    #   @return [Integer]
    class CreateLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_pattern
    #   <p>The successfully created log pattern.</p>
    #   @return [Types::LogPattern]
    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    class CreateLogPatternResponse < Struct.new(
      :log_pattern,
      :resource_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      :resource_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    class DeleteComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteComponentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #   @return [String]
    class DeleteLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLogPatternResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class DescribeApplicationRequest < Struct.new(
      :resource_group_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_info
    #   <p>Information about the application.</p>
    #   @return [Types::ApplicationInfo]
    class DescribeApplicationResponse < Struct.new(
      :application_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier of the application component.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload. The name of the workload is required when the tier of the application component is 
    #            <code>SAP_ASE_SINGLE_NODE</code> or <code>SAP_ASE_HIGH_AVAILABILITY</code>.</p>
    #   @return [String]
    # @!attribute recommendation_type
    #   <p>The recommended configuration type.</p>
    #   @return [String]
    class DescribeComponentConfigurationRecommendationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :tier,
      :workload_name,
      :recommendation_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_configuration
    #   <p>The recommended configuration settings of the component. The value is the escaped JSON
    #            of the configuration.</p>
    #   @return [String]
    class DescribeComponentConfigurationRecommendationResponse < Struct.new(
      :component_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class DescribeComponentConfigurationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor
    #   <p>Indicates whether the application component is monitored.</p>
    #   @return [Boolean]
    # @!attribute tier
    #   <p>The tier of the application component. Supported tiers include
    #            <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>,
    #               <code>SQL_SERVER</code>, and <code>DEFAULT</code>
    #            </p>
    #   @return [String]
    # @!attribute component_configuration
    #   <p>The configuration settings of the component. The value is the escaped JSON of the
    #            configuration.</p>
    #   @return [String]
    class DescribeComponentConfigurationResponse < Struct.new(
      :monitor,
      :tier,
      :component_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class DescribeComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_component
    #   <p>Describes a standalone resource or similarly grouped resources that the application is
    #            made up of.</p>
    #   @return [Types::ApplicationComponent]
    # @!attribute resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #   @return [Array<String>]
    class DescribeComponentResponse < Struct.new(
      :application_component,
      :resource_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class DescribeLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    # @!attribute log_pattern
    #   <p>The successfully created log pattern.</p>
    #   @return [Types::LogPattern]
    class DescribeLogPatternResponse < Struct.new(
      :resource_group_name,
      :account_id,
      :log_pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observation_id
    #   <p>The ID of the observation.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class DescribeObservationRequest < Struct.new(
      :observation_id,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observation
    #   <p>Information about the observation.</p>
    #   @return [Types::Observation]
    class DescribeObservationResponse < Struct.new(
      :observation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute problem_id
    #   <p>The ID of the problem.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class DescribeProblemObservationsRequest < Struct.new(
      :problem_id,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute related_observations
    #   <p>Observations related to the problem.</p>
    #   @return [Types::RelatedObservations]
    class DescribeProblemObservationsResponse < Struct.new(
      :related_observations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute problem_id
    #   <p>The ID of the problem.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the resource group affected by the problem.</p>
    #   @return [String]
    class DescribeProblemRequest < Struct.new(
      :problem_id,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute problem
    #   <p>Information about the problem. </p>
    #   @return [Types::Problem]
    # @!attribute sns_notification_arn
    #   <p>
    #            The SNS notification topic ARN of the problem.
    #         </p>
    #   @return [String]
    class DescribeProblemResponse < Struct.new(
      :problem,
      :sns_notification_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the workload owner.</p>
    #   @return [String]
    class DescribeWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_id,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    # @!attribute workload_remarks
    #   <p>If logging is supported for the resource type, shows whether the component has configured logs to be monitored.</p>
    #   @return [String]
    # @!attribute workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    #   @return [Types::WorkloadConfiguration]
    class DescribeWorkloadResponse < Struct.new(
      :workload_id,
      :workload_remarks,
      :workload_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_info_list
    #   <p>The list of applications.</p>
    #   @return [Array<Types::ApplicationInfo>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      :application_info_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class ListComponentsRequest < Struct.new(
      :resource_group_name,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_component_list
    #   <p>The list of application components.</p>
    #   @return [Array<Types::ApplicationComponent>]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ListComponentsResponse < Struct.new(
      :application_component_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>Resource group to which the application belongs. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the event. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the event.</p>
    #   @return [Time]
    # @!attribute event_status
    #   <p>The status of the configuration update event. Possible values include INFO, WARN, and
    #            ERROR.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results returned by <code>ListConfigurationHistory</code> in
    #            paginated output. When this parameter is used, <code>ListConfigurationHistory</code>
    #            returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListConfigurationHistory</code> request with the returned
    #               <code>NextToken</code> value. If this parameter is not used, then
    #               <code>ListConfigurationHistory</code> returns all results. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>NextToken</code> value returned from a previous paginated
    #               <code>ListConfigurationHistory</code> request where <code>MaxResults</code> was used and
    #            the results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>NextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class ListConfigurationHistoryRequest < Struct.new(
      :resource_group_name,
      :start_time,
      :end_time,
      :event_status,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_list
    #   <p> The list of configuration events and their corresponding details. </p>
    #   @return [Array<Types::ConfigurationEvent>]
    # @!attribute next_token
    #   <p>The <code>NextToken</code> value to include in a future
    #               <code>ListConfigurationHistory</code> request. When the results of a
    #               <code>ListConfigurationHistory</code> request exceed <code>MaxResults</code>, this value
    #            can be used to retrieve the next page of results. This value is <code>null</code> when
    #            there are no more results to return.</p>
    #   @return [String]
    class ListConfigurationHistoryResponse < Struct.new(
      :event_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class ListLogPatternSetsRequest < Struct.new(
      :resource_group_name,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    # @!attribute log_pattern_sets
    #   <p>The list of log pattern sets.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #   @return [String]
    class ListLogPatternSetsResponse < Struct.new(
      :resource_group_name,
      :account_id,
      :log_pattern_sets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class ListLogPatternsRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    # @!attribute log_patterns
    #   <p>The list of log patterns.</p>
    #   @return [Array<Types::LogPattern>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #   @return [String]
    class ListLogPatternsResponse < Struct.new(
      :resource_group_name,
      :account_id,
      :log_patterns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when the problem was detected, in epoch seconds. If you don't specify a time
    #            frame for the request, problems within the past seven days are returned.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when the problem ended, in epoch seconds. If not specified, problems within the
    #            past seven days are returned.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p> The name of the component. </p>
    #   @return [String]
    # @!attribute visibility
    #   <p>Specifies whether or not you can view the problem. If not specified, visible and
    #            ignored problems are returned.</p>
    #   @return [String]
    class ListProblemsRequest < Struct.new(
      :account_id,
      :resource_group_name,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      :component_name,
      :visibility,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute problem_list
    #   <p>The list of problems. </p>
    #   @return [Array<Types::Problem>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #   @return [String]
    # @!attribute resource_group_name
    #   <p> The name of the resource group. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    #   @return [String]
    class ListProblemsResponse < Struct.new(
      :problem_list,
      :next_token,
      :resource_group_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag
    #            information for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array that lists all the tags that are associated with the application. Each tag
    #            consists of a required tag key (<code>Key</code>) and an associated tag value
    #               (<code>Value</code>).</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the owner of the workload.</p>
    #   @return [String]
    class ListWorkloadsRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_list
    #   <p>The list of workloads.</p>
    #   @return [Array<Types::Workload>]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ListWorkloadsResponse < Struct.new(
      :workload_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the log patterns that belongs to a
    #          <code>LogPatternSet</code>.</p>
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern. A log pattern name can contain as many as 30 characters,
    #            and it cannot be empty. The characters can be Unicode letters, digits, or one of the
    #            following symbols: period, dash, underscore.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The name of the log pattern. A log pattern name can contain as many as 50 characters,
    #            and it cannot be empty. The characters can be Unicode letters, digits, or one of the
    #            following symbols: period, dash, underscore.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>A regular expression that defines the log pattern. A log pattern can contain as many as
    #            50 characters, and it cannot be empty. The pattern must be DFA compatible. Patterns that
    #            utilize forward lookahead or backreference constructions are not supported.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            Amazon Web Services provided patterns. </p>
    #   @return [Integer]
    class LogPattern < Struct.new(
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rank] = 0 unless options.key?(:rank)
        super
      end
    end

    # <p>Describes an anomaly or error with the application.</p>
    # @!attribute id
    #   <p>The ID of the observation type.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when the observation was first detected, in epoch seconds.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when the observation ended, in epoch seconds.</p>
    #   @return [Time]
    # @!attribute source_type
    #   <p>The source type of the observation.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The source resource ARN of the observation.</p>
    #   @return [String]
    # @!attribute log_group
    #   <p>The log group name.</p>
    #   @return [String]
    # @!attribute line_time
    #   <p>The timestamp in the CloudWatch Logs that specifies when the matched line
    #            occurred.</p>
    #   @return [Time]
    # @!attribute log_text
    #   <p>The log text of the observation.</p>
    #   @return [String]
    # @!attribute log_filter
    #   <p>The log filter of the observation.</p>
    #   @return [String]
    # @!attribute metric_namespace
    #   <p>The namespace of the observation metric.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the observation metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of the source observation metric.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the source observation metric.</p>
    #   @return [Float]
    # @!attribute cloud_watch_event_id
    #   <p> The ID of the CloudWatch Event-based observation related to the detected problem.
    #         </p>
    #   @return [String]
    # @!attribute cloud_watch_event_source
    #   <p> The source of the CloudWatch Event. </p>
    #   @return [String]
    # @!attribute cloud_watch_event_detail_type
    #   <p> The detail type of the CloudWatch Event-based observation, for example, <code>EC2
    #               Instance State-change Notification</code>. </p>
    #   @return [String]
    # @!attribute health_event_arn
    #   <p> The Amazon Resource Name (ARN) of the Health Event-based observation.</p>
    #   @return [String]
    # @!attribute health_service
    #   <p> The service to which the Health Event belongs, such as EC2. </p>
    #   @return [String]
    # @!attribute health_event_type_code
    #   <p> The type of the Health event, for example,
    #               <code>AWS_EC2_POWER_CONNECTIVITY_ISSUE</code>. </p>
    #   @return [String]
    # @!attribute health_event_type_category
    #   <p> The category of the Health event, such as <code>issue</code>. </p>
    #   @return [String]
    # @!attribute health_event_description
    #   <p> The description of the Health event provided by the service, such as Amazon EC2.
    #         </p>
    #   @return [String]
    # @!attribute code_deploy_deployment_id
    #   <p> The deployment ID of the CodeDeploy-based observation related to the detected problem.
    #         </p>
    #   @return [String]
    # @!attribute code_deploy_deployment_group
    #   <p> The deployment group to which the CodeDeploy deployment belongs. </p>
    #   @return [String]
    # @!attribute code_deploy_state
    #   <p> The status of the CodeDeploy deployment, for example <code>SUCCESS</code> or <code>
    #               FAILURE</code>. </p>
    #   @return [String]
    # @!attribute code_deploy_application
    #   <p> The CodeDeploy application to which the deployment belongs. </p>
    #   @return [String]
    # @!attribute code_deploy_instance_group_id
    #   <p> The instance group to which the CodeDeploy instance belongs. </p>
    #   @return [String]
    # @!attribute ec2_state
    #   <p> The state of the instance, such as <code>STOPPING</code> or <code>TERMINATING</code>.
    #         </p>
    #   @return [String]
    # @!attribute rds_event_categories
    #   <p> The category of an RDS event. </p>
    #   @return [String]
    # @!attribute rds_event_message
    #   <p> The message of an RDS event. </p>
    #   @return [String]
    # @!attribute s3_event_name
    #   <p> The name of the S3 CloudWatch Event-based observation. </p>
    #   @return [String]
    # @!attribute states_execution_arn
    #   <p> The Amazon Resource Name (ARN) of the step function execution-based observation.
    #         </p>
    #   @return [String]
    # @!attribute states_arn
    #   <p> The Amazon Resource Name (ARN) of the step function-based observation. </p>
    #   @return [String]
    # @!attribute states_status
    #   <p> The status of the step function-related observation. </p>
    #   @return [String]
    # @!attribute states_input
    #   <p> The input to the step function-based observation. </p>
    #   @return [String]
    # @!attribute ebs_event
    #   <p> The type of EBS CloudWatch event, such as <code>createVolume</code>,
    #               <code>deleteVolume</code> or <code>attachVolume</code>. </p>
    #   @return [String]
    # @!attribute ebs_result
    #   <p> The result of an EBS CloudWatch event, such as <code>failed</code> or
    #               <code>succeeded</code>. </p>
    #   @return [String]
    # @!attribute ebs_cause
    #   <p> The cause of an EBS CloudWatch event. </p>
    #   @return [String]
    # @!attribute ebs_request_id
    #   <p> The request ID of an EBS CloudWatch event. </p>
    #   @return [String]
    # @!attribute x_ray_fault_percent
    #   <p> The X-Ray request fault percentage for this node. </p>
    #   @return [Integer]
    # @!attribute x_ray_throttle_percent
    #   <p> The X-Ray request throttle percentage for this node. </p>
    #   @return [Integer]
    # @!attribute x_ray_error_percent
    #   <p> The X-Ray request error percentage for this node. </p>
    #   @return [Integer]
    # @!attribute x_ray_request_count
    #   <p> The X-Ray request count for this node. </p>
    #   @return [Integer]
    # @!attribute x_ray_request_average_latency
    #   <p> The X-Ray node request average latency for this node. </p>
    #   @return [Integer]
    # @!attribute x_ray_node_name
    #   <p> The name of the X-Ray node. </p>
    #   @return [String]
    # @!attribute x_ray_node_type
    #   <p> The type of the X-Ray node. </p>
    #   @return [String]
    class Observation < Struct.new(
      :id,
      :start_time,
      :end_time,
      :source_type,
      :source_arn,
      :log_group,
      :line_time,
      :log_text,
      :log_filter,
      :metric_namespace,
      :metric_name,
      :unit,
      :value,
      :cloud_watch_event_id,
      :cloud_watch_event_source,
      :cloud_watch_event_detail_type,
      :health_event_arn,
      :health_service,
      :health_event_type_code,
      :health_event_type_category,
      :health_event_description,
      :code_deploy_deployment_id,
      :code_deploy_deployment_group,
      :code_deploy_state,
      :code_deploy_application,
      :code_deploy_instance_group_id,
      :ec2_state,
      :rds_event_categories,
      :rds_event_message,
      :s3_event_name,
      :states_execution_arn,
      :states_arn,
      :states_status,
      :states_input,
      :ebs_event,
      :ebs_result,
      :ebs_cause,
      :ebs_request_id,
      :x_ray_fault_percent,
      :x_ray_throttle_percent,
      :x_ray_error_percent,
      :x_ray_request_count,
      :x_ray_request_average_latency,
      :x_ray_node_name,
      :x_ray_node_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a problem that is detected by correlating observations.</p>
    # @!attribute id
    #   <p>The ID of the problem.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The name of the problem.</p>
    #   @return [String]
    # @!attribute short_name
    #   <p>
    #            The short name of the problem associated with the SNS notification.
    #         </p>
    #   @return [String]
    # @!attribute insights
    #   <p>A detailed analysis of the problem using machine learning.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the problem.</p>
    #   @return [String]
    # @!attribute affected_resource
    #   <p>The resource affected by the problem.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when the problem started, in epoch seconds.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when the problem ended, in epoch seconds.</p>
    #   @return [Time]
    # @!attribute severity_level
    #   <p>A measure of the level of impact of the problem.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the resource group affected by the problem.</p>
    #   @return [String]
    # @!attribute resource_group_name
    #   <p>The name of the resource group affected by the problem.</p>
    #   @return [String]
    # @!attribute feedback
    #   <p>Feedback provided by the user about the problem.</p>
    #   @return [Hash<String, String>]
    # @!attribute recurring_count
    #   <p> The number of times that the same problem reoccurred after the first time it was
    #            resolved. </p>
    #   @return [Integer]
    # @!attribute last_recurrence_time
    #   <p> The last time that the problem reoccurred after its last resolution. </p>
    #   @return [Time]
    # @!attribute visibility
    #   <p>Specifies whether or not you can view the problem. Updates to ignored problems do not
    #            generate notifications.</p>
    #   @return [String]
    # @!attribute resolution_method
    #   <p>Specifies how the problem was resolved. If the value is <code>AUTOMATIC</code>, the
    #            system resolved the problem. If the value is <code>MANUAL</code>, the user resolved the
    #            problem. If the value is <code>UNRESOLVED</code>, then the problem is not resolved.</p>
    #   @return [String]
    class Problem < Struct.new(
      :id,
      :title,
      :short_name,
      :insights,
      :status,
      :affected_resource,
      :start_time,
      :end_time,
      :severity_level,
      :account_id,
      :resource_group_name,
      :feedback,
      :recurring_count,
      :last_recurrence_time,
      :visibility,
      :resolution_method,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes observations related to the problem.</p>
    # @!attribute observation_list
    #   <p>The list of observations related to the problem.</p>
    #   @return [Array<Types::Observation>]
    class RelatedObservations < Struct.new(
      :observation_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    class RemoveWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveWorkloadResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is already created or in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource does not exist in the customer account.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the tags associated with an application. A
    #             <i>tag</i> is a label that you optionally define and associate with an
    #          application. Tags can help you categorize and manage resources in different ways, such as
    #          by purpose, owner, environment, or other criteria.</p>
    #          <p>Each tag consists of a required <i>tag key</i> and an associated
    #             <i>tag value</i>, both of which you define. A tag key is a general label
    #          that acts as a category for a more specific tag value. A tag value acts as a descriptor
    #          within a tag key. A tag key can contain as many as 128 characters. A tag value can contain
    #          as many as 256 characters. The characters can be Unicode letters, digits, white space, or
    #          one of the following symbols: _ . : / = + -. The following additional restrictions apply to
    #          tags:</p>
    #          <ul>
    #             <li>
    #                <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                <p>For each associated resource, each tag key must be unique and it can have only one
    #                value.</p>
    #             </li>
    #             <li>
    #                <p>The <code>aws:</code> prefix is reserved for use by Amazon Web Services; you can’t use it in any
    #                tag keys or values that you define. In addition, you can't edit or remove tag keys or
    #                values that use this prefix. </p>
    #             </li>
    #          </ul>
    # @!attribute key
    #   <p>One part of a key-value pair that defines a tag. The maximum length of a tag key is 128
    #            characters. The minimum length is 1 character.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional part of a key-value pair that defines a tag. The maximum length of a tag
    #            value is 256 characters. The minimum length is 0 characters. If you don't want an
    #            application to have a specific tag value, don't specify a value for this parameter.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags
    #            to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that to add to the application. A tag consists of a required tag key
    #               (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length
    #            of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Tags are already registered for the specified application ARN.</p>
    # @!attribute message
    #   @return [String]
    class TagsAlreadyExistException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of the provided tags is beyond the limit, or the number of total tags you are
    #          trying to attach to the specified resource exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource with too many tags.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to remove one or more
    #            tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #            key, the action removes both that key and its associated tag value.</p>
    #            <p>To remove more than one tag from the application, append the <code>TagKeys</code>
    #            parameter and argument for each additional tag to remove, separated by an ampersand.
    #         </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    #   @return [Boolean]
    # @!attribute cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #   @return [Boolean]
    # @!attribute ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem.</p>
    #   @return [String]
    # @!attribute sns_notification_arn
    #   <p>
    #            The SNS topic ARN. Allows you to receive SNS notifications for updates and issues with an application.
    #         </p>
    #   @return [String]
    # @!attribute remove_sns_topic
    #   <p> Disassociates the SNS topic from the opsItem created for detected problems.</p>
    #   @return [Boolean]
    # @!attribute auto_config_enabled
    #   <p> Turns auto-configuration on or off. </p>
    #   @return [Boolean]
    # @!attribute attach_missing_permission
    #   <p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>
    #   @return [Boolean]
    class UpdateApplicationRequest < Struct.new(
      :resource_group_name,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :ops_item_sns_topic_arn,
      :sns_notification_arn,
      :remove_sns_topic,
      :auto_config_enabled,
      :attach_missing_permission,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_info
    #   <p>Information about the application. </p>
    #   @return [Types::ApplicationInfo]
    class UpdateApplicationResponse < Struct.new(
      :application_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute monitor
    #   <p>Indicates whether the application component is monitored.</p>
    #   @return [Boolean]
    # @!attribute tier
    #   <p>The tier of the application component.</p>
    #   @return [String]
    # @!attribute component_configuration
    #   <p>The configuration settings of the component. The value is the escaped JSON of the
    #            configuration. For more information about the JSON format, see <a href="https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html">Working with JSON</a>. You can send a request to
    #               <code>DescribeComponentConfigurationRecommendation</code> to see the recommended
    #            configuration for a component. For the complete format of the component configuration file,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html">Component Configuration</a>.</p>
    #   @return [String]
    # @!attribute auto_config_enabled
    #   <p> Automatically configures the component by applying the recommended configurations.
    #         </p>
    #   @return [Boolean]
    class UpdateComponentConfigurationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :monitor,
      :tier,
      :component_configuration,
      :auto_config_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateComponentConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute new_component_name
    #   <p>The new name of the component.</p>
    #   @return [String]
    # @!attribute resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #   @return [Array<String>]
    class UpdateComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :new_component_name,
      :resource_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateComponentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #   @return [String]
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    #   @return [String]
    # @!attribute rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            Amazon Web Services provided patterns. </p>
    #   @return [Integer]
    class UpdateLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute log_pattern
    #   <p>The successfully created log pattern.</p>
    #   @return [Types::LogPattern]
    class UpdateLogPatternResponse < Struct.new(
      :resource_group_name,
      :log_pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute problem_id
    #   <p>The ID of the problem.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the problem. Arguments can be passed for only problems that show a status
    #            of <code>RECOVERING</code>.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility of a problem. When you pass a value of <code>IGNORED</code>, the problem
    #            is removed from the default view, and all notifications for the problem are suspended. When
    #            <code>VISIBLE</code> is passed, the <code>IGNORED</code> action is reversed.</p>
    #   @return [String]
    class UpdateProblemRequest < Struct.new(
      :problem_id,
      :update_status,
      :visibility,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateProblemResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p> The name of the component. </p>
    #   @return [String]
    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    # @!attribute workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    #   @return [Types::WorkloadConfiguration]
    class UpdateWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_id,
      :workload_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    # @!attribute workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    #   @return [Types::WorkloadConfiguration]
    class UpdateWorkloadResponse < Struct.new(
      :workload_id,
      :workload_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The parameter is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the workloads on a component.</p>
    # @!attribute workload_id
    #   <p>The ID of the workload.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier of the workload.</p>
    #   @return [String]
    # @!attribute workload_remarks
    #   <p>If logging is supported for the resource type, shows whether the component has configured logs to be monitored.</p>
    #   @return [String]
    # @!attribute missing_workload_config
    #   <p>Indicates whether all of the component configurations required to monitor a workload were provided.</p>
    #   @return [Boolean]
    class Workload < Struct.new(
      :workload_id,
      :component_name,
      :workload_name,
      :tier,
      :workload_remarks,
      :missing_workload_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the workload.</p>
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The configuration of the workload tier.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings of the workload.</p>
    #   @return [String]
    class WorkloadConfiguration < Struct.new(
      :workload_name,
      :tier,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
