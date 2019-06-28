# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationInsights
  module Types

    # Describes a standalone resource or similarly grouped resources that
    # the application is made up of.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type. Supported resource types include EC2 instances,
    #   Auto Scaling group, Classic ELB, Application ELB, and SQS Queue.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The stack tier of the application component.
    #   @return [String]
    #
    # @!attribute [rw] monitor
    #   Indicates whether the application component is monitored.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ApplicationComponent AWS API Documentation
    #
    class ApplicationComponent < Struct.new(
      :component_name,
      :resource_type,
      :tier,
      :monitor)
      include Aws::Structure
    end

    # Describes the status of the application.
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group used for the application.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle
    #   The lifecycle of the application.
    #   @return [String]
    #
    # @!attribute [rw] remarks
    #   The issues on the user side that are blocking Application Insights
    #   from fully monitoring the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ApplicationInfo AWS API Documentation
    #
    class ApplicationInfo < Struct.new(
      :resource_group_name,
      :life_cycle,
      :remarks)
      include Aws::Structure
    end

    # The request is not understood by the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :resource_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] application_info
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_info)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateComponentRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #         resource_list: ["ResourceARN"], # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] resource_list
    #   The list of resource ARNs that belong to the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateComponentRequest AWS API Documentation
    #
    class CreateComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :resource_list)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateComponentResponse AWS API Documentation
    #
    class CreateComponentResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteApplicationRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :resource_group_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteComponentRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteComponentRequest AWS API Documentation
    #
    class DeleteComponentRequest < Struct.new(
      :resource_group_name,
      :component_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteComponentResponse AWS API Documentation
    #
    class DeleteComponentResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeApplicationRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeApplicationRequest AWS API Documentation
    #
    class DescribeApplicationRequest < Struct.new(
      :resource_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] application_info
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeApplicationResponse AWS API Documentation
    #
    class DescribeApplicationResponse < Struct.new(
      :application_info)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeComponentConfigurationRecommendationRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #         tier: "Tier", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier of the application component. Supported tiers include
    #   `DOT_NET_WORKER`, `DOT_NET_WEB_TIER`, `SQL_SERVER`, and `DEFAULT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRecommendationRequest AWS API Documentation
    #
    class DescribeComponentConfigurationRecommendationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :tier)
      include Aws::Structure
    end

    # @!attribute [rw] component_configuration
    #   The recommended configuration settings of the component. The value
    #   is the escaped JSON of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRecommendationResponse AWS API Documentation
    #
    class DescribeComponentConfigurationRecommendationResponse < Struct.new(
      :component_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeComponentConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRequest AWS API Documentation
    #
    class DescribeComponentConfigurationRequest < Struct.new(
      :resource_group_name,
      :component_name)
      include Aws::Structure
    end

    # @!attribute [rw] monitor
    #   Indicates whether the application component is monitored.
    #   @return [Boolean]
    #
    # @!attribute [rw] tier
    #   The tier of the application component. Supported tiers include
    #   `DOT_NET_WORKER`, `DOT_NET_WEB_TIER`, `SQL_SERVER`, and `DEFAULT`
    #   @return [String]
    #
    # @!attribute [rw] component_configuration
    #   The configuration settings of the component. The value is the
    #   escaped JSON of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationResponse AWS API Documentation
    #
    class DescribeComponentConfigurationResponse < Struct.new(
      :monitor,
      :tier,
      :component_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeComponentRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentRequest AWS API Documentation
    #
    class DescribeComponentRequest < Struct.new(
      :resource_group_name,
      :component_name)
      include Aws::Structure
    end

    # @!attribute [rw] application_component
    #   Describes a standalone resource or similarly grouped resources that
    #   the application is made up of.
    #   @return [Types::ApplicationComponent]
    #
    # @!attribute [rw] resource_list
    #   The list of resource ARNs that belong to the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentResponse AWS API Documentation
    #
    class DescribeComponentResponse < Struct.new(
      :application_component,
      :resource_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeObservationRequest
    #   data as a hash:
    #
    #       {
    #         observation_id: "ObservationId", # required
    #       }
    #
    # @!attribute [rw] observation_id
    #   The ID of the observation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeObservationRequest AWS API Documentation
    #
    class DescribeObservationRequest < Struct.new(
      :observation_id)
      include Aws::Structure
    end

    # @!attribute [rw] observation
    #   Information about the observation.
    #   @return [Types::Observation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeObservationResponse AWS API Documentation
    #
    class DescribeObservationResponse < Struct.new(
      :observation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProblemObservationsRequest
    #   data as a hash:
    #
    #       {
    #         problem_id: "ProblemId", # required
    #       }
    #
    # @!attribute [rw] problem_id
    #   The ID of the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemObservationsRequest AWS API Documentation
    #
    class DescribeProblemObservationsRequest < Struct.new(
      :problem_id)
      include Aws::Structure
    end

    # @!attribute [rw] related_observations
    #   Observations related to the problem.
    #   @return [Types::RelatedObservations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemObservationsResponse AWS API Documentation
    #
    class DescribeProblemObservationsResponse < Struct.new(
      :related_observations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProblemRequest
    #   data as a hash:
    #
    #       {
    #         problem_id: "ProblemId", # required
    #       }
    #
    # @!attribute [rw] problem_id
    #   The ID of the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemRequest AWS API Documentation
    #
    class DescribeProblemRequest < Struct.new(
      :problem_id)
      include Aws::Structure
    end

    # @!attribute [rw] problem
    #   Information about the problem.
    #   @return [Types::Problem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemResponse AWS API Documentation
    #
    class DescribeProblemResponse < Struct.new(
      :problem)
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] application_info_list
    #   The list of applications.
    #   @return [Array<Types::ApplicationInfo>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :application_info_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComponentsRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :resource_group_name,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] application_component_list
    #   The list of application components.
    #   @return [Array<Types::ApplicationComponent>]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListComponentsResponse AWS API Documentation
    #
    class ListComponentsResponse < Struct.new(
      :application_component_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProblemsRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the problem was detected, in epoch seconds. If you
    #   don't specify a time frame for the request, problems within the
    #   past seven days are returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the problem ended, in epoch seconds. If not specified,
    #   problems within the past seven days are returned.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListProblemsRequest AWS API Documentation
    #
    class ListProblemsRequest < Struct.new(
      :resource_group_name,
      :start_time,
      :end_time,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] problem_list
    #   The list of problems.
    #   @return [Array<Types::Problem>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListProblemsResponse AWS API Documentation
    #
    class ListProblemsResponse < Struct.new(
      :problem_list,
      :next_token)
      include Aws::Structure
    end

    # Describes an anomaly or error with the application.
    #
    # @!attribute [rw] id
    #   The ID of the observation type.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the observation was first detected, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the observation ended, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] source_type
    #   The source type of the observation.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The source resource ARN of the observation.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group name.
    #   @return [String]
    #
    # @!attribute [rw] line_time
    #   The timestamp in the CloudWatch Logs that specifies when the matched
    #   line occurred.
    #   @return [Time]
    #
    # @!attribute [rw] log_text
    #   The log text of the observation.
    #   @return [String]
    #
    # @!attribute [rw] log_filter
    #   The log filter of the observation.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   The namespace of the observation metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the observation metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the source observation metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the source observation metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/Observation AWS API Documentation
    #
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
      :value)
      include Aws::Structure
    end

    # Describes a problem that is detected by correlating observations.
    #
    # @!attribute [rw] id
    #   The ID of the problem.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The name of the problem.
    #   @return [String]
    #
    # @!attribute [rw] insights
    #   A detailed analysis of the problem using machine learning.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the problem.
    #   @return [String]
    #
    # @!attribute [rw] affected_resource
    #   The resource affected by the problem.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the problem started, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the problem ended, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] severity_level
    #   A measure of the level of impact of the problem.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group affected by the problem.
    #   @return [String]
    #
    # @!attribute [rw] feedback
    #   Feedback provided by the user about the problem.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/Problem AWS API Documentation
    #
    class Problem < Struct.new(
      :id,
      :title,
      :insights,
      :status,
      :affected_resource,
      :start_time,
      :end_time,
      :severity_level,
      :resource_group_name,
      :feedback)
      include Aws::Structure
    end

    # Describes observations related to the problem.
    #
    # @!attribute [rw] observation_list
    #   The list of observations related to the problem.
    #   @return [Array<Types::Observation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/RelatedObservations AWS API Documentation
    #
    class RelatedObservations < Struct.new(
      :observation_list)
      include Aws::Structure
    end

    # The resource is already created or in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The resource does not exist in the customer account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateComponentConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #         monitor: false,
    #         tier: "Tier",
    #         component_configuration: "ComponentConfiguration",
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] monitor
    #   Indicates whether the application component is monitored.
    #   @return [Boolean]
    #
    # @!attribute [rw] tier
    #   The tier of the application component. Supported tiers include
    #   `DOT_NET_WORKER`, `DOT_NET_WEB_TIER`, `SQL_SERVER`, and `DEFAULT`.
    #   @return [String]
    #
    # @!attribute [rw] component_configuration
    #   The configuration settings of the component. The value is the
    #   escaped JSON of the configuration. For more information about the
    #   JSON format, see [Working with JSON][1]. You can send a request to
    #   `DescribeComponentConfigurationRecommendation` to see the
    #   recommended configuration for a component.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentConfigurationRequest AWS API Documentation
    #
    class UpdateComponentConfigurationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :monitor,
      :tier,
      :component_configuration)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentConfigurationResponse AWS API Documentation
    #
    class UpdateComponentConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateComponentRequest
    #   data as a hash:
    #
    #       {
    #         resource_group_name: "ResourceGroupName", # required
    #         component_name: "ComponentName", # required
    #         new_component_name: "NewComponentName",
    #         resource_list: ["ResourceARN"],
    #       }
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] new_component_name
    #   The new name of the component.
    #   @return [String]
    #
    # @!attribute [rw] resource_list
    #   The list of resource ARNs that belong to the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentRequest AWS API Documentation
    #
    class UpdateComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :new_component_name,
      :resource_list)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentResponse AWS API Documentation
    #
    class UpdateComponentResponse < Aws::EmptyStructure; end

    # The parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
