# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceDiscovery
  module Types

    # You don't have sufficient access to perform this action. Verify that
    # you have the required permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains supported Amazon EBS volume information for an AMI
    # fulfillment option.
    #
    # @!attribute [rw] volume_types
    #   The supported Amazon EBS volume types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iops
    #   The total number of provisioned input/output operations per second
    #   (IOPS) that the volume supports.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AmazonMachineImageEbsVolume AWS API Documentation
    #
    class AmazonMachineImageEbsVolume < Struct.new(
      :volume_types,
      :iops)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Machine Image (AMI) fulfillment option, including
    # version details, supported operating systems, and recommended instance
    # types.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_name
    #   The display name of the fulfillment option version.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] operating_systems
    #   The operating systems supported by this AMI.
    #   @return [Array<Types::AmazonMachineImageOperatingSystem>]
    #
    # @!attribute [rw] recommendation
    #   The recommended instance types for running this AMI.
    #   @return [Types::AmazonMachineImageRecommendation]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the AMI became available for fulfillment.
    #   @return [Time]
    #
    # @!attribute [rw] access_url_template
    #   The URL pattern for accessing the product when an instance is
    #   running.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the AMI, such as `x86_64`.
    #   @return [String]
    #
    # @!attribute [rw] ami_alias
    #   The alias of the AMI associated with this fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] ebs_volume
    #   The supported Amazon Elastic Block Store (Amazon EBS) volume
    #   configuration for the AMI.
    #   @return [Types::AmazonMachineImageEbsVolume]
    #
    # @!attribute [rw] short_description
    #   A short description of the fulfillment option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AmazonMachineImageFulfillmentOption AWS API Documentation
    #
    class AmazonMachineImageFulfillmentOption < Struct.new(
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
      :short_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an operating system that an AMI fulfillment option supports.
    #
    # @!attribute [rw] operating_system_family_name
    #   The operating system family, such as Linux or Windows.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_name
    #   The specific operating system name, such as Amazon Linux 2 or
    #   Windows Server 2022.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_version
    #   The version of the operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AmazonMachineImageOperatingSystem AWS API Documentation
    #
    class AmazonMachineImageOperatingSystem < Struct.new(
      :operating_system_family_name,
      :operating_system_name,
      :operating_system_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recommended instance types for running an AMI fulfillment option.
    #
    # @!attribute [rw] instance_type
    #   The recommended Amazon Elastic Compute Cloud (Amazon EC2) instance
    #   type for this AMI.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The recommended security group configurations for this AMI.
    #   @return [Array<Types::AmazonMachineImageSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AmazonMachineImageRecommendation AWS API Documentation
    #
    class AmazonMachineImageRecommendation < Struct.new(
      :instance_type,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a recommended security group configuration for an AMI
    # fulfillment option.
    #
    # @!attribute [rw] protocol
    #   The IP protocol name, such as `tcp`.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The end of the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] cidr_ip_addresses
    #   The IP address ranges in Classless Inter-Domain Routing (CIDR)
    #   format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AmazonMachineImageSecurityGroup AWS API Documentation
    #
    class AmazonMachineImageSecurityGroup < Struct.new(
      :protocol,
      :from_port,
      :to_port,
      :cidr_ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an API-based fulfillment option, where you access the
    # product through an API integration.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to integrate with and use this API.
    #   @return [String]
    #
    # @!attribute [rw] aws_supported_services
    #   The AWS services supported by this API integration.
    #   @return [Array<Types::AwsSupportedService>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ApiFulfillmentOption AWS API Documentation
    #
    class ApiFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :usage_instructions,
      :aws_supported_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an AWS service supported by a fulfillment option.
    #
    # @!attribute [rw] supported_service_type
    #   The machine-readable identifier of the supported service.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the supported service.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the supported service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AwsSupportedService AWS API Documentation
    #
    class AwsSupportedService < Struct.new(
      :supported_service_type,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a Bring Your Own License (BYOL) pricing term. With this
    # term, you use your existing license for the product.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ByolPricingTerm AWS API Documentation
    #
    class ByolPricingTerm < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the case studies associated with a listing.
    #
    # @!attribute [rw] case_study_count
    #   The total number of case studies associated with the listing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/CaseStudiesSummary AWS API Documentation
    #
    class CaseStudiesSummary < Struct.new(
      :case_study_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A case study associated with a listing.
    #
    # @!attribute [rw] case_study_id
    #   The unique identifier of the case study.
    #   @return [String]
    #
    # @!attribute [rw] case_study_name
    #   The case study name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A brief value proposition for the case study.
    #   @return [String]
    #
    # @!attribute [rw] engagement_dates
    #   The key implementation dates for the engagement.
    #   @return [Types::EngagementDates]
    #
    # @!attribute [rw] challenge
    #   The business challenge that the engagement addresses.
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   How the partner resolved the challenge.
    #   @return [String]
    #
    # @!attribute [rw] implementation_approach
    #   The implementation approach used for the engagement.
    #   @return [String]
    #
    # @!attribute [rw] outcome
    #   The results and outcomes achieved by the engagement.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   Resources related to the case study.
    #   @return [Array<Types::CaseStudyResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/CaseStudy AWS API Documentation
    #
    class CaseStudy < Struct.new(
      :case_study_id,
      :case_study_name,
      :short_description,
      :engagement_dates,
      :challenge,
      :resolution,
      :implementation_approach,
      :outcome,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that a case study cites, such as supporting documentation
    # or a web page.
    #
    # @!attribute [rw] content_type
    #   The format of the resource value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The resource value, such as a URL.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The resource name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of case study resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/CaseStudyResource AWS API Documentation
    #
    class CaseStudyResource < Struct.new(
      :content_type,
      :value,
      :display_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A category that classifies a listing or product into a logical group.
    #
    # @!attribute [rw] category_id
    #   The machine-readable identifier of the category.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/Category AWS API Documentation
    #
    class Category < Struct.new(
      :category_id,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an AWS CloudFormation template fulfillment option for
    # infrastructure deployment.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_name
    #   The display name of the fulfillment option version.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this CloudFormation template.
    #   @return [String]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the CloudFormation fulfillment option became
    #   available for fulfillment.
    #   @return [Time]
    #
    # @!attribute [rw] architecture_diagram_url
    #   The URL of the architecture diagram for the CloudFormation template.
    #   @return [String]
    #
    # @!attribute [rw] deployment_template_url
    #   The URL of the CloudFormation template.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A short description of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A detailed description of the fulfillment option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/CloudFormationFulfillmentOption AWS API Documentation
    #
    class CloudFormationFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :release_notes,
      :usage_instructions,
      :available_from_time,
      :architecture_diagram_url,
      :deployment_template_url,
      :short_description,
      :long_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a configurable upfront pricing term with selectable rate
    # cards. You choose from predefined pricing configurations.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices in this term.
    #   @return [String]
    #
    # @!attribute [rw] rate_cards
    #   The rate cards available for selection, each with a selector,
    #   constraints, and per-unit rates.
    #   @return [Array<Types::ConfigurableUpfrontRateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ConfigurableUpfrontPricingTerm AWS API Documentation
    #
    class ConfigurableUpfrontPricingTerm < Struct.new(
      :id,
      :type,
      :currency_code,
      :rate_cards)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rate card item within a configurable upfront pricing term, including
    # a selector for choosing the configuration and per-unit rates.
    #
    # @!attribute [rw] selector
    #   The selector criteria for this rate card, such as duration.
    #   @return [Types::Selector]
    #
    # @!attribute [rw] constraints
    #   Constraints on how you can configure this rate card, such as whether
    #   you can select multiple dimensions.
    #   @return [Types::Constraints]
    #
    # @!attribute [rw] rate_card
    #   The per-unit rates for this configuration.
    #   @return [Array<Types::RateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ConfigurableUpfrontRateCardItem AWS API Documentation
    #
    class ConfigurableUpfrontRateCardItem < Struct.new(
      :selector,
      :constraints,
      :rate_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # Constraints that control how you can configure a rate card.
    #
    # @!attribute [rw] multiple_dimension_selection
    #   Specifies whether you can select multiple dimensions. This field has
    #   one of the following values:
    #
    #   Allowed
    #
    #   : You can select more than one dimension.
    #
    #   Disallowed
    #
    #   : You can select only one dimension.
    #   @return [String]
    #
    # @!attribute [rw] quantity_configuration
    #   Specifies whether you can configure quantities. This field has one
    #   of the following values:
    #
    #   Allowed
    #
    #   : You can set the quantity of each dimension.
    #
    #   Disallowed
    #
    #   : You cannot change the quantity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/Constraints AWS API Documentation
    #
    class Constraints < Struct.new(
      :multiple_dimension_selection,
      :quantity_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a container image fulfillment option for container-based
    # deployment.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_name
    #   The display name of the fulfillment option version.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] operating_systems
    #   The operating systems supported by this container image.
    #   @return [Array<Types::ContainerOperatingSystem>]
    #
    # @!attribute [rw] aws_supported_services
    #   The AWS services supported by this container deployment.
    #   @return [Array<Types::AwsSupportedService>]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this container image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ContainerFulfillmentOption AWS API Documentation
    #
    class ContainerFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :aws_supported_services,
      :release_notes,
      :usage_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an operating system that a container fulfillment option
    # supports.
    #
    # @!attribute [rw] operating_system_family_name
    #   The operating system family, such as Linux.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_name
    #   The specific operating system name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ContainerOperatingSystem AWS API Documentation
    #
    class ContainerOperatingSystem < Struct.new(
      :operating_system_family_name,
      :operating_system_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data artifact within a Data Exchange fulfillment option.
    #
    # @!attribute [rw] description
    #   A description of the data artifact.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the data artifact.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the data artifact resource.
    #   @return [String]
    #
    # @!attribute [rw] data_classification
    #   The classification of sensitive data contained in the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/DataArtifact AWS API Documentation
    #
    class DataArtifact < Struct.new(
      :description,
      :resource_arn,
      :resource_type,
      :data_classification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an AWS Data Exchange fulfillment option for data set
    # delivery.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] data_artifacts
    #   The data artifacts included in this Data Exchange fulfillment
    #   option.
    #   @return [Array<Types::DataArtifact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/DataExchangeFulfillmentOption AWS API Documentation
    #
    class DataExchangeFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :data_artifacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A label that groups or categorizes pricing dimensions, such as by
    # region or SageMaker option.
    #
    # @!attribute [rw] label_type
    #   The type of the dimension label. This field has one of the following
    #   values:
    #
    #   Region
    #
    #   : The label groups dimensions by AWS Region.
    #
    #   SagemakerOption
    #
    #   : The label groups dimensions by Amazon SageMaker option.
    #   @return [String]
    #
    # @!attribute [rw] label_value
    #   The value used to group dimensions together.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable display name of the label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/DimensionLabel AWS API Documentation
    #
    class DimensionLabel < Struct.new(
      :label_type,
      :label_value,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A legal document associated with a legal term, such as an End User
    # License Agreement (EULA) or a data subscription agreement.
    #
    # @!attribute [rw] type
    #   The category of the legal document, such as `StandardEula` or
    #   `CustomEula`.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL where the legal document can be accessed.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the standard contract, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/DocumentItem AWS API Documentation
    #
    class DocumentItem < Struct.new(
      :type,
      :url,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Elastic Compute Cloud (Amazon EC2) Image Builder
    # component fulfillment option.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_name
    #   The display name of the fulfillment option version.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] operating_systems
    #   The operating systems supported by this EC2 Image Builder component.
    #   @return [Array<Types::ContainerOperatingSystem>]
    #
    # @!attribute [rw] aws_supported_services
    #   The AWS services that this EC2 Image Builder component supports.
    #   @return [Array<Types::AwsSupportedService>]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this EC2 Image Builder
    #   component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/Ec2ImageBuilderComponentFulfillmentOption AWS API Documentation
    #
    class Ec2ImageBuilderComponentFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :aws_supported_services,
      :release_notes,
      :usage_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Elastic Kubernetes Service (Amazon EKS) add-on
    # fulfillment option.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_name
    #   The display name of the fulfillment option version.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] operating_systems
    #   The operating systems supported by this EKS add-on.
    #   @return [Array<Types::EksAddOnOperatingSystem>]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this EKS add-on.
    #   @return [String]
    #
    # @!attribute [rw] aws_supported_services
    #   The AWS services supported by this EKS add-on.
    #   @return [Array<Types::AwsSupportedService>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/EksAddOnFulfillmentOption AWS API Documentation
    #
    class EksAddOnFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :release_notes,
      :usage_instructions,
      :aws_supported_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an operating system that an Amazon EKS add-on fulfillment
    # option supports.
    #
    # @!attribute [rw] operating_system_family_name
    #   The operating system family, such as Linux.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_name
    #   The specific operating system name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/EksAddOnOperatingSystem AWS API Documentation
    #
    class EksAddOnOperatingSystem < Struct.new(
      :operating_system_family_name,
      :operating_system_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Key implementation dates for a case study.
    #
    # @!attribute [rw] start_date
    #   The implementation start date.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The implementation completion date. The service omits this field for
    #   an engagement in progress.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/EngagementDates AWS API Documentation
    #
    class EngagementDates < Struct.new(
      :start_date,
      :completion_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single fixed price increase percentage applied at each renewal
    # cycle.
    #
    # @!attribute [rw] percentage_value
    #   The percentage value applied at each renewal cycle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/FixedPercentage AWS API Documentation
    #
    class FixedPercentage < Struct.new(
      :percentage_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a fixed upfront pricing term with a pre-paid amount and
    # granted entitlements.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices in this term.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the fixed pricing term, in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The price charged upfront for this term.
    #   @return [String]
    #
    # @!attribute [rw] grants
    #   The entitlements that you receive as part of this term.
    #   @return [Array<Types::GrantItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/FixedUpfrontPricingTerm AWS API Documentation
    #
    class FixedUpfrontPricingTerm < Struct.new(
      :id,
      :type,
      :currency_code,
      :duration,
      :price,
      :grants)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a free trial pricing term. With this term, you can try the
    # product before you purchase it.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the free trial period.
    #   @return [String]
    #
    # @!attribute [rw] grants
    #   The entitlements that you receive during the free trial.
    #   @return [Array<Types::GrantItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/FreeTrialPricingTerm AWS API Documentation
    #
    class FreeTrialPricingTerm < Struct.new(
      :id,
      :type,
      :duration,
      :grants)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a fulfillment option for a product. Each element contains
    # exactly one fulfillment option type.
    #
    # @note FulfillmentOption is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FulfillmentOption corresponding to the set member.
    #
    # @!attribute [rw] amazon_machine_image_fulfillment_option
    #   An Amazon Machine Image (AMI) fulfillment option for Amazon Elastic
    #   Compute Cloud (Amazon EC2) deployment.
    #   @return [Types::AmazonMachineImageFulfillmentOption]
    #
    # @!attribute [rw] api_fulfillment_option
    #   An API-based fulfillment option for programmatic integration.
    #   @return [Types::ApiFulfillmentOption]
    #
    # @!attribute [rw] cloud_formation_fulfillment_option
    #   An AWS CloudFormation template fulfillment option for infrastructure
    #   deployment.
    #   @return [Types::CloudFormationFulfillmentOption]
    #
    # @!attribute [rw] container_fulfillment_option
    #   A container image fulfillment option for container-based deployment.
    #   @return [Types::ContainerFulfillmentOption]
    #
    # @!attribute [rw] helm_fulfillment_option
    #   A Helm chart fulfillment option for Kubernetes deployment.
    #   @return [Types::HelmFulfillmentOption]
    #
    # @!attribute [rw] eks_add_on_fulfillment_option
    #   An Amazon EKS add-on fulfillment option.
    #   @return [Types::EksAddOnFulfillmentOption]
    #
    # @!attribute [rw] ec2_image_builder_component_fulfillment_option
    #   An Amazon Elastic Compute Cloud (Amazon EC2) Image Builder component
    #   fulfillment option.
    #   @return [Types::Ec2ImageBuilderComponentFulfillmentOption]
    #
    # @!attribute [rw] data_exchange_fulfillment_option
    #   An AWS Data Exchange fulfillment option for data set delivery.
    #   @return [Types::DataExchangeFulfillmentOption]
    #
    # @!attribute [rw] professional_services_fulfillment_option
    #   A professional services fulfillment option.
    #   @return [Types::ProfessionalServicesFulfillmentOption]
    #
    # @!attribute [rw] saas_fulfillment_option
    #   A Software as a Service (SaaS) fulfillment option.
    #   @return [Types::SaasFulfillmentOption]
    #
    # @!attribute [rw] sage_maker_algorithm_fulfillment_option
    #   An Amazon SageMaker algorithm fulfillment option.
    #   @return [Types::SageMakerAlgorithmFulfillmentOption]
    #
    # @!attribute [rw] sage_maker_model_fulfillment_option
    #   An Amazon SageMaker model fulfillment option.
    #   @return [Types::SageMakerModelFulfillmentOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/FulfillmentOption AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # A summary of a fulfillment option available for deploying or accessing
    # a listing or product.
    #
    # @!attribute [rw] fulfillment_option_type
    #   The machine-readable type of the fulfillment option, such as `SAAS`
    #   or `AMAZON_MACHINE_IMAGE`.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the fulfillment option type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/FulfillmentOptionSummary AWS API Documentation
    #
    class FulfillmentOptionSummary < Struct.new(
      :fulfillment_option_type,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The unique identifier of the listing to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetListingInput AWS API Documentation
    #
    class GetListingInput < Struct.new(
      :locale,
      :listing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The locale of the returned content. This value indicates whether the
    #   response contains content in the requested locale or fell back to
    #   the default locale. See `Locale` for details.
    #   @return [String]
    #
    # @!attribute [rw] associated_entities
    #   The products and offers associated with this listing. Each entity
    #   contains product and offer information.
    #   @return [Array<Types::ListingAssociatedEntity>]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the listing, such as free
    #   tier eligibility, free trial availability, or Quick Launch support.
    #   @return [Array<Types::ListingBadge>]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the listing belongs to.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories that classify this listing into logical groups.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] fulfillment_option_summaries
    #   A summary of fulfillment options available for deploying or
    #   accessing the listing, such as Amazon Machine Image (AMI), Software
    #   as a Service (SaaS), or Container.
    #   @return [Array<Types::FulfillmentOptionSummary>]
    #
    # @!attribute [rw] highlights
    #   A list of key features that the listing offers to customers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integration_guide
    #   Optional guidance explaining how to use data in this listing.
    #   Primarily defines how to integrate with a multi-product listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The unique identifier of the listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_name
    #   The human-readable display name of the listing.
    #   @return [String]
    #
    # @!attribute [rw] logo_thumbnail_url
    #   The URL of the logo thumbnail image for the listing.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A detailed description of what the listing offers, in paragraph
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] pricing_models
    #   The pricing models for offers associated with this listing, such as
    #   usage-based, contract, Bring Your Own License (BYOL), or free.
    #   @return [Array<Types::PricingModel>]
    #
    # @!attribute [rw] pricing_units
    #   The pricing units that define the billing dimensions for offers
    #   associated with this listing, such as users, hosts, or data.
    #   @return [Array<Types::PricingUnit>]
    #
    # @!attribute [rw] promotional_media
    #   Embedded promotional media provided by the creator of the product,
    #   such as images and videos.
    #   @return [Array<Types::PromotionalMedia>]
    #
    # @!attribute [rw] publisher
    #   The entity who created and published the listing.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] resources
    #   Resources that provide further information about using the product
    #   or requesting support, such as documentation links, support
    #   contacts, and usage instructions.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] review_summary
    #   A summary of customer reviews available for the listing, including
    #   average rating and total review count by source.
    #   @return [Types::ReviewSummary]
    #
    # @!attribute [rw] seller_engagements
    #   The engagement options available to you, such as buying now,
    #   requesting a private offer, or requesting a demo.
    #   @return [Array<Types::SellerEngagement>]
    #
    # @!attribute [rw] short_description
    #   A 1–3 sentence summary describing the key aspects of the listing.
    #   @return [String]
    #
    # @!attribute [rw] use_cases
    #   Use cases associated with the listing, describing scenarios where
    #   you can apply the product.
    #   @return [Array<Types::UseCaseEntry>]
    #
    # @!attribute [rw] purchase_indicators
    #   Indicators describing purchase characteristics of this listing, such
    #   as whether you can subscribe to it or use it without a subscription.
    #   The list is empty when no special purchase conditions apply.
    #   @return [Array<Types::PurchaseIndicator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetListingOutput AWS API Documentation
    #
    class GetListingOutput < Struct.new(
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
      :purchase_indicators)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] offer_id
    #   The unique identifier of the offer to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferInput AWS API Documentation
    #
    class GetOfferInput < Struct.new(
      :locale,
      :offer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The locale of the returned content. This value indicates whether the
    #   response contains content in the requested locale or fell back to
    #   the default locale. See `Locale` for details.
    #   @return [String]
    #
    # @!attribute [rw] offer_id
    #   The unique identifier of the offer.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the offer belongs to.
    #   @return [String]
    #
    # @!attribute [rw] offer_name
    #   The display name of the offer. The seller provides this free-form
    #   text.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The date and time until which you can procure the offer. This value
    #   is null for offers that never expire.
    #   @return [Time]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the offer became available to you.
    #   @return [Time]
    #
    # @!attribute [rw] seller_of_record
    #   The entity responsible for selling the product under this offer.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] associated_entities
    #   The products and offer sets associated with this offer.
    #   @return [Array<Types::OfferAssociatedEntity>]
    #
    # @!attribute [rw] agreement_proposal_id
    #   An encoded string that you pass when you accept the terms and create
    #   an agreement.
    #   @return [String]
    #
    # @!attribute [rw] replacement_agreement_id
    #   The identifier of the existing agreement that this offer would
    #   replace.
    #   @return [String]
    #
    # @!attribute [rw] pricing_model
    #   The pricing model that determines how you are charged, such as
    #   usage-based, contract, Bring Your Own License (BYOL), or free.
    #   @return [Types::PricingModel]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the offer, such as private
    #   pricing, future-dated, or replacement offer.
    #   @return [Array<Types::PurchaseOptionBadge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferOutput AWS API Documentation
    #
    class GetOfferOutput < Struct.new(
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
      :badges)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] offer_set_id
    #   The unique identifier of the offer set to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferSetInput AWS API Documentation
    #
    class GetOfferSetInput < Struct.new(
      :locale,
      :offer_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The locale of the returned content. This value indicates whether the
    #   response contains content in the requested locale or fell back to
    #   the default locale. See `Locale` for details.
    #   @return [String]
    #
    # @!attribute [rw] offer_set_id
    #   The unique identifier of the offer set.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the offer set belongs to.
    #   @return [String]
    #
    # @!attribute [rw] offer_set_name
    #   The display name of the offer set.
    #   @return [String]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the offer set became available to you.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time when the offer set expires and is no longer
    #   available for procurement.
    #   @return [Time]
    #
    # @!attribute [rw] buyer_notes
    #   Detailed information about the offer set that helps you understand
    #   its purpose and contents.
    #   @return [String]
    #
    # @!attribute [rw] seller_of_record
    #   The entity responsible for selling the products under this offer
    #   set.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the offer set, such as
    #   private pricing or future-dated.
    #   @return [Array<Types::PurchaseOptionBadge>]
    #
    # @!attribute [rw] associated_entities
    #   The products and offers included in this offer set.
    #   @return [Array<Types::OfferSetAssociatedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferSetOutput AWS API Documentation
    #
    class GetOfferSetOutput < Struct.new(
      :locale,
      :offer_set_id,
      :catalog,
      :offer_set_name,
      :available_from_time,
      :expiration_time,
      :buyer_notes,
      :seller_of_record,
      :badges,
      :associated_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] offer_id
    #   The unique identifier of the offer whose terms to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of terms to return in each call. If you omit this
    #   field, the default is 10. Use `nextToken` to retrieve the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferTermsInput AWS API Documentation
    #
    class GetOfferTermsInput < Struct.new(
      :locale,
      :offer_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The locale of the returned content. This value indicates whether the
    #   response contains content in the requested locale or fell back to
    #   the default locale. See `Locale` for details.
    #   @return [String]
    #
    # @!attribute [rw] offer_terms
    #   The terms attached to the offer. Each element contains exactly one
    #   term type.
    #   @return [Array<Types::OfferTerm>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferTermsOutput AWS API Documentation
    #
    class GetOfferTermsOutput < Struct.new(
      :locale,
      :offer_terms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The unique identifier of the product to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetProductInput AWS API Documentation
    #
    class GetProductInput < Struct.new(
      :locale,
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The locale of the returned content. This value indicates whether the
    #   response contains content in the requested locale or fell back to
    #   the default locale. See `Locale` for details.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The unique identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the product belongs to.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The human-readable display name of the product.
    #   @return [String]
    #
    # @!attribute [rw] manufacturer
    #   The entity who manufactured the product.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] deployed_on_aws
    #   Specifies whether the product is deployed on AWS infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A 1–3 sentence summary describing the key aspects of the product.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A detailed description of what the product does, in paragraph
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] logo_thumbnail_url
    #   The URL of the logo thumbnail image for the product.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_summaries
    #   A summary of fulfillment options available for deploying or
    #   accessing the product, such as Amazon Machine Image (AMI), Software
    #   as a Service (SaaS), or Container.
    #   @return [Array<Types::FulfillmentOptionSummary>]
    #
    # @!attribute [rw] categories
    #   The categories that classify this product into logical groups.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] highlights
    #   A list of key features that the product offers to customers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] promotional_media
    #   Embedded promotional media provided by the creator of the product,
    #   such as images and videos.
    #   @return [Array<Types::PromotionalMedia>]
    #
    # @!attribute [rw] resources
    #   Resources that provide further information about using the product
    #   or requesting support, such as documentation links, support
    #   contacts, and usage instructions.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] seller_engagements
    #   The engagement options available to you, such as buying now,
    #   requesting a private offer, or requesting a demo.
    #   @return [Array<Types::SellerEngagement>]
    #
    # @!attribute [rw] listing_id
    #   The default listing identifier associated with the product.
    #   @return [String]
    #
    # @!attribute [rw] purchase_indicators
    #   Indicators describing purchase characteristics of this product, such
    #   as whether you can subscribe to it or use it without a subscription.
    #   The list is empty when no special purchase conditions apply.
    #   @return [Array<Types::PurchaseIndicator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetProductOutput AWS API Documentation
    #
    class GetProductOutput < Struct.new(
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
      :purchase_indicators)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entitlement that you receive as part of a pricing term.
    #
    # @!attribute [rw] dimension_key
    #   The machine-readable key identifying the entitlement dimension.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the entitlement dimension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] dimension_labels
    #   Labels that categorize this entitlement, such as by region.
    #   @return [Array<Types::DimensionLabel>]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] max_quantity
    #   The maximum quantity of the entitlement that you can receive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GrantItem AWS API Documentation
    #
    class GrantItem < Struct.new(
      :dimension_key,
      :display_name,
      :description,
      :dimension_labels,
      :unit,
      :max_quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a Helm chart fulfillment option for Kubernetes deployment.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_name
    #   The display name of the fulfillment option version.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] operating_systems
    #   The operating systems supported by this Helm chart.
    #   @return [Array<Types::HelmOperatingSystem>]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] aws_supported_services
    #   The AWS services supported by this Helm chart deployment.
    #   @return [Array<Types::AwsSupportedService>]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this Helm chart.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/HelmFulfillmentOption AWS API Documentation
    #
    class HelmFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_name,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :operating_systems,
      :release_notes,
      :aws_supported_services,
      :usage_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an operating system that a Helm chart fulfillment option
    # supports.
    #
    # @!attribute [rw] operating_system_family_name
    #   The operating system family, such as Linux.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_name
    #   The specific operating system name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/HelmOperatingSystem AWS API Documentation
    #
    class HelmOperatingSystem < Struct.new(
      :operating_system_family_name,
      :operating_system_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a legal term containing documents proposed to you, such as
    # End User License Agreements (EULAs) and data subscription agreements.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   The legal documents proposed to you as part of this term.
    #   @return [Array<Types::DocumentItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/LegalTerm AWS API Documentation
    #
    class LegalTerm < Struct.new(
      :id,
      :type,
      :documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The unique identifier of the product for which to list fulfillment
    #   options.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of fulfillment options to return in each call. If
    #   you omit this field, the default is 25. Use `nextToken` to retrieve
    #   the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListFulfillmentOptionsInput AWS API Documentation
    #
    class ListFulfillmentOptionsInput < Struct.new(
      :locale,
      :product_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   A Best Current Practice 47 (BCP 47) language tag or comma-separated
    #   priority list of language tags that specifies the preferred locale
    #   for response content. The field accepts a maximum of two language
    #   tags.
    #
    #   The service resolves a locale string to the nearest supported
    #   locale. If no supported locale matches, the service applies the
    #   fallback behavior described in the following lists.
    #
    #   * **Preferred locale** (first tag) – The locale you want the service
    #     to return content in.
    #
    #   * **Fallback locale** (optional, second tag) – The service default
    #     locale (`en-US` or `en`). The service returns content in this
    #     locale when translated content for the preferred locale is
    #     unavailable.
    #
    #   The field is optional. If you omit this field or set it to null, the
    #   service returns content in the default locale (`en-US`).
    #
    #   The service supports the following locales:
    #
    #   en-US
    #
    #   : English (service default, also resolves from `en`)
    #
    #   fr
    #
    #   : French
    #
    #   es
    #
    #   : Spanish
    #
    #   ko
    #
    #   : Korean
    #
    #   ja
    #
    #   : Japanese
    #
    #   The fallback behavior is as follows:
    #
    #   * If translated content for the preferred locale is unavailable, the
    #     service returns content in the default locale.
    #
    #   * If the preferred locale is not supported and you provide no
    #     fallback, the service returns a `ValidationException`.
    #
    #   * If you provide an unsupported locale with the default locale as
    #     fallback (for example, `xx, en-US`), the service returns content
    #     in the default locale.
    #
    #   The `locale` field in Get API responses indicates the locale of the
    #   returned content. You can use this field to determine whether the
    #   response contains content in the requested locale or the default
    #   locale.
    #
    #   The following examples show how the field works:
    #
    #   fr
    #
    #   : Request French content. If unavailable, falls back to `en-US`.
    #
    #   fr, en-US
    #
    #   : Request French content with explicit fallback to English.
    #
    #   en-US
    #
    #   : Request content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_options
    #   The fulfillment options available for the product. Each option
    #   describes how you can deploy or access the product.
    #   @return [Array<Types::FulfillmentOption>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListFulfillmentOptionsOutput AWS API Documentation
    #
    class ListFulfillmentOptionsOutput < Struct.new(
      :locale,
      :fulfillment_options,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the listing and attribute types to retrieve.
    #
    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The unique identifier of the listing whose attributes are requested.
    #   @return [String]
    #
    # @!attribute [rw] attribute_types
    #   The attribute types to retrieve. Specify one or more of the
    #   following values:
    #
    #   CASE\_STUDY
    #
    #   : Case studies associated with the listing.
    #
    #   SPECIALIZATION\_DETAIL
    #
    #   : Specializations earned for the listing.
    #
    #   TRUST\_CENTER\_CERTIFICATION
    #
    #   : Trust center certifications associated with the listing.
    #
    #   TRUST\_CENTER\_CONTROL
    #
    #   : Trust center controls associated with the listing.
    #
    #   TRUST\_CENTER\_DOCUMENT
    #
    #   : Trust center documents associated with the listing.
    #
    #   TRUST\_CENTER\_FAQ
    #
    #   : The trust center FAQ associated with the listing.
    #
    #   TRUST\_CENTER\_SOURCE
    #
    #   : Trust center sources associated with the listing.
    #
    #   TRUST\_CENTER\_UPDATE
    #
    #   : Trust center updates associated with the listing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of attributes to return in each call. If you omit
    #   this field, the default is 25. Use `nextToken` to retrieve the next
    #   page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListListingAttributesInput AWS API Documentation
    #
    class ListListingAttributesInput < Struct.new(
      :locale,
      :listing_id,
      :attribute_types,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the requested listing attributes and pagination information.
    #
    # @!attribute [rw] locale
    #   The locale of the returned content. See `Locale` for details.
    #   @return [String]
    #
    # @!attribute [rw] listing_attributes
    #   The requested attributes. Each entry contains one attribute type.
    #   @return [Array<Types::ListingAttributeResults>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListListingAttributesOutput AWS API Documentation
    #
    class ListListingAttributesOutput < Struct.new(
      :locale,
      :listing_attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to narrow the results. A result must match every filter.
    #   Within one filter, a result matches if it has any of the values.
    #   @return [Array<Types::PurchaseOptionFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of purchase options to return in each call. If
    #   you omit this field, the default is 25. Use `nextToken` to retrieve
    #   the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListPurchaseOptionsInput AWS API Documentation
    #
    class ListPurchaseOptionsInput < Struct.new(
      :locale,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] purchase_options
    #   The purchase options available to you. Each option is either an
    #   offer for a single product or an offer set spanning multiple
    #   products.
    #   @return [Array<Types::PurchaseOptionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListPurchaseOptionsOutput AWS API Documentation
    #
    class ListPurchaseOptionsOutput < Struct.new(
      :purchase_options,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A product and offer associated with a listing.
    #
    # @!attribute [rw] product
    #   Information about the product associated with the listing.
    #   @return [Types::ProductInformation]
    #
    # @!attribute [rw] offer
    #   Information about the default offer associated with the listing.
    #   @return [Types::OfferInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListingAssociatedEntity AWS API Documentation
    #
    class ListingAssociatedEntity < Struct.new(
      :product,
      :offer)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute associated with a listing. Each entry contains one
    # attribute type.
    #
    # @note ListingAttributeResults is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ListingAttributeResults corresponding to the set member.
    #
    # @!attribute [rw] case_study
    #   A case study associated with the listing.
    #   @return [Types::CaseStudy]
    #
    # @!attribute [rw] specialization_detail
    #   A specialization earned for the listing. Each result is either a
    #   specialization or a category under a specialization.
    #   @return [Types::SpecializationDetail]
    #
    # @!attribute [rw] trust_center_source
    #   A trust center source associated with the listing.
    #   @return [Types::TrustCenterSource]
    #
    # @!attribute [rw] trust_center_certification
    #   A trust center certification associated with the listing.
    #   @return [Types::TrustCenterCertificationAttribute]
    #
    # @!attribute [rw] trust_center_document
    #   A trust center document associated with the listing.
    #   @return [Types::TrustCenterDocumentAttribute]
    #
    # @!attribute [rw] trust_center_control
    #   A trust center control associated with the listing.
    #   @return [Types::TrustCenterControl]
    #
    # @!attribute [rw] trust_center_faq
    #   A trust center frequently asked question associated with the
    #   listing.
    #   @return [Types::TrustCenterFaqAttribute]
    #
    # @!attribute [rw] trust_center_update
    #   A trust center update associated with the listing.
    #   @return [Types::TrustCenterUpdateAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListingAttributeResults AWS API Documentation
    #
    class ListingAttributeResults < Struct.new(
      :case_study,
      :specialization_detail,
      :trust_center_source,
      :trust_center_certification,
      :trust_center_document,
      :trust_center_control,
      :trust_center_faq,
      :trust_center_update,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CaseStudy < ListingAttributeResults; end
      class SpecializationDetail < ListingAttributeResults; end
      class TrustCenterSource < ListingAttributeResults; end
      class TrustCenterCertification < ListingAttributeResults; end
      class TrustCenterDocument < ListingAttributeResults; end
      class TrustCenterControl < ListingAttributeResults; end
      class TrustCenterFaq < ListingAttributeResults; end
      class TrustCenterUpdate < ListingAttributeResults; end
      class Unknown < ListingAttributeResults; end
    end

    # A badge indicating a special attribute of a listing, such as free tier
    # eligibility or Quick Launch support.
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the badge.
    #   @return [String]
    #
    # @!attribute [rw] badge_type
    #   The machine-readable type of the badge. See `ListingBadgeType` for
    #   the values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListingBadge AWS API Documentation
    #
    class ListingBadge < Struct.new(
      :display_name,
      :badge_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A facet value with display information and a count of matching
    # listings. Used to build filter and browse experiences.
    #
    # @!attribute [rw] value
    #   The internal value used for filtering when passed back in a search
    #   filter.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the facet value, suitable for display in
    #   a user interface.
    #   @return [String]
    #
    # @!attribute [rw] parent
    #   The parent facet value for hierarchical facets, such as
    #   subcategories.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of listings matching this facet value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListingFacet AWS API Documentation
    #
    class ListingFacet < Struct.new(
      :value,
      :display_name,
      :parent,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a listing returned by search operations,
    # including the listing name, description, badges, categories, pricing
    # models, reviews, and associated products.
    #
    # @!attribute [rw] listing_id
    #   The unique identifier of the listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_name
    #   The human-readable display name of the listing.
    #   @return [String]
    #
    # @!attribute [rw] publisher
    #   The entity who created and published the listing.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] fulfillment_option_summaries
    #   A summary of fulfillment options available for the listing.
    #   @return [Array<Types::FulfillmentOptionSummary>]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the listing belongs to.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A 1–3 sentence summary describing the key aspects of the listing.
    #   @return [String]
    #
    # @!attribute [rw] logo_thumbnail_url
    #   The URL of the logo thumbnail image for the listing.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories that classify this listing into logical groups.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the listing.
    #   @return [Array<Types::ListingBadge>]
    #
    # @!attribute [rw] review_summary
    #   A summary of customer reviews for the listing.
    #   @return [Types::ReviewSummary]
    #
    # @!attribute [rw] pricing_models
    #   The pricing models for offers associated with this listing.
    #   @return [Array<Types::PricingModel>]
    #
    # @!attribute [rw] pricing_units
    #   The pricing units that define the billing dimensions for offers
    #   associated with this listing.
    #   @return [Array<Types::PricingUnit>]
    #
    # @!attribute [rw] associated_entities
    #   The products associated with this listing.
    #   @return [Array<Types::ListingSummaryAssociatedEntity>]
    #
    # @!attribute [rw] trust_center_summary
    #   A summary of trust center sources and certifications associated with
    #   the listing.
    #   @return [Types::TrustCenterSummary]
    #
    # @!attribute [rw] case_studies_summary
    #   A summary of the case studies associated with the listing. Retrieve
    #   the case studies with `ListListingAttributes`.
    #   @return [Types::CaseStudiesSummary]
    #
    # @!attribute [rw] use_case_summary
    #   A summary of the use cases the listing is written for: the name and
    #   identifier of each, without descriptions. The summary is empty when
    #   the listing has none.
    #   @return [Types::UseCaseSummary]
    #
    # @!attribute [rw] seller_engagements
    #   The seller engagement options available for this listing, such as
    #   buying now, requesting a private offer, or requesting a demo.
    #   @return [Array<Types::SellerEngagement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListingSummary AWS API Documentation
    #
    class ListingSummary < Struct.new(
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
      :trust_center_summary,
      :case_studies_summary,
      :use_case_summary,
      :seller_engagements)
      SENSITIVE = []
      include Aws::Structure
    end

    # A product associated with a listing summary.
    #
    # @!attribute [rw] product
    #   Information about the associated product.
    #   @return [Types::ProductInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListingSummaryAssociatedEntity AWS API Documentation
    #
    class ListingSummaryAssociatedEntity < Struct.new(
      :product)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a net payment term that sets how many days after the invoice
    # date the payment is due.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] payment_due_period
    #   The duration after invoice date by which payment is due.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/NetPaymentTerm AWS API Documentation
    #
    class NetPaymentTerm < Struct.new(
      :id,
      :type,
      :payment_due_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # A product and optional offer set associated with an offer.
    #
    # @!attribute [rw] product
    #   Information about the product associated with the offer.
    #   @return [Types::ProductInformation]
    #
    # @!attribute [rw] offer_set
    #   Information about the offer set, if the offer is part of a bundled
    #   offer set.
    #   @return [Types::OfferSetInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/OfferAssociatedEntity AWS API Documentation
    #
    class OfferAssociatedEntity < Struct.new(
      :product,
      :offer_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an offer, including the offer identifier,
    # name, and seller of record.
    #
    # @!attribute [rw] offer_id
    #   The unique identifier of the offer.
    #   @return [String]
    #
    # @!attribute [rw] offer_name
    #   The display name of the offer.
    #   @return [String]
    #
    # @!attribute [rw] seller_of_record
    #   The entity responsible for selling the product under this offer.
    #   @return [Types::SellerInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/OfferInformation AWS API Documentation
    #
    class OfferInformation < Struct.new(
      :offer_id,
      :offer_name,
      :seller_of_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # A product and offer associated with an offer set.
    #
    # @!attribute [rw] product
    #   Information about the product associated with the offer set.
    #   @return [Types::ProductInformation]
    #
    # @!attribute [rw] offer
    #   Information about the offer associated with the offer set.
    #   @return [Types::OfferInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/OfferSetAssociatedEntity AWS API Documentation
    #
    class OfferSetAssociatedEntity < Struct.new(
      :product,
      :offer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an offer set, including the identifier and
    # seller of record.
    #
    # @!attribute [rw] offer_set_id
    #   The unique identifier of the offer set.
    #   @return [String]
    #
    # @!attribute [rw] seller_of_record
    #   The entity responsible for selling the products under this offer
    #   set.
    #   @return [Types::SellerInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/OfferSetInformation AWS API Documentation
    #
    class OfferSetInformation < Struct.new(
      :offer_set_id,
      :seller_of_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # A term attached to an offer. Each element contains exactly one term
    # type, such as a pricing term, legal term, or payment schedule term.
    #
    # @note OfferTerm is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OfferTerm corresponding to the set member.
    #
    # @!attribute [rw] byol_pricing_term
    #   Describes a Bring Your Own License (BYOL) pricing term. With this
    #   term, you use your existing license for the product.
    #   @return [Types::ByolPricingTerm]
    #
    # @!attribute [rw] configurable_upfront_pricing_term
    #   Describes a configurable upfront pricing term with selectable rate
    #   cards. You choose from predefined pricing configurations.
    #   @return [Types::ConfigurableUpfrontPricingTerm]
    #
    # @!attribute [rw] fixed_upfront_pricing_term
    #   Describes a fixed upfront pricing term with a pre-paid amount and
    #   granted entitlements.
    #   @return [Types::FixedUpfrontPricingTerm]
    #
    # @!attribute [rw] free_trial_pricing_term
    #   Describes a free trial pricing term. With this term, you can try the
    #   product before you purchase it.
    #   @return [Types::FreeTrialPricingTerm]
    #
    # @!attribute [rw] legal_term
    #   Describes a legal term containing documents proposed to you, such as
    #   End User License Agreements (EULAs) and data subscription
    #   agreements.
    #   @return [Types::LegalTerm]
    #
    # @!attribute [rw] payment_schedule_term
    #   Describes a payment schedule term with installment payments at
    #   specified dates.
    #   @return [Types::PaymentScheduleTerm]
    #
    # @!attribute [rw] recurring_payment_term
    #   Describes a recurring payment term with fixed charges at regular
    #   billing intervals.
    #   @return [Types::RecurringPaymentTerm]
    #
    # @!attribute [rw] renewal_term
    #   Describes a renewal term that renews the agreement automatically.
    #   @return [Types::RenewalTerm]
    #
    # @!attribute [rw] support_term
    #   Describes a support term that includes the refund policy for the
    #   offer.
    #   @return [Types::SupportTerm]
    #
    # @!attribute [rw] usage_based_pricing_term
    #   Describes a usage-based pricing term, typically pay-as-you-go. You
    #   are charged based on your use of the product.
    #   @return [Types::UsageBasedPricingTerm]
    #
    # @!attribute [rw] validity_term
    #   Describes a validity term that specifies the duration or date range
    #   of an agreement.
    #   @return [Types::ValidityTerm]
    #
    # @!attribute [rw] variable_payment_term
    #   Describes a variable payment term with a maximum total charge
    #   amount.
    #   @return [Types::VariablePaymentTerm]
    #
    # @!attribute [rw] net_payment_term
    #   A net payment term.
    #   @return [Types::NetPaymentTerm]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/OfferTerm AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # A single installment entry in the renewal payment schedule.
    #
    # @!attribute [rw] charge_date_offset
    #   The relative offset from the renewal agreement start date when this
    #   installment is due, represented in ISO 8601 duration format (for
    #   example, P1M or P30D).
    #   @return [String]
    #
    # @!attribute [rw] charge_percentage
    #   The percentage of the increased Total Contract Value (TCV) to charge
    #   in this installment. All entries in a schedule sum to 100.00.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The optional calendar day of month on which the charge occurs. When
    #   absent, the charge day is derived from `chargeDateOffset`. For
    #   months with fewer days than the specified day, the charge occurs on
    #   the last day of the month. For example, if `dayOfMonth` is 31, the
    #   charge in April occurs on April 30.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PaymentScheduleEntry AWS API Documentation
    #
    class PaymentScheduleEntry < Struct.new(
      :charge_date_offset,
      :charge_percentage,
      :day_of_month)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a payment schedule term with installment payments at
    # specified dates.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices in this term.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The payment schedule installments, each with a charge date and
    #   amount.
    #   @return [Array<Types::ScheduleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PaymentScheduleTerm AWS API Documentation
    #
    class PaymentScheduleTerm < Struct.new(
      :id,
      :type,
      :currency_code,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # A template for the payment schedule term on the renewal offer.
    #
    # @!attribute [rw] schedule
    #   An ordered list of installment entries for the renewal payment
    #   schedule.
    #   @return [Array<Types::PaymentScheduleEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PaymentScheduleTermTemplate AWS API Documentation
    #
    class PaymentScheduleTermTemplate < Struct.new(
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # A price increase percentage range with minimum, maximum, and default
    # values.
    #
    # @!attribute [rw] minimum_value
    #   The minimum percentage by which the price can increase at each
    #   renewal cycle.
    #   @return [String]
    #
    # @!attribute [rw] maximum_value
    #   The maximum percentage by which the price can increase at each
    #   renewal cycle.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The percentage increase applied by default when no other value is
    #   finalized before the adjustment deadline. Falls between
    #   `minimumValue` and `maximumValue`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PercentageRange AWS API Documentation
    #
    class PercentageRange < Struct.new(
      :minimum_value,
      :maximum_value,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pricing adjustment that applies at each renewal cycle, expressed
    # as either a fixed percentage or a percentage range. Exactly one of the
    # following members is present:
    #
    # fixedPercentage
    #
    # : A single fixed percentage applied uniformly at every renewal cycle.
    #
    # percentageRange
    #
    # : A percentage range with minimum, maximum, and default values that
    #   bound the price increase at each renewal cycle.
    #
    # @note PriceIncrease is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PriceIncrease corresponding to the set member.
    #
    # @!attribute [rw] fixed_percentage
    #   A single fixed percentage applied uniformly at every renewal cycle.
    #   @return [Types::FixedPercentage]
    #
    # @!attribute [rw] percentage_range
    #   A percentage band with minimum, maximum, and default values that
    #   bound the price increase at each renewal cycle.
    #   @return [Types::PercentageRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PriceIncrease AWS API Documentation
    #
    class PriceIncrease < Struct.new(
      :fixed_percentage,
      :percentage_range,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FixedPercentage < PriceIncrease; end
      class PercentageRange < PriceIncrease; end
      class Unknown < PriceIncrease; end
    end

    # A pricing model that determines how you are charged for a listing,
    # such as usage-based, contract, Bring Your Own License (BYOL), or free.
    #
    # @!attribute [rw] pricing_model_type
    #   The machine-readable type of the pricing model. See
    #   `PricingModelType` for the values.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the pricing model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PricingModel AWS API Documentation
    #
    class PricingModel < Struct.new(
      :pricing_model_type,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pricing unit that defines the billing dimension for a listing, such
    # as users, hosts, bandwidth, or data.
    #
    # @!attribute [rw] pricing_unit_type
    #   The machine-readable type of the pricing unit.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the pricing unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PricingUnit AWS API Documentation
    #
    class PricingUnit < Struct.new(
      :pricing_unit_type,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a product, including the identifier, name,
    # and manufacturer.
    #
    # @!attribute [rw] product_id
    #   The unique identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The human-readable display name of the product.
    #   @return [String]
    #
    # @!attribute [rw] manufacturer
    #   The entity who manufactured the product.
    #   @return [Types::SellerInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ProductInformation AWS API Documentation
    #
    class ProductInformation < Struct.new(
      :product_id,
      :product_name,
      :manufacturer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a professional services fulfillment option.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ProfessionalServicesFulfillmentOption AWS API Documentation
    #
    class ProfessionalServicesFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An embedded promotional image for a product.
    #
    # @!attribute [rw] title
    #   The title displayed when hovering over the image.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the image file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PromotionalEmbeddedImage AWS API Documentation
    #
    class PromotionalEmbeddedImage < Struct.new(
      :title,
      :url,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # An embedded promotional video for a product.
    #
    # @!attribute [rw] title
    #   The title displayed when hovering over the video.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the video file.
    #   @return [String]
    #
    # @!attribute [rw] preview
    #   The URL of the high-resolution preview image for the video.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail
    #   The URL of the thumbnail image for the video.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the video.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PromotionalEmbeddedVideo AWS API Documentation
    #
    class PromotionalEmbeddedVideo < Struct.new(
      :title,
      :url,
      :preview,
      :thumbnail,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Embedded promotional media for a product, such as images or videos.
    # Each element contains exactly one media type.
    #
    # @note PromotionalMedia is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PromotionalMedia corresponding to the set member.
    #
    # @!attribute [rw] embedded_image
    #   An embedded promotional image for a product.
    #   @return [Types::PromotionalEmbeddedImage]
    #
    # @!attribute [rw] embedded_video
    #   An embedded promotional video for a product.
    #   @return [Types::PromotionalEmbeddedVideo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PromotionalMedia AWS API Documentation
    #
    class PromotionalMedia < Struct.new(
      :embedded_image,
      :embedded_video,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EmbeddedImage < PromotionalMedia; end
      class EmbeddedVideo < PromotionalMedia; end
      class Unknown < PromotionalMedia; end
    end

    # An indicator describing a purchase characteristic, such as
    # availability for use without a subscription.
    #
    # @!attribute [rw] indicator_type
    #   The type of purchase indicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PurchaseIndicator AWS API Documentation
    #
    class PurchaseIndicator < Struct.new(
      :indicator_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A product, offer, and optional offer set associated with a purchase
    # option.
    #
    # @!attribute [rw] product
    #   Information about the product associated with the purchase option.
    #   @return [Types::ProductInformation]
    #
    # @!attribute [rw] offer
    #   Information about the offer associated with the purchase option.
    #   @return [Types::OfferInformation]
    #
    # @!attribute [rw] offer_set
    #   Information about the offer set, if the purchase option is part of a
    #   bundled offer set.
    #   @return [Types::OfferSetInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PurchaseOptionAssociatedEntity AWS API Documentation
    #
    class PurchaseOptionAssociatedEntity < Struct.new(
      :product,
      :offer,
      :offer_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # A badge indicating a special attribute of a purchase option, such as
    # private pricing or future-dated.
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the badge.
    #   @return [String]
    #
    # @!attribute [rw] badge_type
    #   The machine-readable type of the badge. See
    #   `PurchaseOptionBadgeType` for the values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PurchaseOptionBadge AWS API Documentation
    #
    class PurchaseOptionBadge < Struct.new(
      :display_name,
      :badge_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to narrow purchase option results by product, seller,
    # type, visibility, or availability.
    #
    # @!attribute [rw] filter_type
    #   The type of filter to apply. This field has one of the following
    #   values:
    #
    #   AVAILABILITY\_STATUS
    #
    #   : Filters by whether the purchase option is available or expired.
    #
    #   PRODUCT\_ID
    #
    #   : Filters by product.
    #
    #   PURCHASE\_OPTION\_TYPE
    #
    #   : Filters by offer or offer set.
    #
    #   SELLER\_OF\_RECORD\_PROFILE\_ID
    #
    #   : Filters by seller.
    #
    #   VISIBILITY\_SCOPE
    #
    #   : Filters by visibility.
    #
    #   See `filterValues` for the values that each type accepts.
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to filter by. Supported values depend on `filterType`:
    #
    #   AVAILABILITY\_STATUS
    #
    #   : One or more availability statuses to filter by: `AVAILABLE` or
    #     `EXPIRED`.
    #
    #   PRODUCT\_ID
    #
    #   : One or more product identifiers to filter by.
    #
    #   PURCHASE\_OPTION\_TYPE
    #
    #   : One or more purchase option types to filter by: `OFFER` or
    #     `OFFERSET`.
    #
    #   SELLER\_OF\_RECORD\_PROFILE\_ID
    #
    #   : One or more seller profile identifiers to filter by.
    #
    #   VISIBILITY\_SCOPE
    #
    #   : The visibility scope to filter by: `PRIVATE`.
    #
    #   To retrieve private offers and offer sets visible to you, use
    #   `VISIBILITY_SCOPE` with `PRIVATE`. Within one filter, a result
    #   matches if it has any of the values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PurchaseOptionFilter AWS API Documentation
    #
    class PurchaseOptionFilter < Struct.new(
      :filter_type,
      :filter_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a purchase option (offer or offer set)
    # available to you, including the seller, badges, and associated
    # products.
    #
    # @!attribute [rw] purchase_option_id
    #   The unique identifier of the purchase option.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the purchase option belongs to.
    #   @return [String]
    #
    # @!attribute [rw] purchase_option_type
    #   The type of purchase option. This field has one of the following
    #   values:
    #
    #   OFFER
    #
    #   : An offer for a single product.
    #
    #   OFFERSET
    #
    #   : An offer set that bundles offers for several products.
    #   @return [String]
    #
    # @!attribute [rw] purchase_option_name
    #   The display name of the purchase option.
    #   @return [String]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the purchase option became available to you.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time when the purchase option expires and is no longer
    #   available for procurement.
    #   @return [Time]
    #
    # @!attribute [rw] seller_of_record
    #   The entity responsible for selling the product under this purchase
    #   option.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the purchase option, such as
    #   private pricing or future-dated.
    #   @return [Array<Types::PurchaseOptionBadge>]
    #
    # @!attribute [rw] associated_entities
    #   The products, offers, and offer sets associated with this purchase
    #   option.
    #   @return [Array<Types::PurchaseOptionAssociatedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/PurchaseOptionSummary AWS API Documentation
    #
    class PurchaseOptionSummary < Struct.new(
      :purchase_option_id,
      :catalog,
      :purchase_option_type,
      :purchase_option_name,
      :available_from_time,
      :expiration_time,
      :seller_of_record,
      :badges,
      :associated_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # A per-unit rate within a rate card, defining the price for a specific
    # dimension.
    #
    # @!attribute [rw] dimension_key
    #   The machine-readable key identifying the dimension being priced.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the dimension being priced.
    #   @return [String]
    #
    # @!attribute [rw] dimension_labels
    #   Labels that categorize this dimension, such as by region.
    #   @return [Array<Types::DimensionLabel>]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The price per unit for the dimension.
    #   @return [String]
    #
    # @!attribute [rw] regional_prices
    #   The price overrides for the dimension in individual AWS Regions.
    #   When a Regional price is present for an AWS Region, it replaces the
    #   default price.
    #   @return [Array<Types::RegionalPrice>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/RateCardItem AWS API Documentation
    #
    class RateCardItem < Struct.new(
      :dimension_key,
      :display_name,
      :description,
      :dimension_labels,
      :unit,
      :price,
      :regional_prices)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recurring payment term with fixed charges at regular
    # billing intervals.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices in this term.
    #   @return [String]
    #
    # @!attribute [rw] billing_period
    #   The billing period frequency, such as `Monthly`.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The amount charged each billing period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/RecurringPaymentTerm AWS API Documentation
    #
    class RecurringPaymentTerm < Struct.new(
      :id,
      :type,
      :currency_code,
      :billing_period,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # A price override for a pricing dimension in one AWS Region.
    #
    # @!attribute [rw] region
    #   The AWS Region the override applies to.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable display name of the Region.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The per-unit price for the dimension in this Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/RegionalPrice AWS API Documentation
    #
    class RegionalPrice < Struct.new(
      :region,
      :display_name,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a renewal term that renews the agreement automatically.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] max_renewals
    #   The maximum number of renewals allowed on this offer. Absent means
    #   unlimited renewals.
    #   @return [Integer]
    #
    # @!attribute [rw] lockout_period
    #   The duration before the agreement end date when the lockout window
    #   begins, in ISO 8601 format (for example, P30D). Absent means no
    #   lockout.
    #   @return [String]
    #
    # @!attribute [rw] adjustment_deadline
    #   The duration before the agreement end date by which the renewal
    #   price is finalized, represented in ISO 8601 format (for example,
    #   P30D). This field applies only with `PercentageRange`.
    #   @return [String]
    #
    # @!attribute [rw] price_increase
    #   The price increase applied at each renewal cycle. Absent means
    #   identical pricing on renewal.
    #   @return [Types::PriceIncrease]
    #
    # @!attribute [rw] term_templates
    #   Structural templates defining how specific terms are reshaped on
    #   each renewal cycle. Absent for upfront-only offers.
    #   @return [Array<Types::TermTemplate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/RenewalTerm AWS API Documentation
    #
    class RenewalTerm < Struct.new(
      :id,
      :type,
      :max_renewals,
      :lockout_period,
      :adjustment_deadline,
      :price_increase,
      :term_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that provides supplementary information about a product,
    # such as documentation links, support contacts, or usage instructions.
    #
    # @!attribute [rw] resource_type
    #   The category of the resource, such as manufacturer support or usage
    #   instructions. This field has one of the following values:
    #
    #   MANUFACTURER\_INSTRUCTIONS
    #
    #   : Usage instructions from the seller.
    #
    #   MANUFACTURER\_SUPPORT
    #
    #   : Support information from the seller.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The format of the resource content, such as a URL, email address, or
    #   text. This field has one of the following values:
    #
    #   EMAIL
    #
    #   : An email address.
    #
    #   LINK
    #
    #   : A URL.
    #
    #   OTHER
    #
    #   : Text in another format.
    #
    #   PHONE\_NUMBER
    #
    #   : A phone number.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The resource content. Interpretation depends on the content type.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   An optional human-readable label for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :resource_type,
      :content_type,
      :value,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist. Verify that the identifier is
    # correct.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A review summary from a specific source, including the average rating
    # and total review count.
    #
    # @!attribute [rw] source_name
    #   The name of the review source. This field has one of the following
    #   values:
    #
    #   * AWS Marketplace
    #
    #   * G2
    #
    #   * PeerSpot
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The machine-readable identifier of the review source. This field has
    #   one of the following values:
    #
    #   AWS\_MARKETPLACE
    #
    #   : The reviews come from AWS Marketplace.
    #
    #   G2
    #
    #   : The reviews come from G2.
    #
    #   PEERSPOT
    #
    #   : The reviews come from PeerSpot.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL where you can read the reviews at their source.
    #   @return [String]
    #
    # @!attribute [rw] average_rating
    #   The average rating across all reviews from this source.
    #   @return [String]
    #
    # @!attribute [rw] total_reviews
    #   The total number of reviews available from this source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ReviewSourceSummary AWS API Documentation
    #
    class ReviewSourceSummary < Struct.new(
      :source_name,
      :source_id,
      :source_url,
      :average_rating,
      :total_reviews)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of customer reviews available for a listing, aggregated by
    # review source.
    #
    # @!attribute [rw] review_source_summaries
    #   Review summaries from different sources, such as AWS Marketplace,
    #   G2, and PeerSpot.
    #   @return [Array<Types::ReviewSourceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ReviewSummary AWS API Documentation
    #
    class ReviewSummary < Struct.new(
      :review_source_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a single AWS CloudFormation deployment template for a
    # Software as a Service (SaaS) product.
    #
    # @!attribute [rw] template_name
    #   The display name of the deployment template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the deployment template.
    #   @return [String]
    #
    # @!attribute [rw] default_stack_name
    #   The default CloudFormation stack name used when deploying this
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of the CloudFormation deployment template.
    #   @return [String]
    #
    # @!attribute [rw] iam_policy
    #   The AWS Identity and Access Management (IAM) policy that you need to
    #   deploy this template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SaasCloudFormationDeploymentTemplate AWS API Documentation
    #
    class SaasCloudFormationDeploymentTemplate < Struct.new(
      :template_name,
      :description,
      :default_stack_name,
      :template_url,
      :iam_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a deployment template for a SaaS product. Exactly one member
    # is set, indicating the deployment template type.
    #
    # @note SaasDeploymentTemplate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SaasDeploymentTemplate corresponding to the set member.
    #
    # @!attribute [rw] cloud_formation_deployment_template
    #   An AWS CloudFormation deployment template.
    #   @return [Types::SaasCloudFormationDeploymentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SaasDeploymentTemplate AWS API Documentation
    #
    class SaasDeploymentTemplate < Struct.new(
      :cloud_formation_deployment_template,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudFormationDeploymentTemplate < SaasDeploymentTemplate; end
      class Unknown < SaasDeploymentTemplate; end
    end

    # Describes a Software as a Service (SaaS) fulfillment option.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_url
    #   The URL of the seller's software registration landing page.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how you access and use this SaaS product.
    #   @return [String]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the SaaS product became available for
    #   fulfillment.
    #   @return [Time]
    #
    # @!attribute [rw] launch_url
    #   The URL that you use to launch the seller's SaaS product. This URL
    #   is distinct from `fulfillmentUrl`, which is the seller's software
    #   registration landing page.
    #   @return [String]
    #
    # @!attribute [rw] quick_launch
    #   Specifies whether the SaaS product supports Quick Launch deployment.
    #   This field has one of the following values:
    #
    #   DISABLED
    #
    #   : The product does not support Quick Launch.
    #
    #   ENABLED
    #
    #   : The product supports Quick Launch.
    #   @return [String]
    #
    # @!attribute [rw] deployment_templates
    #   The AWS CloudFormation deployment templates available for this SaaS
    #   product. The list is empty when no deployment templates are
    #   available.
    #   @return [Array<Types::SaasDeploymentTemplate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SaasFulfillmentOption AWS API Documentation
    #
    class SaasFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_url,
      :usage_instructions,
      :available_from_time,
      :launch_url,
      :quick_launch,
      :deployment_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon SageMaker algorithm fulfillment option, including
    # version details and recommended instance types.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to use this SageMaker algorithm.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The recommended instance types for training and inference with this
    #   algorithm.
    #   @return [Types::SageMakerAlgorithmRecommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SageMakerAlgorithmFulfillmentOption AWS API Documentation
    #
    class SageMakerAlgorithmFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :release_notes,
      :usage_instructions,
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recommended instance types for training and inference with a
    # SageMaker algorithm.
    #
    # @!attribute [rw] recommended_batch_transform_instance_type
    #   The instance type that the seller recommends for batch transform
    #   jobs with this algorithm.
    #   @return [String]
    #
    # @!attribute [rw] recommended_realtime_inference_instance_type
    #   The instance type that the seller recommends for real-time inference
    #   endpoints with this algorithm.
    #   @return [String]
    #
    # @!attribute [rw] recommended_training_instance_type
    #   The recommended instance type for training.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SageMakerAlgorithmRecommendation AWS API Documentation
    #
    class SageMakerAlgorithmRecommendation < Struct.new(
      :recommended_batch_transform_instance_type,
      :recommended_realtime_inference_instance_type,
      :recommended_training_instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon SageMaker model fulfillment option, including
    # version details and recommended instance types.
    #
    # @!attribute [rw] fulfillment_option_id
    #   The unique identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_type
    #   The category of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_display_name
    #   A human-readable name for the fulfillment option type.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_option_version
    #   The version identifier of the fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] release_notes
    #   Release notes that describe the changes in this version of the
    #   fulfillment option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to use this SageMaker model.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The recommended instance types for inference with this model.
    #   @return [Types::SageMakerModelRecommendation]
    #
    # @!attribute [rw] supported_content_types
    #   The Multipurpose Internet Mail Extensions (MIME) types that this
    #   model accepts as input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_response_mime_types
    #   The MIME types that this model returns as output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SageMakerModelFulfillmentOption AWS API Documentation
    #
    class SageMakerModelFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_option_version,
      :release_notes,
      :usage_instructions,
      :recommendation,
      :supported_content_types,
      :supported_response_mime_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recommended instance types for inference with a SageMaker model.
    #
    # @!attribute [rw] recommended_batch_transform_instance_type
    #   The instance type that the seller recommends for batch transform
    #   jobs with this model package.
    #   @return [String]
    #
    # @!attribute [rw] recommended_realtime_inference_instance_type
    #   The instance type that the seller recommends for real-time inference
    #   endpoints with this model package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SageMakerModelRecommendation AWS API Documentation
    #
    class SageMakerModelRecommendation < Struct.new(
      :recommended_batch_transform_instance_type,
      :recommended_realtime_inference_instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A payment installment within a payment schedule term.
    #
    # @!attribute [rw] charge_date
    #   The date when the payment is due.
    #   @return [Time]
    #
    # @!attribute [rw] charge_amount
    #   The amount to be charged on the charge date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ScheduleItem AWS API Documentation
    #
    class ScheduleItem < Struct.new(
      :charge_date,
      :charge_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   The search query text to filter listings before retrieving facets.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply before retrieving facets. A result must match every
    #   filter. Within one filter, a result matches if it has any of the
    #   values.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] facet_types
    #   The facet types to retrieve. If you omit this field or leave it
    #   empty, the service returns all available facets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchFacetsInput AWS API Documentation
    #
    class SearchFacetsInput < Struct.new(
      :locale,
      :search_text,
      :filters,
      :facet_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] total_results
    #   The total number of listings matching the search criteria.
    #   @return [Integer]
    #
    # @!attribute [rw] listing_facets
    #   A map of facet types to their corresponding facet values. Each facet
    #   value includes a display name, internal value, and count of matching
    #   listings.
    #   @return [Hash<String,Array<Types::ListingFacet>>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchFacetsOutput AWS API Documentation
    #
    class SearchFacetsOutput < Struct.new(
      :total_results,
      :listing_facets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to narrow search results by attribute, such as category,
    # pricing model, or fulfillment type.
    #
    # @!attribute [rw] filter_type
    #   The type of filter to apply. See `filterValues` for the supported
    #   types and their values.
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to filter by. Term filters accept multiple values, and a
    #   result matches if it has any of them. Range filters accept a single
    #   value. The supported values for each `filterType` are as follows:
    #
    #   CATEGORY
    #
    #   : One or more category identifiers. Matches listings in those
    #     categories.
    #
    #   CERTIFICATES
    #
    #   : One or more certification identifiers, such as `ISO_27001` or
    #     `SOC2_TYPE_2`. Matches listings that hold those certifications.
    #
    #   DEPLOYED\_ON\_AWS
    #
    #   : The single value `DEPLOYED_ON_AWS`. Matches listings whose
    #     products are deployed on AWS infrastructure.
    #
    #   FULFILLMENT\_OPTION\_TYPE
    #
    #   : One or more fulfillment option types, such as `SAAS`,
    #     `AMAZON_MACHINE_IMAGE`, or `CONTAINER`. Matches listings that you
    #     can deploy or access in those ways.
    #
    #   MAX\_AVERAGE\_CUSTOMER\_RATING
    #
    #   : A single rating between `0.0` and `5.0`. Matches listings whose
    #     average customer rating is at or below that value.
    #
    #   MIN\_AVERAGE\_CUSTOMER\_RATING
    #
    #   : A single rating between `0.0` and `5.0`. Matches listings whose
    #     average customer rating is at or above that value.
    #
    #   NUMBER\_OF\_PRODUCTS
    #
    #   : `SINGLE_PRODUCT` or `MULTI_PRODUCT`. Matches single-product
    #     listings or multi-product solutions.
    #
    #   PRICING\_MODEL
    #
    #   : One or more of `BYOL`, `CONTRACT`, `FREE`, and `USAGE`. Matches
    #     listings with offers that use those pricing models.
    #
    #   PRICING\_UNIT
    #
    #   : One or more pricing units, such as `USERS`, `HOSTS`, or
    #     `REQUESTS`. Matches listings that bill by those units.
    #
    #   PRODUCT\_ID
    #
    #   : One or more product identifiers. Matches listings that contain
    #     those products.
    #
    #   PUBLISHER
    #
    #   : One or more publisher identifiers. Matches listings from those
    #     sellers.
    #
    #   SELLER\_ENGAGEMENT
    #
    #   : One or more `SellerEngagementType` values, such as `BUY_NOW` or
    #     `REQUEST_FOR_DEMO`. Matches listings that offer those ways to
    #     engage with the seller.
    #
    #   SPECIALIZATION
    #
    #   : One or more specialization identifiers. Matches listings that
    #     earned those specializations.
    #
    #   SPECIALIZATION\_CATEGORY
    #
    #   : One or more specialization category identifiers. Matches listings
    #     that earned a category under a specialization.
    #
    #   TRUST\_CENTER
    #
    #   : The single value `HAS_TRUST_CENTER`. Matches listings that have a
    #     trust center.
    #
    #   Use `SearchFacets` to retrieve the values available for `CATEGORY`,
    #   `PUBLISHER`, `CERTIFICATES`, `SPECIALIZATION`, and
    #   `SPECIALIZATION_CATEGORY`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchFilter AWS API Documentation
    #
    class SearchFilter < Struct.new(
      :filter_type,
      :filter_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locale
    #   The preferred locale for response content, as a Best Current
    #   Practice 47 (BCP 47) language tag or a comma-separated priority list
    #   of language tags. See `Locale` for supported values, constraints,
    #   fallback behavior, and the default locale. If you omit this field,
    #   the service returns content in the default locale.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   The search query text to find relevant listings.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to narrow search results. A result must match every filter.
    #   Within one filter, a result matches if it has any of the values.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of listings to return in each call. If you omit
    #   this field, the default is 25. Use `nextToken` to retrieve the next
    #   page.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. If you do not specify a value, the
    #   service sorts by `RELEVANCE`. This field has one of the following
    #   values:
    #
    #   AVERAGE\_CUSTOMER\_RATING
    #
    #   : Sorts by average customer rating.
    #
    #   RELEVANCE
    #
    #   : Sorts by relevance to the search query.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort direction. If you do not specify a value, the service sorts
    #   in `DESCENDING` order. This field has one of the following values:
    #
    #   ASCENDING
    #
    #   : Sorts from lowest to highest.
    #
    #   DESCENDING
    #
    #   : Sorts from highest to lowest.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchListingsInput AWS API Documentation
    #
    class SearchListingsInput < Struct.new(
      :locale,
      :search_text,
      :filters,
      :max_results,
      :sort_by,
      :sort_order,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] total_results
    #   The total number of listings matching the search criteria.
    #   @return [Integer]
    #
    # @!attribute [rw] listing_summaries
    #   The listing summaries matching the search criteria. Each summary
    #   includes the listing name, description, badges, categories, pricing
    #   models, reviews, and associated products.
    #   @return [Array<Types::ListingSummary>]
    #
    # @!attribute [rw] next_token
    #   If the service returns `nextToken`, more results are available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again with the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. An expired pagination token returns a
    #   `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchListingsOutput AWS API Documentation
    #
    class SearchListingsOutput < Struct.new(
      :total_results,
      :listing_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A selector used to choose a specific configuration within a
    # configurable upfront rate card.
    #
    # @!attribute [rw] type
    #   The category of the selector, such as `Duration`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the selector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/Selector AWS API Documentation
    #
    class Selector < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A way you can engage with the seller of a product, such as requesting
    # a private offer or a demo.
    #
    # @!attribute [rw] engagement_type
    #   The type of engagement. This field has one of the following values:
    #
    #   BUY\_NOW
    #
    #   : The product is available for immediate purchase.
    #
    #   EXPRESS\_PRIVATE\_OFFER
    #
    #   : You can request an express private offer and accept it
    #     immediately.
    #
    #   REQUEST\_FOR\_DEMO
    #
    #   : You can request a demo from the seller.
    #
    #   REQUEST\_FOR\_PRIVATE\_OFFER
    #
    #   : You can request a private offer from the seller.
    #
    #   TRY\_FOR\_FREE
    #
    #   : The product offers a free trial.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The format of the engagement value, such as a URL.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The engagement value, such as a URL to the engagement form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SellerEngagement AWS API Documentation
    #
    class SellerEngagement < Struct.new(
      :engagement_type,
      :content_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a seller, including the profile identifier and
    # display name.
    #
    # @!attribute [rw] seller_profile_id
    #   The unique identifier of the seller profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the seller.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SellerInformation AWS API Documentation
    #
    class SellerInformation < Struct.new(
      :seller_profile_id,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specialization earned for the listing, such as an AWS Competency.
    #
    # @!attribute [rw] specialization_id
    #   The unique identifier of the specialization.
    #   @return [String]
    #
    # @!attribute [rw] specialization_name
    #   The name of the specialization displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the specialization displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] specialization_types
    #   The types that categorize this specialization.
    #   @return [Array<Types::SpecializationTypeDetail>]
    #
    # @!attribute [rw] case_study_ids
    #   The identifiers of the case studies that this specialization cites.
    #   Retrieve the case studies with the `CASE_STUDY` attribute type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/Specialization AWS API Documentation
    #
    class Specialization < Struct.new(
      :specialization_id,
      :specialization_name,
      :description,
      :specialization_types,
      :case_study_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A category under a specialization that the listing earned.
    #
    # @!attribute [rw] specialization_category_id
    #   The unique identifier of the category.
    #   @return [String]
    #
    # @!attribute [rw] specialization_category_name
    #   The name of the category displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] parent_specialization_id
    #   The identifier of the parent specialization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SpecializationCategory AWS API Documentation
    #
    class SpecializationCategory < Struct.new(
      :specialization_category_id,
      :specialization_category_name,
      :parent_specialization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specialization result for a listing. Exactly one member is set: a
    # specialization or a category under one.
    #
    # @note SpecializationDetail is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SpecializationDetail corresponding to the set member.
    #
    # @!attribute [rw] specialization
    #   A specialization earned for the listing.
    #   @return [Types::Specialization]
    #
    # @!attribute [rw] specialization_category
    #   A category under a specialization that the listing earned.
    #   @return [Types::SpecializationCategory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SpecializationDetail AWS API Documentation
    #
    class SpecializationDetail < Struct.new(
      :specialization,
      :specialization_category,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Specialization < SpecializationDetail; end
      class SpecializationCategory < SpecializationDetail; end
      class Unknown < SpecializationDetail; end
    end

    # Describes a specialization type with its display information.
    #
    # @!attribute [rw] specialization_type
    #   The specialization type.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the specialization type displayed to you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SpecializationTypeDetail AWS API Documentation
    #
    class SpecializationTypeDetail < Struct.new(
      :specialization_type,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a support term that includes the refund policy for the
    # offer.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] refund_policy
    #   The refund policy description for the offer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SupportTerm AWS API Documentation
    #
    class SupportTerm < Struct.new(
      :id,
      :type,
      :refund_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structural template defining how a specific term type is reshaped on
    # each renewal cycle. Exactly one variant is present.
    #
    # @note TermTemplate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TermTemplate corresponding to the set member.
    #
    # @!attribute [rw] payment_schedule_term_template
    #   The installment schedule used to structure payments on the renewal
    #   offer.
    #   @return [Types::PaymentScheduleTermTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TermTemplate AWS API Documentation
    #
    class TermTemplate < Struct.new(
      :payment_schedule_term_template,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PaymentScheduleTermTemplate < TermTemplate; end
      class Unknown < TermTemplate; end
    end

    # The request was denied due to request throttling. Reduce the frequency
    # of your requests and retry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A trust center certification associated with a listing.
    #
    # @!attribute [rw] certification_type
    #   The certification type. The set of values is open and can include
    #   provider-defined certifications.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The authoritative certification name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The URL of the certification logo.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterCertificationAttribute AWS API Documentation
    #
    class TrustCenterCertificationAttribute < Struct.new(
      :certification_type,
      :display_name,
      :logo_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a certification associated with a listing.
    #
    # @!attribute [rw] certification_type
    #   The certification type. The set of values is open and can include
    #   provider-defined certifications.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The certification name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The URL of the certification logo.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterCertificationSummary AWS API Documentation
    #
    class TrustCenterCertificationSummary < Struct.new(
      :certification_type,
      :display_name,
      :logo_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control that a trust center publishes.
    #
    # @!attribute [rw] name
    #   The name of the control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the control.
    #   @return [String]
    #
    # @!attribute [rw] domains
    #   The trust center domains to which the control applies.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterControl AWS API Documentation
    #
    class TrustCenterControl < Struct.new(
      :name,
      :description,
      :domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # A trust center document associated with a listing.
    #
    # @!attribute [rw] content_type
    #   The format of the document resource value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The URL used to download, view, or request access to the document.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The document name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] subject_area
    #   The subject area of the document.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   How the document can be accessed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterDocumentAttribute AWS API Documentation
    #
    class TrustCenterDocumentAttribute < Struct.new(
      :content_type,
      :value,
      :display_name,
      :subject_area,
      :access_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A frequently asked question that a trust center publishes.
    #
    # @!attribute [rw] question
    #   The question.
    #   @return [String]
    #
    # @!attribute [rw] answer
    #   The answer.
    #   @return [String]
    #
    # @!attribute [rw] subject_area
    #   The subject area of the question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterFaqAttribute AWS API Documentation
    #
    class TrustCenterFaqAttribute < Struct.new(
      :question,
      :answer,
      :subject_area)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source of trust center information.
    #
    # @!attribute [rw] content_type
    #   The format of the trust center source value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The URL of the trust center.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The trust center provider name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider hosting the trust center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterSource AWS API Documentation
    #
    class TrustCenterSource < Struct.new(
      :content_type,
      :value,
      :display_name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a source of trust center information.
    #
    # @!attribute [rw] content_type
    #   The format of the trust center source value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The URL of the trust center.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The trust center provider name displayed to you.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider hosting the trust center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterSourceSummary AWS API Documentation
    #
    class TrustCenterSourceSummary < Struct.new(
      :content_type,
      :value,
      :display_name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of trust center information associated with a listing.
    #
    # @!attribute [rw] source_summaries
    #   Trust center source summaries associated with the listing.
    #   @return [Array<Types::TrustCenterSourceSummary>]
    #
    # @!attribute [rw] certification_summaries
    #   A subset of certifications associated with the listing, selected by
    #   importance.
    #   @return [Array<Types::TrustCenterCertificationSummary>]
    #
    # @!attribute [rw] total_certification_count
    #   The total number of distinct certifications associated with the
    #   listing, including certifications omitted from
    #   `certificationSummaries`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterSummary AWS API Documentation
    #
    class TrustCenterSummary < Struct.new(
      :source_summaries,
      :certification_summaries,
      :total_certification_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update that a trust center publishes.
    #
    # @!attribute [rw] title
    #   The update title.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The update description.
    #   @return [String]
    #
    # @!attribute [rw] published_time
    #   The time when the update was published.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/TrustCenterUpdateAttribute AWS API Documentation
    #
    class TrustCenterUpdateAttribute < Struct.new(
      :title,
      :description,
      :published_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a usage-based pricing term, typically pay-as-you-go. You are
    # charged based on your use of the product.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices in this term.
    #   @return [String]
    #
    # @!attribute [rw] rate_cards
    #   The rate cards containing per-unit rates for usage-based pricing.
    #   @return [Array<Types::UsageBasedRateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UsageBasedPricingTerm AWS API Documentation
    #
    class UsageBasedPricingTerm < Struct.new(
      :id,
      :type,
      :currency_code,
      :rate_cards)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rate card within a usage-based pricing term, containing per-unit
    # rates.
    #
    # @!attribute [rw] rate_card
    #   The per-unit rates for this usage-based rate card.
    #   @return [Array<Types::RateCardItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UsageBasedRateCardItem AWS API Documentation
    #
    class UsageBasedRateCardItem < Struct.new(
      :rate_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # A use case describing a scenario where the product can be applied.
    #
    # @!attribute [rw] description
    #   A description of the use case.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the use case.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The machine-readable identifier of the use case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UseCase AWS API Documentation
    #
    class UseCase < Struct.new(
      :description,
      :display_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entry in the list of use cases for a listing.
    #
    # @!attribute [rw] use_case
    #   The use case details.
    #   @return [Types::UseCase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UseCaseEntry AWS API Documentation
    #
    class UseCaseEntry < Struct.new(
      :use_case)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name and identifier of a use case.
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the use case.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The machine-readable identifier of the use case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UseCaseInformation AWS API Documentation
    #
    class UseCaseInformation < Struct.new(
      :display_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The use cases of a listing, in summary form.
    #
    # @!attribute [rw] use_cases
    #   The use cases, in the order the seller defined them.
    #   @return [Array<Types::UseCaseSummaryEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UseCaseSummary AWS API Documentation
    #
    class UseCaseSummary < Struct.new(
      :use_cases)
      SENSITIVE = []
      include Aws::Structure
    end

    # A use case entry, as in `GetListing` without the description.
    #
    # @!attribute [rw] use_case
    #   The name and identifier of the use case.
    #   @return [Types::UseCaseInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/UseCaseSummaryEntry AWS API Documentation
    #
    class UseCaseSummaryEntry < Struct.new(
      :use_case)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    # Check the `reason` field for the constraint that failed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the input fails to satisfy the constraints that the
    #   Discovery API specifies. This field has one of the following values:
    #
    #   INVALID\_PAGINATION\_TOKEN
    #
    #   : The `nextToken` value is malformed, expired, or belongs to a
    #     different request. Start the pagination again from the first page.
    #
    #   MALFORMED\_REQUEST\_PARAMETERS
    #
    #   : One or more request parameters have an invalid value. Correct the
    #     parameters that you specified, and then resubmit your request.
    #
    #   PAGINATION\_LIMIT\_EXCEEDED
    #
    #   : The request asks for results beyond the deepest page that the
    #     operation returns. Narrow your request with filters or a more
    #     specific search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a validity term that specifies the duration or date range of
    # an agreement.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] agreement_duration
    #   The duration of the agreement, in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] agreement_end_date
    #   The date when the agreement ends.
    #   @return [Time]
    #
    # @!attribute [rw] agreement_start_date
    #   The date when the agreement starts.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ValidityTerm AWS API Documentation
    #
    class ValidityTerm < Struct.new(
      :id,
      :type,
      :agreement_duration,
      :agreement_end_date,
      :agreement_start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a variable payment term with a maximum total charge amount.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Defines the currency for the prices in this term.
    #   @return [String]
    #
    # @!attribute [rw] max_total_charge_amount
    #   The maximum total amount that can be charged under this term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/VariablePaymentTerm AWS API Documentation
    #
    class VariablePaymentTerm < Struct.new(
      :id,
      :type,
      :currency_code,
      :max_total_charge_amount)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

