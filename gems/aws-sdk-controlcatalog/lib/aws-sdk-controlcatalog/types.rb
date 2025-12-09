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
    #   Passing multiple ARNs in the `CommonControlFilter` isn’t supported.
    #   @return [Array<Types::ObjectiveResourceFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/CommonControlFilter AWS API Documentation
    #
    class CommonControlFilter < Struct.new(
      :objectives)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains details about a common control mapping. In
    # particular, it returns the Amazon Resource Name (ARN) of the common
    # control.
    #
    # @!attribute [rw] common_control_arn
    #   The Amazon Resource Name (ARN) that identifies the common control in
    #   the mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/CommonControlMappingDetails AWS API Documentation
    #
    class CommonControlMappingDetails < Struct.new(
      :common_control_arn)
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

    # A structure that defines filtering criteria for the ListControls
    # operation. You can use this filter to narrow down the list of controls
    # based on their implementation details.
    #
    # @!attribute [rw] implementations
    #   A filter that narrows the results to controls with specific
    #   implementation types or identifiers. This field allows you to find
    #   controls that are implemented by specific Amazon Web Services
    #   services or with specific service identifiers.
    #   @return [Types::ImplementationFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ControlFilter AWS API Documentation
    #
    class ControlFilter < Struct.new(
      :implementations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a control mapping,
    # including the control ARN, mapping type, and mapping details.
    #
    # @!attribute [rw] control_arn
    #   The Amazon Resource Name (ARN) that identifies the control in the
    #   mapping.
    #   @return [String]
    #
    # @!attribute [rw] mapping_type
    #   The type of mapping relationship between the control and other
    #   entities.
    #   @return [String]
    #
    # @!attribute [rw] mapping
    #   The details of the mapping relationship, for example, containing
    #   framework, common control, or related control information.
    #   @return [Types::Mapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ControlMapping AWS API Documentation
    #
    class ControlMapping < Struct.new(
      :control_arn,
      :mapping_type,
      :mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines filtering criteria for the
    # ListControlMappings operation. You can use this filter to narrow down
    # the list of control mappings based on control ARNs, common control
    # ARNs, or mapping types.
    #
    # @!attribute [rw] control_arns
    #   A list of control ARNs to filter the mappings. When specified, only
    #   mappings associated with these controls are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] common_control_arns
    #   A list of common control ARNs to filter the mappings. When
    #   specified, only mappings associated with these common controls are
    #   returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mapping_types
    #   A list of mapping types to filter the mappings. When specified, only
    #   mappings of these types are returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ControlMappingFilter AWS API Documentation
    #
    class ControlMappingFilter < Struct.new(
      :control_arns,
      :common_control_arns,
      :mapping_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Five types of control parameters are supported.
    #
    # * **AllowedRegions**: List of Amazon Web Services Regions exempted
    #   from the control. Each string is expected to be an Amazon Web
    #   Services Region code. This parameter is mandatory for the **OU
    #   Region deny** control, **CT.MULTISERVICE.PV.1**.
    #
    #   Example: `["us-east-1","us-west-2"]`
    #
    # * **ExemptedActions**: List of Amazon Web Services IAM actions
    #   exempted from the control. Each string is expected to be an IAM
    #   action.
    #
    #   Example:
    #   `["logs:DescribeLogGroups","logs:StartQuery","logs:GetQueryResults"]`
    #
    # * **ExemptedPrincipalArns**: List of Amazon Web Services IAM principal
    #   ARNs exempted from the control. Each string is expected to be an IAM
    #   principal that follows the pattern
    #   `^arn:(aws|aws-us-gov):(iam|sts)::.+:.+$`
    #
    #   Example:
    #   `["arn:aws:iam::*:role/ReadOnly","arn:aws:sts::*:assumed-role/ReadOnly/*"]`
    #
    # * **ExemptedResourceArns**: List of resource ARNs exempted from the
    #   control. Each string is expected to be a resource ARN.
    #
    #   Example: `["arn:aws:s3:::my-bucket-name"]`
    #
    # * **ExemptAssumeRoot**: A parameter that lets you choose whether to
    #   exempt requests made with `AssumeRoot` from this control, for this
    #   OU. For member accounts, the `AssumeRoot` property is included in
    #   requests initiated by IAM centralized root access. This parameter
    #   applies only to the `AWS-GR_RESTRICT_ROOT_USER` control. If you add
    #   the parameter when enabling the control, the `AssumeRoot` exemption
    #   is allowed. If you omit the parameter, the `AssumeRoot` exception is
    #   not permitted. The parameter does not accept `False` as a value.
    #
    #   <i>Example: Enabling the control and allowing
    #   <code>AssumeRoot</code> </i>
    #
    #   `{ "controlIdentifier":
    #   "arn:aws:controlcatalog:::control/5kvme4m5d2b4d7if2fs5yg2ui",
    #   "parameters": [ { "key": "ExemptAssumeRoot", "value": true } ],
    #   "targetIdentifier":
    #   "arn:aws:organizations::8633900XXXXX:ou/o-6jmn81636m/ou-qsah-jtiihcla"
    #   }`
    #
    # @!attribute [rw] name
    #   The parameter name. This name is the parameter `key` when you call [
    #   `EnableControl` ][1] or [ `UpdateEnabledControl` ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableControl.html
    #   [2]: https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledControl.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ControlParameter AWS API Documentation
    #
    class ControlParameter < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Overview of information about a control.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the control.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   A list of alternative identifiers for the control. These are
    #   human-readable designators, such as `SH.S3.1`. Several aliases can
    #   refer to the same control across different Amazon Web Services
    #   services or compliance frameworks.
    #   @return [Array<String>]
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
    # @!attribute [rw] behavior
    #   An enumerated type, with the following possible values:
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   An enumerated type, with the following possible values:
    #   @return [String]
    #
    # @!attribute [rw] implementation
    #   An object of type `ImplementationSummary` that describes how the
    #   control is implemented.
    #   @return [Types::ImplementationSummary]
    #
    # @!attribute [rw] create_time
    #   A timestamp that notes the time when the control was released (start
    #   of its life) as a governance capability in Amazon Web Services.
    #   @return [Time]
    #
    # @!attribute [rw] governed_resources
    #   A list of Amazon Web Services resource types that are governed by
    #   this control. This information helps you understand which controls
    #   can govern certain types of resources, and conversely, which
    #   resources are affected when the control is implemented. The
    #   resources are represented as Amazon Web Services CloudFormation
    #   resource types. If `GovernedResources` cannot be represented by
    #   available CloudFormation resource types, it’s returned as an empty
    #   list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ControlSummary AWS API Documentation
    #
    class ControlSummary < Struct.new(
      :arn,
      :aliases,
      :name,
      :description,
      :behavior,
      :severity,
      :implementation,
      :create_time,
      :governed_resources)
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

    # A structure that contains details about a framework mapping, including
    # the framework name and specific item within the framework that the
    # control maps to.
    #
    # @!attribute [rw] name
    #   The name of the compliance framework that the control maps to.
    #   @return [String]
    #
    # @!attribute [rw] item
    #   The specific item or requirement within the framework that the
    #   control maps to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/FrameworkMappingDetails AWS API Documentation
    #
    class FrameworkMappingDetails < Struct.new(
      :name,
      :item)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_arn
    #   The Amazon Resource Name (ARN) of the control. It has one of the
    #   following formats:
    #
    #   *Global format*
    #
    #   `arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}`
    #
    #   *Or Regional format*
    #
    #   `arn:{PARTITION}:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}`
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
    # @!attribute [rw] aliases
    #   A list of alternative identifiers for the control. These are
    #   human-readable designators, such as `SH.S3.1`. Several aliases can
    #   refer to the same control across different Amazon Web Services
    #   services or compliance frameworks.
    #   @return [Array<String>]
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
    #   `Preventive`, `Detective`, `Proactive`
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   An enumerated type, with the following possible values:
    #   @return [String]
    #
    # @!attribute [rw] region_configuration
    #   Returns information about the control, including the scope of the
    #   control, if enabled, and the Regions in which the control is
    #   available for deployment. For more information about scope, see
    #   [Global services][1].
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
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/whitepapers/latest/aws-fault-isolation-boundaries/global-services.html
    #   @return [Types::RegionConfiguration]
    #
    # @!attribute [rw] implementation
    #   Returns information about the control, as an `ImplementationDetails`
    #   object that shows the underlying implementation type for a control.
    #   @return [Types::ImplementationDetails]
    #
    # @!attribute [rw] parameters
    #   Returns an array of `ControlParameter` objects that specify the
    #   parameters a control supports. An empty list is returned for
    #   controls that don’t support parameters.
    #   @return [Array<Types::ControlParameter>]
    #
    # @!attribute [rw] create_time
    #   A timestamp that notes the time when the control was released (start
    #   of its life) as a governance capability in Amazon Web Services.
    #   @return [Time]
    #
    # @!attribute [rw] governed_resources
    #   A list of Amazon Web Services resource types that are governed by
    #   this control. This information helps you understand which controls
    #   can govern certain types of resources, and conversely, which
    #   resources are affected when the control is implemented. The
    #   resources are represented as Amazon Web Services CloudFormation
    #   resource types. If `GovernedResources` cannot be represented by
    #   available CloudFormation resource types, it’s returned as an empty
    #   list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/GetControlResponse AWS API Documentation
    #
    class GetControlResponse < Struct.new(
      :arn,
      :aliases,
      :name,
      :description,
      :behavior,
      :severity,
      :region_configuration,
      :implementation,
      :parameters,
      :create_time,
      :governed_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the implementation type for a control.
    #
    # Our `ImplementationDetails` `Type` format has three required segments:
    #
    # * `SERVICE-PROVIDER::SERVICE-NAME::RESOURCE-NAME`
    #
    # ^
    #
    # For example, `AWS::Config::ConfigRule` **or**
    # `AWS::SecurityHub::SecurityControl` resources have the format with
    # three required segments.
    #
    # Our `ImplementationDetails` `Type` format has an optional fourth
    # segment, which is present for applicable implementation types. The
    # format is as follows:
    #
    # * `SERVICE-PROVIDER::SERVICE-NAME::RESOURCE-NAME::RESOURCE-TYPE-DESCRIPTION`
    #
    # ^
    #
    # For example, `AWS::Organizations::Policy::SERVICE_CONTROL_POLICY`
    # **or** `AWS::CloudFormation::Type::HOOK` have the format with four
    # segments.
    #
    # Although the format is similar, the values for the `Type` field do not
    # match any Amazon Web Services CloudFormation values.
    #
    # @!attribute [rw] type
    #   A string that describes a control's implementation type.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A service-specific identifier for the control, assigned by the
    #   service that implemented the control. For example, this identifier
    #   could be an Amazon Web Services Config Rule ID or a Security Hub
    #   Control ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ImplementationDetails AWS API Documentation
    #
    class ImplementationDetails < Struct.new(
      :type,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines filtering criteria for control
    # implementations. You can use this filter to find controls that are
    # implemented by specific Amazon Web Services services or with specific
    # service identifiers.
    #
    # @!attribute [rw] types
    #   A list of implementation types that can serve as filters. For
    #   example, you can filter for controls implemented as Amazon Web
    #   Services Config Rules by specifying AWS::Config::ConfigRule as a
    #   type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifiers
    #   A list of service-specific identifiers that can serve as filters.
    #   For example, you can filter for controls with specific Amazon Web
    #   Services Config Rule IDs or Security Hub Control IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ImplementationFilter AWS API Documentation
    #
    class ImplementationFilter < Struct.new(
      :types,
      :identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of how the control is implemented, including the Amazon Web
    # Services service that enforces the control and its service-specific
    # identifier. For example, the value of this field could indicate that
    # the control is implemented as an Amazon Web Services Config Rule or an
    # Amazon Web Services Security Hub control.
    #
    # @!attribute [rw] type
    #   A string that represents the Amazon Web Services service that
    #   implements this control. For example, a value of
    #   `AWS::Config::ConfigRule` indicates that the control is implemented
    #   by Amazon Web Services Config, and
    #   `AWS::SecurityHub::SecurityControl` indicates implementation by
    #   Amazon Web Services Security Hub.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier originally assigned by the Amazon Web Services
    #   service that implements the control. For example,
    #   `CODEPIPELINE_DEPLOYMENT_COUNT_CHECK`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ImplementationSummary AWS API Documentation
    #
    class ImplementationSummary < Struct.new(
      :type,
      :identifier)
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
    #   Passing multiple ARNs in the `CommonControlFilter` isn’t supported.
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
    # @!attribute [rw] filter
    #   An optional filter that narrows the results to specific control
    #   mappings based on control ARNs, common control ARNs, or mapping
    #   types.
    #   @return [Types::ControlMappingFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListControlMappingsRequest AWS API Documentation
    #
    class ListControlMappingsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_mappings
    #   The list of control mappings that the ListControlMappings API
    #   returns.
    #   @return [Array<Types::ControlMapping>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListControlMappingsResponse AWS API Documentation
    #
    class ListControlMappingsResponse < Struct.new(
      :control_mappings,
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
    # @!attribute [rw] filter
    #   An optional filter that narrows the results to controls with
    #   specific implementation types or identifiers. If you don't provide
    #   a filter, the operation returns all available controls.
    #   @return [Types::ControlFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/ListControlsRequest AWS API Documentation
    #
    class ListControlsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter)
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
    #   multiple ARNs in the `ObjectiveFilter` isn’t supported.
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

    # A structure that contains the details of a mapping relationship, which
    # can be either to a framework or to a common control.
    #
    # @note Mapping is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Mapping corresponding to the set member.
    #
    # @!attribute [rw] framework
    #   The framework mapping details when the mapping type relates to a
    #   compliance framework.
    #   @return [Types::FrameworkMappingDetails]
    #
    # @!attribute [rw] common_control
    #   The common control mapping details when the mapping type relates to
    #   a common control.
    #   @return [Types::CommonControlMappingDetails]
    #
    # @!attribute [rw] related_control
    #   Returns information about controls that are related to the specified
    #   control.
    #   @return [Types::RelatedControlMappingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/Mapping AWS API Documentation
    #
    class Mapping < Struct.new(
      :framework,
      :common_control,
      :related_control,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Framework < Mapping; end
      class CommonControl < Mapping; end
      class RelatedControl < Mapping; end
      class Unknown < Mapping; end
    end

    # An optional filter that narrows the list of objectives to a specific
    # domain.
    #
    # @!attribute [rw] domains
    #   The domain that's used as filter criteria.
    #
    #   You can use this parameter to specify one domain ARN at a time.
    #   Passing multiple ARNs in the `ObjectiveFilter` isn’t supported.
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
    # control, if enabled, and the Regions in which the control is available
    # for deployment. For more information about scope, see [Global
    # services][1].
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
    #
    #
    # [1]: https://docs.aws.amazon.com/whitepapers/latest/aws-fault-isolation-boundaries/global-services.html
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

    # A structure that describes a control's relationship status with other
    # controls.
    #
    # @!attribute [rw] control_arn
    #   The unique identifier of a control.
    #   @return [String]
    #
    # @!attribute [rw] relation_type
    #   Returns an enumerated value that represents the relationship between
    #   two or more controls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controlcatalog-2018-05-10/RelatedControlMappingDetails AWS API Documentation
    #
    class RelatedControlMappingDetails < Struct.new(
      :control_arn,
      :relation_type)
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

