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
    # @!attribute [rw] name
    #   The name of the common control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the common control.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain that the common control belongs to.
    #   @return [Types::AssociatedDomainSummary]
    #
    # @!attribute [rw] objective
    #   The objective that the common control belongs to.
    #   @return [Types::AssociatedObjectiveSummary]
    #
    # @!attribute [rw] create_time
    #   The time when the common control was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time when the common control was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/CommonControlSummary AWS API Documentation
    #
    class CommonControlSummary < Struct.new(
      :arn,
      :name,
      :description,
      :domain,
      :objective,
      :create_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Overview of information about a control.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the control, as it may appear in the console.
    #   Describes the functionality of the control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ControlSummary AWS API Documentation
    #
    class ControlSummary < Struct.new(
      :arn,
      :name,
      :description)
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
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time when the domain was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :arn,
      :name,
      :description,
      :create_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_arn
    #   The Amazon Resource Name (ARN) of the control. It has one of the
    #   following formats:
    #
    #   *Global format*
    #
    #   `arn:\{PARTITION\}:controlcatalog:::control/\{CONTROL_CATALOG_OPAQUE_ID\}`
    #
    #   *Or Regional format*
    #
    #   `arn:\{PARTITION\}:controltower:\{REGION\}::control/\{CONTROL_TOWER_OPAQUE_ID\}`
    #
    #   Here is a more general pattern that covers Amazon Web Services
    #   Control Tower and Control Catalog ARNs:
    #
    #   `^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\-]+$`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/GetControlRequest AWS API Documentation
    #
    class GetControlRequest < Struct.new(
      :control_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the control does.
    #   @return [String]
    #
    # @!attribute [rw] behavior
    #   A term that identifies the control's functional behavior. One of
    #   `Preventive`, `Deteictive`, `Proactive`
    #   @return [String]
    #
    # @!attribute [rw] region_configuration
    #   Returns information about the control, including the scope of the
    #   control, if enabled, and the Regions in which the control currently
    #   is available for deployment.
    #
    #   If you are applying controls through an Amazon Web Services Control
    #   Tower landing zone environment, remember that the values returned in
    #   the `RegionConfiguration` API operation are not related to the
    #   governed Regions in your landing zone. For example, if you are
    #   governing Regions `A`,`B`,and `C` while the control is available in
    #   Regions `A`, `B`, C`,` and `D`, you'd see a response with
    #   `DeployableRegions` of `A`, `B`, `C`, and `D` for a control with
    #   `REGIONAL` scope, even though you may not intend to deploy the
    #   control in Region `D`, because you do not govern it through your
    #   landing zone.
    #   @return [Types::RegionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/GetControlResponse AWS API Documentation
    #
    class GetControlResponse < Struct.new(
      :arn,
      :name,
      :description,
      :behavior,
      :region_configuration)
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

    # @!attribute [rw] max_results
    #   The maximum number of results on a page or for an API request call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] common_control_filter
    #   An optional filter that narrows the results to a specific objective.
    #
    #   This filter allows you to specify one objective ARN at a time.
    #   Passing multiple ARNs in the `CommonControlFilter` isn’t currently
    #   supported.
    #   @return [Types::CommonControlFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListCommonControlsRequest AWS API Documentation
    #
    class ListCommonControlsRequest < Struct.new(
      :max_results,
      :next_token,
      :common_control_filter)
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

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results on a page or for an API request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListControlsRequest AWS API Documentation
    #
    class ListControlsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] controls
    #   Returns a list of controls, given as structures of type
    #   *controlSummary*.
    #   @return [Array<Types::ControlSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListControlsResponse AWS API Documentation
    #
    class ListControlsResponse < Struct.new(
      :controls,
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

    # @!attribute [rw] objectives
    #   The list of objectives that the `ListObjectives` API returns.
    #   @return [Array<Types::ObjectiveSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListObjectivesResponse AWS API Documentation
    #
    class ListObjectivesResponse < Struct.new(
      :objectives,
      :next_token)
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
    # @!attribute [rw] name
    #   The name of the objective.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the objective.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain that the objective belongs to.
    #   @return [Types::AssociatedDomainSummary]
    #
    # @!attribute [rw] create_time
    #   The time when the objective was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time when the objective was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ObjectiveSummary AWS API Documentation
    #
    class ObjectiveSummary < Struct.new(
      :arn,
      :name,
      :description,
      :domain,
      :create_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the control, including the scope of the
    # control, if enabled, and the Regions in which the control currently is
    # available for deployment.
    #
    # If you are applying controls through an Amazon Web Services Control
    # Tower landing zone environment, remember that the values returned in
    # the `RegionConfiguration` API operation are not related to the
    # governed Regions in your landing zone. For example, if you are
    # governing Regions `A`,`B`,and `C` while the control is available in
    # Regions `A`, `B`, C`,` and `D`, you'd see a response with
    # `DeployableRegions` of `A`, `B`, `C`, and `D` for a control with
    # `REGIONAL` scope, even though you may not intend to deploy the control
    # in Region `D`, because you do not govern it through your landing zone.
    #
    # @!attribute [rw] scope
    #   The coverage of the control, if deployed. Scope is an enumerated
    #   type, with value `Regional`, or `Global`. A control with Global
    #   scope is effective in all Amazon Web Services Regions, regardless of
    #   the Region from which it is enabled, or to which it is deployed. A
    #   control implemented by an SCP is usually Global in scope. A control
    #   with Regional scope has operations that are restricted specifically
    #   to the Region from which it is enabled and to which it is deployed.
    #   Controls implemented by Config rules and CloudFormation hooks
    #   usually are Regional in scope. Security Hub controls usually are
    #   Regional in scope.
    #   @return [String]
    #
    # @!attribute [rw] deployable_regions
    #   Regions in which the control is available to be deployed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/RegionConfiguration AWS API Documentation
    #
    class RegionConfiguration < Struct.new(
      :scope,
      :deployable_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
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
