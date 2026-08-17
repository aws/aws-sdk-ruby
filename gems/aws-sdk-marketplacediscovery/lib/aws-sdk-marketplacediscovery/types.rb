# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceDiscovery
  module Types

    # You don't have sufficient access to perform this action.
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
    #   Recommended instance types for running this AMI.
    #   @return [Types::AmazonMachineImageRecommendation]
    #
    # @!attribute [rw] release_notes
    #   Release notes describing changes in this version of the fulfillment
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this fulfillment option.
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
      :usage_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an operating system supported by an AMI fulfillment option.
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

    # Recommended instance types for running an AMI fulfillment option.
    #
    # @!attribute [rw] instance_type
    #   The recommended EC2 instance type for this AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/AmazonMachineImageRecommendation AWS API Documentation
    #
    class AmazonMachineImageRecommendation < Struct.new(
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an API-based fulfillment option, where the product is
    # accessed through an API integration.
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

    # Defines a Bring Your Own License (BYOL) pricing term, where buyers use
    # their existing license for the product.
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

    # A category used to classify a listing or product into a logical group.
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
    #   Release notes describing changes in this version of the fulfillment
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to deploy and use this CloudFormation template.
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
      :usage_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a configurable upfront pricing term with selectable rate
    # cards, where buyers choose from predefined pricing configurations.
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
    #   Constraints on how the buyer can configure this rate card, such as
    #   whether multiple dimensions can be selected.
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

    # Constraints that control how a buyer can configure a rate card.
    #
    # @!attribute [rw] multiple_dimension_selection
    #   Whether the buyer can select multiple dimensions. Values are
    #   `Allowed` or `Disallowed`.
    #   @return [String]
    #
    # @!attribute [rw] quantity_configuration
    #   Whether the buyer can configure quantities. Values are `Allowed` or
    #   `Disallowed`.
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
    #   Release notes describing changes in this version of the fulfillment
    #   option.
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

    # Describes an operating system supported by a container fulfillment
    # option.
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

    # A label used to group or categorize pricing dimensions, such as by
    # region or SageMaker option.
    #
    # @!attribute [rw] label_type
    #   The type of the dimension label, such as `Region` or
    #   `SagemakerOption`.
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

    # A legal document associated with a legal term, such as a EULA or data
    # subscription agreement.
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

    # Describes an EC2 Image Builder component fulfillment option.
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
    #   The AWS services supported by this EC2 Image Builder component.
    #   @return [Array<Types::AwsSupportedService>]
    #
    # @!attribute [rw] release_notes
    #   Release notes describing changes in this version of the fulfillment
    #   option.
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

    # Describes an Amazon EKS add-on fulfillment option.
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
    #   Release notes describing changes in this version of the fulfillment
    #   option.
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

    # Describes an operating system supported by an EKS add-on fulfillment
    # option.
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

    # Defines a fixed upfront pricing term with a pre-paid amount and
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
    #   The entitlements granted to the buyer as part of this term.
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

    # Defines a free trial pricing term that enables customers to try the
    # product before purchasing.
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
    #   The entitlements granted to the buyer during the free trial.
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
    #   An Amazon Machine Image (AMI) fulfillment option for EC2 deployment.
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
    #   An EC2 Image Builder component fulfillment option.
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

    # @!attribute [rw] listing_id
    #   The unique identifier of the listing to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetListingInput AWS API Documentation
    #
    class GetListingInput < Struct.new(
      :listing_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The categories used to classify this listing into logical groups.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] fulfillment_option_summaries
    #   A summary of fulfillment options available for deploying or
    #   accessing the listing, such as AMI, SaaS, or Container.
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
    #   usage-based, contract, BYOL, or free.
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
    #   Engagement options available to potential buyers, such as requesting
    #   a private offer or requesting a demo.
    #   @return [Array<Types::SellerEngagement>]
    #
    # @!attribute [rw] short_description
    #   A 1–3 sentence summary describing the key aspects of the listing.
    #   @return [String]
    #
    # @!attribute [rw] use_cases
    #   Use cases associated with the listing, describing scenarios where
    #   the product can be applied.
    #   @return [Array<Types::UseCaseEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetListingOutput AWS API Documentation
    #
    class GetListingOutput < Struct.new(
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
      :use_cases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] offer_id
    #   The unique identifier of the offer to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferInput AWS API Documentation
    #
    class GetOfferInput < Struct.new(
      :offer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] offer_id
    #   The unique identifier of the offer.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The name of the catalog that the offer belongs to.
    #   @return [String]
    #
    # @!attribute [rw] offer_name
    #   The display name of the offer. This is free-form text provided by
    #   the seller.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The date and time until when the offer can be procured. This value
    #   is null for offers that never expire.
    #   @return [Time]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the offer became available to the buyer.
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
    #   An encoded string to be passed by the acceptor of the terms when
    #   creating an agreement.
    #   @return [String]
    #
    # @!attribute [rw] replacement_agreement_id
    #   The identifier of the existing agreement that this offer would
    #   replace. Enables agreement-based offer functionality.
    #   @return [String]
    #
    # @!attribute [rw] pricing_model
    #   The pricing model that determines how buyers are charged, such as
    #   usage-based, contract, BYOL, or free.
    #   @return [Types::PricingModel]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the offer, such as private
    #   pricing, future dated, or replacement offer.
    #   @return [Array<Types::PurchaseOptionBadge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferOutput AWS API Documentation
    #
    class GetOfferOutput < Struct.new(
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

    # @!attribute [rw] offer_set_id
    #   The unique identifier of the offer set to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferSetInput AWS API Documentation
    #
    class GetOfferSetInput < Struct.new(
      :offer_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The date and time when the offer set became available to the buyer.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time when the offer set expires and is no longer
    #   available for procurement.
    #   @return [Time]
    #
    # @!attribute [rw] buyer_notes
    #   Detailed information about the offer set that helps buyers
    #   understand its purpose and contents.
    #   @return [String]
    #
    # @!attribute [rw] seller_of_record
    #   The entity responsible for selling the products under this offer
    #   set.
    #   @return [Types::SellerInformation]
    #
    # @!attribute [rw] badges
    #   Badges indicating special attributes of the offer set, such as
    #   private pricing or future dated.
    #   @return [Array<Types::PurchaseOptionBadge>]
    #
    # @!attribute [rw] associated_entities
    #   The products and offers included in this offer set.
    #   @return [Array<Types::OfferSetAssociatedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferSetOutput AWS API Documentation
    #
    class GetOfferSetOutput < Struct.new(
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

    # @!attribute [rw] offer_id
    #   The unique identifier of the offer whose terms to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to get more results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferTermsInput AWS API Documentation
    #
    class GetOfferTermsInput < Struct.new(
      :offer_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] offer_terms
    #   The terms attached to the offer. Each element contains exactly one
    #   term type.
    #   @return [Array<Types::OfferTerm>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferTermsOutput AWS API Documentation
    #
    class GetOfferTermsOutput < Struct.new(
      :offer_terms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The unique identifier of the product to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetProductInput AWS API Documentation
    #
    class GetProductInput < Struct.new(
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Indicates whether the product is deployed on AWS infrastructure.
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
    #   accessing the product, such as AMI, SaaS, or Container.
    #   @return [Array<Types::FulfillmentOptionSummary>]
    #
    # @!attribute [rw] categories
    #   The categories used to classify this product into logical groups.
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
    #   Engagement options available to potential buyers, such as requesting
    #   a private offer or requesting a demo.
    #   @return [Array<Types::SellerEngagement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetProductOutput AWS API Documentation
    #
    class GetProductOutput < Struct.new(
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
      :seller_engagements)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entitlement granted to the buyer as part of a pricing term.
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
    #   Labels used to categorize this entitlement, such as by region.
    #   @return [Array<Types::DimensionLabel>]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] max_quantity
    #   The maximum quantity of the entitlement that can be granted.
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
    #   Release notes describing changes in this version of the fulfillment
    #   option.
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

    # Describes an operating system supported by a Helm chart fulfillment
    # option.
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

    # Defines a legal term containing documents proposed to buyers, such as
    # EULAs and data subscription agreements.
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
    #   The legal documents proposed to the buyer as part of this term.
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

    # @!attribute [rw] product_id
    #   The unique identifier of the product for which to list fulfillment
    #   options.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to get more results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListFulfillmentOptionsInput AWS API Documentation
    #
    class ListFulfillmentOptionsInput < Struct.new(
      :product_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fulfillment_options
    #   The fulfillment options available for the product. Each option
    #   describes how the buyer can deploy or access the product.
    #   @return [Array<Types::FulfillmentOption>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListFulfillmentOptionsOutput AWS API Documentation
    #
    class ListFulfillmentOptionsOutput < Struct.new(
      :fulfillment_options,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters to narrow the results. Multiple filters are combined with
    #   AND logic. Multiple values within the same filter are combined with
    #   OR logic.
    #   @return [Array<Types::PurchaseOptionFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to get more results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListPurchaseOptionsInput AWS API Documentation
    #
    class ListPurchaseOptionsInput < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] purchase_options
    #   The purchase options available to the buyer. Each option is either
    #   an offer for a single product or an offer set spanning multiple
    #   products.
    #   @return [Array<Types::PurchaseOptionSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
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

    # A badge indicating a special attribute of a listing, such as free tier
    # eligibility or Quick Launch support.
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the badge.
    #   @return [String]
    #
    # @!attribute [rw] badge_type
    #   The machine-readable type of the badge.
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
    #   The categories used to classify this listing into logical groups.
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
      :associated_entities)
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

    # Defines a net payment term that sets how many days after the invoice
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
    #   Defines a Bring Your Own License (BYOL) pricing term, where buyers
    #   use their existing license for the product.
    #   @return [Types::ByolPricingTerm]
    #
    # @!attribute [rw] configurable_upfront_pricing_term
    #   Defines a configurable upfront pricing term with selectable rate
    #   cards, where buyers choose from predefined pricing configurations.
    #   @return [Types::ConfigurableUpfrontPricingTerm]
    #
    # @!attribute [rw] fixed_upfront_pricing_term
    #   Defines a fixed upfront pricing term with a pre-paid amount and
    #   granted entitlements.
    #   @return [Types::FixedUpfrontPricingTerm]
    #
    # @!attribute [rw] free_trial_pricing_term
    #   Defines a free trial pricing term that enables customers to try the
    #   product before purchasing.
    #   @return [Types::FreeTrialPricingTerm]
    #
    # @!attribute [rw] legal_term
    #   Defines a legal term containing documents proposed to buyers, such
    #   as EULAs and data subscription agreements.
    #   @return [Types::LegalTerm]
    #
    # @!attribute [rw] payment_schedule_term
    #   Defines a payment schedule term with installment payments at
    #   specified dates.
    #   @return [Types::PaymentScheduleTerm]
    #
    # @!attribute [rw] recurring_payment_term
    #   Defines a recurring payment term with fixed charges at regular
    #   billing intervals.
    #   @return [Types::RecurringPaymentTerm]
    #
    # @!attribute [rw] renewal_term
    #   Defines a renewal term that enables automatic agreement renewal.
    #   @return [Types::RenewalTerm]
    #
    # @!attribute [rw] support_term
    #   Defines a support term that includes the refund policy for the
    #   offer.
    #   @return [Types::SupportTerm]
    #
    # @!attribute [rw] usage_based_pricing_term
    #   Defines a usage-based pricing term (typically pay-as-you-go), where
    #   buyers are charged based on product usage.
    #   @return [Types::UsageBasedPricingTerm]
    #
    # @!attribute [rw] validity_term
    #   Defines a validity term that specifies the duration or date range of
    #   an agreement.
    #   @return [Types::ValidityTerm]
    #
    # @!attribute [rw] variable_payment_term
    #   Defines a variable payment term with a maximum total charge amount.
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

    # Defines a payment schedule term with installment payments at specified
    # dates.
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

    # A pricing model that determines how buyers are charged for a listing,
    # such as usage-based, contract, BYOL, or free.
    #
    # @!attribute [rw] pricing_model_type
    #   The machine-readable type of the pricing model.
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
    # private pricing or future dated.
    #
    # @!attribute [rw] display_name
    #   The human-readable name of the badge.
    #   @return [String]
    #
    # @!attribute [rw] badge_type
    #   The machine-readable type of the badge.
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
    #   The type of filter to apply, such as `PRODUCT_ID`,
    #   `VISIBILITY_SCOPE`, or `PURCHASE_OPTION_TYPE`.
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to filter by. Multiple values within the same filter are
    #   combined with OR logic.
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
    # available to the buyer, including the seller, badges, and associated
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
    #   The type of purchase option. Values are `OFFER` for a single-product
    #   offer or `OFFERSET` for a bundled offer set.
    #   @return [String]
    #
    # @!attribute [rw] purchase_option_name
    #   The display name of the purchase option.
    #   @return [String]
    #
    # @!attribute [rw] available_from_time
    #   The date and time when the purchase option became available to the
    #   buyer.
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
    #   private pricing or future dated.
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
    #   Labels used to categorize this dimension, such as by region.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/RateCardItem AWS API Documentation
    #
    class RateCardItem < Struct.new(
      :dimension_key,
      :display_name,
      :description,
      :dimension_labels,
      :unit,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a recurring payment term with fixed charges at regular billing
    # intervals.
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

    # Defines a renewal term that enables automatic agreement renewal.
    #
    # @!attribute [rw] id
    #   The unique identifier of the term.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The category of the term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/RenewalTerm AWS API Documentation
    #
    class RenewalTerm < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that provides supplementary information about a product,
    # such as documentation links, support contacts, or usage instructions.
    #
    # @!attribute [rw] resource_type
    #   The category of the resource, such as manufacturer support or usage
    #   instructions.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The format of the resource content, such as a URL, email address, or
    #   text.
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

    # The specified resource doesn't exist.
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
    #   The name of the review source, such as AWS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The machine-readable identifier of the review source.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL where the reviews can be accessed at the source.
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
    #   Review summaries from different sources, such as AWS Marketplace.
    #   @return [Array<Types::ReviewSourceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ReviewSummary AWS API Documentation
    #
    class ReviewSummary < Struct.new(
      :review_source_summaries)
      SENSITIVE = []
      include Aws::Structure
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
    #   Instructions on how to access and use this SaaS product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SaasFulfillmentOption AWS API Documentation
    #
    class SaasFulfillmentOption < Struct.new(
      :fulfillment_option_id,
      :fulfillment_option_type,
      :fulfillment_option_display_name,
      :fulfillment_url,
      :usage_instructions)
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
    #   Release notes describing changes in this version of the fulfillment
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to use this SageMaker algorithm.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   Recommended instance types for training and inference with this
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

    # Recommended instance types for training and inference with a SageMaker
    # algorithm.
    #
    # @!attribute [rw] recommended_batch_transform_instance_type
    #   The recommended instance type for batch inference.
    #   @return [String]
    #
    # @!attribute [rw] recommended_realtime_inference_instance_type
    #   The recommended instance type for real-time inference.
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
    #   Release notes describing changes in this version of the fulfillment
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] usage_instructions
    #   Instructions on how to use this SageMaker model.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   Recommended instance types for inference with this model.
    #   @return [Types::SageMakerModelRecommendation]
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
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Recommended instance types for inference with a SageMaker model.
    #
    # @!attribute [rw] recommended_batch_transform_instance_type
    #   The recommended instance type for batch inference.
    #   @return [String]
    #
    # @!attribute [rw] recommended_realtime_inference_instance_type
    #   The recommended instance type for real-time inference.
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

    # @!attribute [rw] search_text
    #   The search query text to filter listings before retrieving facets.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply before retrieving facets. Multiple filters are
    #   combined with AND logic. Multiple values within the same filter are
    #   combined with OR logic.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] facet_types
    #   A list of specific facet types to retrieve. If empty or null, all
    #   available facets are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchFacetsInput AWS API Documentation
    #
    class SearchFacetsInput < Struct.new(
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
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
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
    #   The type of filter to apply.
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The values to filter by. Term filters accept multiple values (OR
    #   logic). Range filters (MIN/MAX\_AVERAGE\_CUSTOMER\_RATING) accept a
    #   single value between 0.0 and 5.0.
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

    # @!attribute [rw] search_text
    #   The search query text to find relevant listings.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to narrow search results. Multiple filters are combined with
    #   AND logic. Multiple values within the same filter are combined with
    #   OR logic.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to get more results.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. Valid values are `RELEVANCE` and
    #   `AVERAGE_CUSTOMER_RATING`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort direction. Valid values are `DESCENDING` and `ASCENDING`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchListingsInput AWS API Documentation
    #
    class SearchListingsInput < Struct.new(
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
    #   If `nextToken` is returned, there are more results available. Make
    #   the call again using the returned token to retrieve the next page.
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

    # An engagement option available to potential buyers of a product, such
    # as requesting a private offer or a demo.
    #
    # @!attribute [rw] engagement_type
    #   The type of engagement, such as `REQUEST_FOR_PRIVATE_OFFER` or
    #   `REQUEST_FOR_DEMO`.
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

    # Defines a support term that includes the refund policy for the offer.
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

    # The request was denied due to request throttling.
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

    # Defines a usage-based pricing term (typically pay-as-you-go), where
    # buyers are charged based on product usage.
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

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the input fails to satisfy the constraints specified
    #   by the service.
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

    # Defines a validity term that specifies the duration or date range of
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

    # Defines a variable payment term with a maximum total charge amount.
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

