# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ControlCatalog
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the domain that a common control or an objective belongs
    # to.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the related domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the related domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/AssociatedDomainSummary AWS API Documentation
    #
    class AssociatedDomainSummary < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the objective that a common control supports.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the related objective.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the related objective.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/AssociatedObjectiveSummary AWS API Documentation
    #
    class AssociatedObjectiveSummary < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional filter that narrows the results to a specific objective.
    #
    # @!attribute [rw] objectives
    #   The objective that's used as filter criteria.
    #
    #   You can use this parameter to specify one objective ARN at a time.
    #   Passing multiple ARNs in the `CommonControlFilter` isn’t currently
    #   supported.
    #   @return [Array<Types::ObjectiveResourceFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/CommonControlFilter AWS API Documentation
    #
    class CommonControlFilter < Struct.new(
      :objectives)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of metadata for a common control.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the common control.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the common control was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the common control.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain that the common control belongs to.
    #   @return [Types::AssociatedDomainSummary]
    #
    # @!attribute [rw] last_update_time
    #   The time when the common control was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the common control.
    #   @return [String]
    #
    # @!attribute [rw] objective
    #   The objective that the common control belongs to.
    #   @return [Types::AssociatedObjectiveSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/CommonControlSummary AWS API Documentation
    #
    class CommonControlSummary < Struct.new(
      :arn,
      :create_time,
      :description,
      :domain,
      :last_update_time,
      :name,
      :objective)
      SENSITIVE = []
      include Aws::Structure
    end

    # The domain resource that's being used as a filter.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/DomainResourceFilter AWS API Documentation
    #
    class DomainResourceFilter < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of metadata for a domain.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the domain.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the domain.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The time when the domain was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :arn,
      :create_time,
      :description,
      :last_update_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred during the processing of your
    # request. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] common_control_filter
    #   An optional filter that narrows the results to a specific objective.
    #
    #   This filter allows you to specify one objective ARN at a time.
    #   Passing multiple ARNs in the `CommonControlFilter` isn’t currently
    #   supported.
    #   @return [Types::CommonControlFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results on a page or for an API request call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListCommonControlsRequest AWS API Documentation
    #
    class ListCommonControlsRequest < Struct.new(
      :common_control_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] common_controls
    #   The list of common controls that the `ListCommonControls` API
    #   returns.
    #   @return [Array<Types::CommonControlSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListCommonControlsResponse AWS API Documentation
    #
    class ListCommonControlsResponse < Struct.new(
      :common_controls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results on a page or for an API request call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   The list of domains that the `ListDomains` API returns.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results on a page or for an API request call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] objective_filter
    #   An optional filter that narrows the results to a specific domain.
    #
    #   This filter allows you to specify one domain ARN at a time. Passing
    #   multiple ARNs in the `ObjectiveFilter` isn’t currently supported.
    #   @return [Types::ObjectiveFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListObjectivesRequest AWS API Documentation
    #
    class ListObjectivesRequest < Struct.new(
      :max_results,
      :next_token,
      :objective_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] objectives
    #   The list of objectives that the `ListObjectives` API returns.
    #   @return [Array<Types::ObjectiveSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListObjectivesResponse AWS API Documentation
    #
    class ListObjectivesResponse < Struct.new(
      :next_token,
      :objectives)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional filter that narrows the list of objectives to a specific
    # domain.
    #
    # @!attribute [rw] domains
    #   The domain that's used as filter criteria.
    #
    #   You can use this parameter to specify one domain ARN at a time.
    #   Passing multiple ARNs in the `ObjectiveFilter` isn’t currently
    #   supported.
    #   @return [Array<Types::DomainResourceFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ObjectiveFilter AWS API Documentation
    #
    class ObjectiveFilter < Struct.new(
      :domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # The objective resource that's being used as a filter.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the objective.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ObjectiveResourceFilter AWS API Documentation
    #
    class ObjectiveResourceFilter < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of metadata for an objective.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the objective.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the objective was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the objective.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain that the objective belongs to.
    #   @return [Types::AssociatedDomainSummary]
    #
    # @!attribute [rw] last_update_time
    #   The time when the objective was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the objective.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ObjectiveSummary AWS API Documentation
    #
    class ObjectiveSummary < Struct.new(
      :arn,
      :create_time,
      :description,
      :domain,
      :last_update_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has invalid or missing parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
