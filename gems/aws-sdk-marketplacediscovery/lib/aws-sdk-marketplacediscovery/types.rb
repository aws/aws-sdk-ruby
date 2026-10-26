# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceDiscovery
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains supported Amazon EBS volume information for an AMI fulfillment option.</p>
    # @!attribute volume_types
    #   <p>The supported Amazon EBS volume types.</p>
    #   @return [Array<String>]
    # @!attribute iops
    #   <p>The total number of provisioned IOPS supported.</p>
    #   @return [Integer]
    class AmazonMachineImageEbsVolume < Struct.new(
      nil,
      :volume_types,
      :iops,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Machine Image (AMI) fulfillment option, including version details, supported operating systems, and recommended instance types.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_name
    #   <p>The display name of the fulfillment option version.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute operating_systems
    #   <p>The operating systems supported by this AMI.</p>
    #   @return [Array<Types::AmazonMachineImageOperatingSystem>]
    # @!attribute recommendation
    #   <p>Recommended instance types for running this AMI.</p>
    #   @return [Types::AmazonMachineImageRecommendation]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to deploy and use this fulfillment option.</p>
    #   @return [String]
    # @!attribute available_from_time
    #   <p>The date and time when the AMI became available for fulfillment.</p>
    #   @return [Time]
    # @!attribute access_url_template
    #   <p>The URL pattern for accessing the product when an instance is running.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The architecture of the AMI, such as <code>x86_64</code>.</p>
    #   @return [String]
    # @!attribute ami_alias
    #   <p>The alias of the AMI associated with this fulfillment option.</p>
    #   @return [String]
    # @!attribute ebs_volume
    #   <p>The supported Amazon EBS volume configuration for the AMI.</p>
    #   @return [Types::AmazonMachineImageEbsVolume]
    # @!attribute short_description
    #   <p>A short description of the fulfillment option.</p>
    #   @return [String]
    class AmazonMachineImageFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_version,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :operating_systems,
      :recommendation,
      :release_notes,
      :usage_instructions,
      :available_from_time,
      :access_url_template,
      :architecture,
      :ami_alias,
      :ebs_volume,
      :short_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an operating system supported by an AMI fulfillment option.</p>
    # @!attribute operating_system_family_name
    #   <p>The operating system family, such as Linux or Windows.</p>
    #   @return [String]
    # @!attribute operating_system_name
    #   <p>The specific operating system name, such as Amazon Linux 2 or Windows Server 2022.</p>
    #   @return [String]
    # @!attribute operating_system_version
    #   <p>The version of the operating system.</p>
    #   @return [String]
    class AmazonMachineImageOperatingSystem < Struct.new(
      nil,
      :operating_system_family_name,
      :operating_system_name,
      :operating_system_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Recommended instance types for running an AMI fulfillment option.</p>
    # @!attribute instance_type
    #   <p>The recommended EC2 instance type for this AMI.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The recommended security group configurations for this AMI.</p>
    #   @return [Array<Types::AmazonMachineImageSecurityGroup>]
    class AmazonMachineImageRecommendation < Struct.new(
      nil,
      :instance_type,
      :security_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a recommended security group configuration for an AMI fulfillment option.</p>
    # @!attribute protocol
    #   <p>The IP protocol name, such as <code>tcp</code>.</p>
    #   @return [String]
    # @!attribute from_port
    #   <p>The start of the port range.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The end of the port range.</p>
    #   @return [Integer]
    # @!attribute cidr_ip_addresses
    #   <p>The IP address ranges in CIDR format.</p>
    #   @return [Array<String>]
    class AmazonMachineImageSecurityGroup < Struct.new(
      nil,
      :protocol,
      :from_port,
      :to_port,
      :cidr_ip_addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an API-based fulfillment option, where the product is accessed through an API integration.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to integrate with and use this API.</p>
    #   @return [String]
    # @!attribute aws_supported_services
    #   <p>The AWS services supported by this API integration.</p>
    #   @return [Array<Types::AwsSupportedService>]
    class ApiFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :usage_instructions,
      :aws_supported_services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an AWS service supported by a fulfillment option.</p>
    # @!attribute supported_service_type
    #   <p>The machine-readable identifier of the supported service.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the supported service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the supported service.</p>
    #   @return [String]
    class AwsSupportedService < Struct.new(
      nil,
      :supported_service_type,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a Bring Your Own License (BYOL) pricing term, where buyers use their existing license for the product.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    class ByolPricingTerm < Struct.new(
      nil,
      :id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A category used to classify a listing or product into a logical group.</p>
    # @!attribute category_id
    #   <p>The machine-readable identifier of the category.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the category.</p>
    #   @return [String]
    class Category < Struct.new(
      nil,
      :category_id,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an AWS CloudFormation template fulfillment option for infrastructure deployment.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_name
    #   <p>The display name of the fulfillment option version.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to deploy and use this CloudFormation template.</p>
    #   @return [String]
    # @!attribute available_from_time
    #   <p>The date and time when the CloudFormation fulfillment option became available for fulfillment.</p>
    #   @return [Time]
    # @!attribute short_description
    #   <p>A short description of the fulfillment option.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A detailed description of the fulfillment option.</p>
    #   @return [String]
    class CloudFormationFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :release_notes,
      :usage_instructions,
      :available_from_time,
      :short_description,
      :long_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a configurable upfront pricing term with selectable rate cards, where buyers choose from predefined pricing configurations.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices in this term.</p>
    #   @return [String]
    # @!attribute rate_cards
    #   <p>The rate cards available for selection, each with a selector, constraints, and per-unit rates.</p>
    #   @return [Array<Types::ConfigurableUpfrontRateCardItem>]
    class ConfigurableUpfrontPricingTerm < Struct.new(
      nil,
      :id,
      :type,
      :currency_code,
      :rate_cards,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rate card item within a configurable upfront pricing term, including a selector for choosing the configuration and per-unit rates.</p>
    # @!attribute selector
    #   <p>The selector criteria for this rate card, such as duration.</p>
    #   @return [Types::Selector]
    # @!attribute constraints
    #   <p>Constraints on how the buyer can configure this rate card, such as whether multiple dimensions can be selected.</p>
    #   @return [Types::Constraints]
    # @!attribute rate_card
    #   <p>The per-unit rates for this configuration.</p>
    #   @return [Array<Types::RateCardItem>]
    class ConfigurableUpfrontRateCardItem < Struct.new(
      nil,
      :selector,
      :constraints,
      :rate_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Constraints that control how a buyer can configure a rate card.</p>
    # @!attribute multiple_dimension_selection
    #   <p>Whether the buyer can select multiple dimensions. Values are <code>Allowed</code> or <code>Disallowed</code>.</p>
    #   @return [String]
    # @!attribute quantity_configuration
    #   <p>Whether the buyer can configure quantities. Values are <code>Allowed</code> or <code>Disallowed</code>.</p>
    #   @return [String]
    class Constraints < Struct.new(
      nil,
      :multiple_dimension_selection,
      :quantity_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a container image fulfillment option for container-based deployment.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_name
    #   <p>The display name of the fulfillment option version.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute operating_systems
    #   <p>The operating systems supported by this container image.</p>
    #   @return [Array<Types::ContainerOperatingSystem>]
    # @!attribute aws_supported_services
    #   <p>The AWS services supported by this container deployment.</p>
    #   @return [Array<Types::AwsSupportedService>]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to deploy and use this container image.</p>
    #   @return [String]
    class ContainerFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :aws_supported_services,
      :release_notes,
      :usage_instructions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an operating system supported by a container fulfillment option.</p>
    # @!attribute operating_system_family_name
    #   <p>The operating system family, such as Linux.</p>
    #   @return [String]
    # @!attribute operating_system_name
    #   <p>The specific operating system name.</p>
    #   @return [String]
    class ContainerOperatingSystem < Struct.new(
      nil,
      :operating_system_family_name,
      :operating_system_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data artifact within a Data Exchange fulfillment option.</p>
    # @!attribute description
    #   <p>A description of the data artifact.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data artifact.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the data artifact resource.</p>
    #   @return [String]
    # @!attribute data_classification
    #   <p>The classification of sensitive data contained in the dataset.</p>
    #   @return [String]
    class DataArtifact < Struct.new(
      nil,
      :description,
      :resource_arn,
      :resource_type,
      :data_classification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an AWS Data Exchange fulfillment option for data set delivery.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute data_artifacts
    #   <p>The data artifacts included in this Data Exchange fulfillment option.</p>
    #   @return [Array<Types::DataArtifact>]
    class DataExchangeFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :data_artifacts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A label used to group or categorize pricing dimensions, such as by region or SageMaker option.</p>
    # @!attribute label_type
    #   <p>The type of the dimension label, such as <code>Region</code> or <code>SagemakerOption</code>.</p>
    #   @return [String]
    # @!attribute label_value
    #   <p>The value used to group dimensions together.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable display name of the label.</p>
    #   @return [String]
    class DimensionLabel < Struct.new(
      nil,
      :label_type,
      :label_value,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A legal document associated with a legal term, such as a EULA or data subscription agreement.</p>
    # @!attribute type
    #   <p>The category of the legal document, such as <code>StandardEula</code> or <code>CustomEula</code>.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL where the legal document can be accessed.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the standard contract, if applicable.</p>
    #   @return [String]
    class DocumentItem < Struct.new(
      nil,
      :type,
      :url,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an EC2 Image Builder component fulfillment option.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_name
    #   <p>The display name of the fulfillment option version.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute operating_systems
    #   <p>The operating systems supported by this EC2 Image Builder component.</p>
    #   @return [Array<Types::ContainerOperatingSystem>]
    # @!attribute aws_supported_services
    #   <p>The AWS services supported by this EC2 Image Builder component.</p>
    #   @return [Array<Types::AwsSupportedService>]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to deploy and use this EC2 Image Builder component.</p>
    #   @return [String]
    class Ec2ImageBuilderComponentFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :aws_supported_services,
      :release_notes,
      :usage_instructions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon EKS add-on fulfillment option.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_name
    #   <p>The display name of the fulfillment option version.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute operating_systems
    #   <p>The operating systems supported by this EKS add-on.</p>
    #   @return [Array<Types::EksAddOnOperatingSystem>]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to deploy and use this EKS add-on.</p>
    #   @return [String]
    # @!attribute aws_supported_services
    #   <p>The AWS services supported by this EKS add-on.</p>
    #   @return [Array<Types::AwsSupportedService>]
    class EksAddOnFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :release_notes,
      :usage_instructions,
      :aws_supported_services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an operating system supported by an EKS add-on fulfillment option.</p>
    # @!attribute operating_system_family_name
    #   <p>The operating system family, such as Linux.</p>
    #   @return [String]
    # @!attribute operating_system_name
    #   <p>The specific operating system name.</p>
    #   @return [String]
    class EksAddOnOperatingSystem < Struct.new(
      nil,
      :operating_system_family_name,
      :operating_system_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single fixed price increase percentage applied at each renewal cycle.</p>
    # @!attribute percentage_value
    #   <p>The percentage value applied at each renewal cycle.</p>
    #   @return [String]
    class FixedPercentage < Struct.new(
      nil,
      :percentage_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a fixed upfront pricing term with a pre-paid amount and granted entitlements.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices in this term.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration of the fixed pricing term, in ISO 8601 format.</p>
    #   @return [String]
    # @!attribute price
    #   <p>The price charged upfront for this term.</p>
    #   @return [String]
    # @!attribute grants
    #   <p>The entitlements granted to the buyer as part of this term.</p>
    #   @return [Array<Types::GrantItem>]
    class FixedUpfrontPricingTerm < Struct.new(
      nil,
      :id,
      :type,
      :currency_code,
      :duration,
      :price,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a free trial pricing term that enables customers to try the product before purchasing.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration of the free trial period.</p>
    #   @return [String]
    # @!attribute grants
    #   <p>The entitlements granted to the buyer during the free trial.</p>
    #   @return [Array<Types::GrantItem>]
    class FreeTrialPricingTerm < Struct.new(
      nil,
      :id,
      :type,
      :duration,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a fulfillment option for a product. Each element contains exactly one fulfillment option type.</p>
    # @!attribute amazon_machine_image_fulfillment_option
    #   <p>An Amazon Machine Image (AMI) fulfillment option for EC2 deployment.</p>
    #   @return [Types::AmazonMachineImageFulfillmentOption]
    # @!attribute api_fulfillment_option
    #   <p>An API-based fulfillment option for programmatic integration.</p>
    #   @return [Types::ApiFulfillmentOption]
    # @!attribute cloud_formation_fulfillment_option
    #   <p>An AWS CloudFormation template fulfillment option for infrastructure deployment.</p>
    #   @return [Types::CloudFormationFulfillmentOption]
    # @!attribute container_fulfillment_option
    #   <p>A container image fulfillment option for container-based deployment.</p>
    #   @return [Types::ContainerFulfillmentOption]
    # @!attribute helm_fulfillment_option
    #   <p>A Helm chart fulfillment option for Kubernetes deployment.</p>
    #   @return [Types::HelmFulfillmentOption]
    # @!attribute eks_add_on_fulfillment_option
    #   <p>An Amazon EKS add-on fulfillment option.</p>
    #   @return [Types::EksAddOnFulfillmentOption]
    # @!attribute ec2_image_builder_component_fulfillment_option
    #   <p>An EC2 Image Builder component fulfillment option.</p>
    #   @return [Types::Ec2ImageBuilderComponentFulfillmentOption]
    # @!attribute data_exchange_fulfillment_option
    #   <p>An AWS Data Exchange fulfillment option for data set delivery.</p>
    #   @return [Types::DataExchangeFulfillmentOption]
    # @!attribute professional_services_fulfillment_option
    #   <p>A professional services fulfillment option.</p>
    #   @return [Types::ProfessionalServicesFulfillmentOption]
    # @!attribute saas_fulfillment_option
    #   <p>A Software as a Service (SaaS) fulfillment option.</p>
    #   @return [Types::SaasFulfillmentOption]
    # @!attribute sage_maker_algorithm_fulfillment_option
    #   <p>An Amazon SageMaker algorithm fulfillment option.</p>
    #   @return [Types::SageMakerAlgorithmFulfillmentOption]
    # @!attribute sage_maker_model_fulfillment_option
    #   <p>An Amazon SageMaker model fulfillment option.</p>
    #   @return [Types::SageMakerModelFulfillmentOption]
    class FulfillmentOption < Struct.new(
      :amazon_machine_image_fulfillment_option,
      :api_fulfillment_option,
      :cloud_formation_fulfillment_option,
      :container_fulfillment_option,
      :helm_fulfillment_option,
      :eks_add_on_fulfillment_option,
      :ec2_image_builder_component_fulfillment_option,
      :data_exchange_fulfillment_option,
      :professional_services_fulfillment_option,
      :saas_fulfillment_option,
      :sage_maker_algorithm_fulfillment_option,
      :sage_maker_model_fulfillment_option,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AmazonMachineImageFulfillmentOption < FulfillmentOption; end
      class ApiFulfillmentOption < FulfillmentOption; end
      class CloudFormationFulfillmentOption < FulfillmentOption; end
      class ContainerFulfillmentOption < FulfillmentOption; end
      class HelmFulfillmentOption < FulfillmentOption; end
      class EksAddOnFulfillmentOption < FulfillmentOption; end
      class Ec2ImageBuilderComponentFulfillmentOption < FulfillmentOption; end
      class DataExchangeFulfillmentOption < FulfillmentOption; end
      class ProfessionalServicesFulfillmentOption < FulfillmentOption; end
      class SaasFulfillmentOption < FulfillmentOption; end
      class SageMakerAlgorithmFulfillmentOption < FulfillmentOption; end
      class SageMakerModelFulfillmentOption < FulfillmentOption; end
      class Unknown < FulfillmentOption; end
    end

    # <p>A summary of a fulfillment option available for deploying or accessing a listing or product.</p>
    # @!attribute fulfillment_option_type
    #   <p>The machine-readable type of the fulfillment option, such as <code>SAAS</code> or <code>AMAZON_MACHINE_IMAGE</code>.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the fulfillment option type.</p>
    #   @return [String]
    class FulfillmentOptionSummary < Struct.new(
      nil,
      :fulfillment_option_type,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute listing_id
    #   <p>The unique identifier of the listing to retrieve.</p>
    #   @return [String]
    class GetListingInput < Struct.new(
      nil,
      :locale,
      :listing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>The locale of the returned content. Indicates whether the response contains content in the requested locale, or fell back to the default locale. See <code>Locale</code> for details.</p>
    #   @return [String]
    # @!attribute associated_entities
    #   <p>The products and offers associated with this listing. Each entity contains product and offer information.</p>
    #   @return [Array<Types::ListingAssociatedEntity>]
    # @!attribute badges
    #   <p>Badges indicating special attributes of the listing, such as free tier eligibility, free trial availability, or Quick Launch support.</p>
    #   @return [Array<Types::ListingBadge>]
    # @!attribute catalog
    #   <p>The name of the catalog that the listing belongs to.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The categories used to classify this listing into logical groups.</p>
    #   @return [Array<Types::Category>]
    # @!attribute fulfillment_option_summaries
    #   <p>A summary of fulfillment options available for deploying or accessing the listing, such as AMI, SaaS, or Container.</p>
    #   @return [Array<Types::FulfillmentOptionSummary>]
    # @!attribute highlights
    #   <p>A list of key features that the listing offers to customers.</p>
    #   @return [Array<String>]
    # @!attribute integration_guide
    #   <p>Optional guidance explaining how to use data in this listing. Primarily defines how to integrate with a multi-product listing.</p>
    #   @return [String]
    # @!attribute listing_id
    #   <p>The unique identifier of the listing.</p>
    #   @return [String]
    # @!attribute listing_name
    #   <p>The human-readable display name of the listing.</p>
    #   @return [String]
    # @!attribute logo_thumbnail_url
    #   <p>The URL of the logo thumbnail image for the listing.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A detailed description of what the listing offers, in paragraph format.</p>
    #   @return [String]
    # @!attribute pricing_models
    #   <p>The pricing models for offers associated with this listing, such as usage-based, contract, BYOL, or free.</p>
    #   @return [Array<Types::PricingModel>]
    # @!attribute pricing_units
    #   <p>The pricing units that define the billing dimensions for offers associated with this listing, such as users, hosts, or data.</p>
    #   @return [Array<Types::PricingUnit>]
    # @!attribute promotional_media
    #   <p>Embedded promotional media provided by the creator of the product, such as images and videos.</p>
    #   @return [Array<Types::PromotionalMedia>]
    # @!attribute publisher
    #   <p>The entity who created and published the listing.</p>
    #   @return [Types::SellerInformation]
    # @!attribute resources
    #   <p>Resources that provide further information about using the product or requesting support, such as documentation links, support contacts, and usage instructions.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute review_summary
    #   <p>A summary of customer reviews available for the listing, including average rating and total review count by source.</p>
    #   @return [Types::ReviewSummary]
    # @!attribute seller_engagements
    #   <p>Engagement options available to potential buyers, such as requesting a private offer or requesting a demo.</p>
    #   @return [Array<Types::SellerEngagement>]
    # @!attribute short_description
    #   <p>A 1–3 sentence summary describing the key aspects of the listing.</p>
    #   @return [String]
    # @!attribute use_cases
    #   <p>Use cases associated with the listing, describing scenarios where the product can be applied.</p>
    #   @return [Array<Types::UseCaseEntry>]
    class GetListingOutput < Struct.new(
      nil,
      :locale,
      :associated_entities,
      :badges,
      :catalog,
      :categories,
      :fulfillment_option_summaries,
      :highlights,
      :integration_guide,
      :listing_id,
      :listing_name,
      :logo_thumbnail_url,
      :long_description,
      :pricing_models,
      :pricing_units,
      :promotional_media,
      :publisher,
      :resources,
      :review_summary,
      :seller_engagements,
      :short_description,
      :use_cases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute offer_id
    #   <p>The unique identifier of the offer to retrieve.</p>
    #   @return [String]
    class GetOfferInput < Struct.new(
      nil,
      :locale,
      :offer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>The locale of the returned content. Indicates whether the response contains content in the requested locale, or fell back to the default locale. See <code>Locale</code> for details.</p>
    #   @return [String]
    # @!attribute offer_id
    #   <p>The unique identifier of the offer.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The name of the catalog that the offer belongs to.</p>
    #   @return [String]
    # @!attribute offer_name
    #   <p>The display name of the offer. This is free-form text provided by the seller.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The date and time until when the offer can be procured. This value is null for offers that never expire.</p>
    #   @return [Time]
    # @!attribute available_from_time
    #   <p>The date and time when the offer became available to the buyer.</p>
    #   @return [Time]
    # @!attribute seller_of_record
    #   <p>The entity responsible for selling the product under this offer.</p>
    #   @return [Types::SellerInformation]
    # @!attribute associated_entities
    #   <p>The products and offer sets associated with this offer.</p>
    #   @return [Array<Types::OfferAssociatedEntity>]
    # @!attribute agreement_proposal_id
    #   <p>An encoded string to be passed by the acceptor of the terms when creating an agreement.</p>
    #   @return [String]
    # @!attribute replacement_agreement_id
    #   <p>The identifier of the existing agreement that this offer would replace. Enables agreement-based offer functionality.</p>
    #   @return [String]
    # @!attribute pricing_model
    #   <p>The pricing model that determines how buyers are charged, such as usage-based, contract, BYOL, or free.</p>
    #   @return [Types::PricingModel]
    # @!attribute badges
    #   <p>Badges indicating special attributes of the offer, such as private pricing, future dated, or replacement offer.</p>
    #   @return [Array<Types::PurchaseOptionBadge>]
    class GetOfferOutput < Struct.new(
      nil,
      :locale,
      :offer_id,
      :catalog,
      :offer_name,
      :expiration_time,
      :available_from_time,
      :seller_of_record,
      :associated_entities,
      :agreement_proposal_id,
      :replacement_agreement_id,
      :pricing_model,
      :badges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute offer_set_id
    #   <p>The unique identifier of the offer set to retrieve.</p>
    #   @return [String]
    class GetOfferSetInput < Struct.new(
      nil,
      :locale,
      :offer_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>The locale of the returned content. Indicates whether the response contains content in the requested locale, or fell back to the default locale. See <code>Locale</code> for details.</p>
    #   @return [String]
    # @!attribute offer_set_id
    #   <p>The unique identifier of the offer set.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The name of the catalog that the offer set belongs to.</p>
    #   @return [String]
    # @!attribute offer_set_name
    #   <p>The display name of the offer set.</p>
    #   @return [String]
    # @!attribute available_from_time
    #   <p>The date and time when the offer set became available to the buyer.</p>
    #   @return [Time]
    # @!attribute expiration_time
    #   <p>The date and time when the offer set expires and is no longer available for procurement.</p>
    #   @return [Time]
    # @!attribute buyer_notes
    #   <p>Detailed information about the offer set that helps buyers understand its purpose and contents.</p>
    #   @return [String]
    # @!attribute seller_of_record
    #   <p>The entity responsible for selling the products under this offer set.</p>
    #   @return [Types::SellerInformation]
    # @!attribute badges
    #   <p>Badges indicating special attributes of the offer set, such as private pricing or future dated.</p>
    #   @return [Array<Types::PurchaseOptionBadge>]
    # @!attribute associated_entities
    #   <p>The products and offers included in this offer set.</p>
    #   @return [Array<Types::OfferSetAssociatedEntity>]
    class GetOfferSetOutput < Struct.new(
      nil,
      :locale,
      :offer_set_id,
      :catalog,
      :offer_set_name,
      :available_from_time,
      :expiration_time,
      :buyer_notes,
      :seller_of_record,
      :badges,
      :associated_entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute offer_id
    #   <p>The unique identifier of the offer whose terms to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class GetOfferTermsInput < Struct.new(
      nil,
      :locale,
      :offer_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>The locale of the returned content. Indicates whether the response contains content in the requested locale, or fell back to the default locale. See <code>Locale</code> for details.</p>
    #   @return [String]
    # @!attribute offer_terms
    #   <p>The terms attached to the offer. Each element contains exactly one term type.</p>
    #   @return [Array<Types::OfferTerm>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class GetOfferTermsOutput < Struct.new(
      nil,
      :locale,
      :offer_terms,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The unique identifier of the product to retrieve.</p>
    #   @return [String]
    class GetProductInput < Struct.new(
      nil,
      :locale,
      :product_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>The locale of the returned content. Indicates whether the response contains content in the requested locale, or fell back to the default locale. See <code>Locale</code> for details.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The unique identifier of the product.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The name of the catalog that the product belongs to.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The human-readable display name of the product.</p>
    #   @return [String]
    # @!attribute manufacturer
    #   <p>The entity who manufactured the product.</p>
    #   @return [Types::SellerInformation]
    # @!attribute deployed_on_aws
    #   <p>Indicates whether the product is deployed on AWS infrastructure.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A 1–3 sentence summary describing the key aspects of the product.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A detailed description of what the product does, in paragraph format.</p>
    #   @return [String]
    # @!attribute logo_thumbnail_url
    #   <p>The URL of the logo thumbnail image for the product.</p>
    #   @return [String]
    # @!attribute fulfillment_option_summaries
    #   <p>A summary of fulfillment options available for deploying or accessing the product, such as AMI, SaaS, or Container.</p>
    #   @return [Array<Types::FulfillmentOptionSummary>]
    # @!attribute categories
    #   <p>The categories used to classify this product into logical groups.</p>
    #   @return [Array<Types::Category>]
    # @!attribute highlights
    #   <p>A list of key features that the product offers to customers.</p>
    #   @return [Array<String>]
    # @!attribute promotional_media
    #   <p>Embedded promotional media provided by the creator of the product, such as images and videos.</p>
    #   @return [Array<Types::PromotionalMedia>]
    # @!attribute resources
    #   <p>Resources that provide further information about using the product or requesting support, such as documentation links, support contacts, and usage instructions.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute seller_engagements
    #   <p>Engagement options available to potential buyers, such as requesting a private offer or requesting a demo.</p>
    #   @return [Array<Types::SellerEngagement>]
    # @!attribute listing_id
    #   <p>The default listing identifier associated with the product.</p>
    #   @return [String]
    class GetProductOutput < Struct.new(
      nil,
      :locale,
      :product_id,
      :catalog,
      :product_name,
      :manufacturer,
      :deployed_on_aws,
      :short_description,
      :long_description,
      :logo_thumbnail_url,
      :fulfillment_option_summaries,
      :categories,
      :highlights,
      :promotional_media,
      :resources,
      :seller_engagements,
      :listing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entitlement granted to the buyer as part of a pricing term.</p>
    # @!attribute dimension_key
    #   <p>The machine-readable key identifying the entitlement dimension.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the entitlement dimension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the entitlement.</p>
    #   @return [String]
    # @!attribute dimension_labels
    #   <p>Labels used to categorize this entitlement, such as by region.</p>
    #   @return [Array<Types::DimensionLabel>]
    # @!attribute unit
    #   <p>The unit of measurement for the entitlement.</p>
    #   @return [String]
    # @!attribute max_quantity
    #   <p>The maximum quantity of the entitlement that can be granted.</p>
    #   @return [Integer]
    class GrantItem < Struct.new(
      nil,
      :dimension_key,
      :display_name,
      :description,
      :dimension_labels,
      :unit,
      :max_quantity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Helm chart fulfillment option for Kubernetes deployment.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_name
    #   <p>The display name of the fulfillment option version.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute operating_systems
    #   <p>The operating systems supported by this Helm chart.</p>
    #   @return [Array<Types::HelmOperatingSystem>]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute aws_supported_services
    #   <p>The AWS services supported by this Helm chart deployment.</p>
    #   @return [Array<Types::AwsSupportedService>]
    # @!attribute usage_instructions
    #   <p>Instructions on how to deploy and use this Helm chart.</p>
    #   @return [String]
    class HelmFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :release_notes,
      :aws_supported_services,
      :usage_instructions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an operating system supported by a Helm chart fulfillment option.</p>
    # @!attribute operating_system_family_name
    #   <p>The operating system family, such as Linux.</p>
    #   @return [String]
    # @!attribute operating_system_name
    #   <p>The specific operating system name.</p>
    #   @return [String]
    class HelmOperatingSystem < Struct.new(
      nil,
      :operating_system_family_name,
      :operating_system_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error during processing of the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a legal term containing documents proposed to buyers, such as EULAs and data subscription agreements.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>The legal documents proposed to the buyer as part of this term.</p>
    #   @return [Array<Types::DocumentItem>]
    class LegalTerm < Struct.new(
      nil,
      :id,
      :type,
      :documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The unique identifier of the product for which to list fulfillment options.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListFulfillmentOptionsInput < Struct.new(
      nil,
      :locale,
      :product_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list of language tags that specifies the preferred locale for response content. The field accepts a maximum of two language tags.</p> <p>The service resolves a locale string to the nearest supported locale. If no supported locale matches, the service applies the fallback behavior described below.</p> <ul> <li> <p> <b>Preferred locale</b> (first tag) – The locale you want the service to return content in.</p> </li> <li> <p> <b>Fallback locale</b> (optional, second tag) – The service default locale (<code>en-US</code> or <code>en</code>). The service returns content in this locale when translated content for the preferred locale is unavailable.</p> </li> </ul> <p>The field is optional. If omitted or null, the service returns content in the default locale (<code>en-US</code>).</p> <p> <b>Supported locales:</b> </p> <ul> <li> <p> <code>en-US</code> – English (service default, also resolves from <code>en</code>)</p> </li> <li> <p> <code>fr</code> – French</p> </li> <li> <p> <code>es</code> – Spanish</p> </li> <li> <p> <code>ko</code> – Korean</p> </li> <li> <p> <code>ja</code> – Japanese</p> </li> </ul> <p> <b>Fallback behavior:</b> </p> <ul> <li> <p>If translated content for the preferred locale is unavailable, the service returns content in the default locale.</p> </li> <li> <p>If the preferred locale is not supported and no fallback is provided, the service returns a <code>ValidationException</code>.</p> </li> <li> <p>If you provide an unsupported locale with the default locale as fallback (for example, <code>xx, en-US</code>), the service returns content in the default locale.</p> </li> </ul> <p> <b>Response locale field (Get APIs):</b> The <code>locale</code> field in Get API responses indicates the locale of the returned content. You can use this field to determine whether the response contains content in the requested locale or the default locale.</p> <p> <b>Examples:</b> </p> <ul> <li> <p> <code>fr</code> – Request French content. If unavailable, falls back to <code>en-US</code>.</p> </li> <li> <p> <code>fr, en-US</code> – Request French content with explicit fallback to English.</p> </li> <li> <p> <code>en-US</code> – Request content in the default locale.</p> </li> </ul>
    #   @return [String]
    # @!attribute fulfillment_options
    #   <p>The fulfillment options available for the product. Each option describes how the buyer can deploy or access the product.</p>
    #   @return [Array<Types::FulfillmentOption>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListFulfillmentOptionsOutput < Struct.new(
      nil,
      :locale,
      :fulfillment_options,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to narrow the results. Multiple filters are combined with AND logic. Multiple values within the same filter are combined with OR logic.</p>
    #   @return [Array<Types::PurchaseOptionFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListPurchaseOptionsInput < Struct.new(
      nil,
      :locale,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute purchase_options
    #   <p>The purchase options available to the buyer. Each option is either an offer for a single product or an offer set spanning multiple products.</p>
    #   @return [Array<Types::PurchaseOptionSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListPurchaseOptionsOutput < Struct.new(
      nil,
      :purchase_options,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A product and offer associated with a listing.</p>
    # @!attribute product
    #   <p>Information about the product associated with the listing.</p>
    #   @return [Types::ProductInformation]
    # @!attribute offer
    #   <p>Information about the default offer associated with the listing.</p>
    #   @return [Types::OfferInformation]
    class ListingAssociatedEntity < Struct.new(
      nil,
      :product,
      :offer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A badge indicating a special attribute of a listing, such as free tier eligibility or Quick Launch support.</p>
    # @!attribute display_name
    #   <p>The human-readable name of the badge.</p>
    #   @return [String]
    # @!attribute badge_type
    #   <p>The machine-readable type of the badge.</p>
    #   @return [String]
    class ListingBadge < Struct.new(
      nil,
      :display_name,
      :badge_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A facet value with display information and a count of matching listings. Used to build filter and browse experiences.</p>
    # @!attribute value
    #   <p>The internal value used for filtering when passed back in a search filter.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the facet value, suitable for display in a user interface.</p>
    #   @return [String]
    # @!attribute parent
    #   <p>The parent facet value for hierarchical facets, such as subcategories.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of listings matching this facet value.</p>
    #   @return [Integer]
    class ListingFacet < Struct.new(
      nil,
      :value,
      :display_name,
      :parent,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a listing returned by search operations, including the listing name, description, badges, categories, pricing models, reviews, and associated products.</p>
    # @!attribute listing_id
    #   <p>The unique identifier of the listing.</p>
    #   @return [String]
    # @!attribute listing_name
    #   <p>The human-readable display name of the listing.</p>
    #   @return [String]
    # @!attribute publisher
    #   <p>The entity who created and published the listing.</p>
    #   @return [Types::SellerInformation]
    # @!attribute fulfillment_option_summaries
    #   <p>A summary of fulfillment options available for the listing.</p>
    #   @return [Array<Types::FulfillmentOptionSummary>]
    # @!attribute catalog
    #   <p>The name of the catalog that the listing belongs to.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A 1–3 sentence summary describing the key aspects of the listing.</p>
    #   @return [String]
    # @!attribute logo_thumbnail_url
    #   <p>The URL of the logo thumbnail image for the listing.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The categories used to classify this listing into logical groups.</p>
    #   @return [Array<Types::Category>]
    # @!attribute badges
    #   <p>Badges indicating special attributes of the listing.</p>
    #   @return [Array<Types::ListingBadge>]
    # @!attribute review_summary
    #   <p>A summary of customer reviews for the listing.</p>
    #   @return [Types::ReviewSummary]
    # @!attribute pricing_models
    #   <p>The pricing models for offers associated with this listing.</p>
    #   @return [Array<Types::PricingModel>]
    # @!attribute pricing_units
    #   <p>The pricing units that define the billing dimensions for offers associated with this listing.</p>
    #   @return [Array<Types::PricingUnit>]
    # @!attribute associated_entities
    #   <p>The products associated with this listing.</p>
    #   @return [Array<Types::ListingSummaryAssociatedEntity>]
    class ListingSummary < Struct.new(
      nil,
      :listing_id,
      :listing_name,
      :publisher,
      :fulfillment_option_summaries,
      :catalog,
      :short_description,
      :logo_thumbnail_url,
      :categories,
      :badges,
      :review_summary,
      :pricing_models,
      :pricing_units,
      :associated_entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A product associated with a listing summary.</p>
    # @!attribute product
    #   <p>Information about the associated product.</p>
    #   @return [Types::ProductInformation]
    class ListingSummaryAssociatedEntity < Struct.new(
      nil,
      :product,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a net payment term that sets how many days after the invoice date the payment is due.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute payment_due_period
    #   <p>The duration after invoice date by which payment is due.</p>
    #   @return [String]
    class NetPaymentTerm < Struct.new(
      nil,
      :id,
      :type,
      :payment_due_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A product and optional offer set associated with an offer.</p>
    # @!attribute product
    #   <p>Information about the product associated with the offer.</p>
    #   @return [Types::ProductInformation]
    # @!attribute offer_set
    #   <p>Information about the offer set, if the offer is part of a bundled offer set.</p>
    #   @return [Types::OfferSetInformation]
    class OfferAssociatedEntity < Struct.new(
      nil,
      :product,
      :offer_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an offer, including the offer identifier, name, and seller of record.</p>
    # @!attribute offer_id
    #   <p>The unique identifier of the offer.</p>
    #   @return [String]
    # @!attribute offer_name
    #   <p>The display name of the offer.</p>
    #   @return [String]
    # @!attribute seller_of_record
    #   <p>The entity responsible for selling the product under this offer.</p>
    #   @return [Types::SellerInformation]
    class OfferInformation < Struct.new(
      nil,
      :offer_id,
      :offer_name,
      :seller_of_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A product and offer associated with an offer set.</p>
    # @!attribute product
    #   <p>Information about the product associated with the offer set.</p>
    #   @return [Types::ProductInformation]
    # @!attribute offer
    #   <p>Information about the offer associated with the offer set.</p>
    #   @return [Types::OfferInformation]
    class OfferSetAssociatedEntity < Struct.new(
      nil,
      :product,
      :offer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an offer set, including the identifier and seller of record.</p>
    # @!attribute offer_set_id
    #   <p>The unique identifier of the offer set.</p>
    #   @return [String]
    # @!attribute seller_of_record
    #   <p>The entity responsible for selling the products under this offer set.</p>
    #   @return [Types::SellerInformation]
    class OfferSetInformation < Struct.new(
      nil,
      :offer_set_id,
      :seller_of_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A term attached to an offer. Each element contains exactly one term type, such as a pricing term, legal term, or payment schedule term.</p>
    # @!attribute byol_pricing_term
    #   <p>Defines a Bring Your Own License (BYOL) pricing term, where buyers use their existing license for the product.</p>
    #   @return [Types::ByolPricingTerm]
    # @!attribute configurable_upfront_pricing_term
    #   <p>Defines a configurable upfront pricing term with selectable rate cards, where buyers choose from predefined pricing configurations.</p>
    #   @return [Types::ConfigurableUpfrontPricingTerm]
    # @!attribute fixed_upfront_pricing_term
    #   <p>Defines a fixed upfront pricing term with a pre-paid amount and granted entitlements.</p>
    #   @return [Types::FixedUpfrontPricingTerm]
    # @!attribute free_trial_pricing_term
    #   <p>Defines a free trial pricing term that enables customers to try the product before purchasing.</p>
    #   @return [Types::FreeTrialPricingTerm]
    # @!attribute legal_term
    #   <p>Defines a legal term containing documents proposed to buyers, such as EULAs and data subscription agreements.</p>
    #   @return [Types::LegalTerm]
    # @!attribute payment_schedule_term
    #   <p>Defines a payment schedule term with installment payments at specified dates.</p>
    #   @return [Types::PaymentScheduleTerm]
    # @!attribute recurring_payment_term
    #   <p>Defines a recurring payment term with fixed charges at regular billing intervals.</p>
    #   @return [Types::RecurringPaymentTerm]
    # @!attribute renewal_term
    #   <p>Defines a renewal term that enables automatic agreement renewal.</p>
    #   @return [Types::RenewalTerm]
    # @!attribute support_term
    #   <p>Defines a support term that includes the refund policy for the offer.</p>
    #   @return [Types::SupportTerm]
    # @!attribute usage_based_pricing_term
    #   <p>Defines a usage-based pricing term (typically pay-as-you-go), where buyers are charged based on product usage.</p>
    #   @return [Types::UsageBasedPricingTerm]
    # @!attribute validity_term
    #   <p>Defines a validity term that specifies the duration or date range of an agreement.</p>
    #   @return [Types::ValidityTerm]
    # @!attribute variable_payment_term
    #   <p>Defines a variable payment term with a maximum total charge amount.</p>
    #   @return [Types::VariablePaymentTerm]
    # @!attribute net_payment_term
    #   <p>A net payment term.</p>
    #   @return [Types::NetPaymentTerm]
    class OfferTerm < Struct.new(
      :byol_pricing_term,
      :configurable_upfront_pricing_term,
      :fixed_upfront_pricing_term,
      :free_trial_pricing_term,
      :legal_term,
      :payment_schedule_term,
      :recurring_payment_term,
      :renewal_term,
      :support_term,
      :usage_based_pricing_term,
      :validity_term,
      :variable_payment_term,
      :net_payment_term,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ByolPricingTerm < OfferTerm; end
      class ConfigurableUpfrontPricingTerm < OfferTerm; end
      class FixedUpfrontPricingTerm < OfferTerm; end
      class FreeTrialPricingTerm < OfferTerm; end
      class LegalTerm < OfferTerm; end
      class PaymentScheduleTerm < OfferTerm; end
      class RecurringPaymentTerm < OfferTerm; end
      class RenewalTerm < OfferTerm; end
      class SupportTerm < OfferTerm; end
      class UsageBasedPricingTerm < OfferTerm; end
      class ValidityTerm < OfferTerm; end
      class VariablePaymentTerm < OfferTerm; end
      class NetPaymentTerm < OfferTerm; end
      class Unknown < OfferTerm; end
    end

    # <p>A single installment entry in the renewal payment schedule.</p>
    # @!attribute charge_date_offset
    #   <p>The relative offset from the renewal agreement start date when this installment is due, represented in ISO 8601 duration format (for example, P1M or P30D).</p>
    #   @return [String]
    # @!attribute charge_percentage
    #   <p>The percentage of the increased Total Contract Value (TCV) to charge in this installment. All entries in a schedule sum to 100.00.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The optional calendar day of month on which the charge occurs. When absent, the charge day is derived from <code>chargeDateOffset</code>. For months with fewer days than the specified day, the charge occurs on the last day of the month. For example, if <code>dayOfMonth</code> is 31, the charge in April occurs on April 30.</p>
    #   @return [Integer]
    class PaymentScheduleEntry < Struct.new(
      nil,
      :charge_date_offset,
      :charge_percentage,
      :day_of_month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a payment schedule term with installment payments at specified dates.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices in this term.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The payment schedule installments, each with a charge date and amount.</p>
    #   @return [Array<Types::ScheduleItem>]
    class PaymentScheduleTerm < Struct.new(
      nil,
      :id,
      :type,
      :currency_code,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A template for the payment schedule term on the renewal offer.</p>
    # @!attribute schedule
    #   <p>An ordered list of installment entries for the renewal payment schedule.</p>
    #   @return [Array<Types::PaymentScheduleEntry>]
    class PaymentScheduleTermTemplate < Struct.new(
      nil,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A price increase percentage range with minimum, maximum, and default values.</p>
    # @!attribute minimum_value
    #   <p>The minimum percentage by which the price can increase at each renewal cycle.</p>
    #   @return [String]
    # @!attribute maximum_value
    #   <p>The maximum percentage by which the price can increase at each renewal cycle.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The percentage increase applied by default when no other value is finalized before the adjustment deadline. Falls between <code>minimumValue</code> and <code>maximumValue</code>.</p>
    #   @return [String]
    class PercentageRange < Struct.new(
      nil,
      :minimum_value,
      :maximum_value,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pricing adjustment that applies at each renewal cycle, expressed as either a fixed percentage or a percentage range. Exactly one variant is present.</p>
    # @!attribute fixed_percentage
    #   <p>A single fixed percentage applied uniformly at every renewal cycle.</p>
    #   @return [Types::FixedPercentage]
    # @!attribute percentage_range
    #   <p>A percentage band with minimum, maximum, and default values that bound the price increase at each renewal cycle.</p>
    #   @return [Types::PercentageRange]
    class PriceIncrease < Struct.new(
      :fixed_percentage,
      :percentage_range,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FixedPercentage < PriceIncrease; end
      class PercentageRange < PriceIncrease; end
      class Unknown < PriceIncrease; end
    end

    # <p>A pricing model that determines how buyers are charged for a listing, such as usage-based, contract, BYOL, or free.</p>
    # @!attribute pricing_model_type
    #   <p>The machine-readable type of the pricing model.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the pricing model.</p>
    #   @return [String]
    class PricingModel < Struct.new(
      nil,
      :pricing_model_type,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pricing unit that defines the billing dimension for a listing, such as users, hosts, bandwidth, or data.</p>
    # @!attribute pricing_unit_type
    #   <p>The machine-readable type of the pricing unit.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the pricing unit.</p>
    #   @return [String]
    class PricingUnit < Struct.new(
      nil,
      :pricing_unit_type,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a product, including the identifier, name, and manufacturer.</p>
    # @!attribute product_id
    #   <p>The unique identifier of the product.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The human-readable display name of the product.</p>
    #   @return [String]
    # @!attribute manufacturer
    #   <p>The entity who manufactured the product.</p>
    #   @return [Types::SellerInformation]
    class ProductInformation < Struct.new(
      nil,
      :product_id,
      :product_name,
      :manufacturer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a professional services fulfillment option.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    class ProfessionalServicesFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An embedded promotional image for a product.</p>
    # @!attribute title
    #   <p>The title displayed when hovering over the image.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the image file.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the image.</p>
    #   @return [String]
    class PromotionalEmbeddedImage < Struct.new(
      nil,
      :title,
      :url,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An embedded promotional video for a product.</p>
    # @!attribute title
    #   <p>The title displayed when hovering over the video.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the video file.</p>
    #   @return [String]
    # @!attribute preview
    #   <p>The URL of the high-resolution preview image for the video.</p>
    #   @return [String]
    # @!attribute thumbnail
    #   <p>The URL of the thumbnail image for the video.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the video.</p>
    #   @return [String]
    class PromotionalEmbeddedVideo < Struct.new(
      nil,
      :title,
      :url,
      :preview,
      :thumbnail,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Embedded promotional media for a product, such as images or videos. Each element contains exactly one media type.</p>
    # @!attribute embedded_image
    #   <p>An embedded promotional image for a product.</p>
    #   @return [Types::PromotionalEmbeddedImage]
    # @!attribute embedded_video
    #   <p>An embedded promotional video for a product.</p>
    #   @return [Types::PromotionalEmbeddedVideo]
    class PromotionalMedia < Struct.new(
      :embedded_image,
      :embedded_video,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EmbeddedImage < PromotionalMedia; end
      class EmbeddedVideo < PromotionalMedia; end
      class Unknown < PromotionalMedia; end
    end

    # <p>A product, offer, and optional offer set associated with a purchase option.</p>
    # @!attribute product
    #   <p>Information about the product associated with the purchase option.</p>
    #   @return [Types::ProductInformation]
    # @!attribute offer
    #   <p>Information about the offer associated with the purchase option.</p>
    #   @return [Types::OfferInformation]
    # @!attribute offer_set
    #   <p>Information about the offer set, if the purchase option is part of a bundled offer set.</p>
    #   @return [Types::OfferSetInformation]
    class PurchaseOptionAssociatedEntity < Struct.new(
      nil,
      :product,
      :offer,
      :offer_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A badge indicating a special attribute of a purchase option, such as private pricing or future dated.</p>
    # @!attribute display_name
    #   <p>The human-readable name of the badge.</p>
    #   @return [String]
    # @!attribute badge_type
    #   <p>The machine-readable type of the badge.</p>
    #   @return [String]
    class PurchaseOptionBadge < Struct.new(
      nil,
      :display_name,
      :badge_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to narrow purchase option results by product, seller, type, visibility, or availability.</p>
    # @!attribute filter_type
    #   <p>The type of filter to apply, such as <code>PRODUCT_ID</code>, <code>VISIBILITY_SCOPE</code>, or <code>PURCHASE_OPTION_TYPE</code>.</p>
    #   @return [String]
    # @!attribute filter_values
    #   <p>The values to filter by. Supported values depend on <code>filterType</code>:</p> <ul> <li> <p> <code>PRODUCT_ID</code> – One or more product identifiers to filter by.</p> </li> <li> <p> <code>SELLER_OF_RECORD_PROFILE_ID</code> – One or more seller profile identifiers to filter by.</p> </li> <li> <p> <code>PURCHASE_OPTION_TYPE</code> – One or more purchase option types to filter by: <code>OFFER</code> or <code>OFFERSET</code>.</p> </li> <li> <p> <code>VISIBILITY_SCOPE</code> – The visibility scope to filter by: <code>PRIVATE</code>.</p> </li> <li> <p> <code>AVAILABILITY_STATUS</code> – One or more availability statuses to filter by: <code>AVAILABLE</code> or <code>EXPIRED</code>.</p> </li> </ul> <p>To retrieve private offers and offer sets visible to you, use <code>VISIBILITY_SCOPE</code> with <code>PRIVATE</code>. OR logic combines multiple values within the same filter.</p>
    #   @return [Array<String>]
    class PurchaseOptionFilter < Struct.new(
      nil,
      :filter_type,
      :filter_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a purchase option (offer or offer set) available to the buyer, including the seller, badges, and associated products.</p>
    # @!attribute purchase_option_id
    #   <p>The unique identifier of the purchase option.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The name of the catalog that the purchase option belongs to.</p>
    #   @return [String]
    # @!attribute purchase_option_type
    #   <p>The type of purchase option. Values are <code>OFFER</code> for a single-product offer or <code>OFFERSET</code> for a bundled offer set.</p>
    #   @return [String]
    # @!attribute purchase_option_name
    #   <p>The display name of the purchase option.</p>
    #   @return [String]
    # @!attribute available_from_time
    #   <p>The date and time when the purchase option became available to the buyer.</p>
    #   @return [Time]
    # @!attribute expiration_time
    #   <p>The date and time when the purchase option expires and is no longer available for procurement.</p>
    #   @return [Time]
    # @!attribute seller_of_record
    #   <p>The entity responsible for selling the product under this purchase option.</p>
    #   @return [Types::SellerInformation]
    # @!attribute badges
    #   <p>Badges indicating special attributes of the purchase option, such as private pricing or future dated.</p>
    #   @return [Array<Types::PurchaseOptionBadge>]
    # @!attribute associated_entities
    #   <p>The products, offers, and offer sets associated with this purchase option.</p>
    #   @return [Array<Types::PurchaseOptionAssociatedEntity>]
    class PurchaseOptionSummary < Struct.new(
      nil,
      :purchase_option_id,
      :catalog,
      :purchase_option_type,
      :purchase_option_name,
      :available_from_time,
      :expiration_time,
      :seller_of_record,
      :badges,
      :associated_entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A per-unit rate within a rate card, defining the price for a specific dimension.</p>
    # @!attribute dimension_key
    #   <p>The machine-readable key identifying the dimension being priced.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the dimension.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the dimension being priced.</p>
    #   @return [String]
    # @!attribute dimension_labels
    #   <p>Labels used to categorize this dimension, such as by region.</p>
    #   @return [Array<Types::DimensionLabel>]
    # @!attribute unit
    #   <p>The unit of measurement for the dimension.</p>
    #   @return [String]
    # @!attribute price
    #   <p>The price per unit for the dimension.</p>
    #   @return [String]
    class RateCardItem < Struct.new(
      nil,
      :dimension_key,
      :display_name,
      :description,
      :dimension_labels,
      :unit,
      :price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a recurring payment term with fixed charges at regular billing intervals.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices in this term.</p>
    #   @return [String]
    # @!attribute billing_period
    #   <p>The billing period frequency, such as <code>Monthly</code>.</p>
    #   @return [String]
    # @!attribute price
    #   <p>The amount charged each billing period.</p>
    #   @return [String]
    class RecurringPaymentTerm < Struct.new(
      nil,
      :id,
      :type,
      :currency_code,
      :billing_period,
      :price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a renewal term that enables automatic agreement renewal.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute max_renewals
    #   <p>The maximum number of renewals allowed on this offer. Absent means unlimited renewals.</p>
    #   @return [Integer]
    # @!attribute lockout_period
    #   <p>The duration before the agreement end date when the lockout window begins, in ISO 8601 format (for example, P30D). Absent means no lockout.</p>
    #   @return [String]
    # @!attribute adjustment_deadline
    #   <p>The duration before the agreement end date by which the renewal price is finalized, represented in ISO 8601 format (for example, P30D). Only applicable with <code>PercentageRange</code>.</p>
    #   @return [String]
    # @!attribute price_increase
    #   <p>The price increase applied at each renewal cycle. Absent means identical pricing on renewal.</p>
    #   @return [Types::PriceIncrease]
    # @!attribute term_templates
    #   <p>Structural templates defining how specific terms are reshaped on each renewal cycle. Absent for upfront-only offers.</p>
    #   @return [Array<Types::TermTemplate>]
    class RenewalTerm < Struct.new(
      nil,
      :id,
      :type,
      :max_renewals,
      :lockout_period,
      :adjustment_deadline,
      :price_increase,
      :term_templates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that provides supplementary information about a product, such as documentation links, support contacts, or usage instructions.</p>
    # @!attribute resource_type
    #   <p>The category of the resource, such as manufacturer support or usage instructions.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The format of the resource content, such as a URL, email address, or text.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The resource content. Interpretation depends on the content type.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>An optional human-readable label for the resource.</p>
    #   @return [String]
    class Resource < Struct.new(
      nil,
      :resource_type,
      :content_type,
      :value,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A review summary from a specific source, including the average rating and total review count.</p>
    # @!attribute source_name
    #   <p>The name of the review source, such as AWS Marketplace.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The machine-readable identifier of the review source.</p>
    #   @return [String]
    # @!attribute source_url
    #   <p>The URL where the reviews can be accessed at the source.</p>
    #   @return [String]
    # @!attribute average_rating
    #   <p>The average rating across all reviews from this source.</p>
    #   @return [String]
    # @!attribute total_reviews
    #   <p>The total number of reviews available from this source.</p>
    #   @return [Integer]
    class ReviewSourceSummary < Struct.new(
      nil,
      :source_name,
      :source_id,
      :source_url,
      :average_rating,
      :total_reviews,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of customer reviews available for a listing, aggregated by review source.</p>
    # @!attribute review_source_summaries
    #   <p>Review summaries from different sources, such as AWS Marketplace.</p>
    #   @return [Array<Types::ReviewSourceSummary>]
    class ReviewSummary < Struct.new(
      nil,
      :review_source_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Software as a Service (SaaS) fulfillment option.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_url
    #   <p>The URL of the seller's software registration landing page.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to access and use this SaaS product.</p>
    #   @return [String]
    # @!attribute available_from_time
    #   <p>The date and time when the SaaS product became available for fulfillment.</p>
    #   @return [Time]
    # @!attribute launch_url
    #   <p>The URL that a buyer uses to launch the seller's SaaS product. This URL is distinct from <code>fulfillmentUrl</code>, which is the seller's software registration landing page.</p>
    #   @return [String]
    # @!attribute quick_launch
    #   <p>Specifies whether the SaaS product supports quick-launch deployment.</p>
    #   @return [String]
    class SaasFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_url,
      :usage_instructions,
      :available_from_time,
      :launch_url,
      :quick_launch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon SageMaker algorithm fulfillment option, including version details and recommended instance types.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to use this SageMaker algorithm.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>Recommended instance types for training and inference with this algorithm.</p>
    #   @return [Types::SageMakerAlgorithmRecommendation]
    class SageMakerAlgorithmFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :release_notes,
      :usage_instructions,
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Recommended instance types for training and inference with a SageMaker algorithm.</p>
    # @!attribute recommended_batch_transform_instance_type
    #   <p>The recommended instance type for batch inference.</p>
    #   @return [String]
    # @!attribute recommended_realtime_inference_instance_type
    #   <p>The recommended instance type for real-time inference.</p>
    #   @return [String]
    # @!attribute recommended_training_instance_type
    #   <p>The recommended instance type for training.</p>
    #   @return [String]
    class SageMakerAlgorithmRecommendation < Struct.new(
      nil,
      :recommended_batch_transform_instance_type,
      :recommended_realtime_inference_instance_type,
      :recommended_training_instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon SageMaker model fulfillment option, including version details and recommended instance types.</p>
    # @!attribute fulfillment_option_id
    #   <p>The unique identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_type
    #   <p>The category of the fulfillment option.</p>
    #   @return [String]
    # @!attribute fulfillment_option_display_name
    #   <p>A human-readable name for the fulfillment option type.</p>
    #   @return [String]
    # @!attribute fulfillment_option_version
    #   <p>The version identifier of the fulfillment option.</p>
    #   @return [String]
    # @!attribute release_notes
    #   <p>Release notes describing changes in this version of the fulfillment option.</p>
    #   @return [String]
    # @!attribute usage_instructions
    #   <p>Instructions on how to use this SageMaker model.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>Recommended instance types for inference with this model.</p>
    #   @return [Types::SageMakerModelRecommendation]
    # @!attribute supported_content_types
    #   <p>The MIME types that this model accepts as input.</p>
    #   @return [Array<String>]
    # @!attribute supported_response_mime_types
    #   <p>The MIME types that this model returns as output.</p>
    #   @return [Array<String>]
    class SageMakerModelFulfillmentOption < Struct.new(
      nil,
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :release_notes,
      :usage_instructions,
      :recommendation,
      :supported_content_types,
      :supported_response_mime_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Recommended instance types for inference with a SageMaker model.</p>
    # @!attribute recommended_batch_transform_instance_type
    #   <p>The recommended instance type for batch inference.</p>
    #   @return [String]
    # @!attribute recommended_realtime_inference_instance_type
    #   <p>The recommended instance type for real-time inference.</p>
    #   @return [String]
    class SageMakerModelRecommendation < Struct.new(
      nil,
      :recommended_batch_transform_instance_type,
      :recommended_realtime_inference_instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A payment installment within a payment schedule term.</p>
    # @!attribute charge_date
    #   <p>The date when the payment is due.</p>
    #   @return [Time]
    # @!attribute charge_amount
    #   <p>The amount to be charged on the charge date.</p>
    #   @return [String]
    class ScheduleItem < Struct.new(
      nil,
      :charge_date,
      :charge_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>The search query text to filter listings before retrieving facets.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to apply before retrieving facets. Multiple filters are combined with AND logic. Multiple values within the same filter are combined with OR logic.</p>
    #   @return [Array<Types::SearchFilter>]
    # @!attribute facet_types
    #   <p>A list of specific facet types to retrieve. If empty or null, all available facets are returned.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class SearchFacetsInput < Struct.new(
      nil,
      :locale,
      :search_text,
      :filters,
      :facet_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute total_results
    #   <p>The total number of listings matching the search criteria.</p>
    #   @return [Integer]
    # @!attribute listing_facets
    #   <p>A map of facet types to their corresponding facet values. Each facet value includes a display name, internal value, and count of matching listings.</p>
    #   @return [Hash<String, Array<Types::ListingFacet>>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class SearchFacetsOutput < Struct.new(
      nil,
      :total_results,
      :listing_facets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to narrow search results by attribute, such as category, pricing model, or fulfillment type.</p>
    # @!attribute filter_type
    #   <p>The type of filter to apply.</p>
    #   @return [String]
    # @!attribute filter_values
    #   <p>The values to filter by. Term filters accept multiple values (OR logic). Range filters (MIN/MAX_AVERAGE_CUSTOMER_RATING) accept a single value between 0.0 and 5.0.</p>
    #   @return [Array<String>]
    class SearchFilter < Struct.new(
      nil,
      :filter_type,
      :filter_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locale
    #   <p>A BCP 47 language tag or comma-separated priority list specifying the preferred locale for response content. See <code>Locale</code> for supported values, constraints, fallback behavior, and the default locale. If omitted, the service returns content in the default locale.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>The search query text to find relevant listings.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to narrow search results. Multiple filters are combined with AND logic. Multiple values within the same filter are combined with OR logic.</p>
    #   @return [Array<Types::SearchFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to get more results.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>The field to sort results by. Valid values are <code>RELEVANCE</code> and <code>AVERAGE_CUSTOMER_RATING</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort direction. Valid values are <code>DESCENDING</code> and <code>ASCENDING</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class SearchListingsInput < Struct.new(
      nil,
      :locale,
      :search_text,
      :filters,
      :max_results,
      :sort_by,
      :sort_order,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute total_results
    #   <p>The total number of listings matching the search criteria.</p>
    #   @return [Integer]
    # @!attribute listing_summaries
    #   <p>The listing summaries matching the search criteria. Each summary includes the listing name, description, badges, categories, pricing models, reviews, and associated products.</p>
    #   @return [Array<Types::ListingSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class SearchListingsOutput < Struct.new(
      nil,
      :total_results,
      :listing_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A selector used to choose a specific configuration within a configurable upfront rate card.</p>
    # @!attribute type
    #   <p>The category of the selector, such as <code>Duration</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the selector.</p>
    #   @return [String]
    class Selector < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An engagement option available to potential buyers of a product, such as requesting a private offer or a demo.</p>
    # @!attribute engagement_type
    #   <p>The type of engagement, such as <code>REQUEST_FOR_PRIVATE_OFFER</code> or <code>REQUEST_FOR_DEMO</code>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The format of the engagement value, such as a URL.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The engagement value, such as a URL to the engagement form.</p>
    #   @return [String]
    class SellerEngagement < Struct.new(
      nil,
      :engagement_type,
      :content_type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a seller, including the profile identifier and display name.</p>
    # @!attribute seller_profile_id
    #   <p>The unique identifier of the seller profile.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the seller.</p>
    #   @return [String]
    class SellerInformation < Struct.new(
      nil,
      :seller_profile_id,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a support term that includes the refund policy for the offer.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute refund_policy
    #   <p>The refund policy description for the offer.</p>
    #   @return [String]
    class SupportTerm < Struct.new(
      nil,
      :id,
      :type,
      :refund_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structural template defining how a specific term type is reshaped on each renewal cycle. Exactly one variant is present.</p>
    # @!attribute payment_schedule_term_template
    #   <p>The installment schedule used to structure payments on the renewal offer.</p>
    #   @return [Types::PaymentScheduleTermTemplate]
    class TermTemplate < Struct.new(
      :payment_schedule_term_template,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PaymentScheduleTermTemplate < TermTemplate; end
      class Unknown < TermTemplate; end
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

    # <p>Defines a usage-based pricing term (typically pay-as-you-go), where buyers are charged based on product usage.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices in this term.</p>
    #   @return [String]
    # @!attribute rate_cards
    #   <p>The rate cards containing per-unit rates for usage-based pricing.</p>
    #   @return [Array<Types::UsageBasedRateCardItem>]
    class UsageBasedPricingTerm < Struct.new(
      nil,
      :id,
      :type,
      :currency_code,
      :rate_cards,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rate card within a usage-based pricing term, containing per-unit rates.</p>
    # @!attribute rate_card
    #   <p>The per-unit rates for this usage-based rate card.</p>
    #   @return [Array<Types::RateCardItem>]
    class UsageBasedRateCardItem < Struct.new(
      nil,
      :rate_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A use case describing a scenario where the product can be applied.</p>
    # @!attribute description
    #   <p>A description of the use case.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the use case.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The machine-readable identifier of the use case.</p>
    #   @return [String]
    class UseCase < Struct.new(
      nil,
      :description,
      :display_name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entry in the list of use cases for a listing.</p>
    # @!attribute use_case
    #   <p>The use case details.</p>
    #   @return [Types::UseCase]
    class UseCaseEntry < Struct.new(
      nil,
      :use_case,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that the input fails to satisfy the constraints specified by the service.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a validity term that specifies the duration or date range of an agreement.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute agreement_duration
    #   <p>The duration of the agreement, in ISO 8601 format.</p>
    #   @return [String]
    # @!attribute agreement_end_date
    #   <p>The date when the agreement ends.</p>
    #   @return [Time]
    # @!attribute agreement_start_date
    #   <p>The date when the agreement starts.</p>
    #   @return [Time]
    class ValidityTerm < Struct.new(
      nil,
      :id,
      :type,
      :agreement_duration,
      :agreement_end_date,
      :agreement_start_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a variable payment term with a maximum total charge amount.</p>
    # @!attribute id
    #   <p>The unique identifier of the term.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The category of the term.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Defines the currency for the prices in this term.</p>
    #   @return [String]
    # @!attribute max_total_charge_amount
    #   <p>The maximum total amount that can be charged under this term.</p>
    #   @return [String]
    class VariablePaymentTerm < Struct.new(
      nil,
      :id,
      :type,
      :currency_code,
      :max_total_charge_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
