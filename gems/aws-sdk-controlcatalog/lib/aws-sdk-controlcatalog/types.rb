# frozen_string_literal: true

# This is generated code!

module Aws::ControlCatalog
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the domain that a common control or an objective belongs to.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the related domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the related domain.</p>
    #   @return [String]
    class AssociatedDomainSummary < Struct.new(
      nil,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the objective that a common control supports.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the related objective.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the related objective.</p>
    #   @return [String]
    class AssociatedObjectiveSummary < Struct.new(
      nil,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional filter that narrows the results to a specific objective.</p>
    # @!attribute objectives
    #   <p>The objective that's used as filter criteria.</p> <p>You can use this parameter to specify one objective ARN at a time. Passing multiple ARNs in the <code>CommonControlFilter</code> isn’t supported.</p>
    #   @return [Array<Types::ObjectiveResourceFilter>]
    class CommonControlFilter < Struct.new(
      nil,
      :objectives,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains details about a common control mapping. In particular, it returns the Amazon Resource Name (ARN) of the common control.</p>
    # @!attribute common_control_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the common control in the mapping.</p>
    #   @return [String]
    class CommonControlMappingDetails < Struct.new(
      nil,
      :common_control_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of metadata for a common control.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the common control.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the common control.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the common control.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain that the common control belongs to.</p>
    #   @return [Types::AssociatedDomainSummary]
    # @!attribute objective
    #   <p>The objective that the common control belongs to.</p>
    #   @return [Types::AssociatedObjectiveSummary]
    # @!attribute create_time
    #   <p>The time when the common control was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time when the common control was most recently updated.</p>
    #   @return [Time]
    class CommonControlSummary < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :domain,
      :objective,
      :create_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines filtering criteria for the ListControls operation. You can use this filter to narrow down the list of controls based on their implementation details.</p>
    # @!attribute implementations
    #   <p>A filter that narrows the results to controls with specific implementation types or identifiers. This field allows you to find controls that are implemented by specific Amazon Web Services services or with specific service identifiers.</p>
    #   @return [Types::ImplementationFilter]
    # @!attribute governed_providers
    #   <p>A filter that narrows the results to controls that govern a specific provider's resources.</p>
    #   @return [Array<String>]
    class ControlFilter < Struct.new(
      nil,
      :implementations,
      :governed_providers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a control mapping, including the control ARN, mapping type, and mapping details.</p>
    # @!attribute control_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the control in the mapping.</p>
    #   @return [String]
    # @!attribute mapping_type
    #   <p>The type of mapping relationship between the control and other entities.</p>
    #   @return [String]
    # @!attribute mapping
    #   <p>The details of the mapping relationship, for example, containing framework, common control, or related control information.</p>
    #   @return [Types::Mapping]
    class ControlMapping < Struct.new(
      nil,
      :control_arn,
      :mapping_type,
      :mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines filtering criteria for the ListControlMappings operation. You can use this filter to narrow down the list of control mappings based on control ARNs, common control ARNs, or mapping types.</p>
    # @!attribute control_arns
    #   <p>A list of control ARNs to filter the mappings. When specified, only mappings associated with these controls are returned.</p>
    #   @return [Array<String>]
    # @!attribute common_control_arns
    #   <p>A list of common control ARNs to filter the mappings. When specified, only mappings associated with these common controls are returned.</p>
    #   @return [Array<String>]
    # @!attribute mapping_types
    #   <p>A list of mapping types to filter the mappings. When specified, only mappings of these types are returned.</p>
    #   @return [Array<String>]
    class ControlMappingFilter < Struct.new(
      nil,
      :control_arns,
      :common_control_arns,
      :mapping_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Five types of control parameters are supported.</p> <ul> <li> <p> <b>AllowedRegions</b>: List of Amazon Web Services Regions exempted from the control. Each string is expected to be an Amazon Web Services Region code. This parameter is mandatory for the <b>OU Region deny</b> control, <b>CT.MULTISERVICE.PV.1</b>.</p> <p>Example: <code>["us-east-1","us-west-2"]</code> </p> </li> <li> <p> <b>ExemptedActions</b>: List of Amazon Web Services IAM actions exempted from the control. Each string is expected to be an IAM action.</p> <p>Example: <code>["logs:DescribeLogGroups","logs:StartQuery","logs:GetQueryResults"]</code> </p> </li> <li> <p> <b>ExemptedPrincipalArns</b>: List of Amazon Web Services IAM principal ARNs exempted from the control. Each string is expected to be an IAM principal that follows the format <code>arn:partition:service::account:resource</code> </p> <p>Example: <code>["arn:aws:iam::*:role/ReadOnly","arn:aws:sts::*:assumed-role/ReadOnly/*"]</code> </p> </li> <li> <p> <b>ExemptedResourceArns</b>: List of resource ARNs exempted from the control. Each string is expected to be a resource ARN.</p> <p>Example: <code>["arn:aws:s3:::my-bucket-name"]</code> </p> </li> <li> <p> <b>ExemptAssumeRoot</b>: A parameter that lets you choose whether to exempt requests made with <code>AssumeRoot</code> from this control, for this OU. For member accounts, the <code>AssumeRoot</code> property is included in requests initiated by IAM centralized root access. This parameter applies only to the <code>AWS-GR_RESTRICT_ROOT_USER</code> control. If you add the parameter when enabling the control, the <code>AssumeRoot</code> exemption is allowed. If you omit the parameter, the <code>AssumeRoot</code> exception is not permitted. The parameter does not accept <code>False</code> as a value.</p> <p> <i>Example: Enabling the control and allowing <code>AssumeRoot</code> </i> </p> <p> <code>{ "controlIdentifier": "arn:aws:controlcatalog:::control/5kvme4m5d2b4d7if2fs5yg2ui", "parameters": [ { "key": "ExemptAssumeRoot", "value": true } ], "targetIdentifier": "arn:aws:organizations::8633900XXXXX:ou/o-6jmn81636m/ou-qsah-jtiihcla" }</code> </p> </li> </ul>
    # @!attribute name
    #   <p>The parameter name. This name is the parameter <code>key</code> when you call <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableControl.html"> <code>EnableControl</code> </a> or <a href="https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledControl.html"> <code>UpdateEnabledControl</code> </a>.</p>
    #   @return [String]
    # @!attribute requirement
    #   <p>Indicates whether the parameter is required or optional when you enable the control.</p>
    #   @return [String]
    class ControlParameter < Struct.new(
      nil,
      :name,
      :requirement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Overview of information about a control.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the control.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>A list of alternative identifiers for the control. These are human-readable designators, such as <code>SH.S3.1</code>. Several aliases can refer to the same control across different Amazon Web Services services or compliance frameworks.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The display name of the control.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the control, as it may appear in the console. Describes the functionality of the control.</p>
    #   @return [String]
    # @!attribute behavior
    #   <p>An enumerated type, with the following possible values:</p>
    #   @return [String]
    # @!attribute severity
    #   <p>An enumerated type, with the following possible values:</p>
    #   @return [String]
    # @!attribute parameter_requirement_summary
    #   <p>A summary that indicates whether the control requires parameters, accepts optional parameters, or does not support parameters. Use this field to determine whether you need to supply parameter values when you enable the control.</p>
    #   @return [String]
    # @!attribute implementation
    #   <p>An object of type <code>ImplementationSummary</code> that describes how the control is implemented.</p>
    #   @return [Types::ImplementationSummary]
    # @!attribute create_time
    #   <p>A timestamp that notes the time when the control was released (start of its life) as a governance capability in Amazon Web Services.</p>
    #   @return [Time]
    # @!attribute governed_resources
    #   <p>A list of resource types that are governed by this control. This information helps you understand which controls can govern certain types of resources, and conversely, which resources are affected when the control is implemented. For Amazon Web Services controls, the resources are represented as CloudFormation resource types. For non-Amazon Web Services controls, the resources are represented in a provider-specific format. If <code>GovernedResources</code> cannot be represented by available resource types, it’s returned as an empty list.</p>
    #   @return [Array<String>]
    # @!attribute governed_providers
    #   <p>A list of providers whose resources are governed by this control. For example, a value of <code>AWS</code> indicates that the control governs Amazon Web Services resources.</p>
    #   @return [Array<String>]
    class ControlSummary < Struct.new(
      nil,
      :arn,
      :aliases,
      :name,
      :description,
      :behavior,
      :severity,
      :parameter_requirement_summary,
      :implementation,
      :create_time,
      :governed_resources,
      :governed_providers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The domain resource that's being used as a filter.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain.</p>
    #   @return [String]
    class DomainResourceFilter < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of metadata for a domain.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time when the domain was most recently updated.</p>
    #   @return [Time]
    class DomainSummary < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :create_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains details about a framework mapping, including the framework name and specific item within the framework that the control maps to.</p>
    # @!attribute name
    #   <p>The name of the compliance framework that the control maps to.</p>
    #   @return [String]
    # @!attribute item
    #   <p>The specific item or requirement within the framework that the control maps to.</p>
    #   @return [String]
    class FrameworkMappingDetails < Struct.new(
      nil,
      :name,
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_arn
    #   <p>The Amazon Resource Name (ARN) of the control. It has one of the following formats:</p> <p> <i>Global format</i> </p> <p> <code>arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}</code> </p> <p> <i>Or Regional format</i> </p> <p> <code>arn:{PARTITION}:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}</code> </p> <p>Here is a more general pattern that covers Amazon Web Services Control Tower and Control Catalog ARNs:</p> <p> <code>^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\-]+$</code> </p>
    #   @return [String]
    class GetControlRequest < Struct.new(
      nil,
      :control_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the control.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>A list of alternative identifiers for the control. These are human-readable designators, such as <code>SH.S3.1</code>. Several aliases can refer to the same control across different Amazon Web Services services or compliance frameworks.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The display name of the control.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the control does.</p>
    #   @return [String]
    # @!attribute behavior
    #   <p>A term that identifies the control's functional behavior. One of <code>Preventive</code>, <code>Detective</code>, <code>Proactive</code> </p>
    #   @return [String]
    # @!attribute severity
    #   <p>An enumerated type, with the following possible values:</p>
    #   @return [String]
    # @!attribute region_configuration
    #   <p>Returns information about the control, including the scope of the control, if enabled, and the Regions in which the control is available for deployment. For more information about scope, see <a href="https://docs.aws.amazon.com/whitepapers/latest/aws-fault-isolation-boundaries/global-services.html">Global services</a>.</p> <p>If you are applying controls through an Amazon Web Services Control Tower landing zone environment, remember that the values returned in the <code>RegionConfiguration</code> API operation are not related to the governed Regions in your landing zone. For example, if you are governing Regions <code>A</code>,<code>B</code>,and <code>C</code> while the control is available in Regions <code>A</code>, <code>B</code>, C<code>,</code> and <code>D</code>, you'd see a response with <code>DeployableRegions</code> of <code>A</code>, <code>B</code>, <code>C</code>, and <code>D</code> for a control with <code>REGIONAL</code> scope, even though you may not intend to deploy the control in Region <code>D</code>, because you do not govern it through your landing zone.</p>
    #   @return [Types::RegionConfiguration]
    # @!attribute implementation
    #   <p>Returns information about the control, as an <code>ImplementationDetails</code> object that shows the underlying implementation type for a control.</p>
    #   @return [Types::ImplementationDetails]
    # @!attribute parameter_requirement_summary
    #   <p>A summary that indicates whether the control requires parameters, accepts optional parameters, or does not support parameters. Use this field to determine whether you need to supply parameter values when you enable the control.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Returns an array of <code>ControlParameter</code> objects that specify the parameters a control supports. An empty list is returned for controls that don’t support parameters. </p>
    #   @return [Array<Types::ControlParameter>]
    # @!attribute create_time
    #   <p>A timestamp that notes the time when the control was released (start of its life) as a governance capability in Amazon Web Services.</p>
    #   @return [Time]
    # @!attribute governed_resources
    #   <p>A list of resource types that are governed by this control. This information helps you understand which controls can govern certain types of resources, and conversely, which resources are affected when the control is implemented. For Amazon Web Services controls, the resources are represented as CloudFormation resource types. For non-Amazon Web Services controls, the resources are represented in a provider-specific format. If <code>GovernedResources</code> cannot be represented by available resource types, it’s returned as an empty list.</p>
    #   @return [Array<String>]
    # @!attribute governed_providers
    #   <p>A list of providers whose resources are governed by this control. For example, a value of <code>AWS</code> indicates that the control governs Amazon Web Services resources.</p>
    #   @return [Array<String>]
    class GetControlResponse < Struct.new(
      nil,
      :arn,
      :aliases,
      :name,
      :description,
      :behavior,
      :severity,
      :region_configuration,
      :implementation,
      :parameter_requirement_summary,
      :parameters,
      :create_time,
      :governed_resources,
      :governed_providers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the implementation type for a control.</p> <p>Our <code>ImplementationDetails</code> <code>Type</code> format has three required segments:</p> <ul> <li> <p> <code>SERVICE-PROVIDER::SERVICE-NAME::RESOURCE-NAME</code> </p> </li> </ul> <p>For example, <code>AWS::Config::ConfigRule</code> <b>or</b> <code>AWS::SecurityHub::SecurityControl</code> resources have the format with three required segments.</p> <p>Our <code>ImplementationDetails</code> <code>Type</code> format has an optional fourth segment, which is present for applicable implementation types. The format is as follows: </p> <ul> <li> <p> <code>SERVICE-PROVIDER::SERVICE-NAME::RESOURCE-NAME::RESOURCE-TYPE-DESCRIPTION</code> </p> </li> </ul> <p>For example, <code>AWS::Organizations::Policy::SERVICE_CONTROL_POLICY</code> <b>or</b> <code>AWS::CloudFormation::Type::HOOK</code> have the format with four segments.</p> <p>Although the format is similar, the values for the <code>Type</code> field do not match any Amazon Web Services CloudFormation values.</p>
    # @!attribute type
    #   <p>A string that describes a control's implementation type.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>A service-specific identifier for the control, assigned by the service that implemented the control. For example, this identifier could be an Amazon Web Services Config Rule ID or a Security Hub Control ID.</p>
    #   @return [String]
    class ImplementationDetails < Struct.new(
      nil,
      :type,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines filtering criteria for control implementations. You can use this filter to find controls that are implemented by specific Amazon Web Services services or with specific service identifiers.</p>
    # @!attribute types
    #   <p>A list of implementation types that can serve as filters. For example, you can filter for controls implemented as Amazon Web Services Config Rules by specifying AWS::Config::ConfigRule as a type.</p>
    #   @return [Array<String>]
    # @!attribute identifiers
    #   <p>A list of service-specific identifiers that can serve as filters. For example, you can filter for controls with specific Amazon Web Services Config Rule IDs or Security Hub Control IDs.</p>
    #   @return [Array<String>]
    class ImplementationFilter < Struct.new(
      nil,
      :types,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of how the control is implemented, including the Amazon Web Services service that enforces the control and its service-specific identifier. For example, the value of this field could indicate that the control is implemented as an Amazon Web Services Config Rule or an Amazon Web Services Security Hub control.</p>
    # @!attribute type
    #   <p>A string that represents the Amazon Web Services service that implements this control. For example, a value of <code>AWS::Config::ConfigRule</code> indicates that the control is implemented by Amazon Web Services Config, and <code>AWS::SecurityHub::SecurityControl</code> indicates implementation by Amazon Web Services Security Hub.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier originally assigned by the Amazon Web Services service that implements the control. For example, <code>CODEPIPELINE_DEPLOYMENT_COUNT_CHECK</code>.</p>
    #   @return [String]
    class ImplementationSummary < Struct.new(
      nil,
      :type,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred during the processing of your request. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute common_control_filter
    #   <p>An optional filter that narrows the results to a specific objective.</p> <p>This filter allows you to specify one objective ARN at a time. Passing multiple ARNs in the <code>CommonControlFilter</code> isn’t supported.</p>
    #   @return [Types::CommonControlFilter]
    class ListCommonControlsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :common_control_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute common_controls
    #   <p>The list of common controls that the <code>ListCommonControls</code> API returns.</p>
    #   @return [Array<Types::CommonControlSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListCommonControlsResponse < Struct.new(
      nil,
      :common_controls,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>An optional filter that narrows the results to specific control mappings based on control ARNs, common control ARNs, or mapping types.</p>
    #   @return [Types::ControlMappingFilter]
    class ListControlMappingsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_mappings
    #   <p>The list of control mappings that the ListControlMappings API returns.</p>
    #   @return [Array<Types::ControlMapping>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListControlMappingsResponse < Struct.new(
      nil,
      :control_mappings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>An optional filter that narrows the results to controls with specific implementation types or identifiers. If you don't provide a filter, the operation returns all available controls.</p>
    #   @return [Types::ControlFilter]
    class ListControlsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute controls
    #   <p>Returns a list of controls, given as structures of type <i>controlSummary</i>.</p>
    #   @return [Array<Types::ControlSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListControlsResponse < Struct.new(
      nil,
      :controls,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListDomainsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domains
    #   <p>The list of domains that the <code>ListDomains</code> API returns.</p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListDomainsResponse < Struct.new(
      nil,
      :domains,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute objective_filter
    #   <p>An optional filter that narrows the results to a specific domain.</p> <p>This filter allows you to specify one domain ARN at a time. Passing multiple ARNs in the <code>ObjectiveFilter</code> isn’t supported.</p>
    #   @return [Types::ObjectiveFilter]
    class ListObjectivesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :objective_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute objectives
    #   <p>The list of objectives that the <code>ListObjectives</code> API returns.</p>
    #   @return [Array<Types::ObjectiveSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListObjectivesResponse < Struct.new(
      nil,
      :objectives,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the details of a mapping relationship, which can be either to a framework or to a common control.</p>
    # @!attribute framework
    #   <p>The framework mapping details when the mapping type relates to a compliance framework.</p>
    #   @return [Types::FrameworkMappingDetails]
    # @!attribute common_control
    #   <p>The common control mapping details when the mapping type relates to a common control.</p>
    #   @return [Types::CommonControlMappingDetails]
    # @!attribute related_control
    #   <p>Returns information about controls that are related to the specified control.</p>
    #   @return [Types::RelatedControlMappingDetails]
    class Mapping < Struct.new(
      :framework,
      :common_control,
      :related_control,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Framework < Mapping; end
      class CommonControl < Mapping; end
      class RelatedControl < Mapping; end
      class Unknown < Mapping; end
    end

    # <p>An optional filter that narrows the list of objectives to a specific domain.</p>
    # @!attribute domains
    #   <p>The domain that's used as filter criteria.</p> <p>You can use this parameter to specify one domain ARN at a time. Passing multiple ARNs in the <code>ObjectiveFilter</code> isn’t supported.</p>
    #   @return [Array<Types::DomainResourceFilter>]
    class ObjectiveFilter < Struct.new(
      nil,
      :domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The objective resource that's being used as a filter.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the objective.</p>
    #   @return [String]
    class ObjectiveResourceFilter < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of metadata for an objective.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the objective.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the objective.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the objective.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain that the objective belongs to.</p>
    #   @return [Types::AssociatedDomainSummary]
    # @!attribute create_time
    #   <p>The time when the objective was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time when the objective was most recently updated.</p>
    #   @return [Time]
    class ObjectiveSummary < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :domain,
      :create_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the control, including the scope of the control, if enabled, and the Regions in which the control is available for deployment. For more information about scope, see <a href="https://docs.aws.amazon.com/whitepapers/latest/aws-fault-isolation-boundaries/global-services.html">Global services</a>.</p> <p>If you are applying controls through an Amazon Web Services Control Tower landing zone environment, remember that the values returned in the <code>RegionConfiguration</code> API operation are not related to the governed Regions in your landing zone. For example, if you are governing Regions <code>A</code>,<code>B</code>,and <code>C</code> while the control is available in Regions <code>A</code>, <code>B</code>, C<code>,</code> and <code>D</code>, you'd see a response with <code>DeployableRegions</code> of <code>A</code>, <code>B</code>, <code>C</code>, and <code>D</code> for a control with <code>REGIONAL</code> scope, even though you may not intend to deploy the control in Region <code>D</code>, because you do not govern it through your landing zone.</p>
    # @!attribute scope
    #   <p>The coverage of the control, if deployed. Scope is an enumerated type, with value <code>Regional</code>, or <code>Global</code>. A control with Global scope is effective in all Amazon Web Services Regions, regardless of the Region from which it is enabled, or to which it is deployed. A control implemented by an SCP is usually Global in scope. A control with Regional scope has operations that are restricted specifically to the Region from which it is enabled and to which it is deployed. Controls implemented by Config rules and CloudFormation hooks usually are Regional in scope. Security Hub controls usually are Regional in scope.</p>
    #   @return [String]
    # @!attribute deployable_regions
    #   <p>Regions in which the control is available to be deployed.</p>
    #   @return [Array<String>]
    class RegionConfiguration < Struct.new(
      nil,
      :scope,
      :deployable_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a control's relationship status with other controls.</p>
    # @!attribute control_arn
    #   <p>The unique identifier of a control.</p>
    #   @return [String]
    # @!attribute relation_type
    #   <p>Returns an enumerated value that represents the relationship between two or more controls.</p>
    #   @return [String]
    class RelatedControlMappingDetails < Struct.new(
      nil,
      :control_arn,
      :relation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request has invalid or missing parameters.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
