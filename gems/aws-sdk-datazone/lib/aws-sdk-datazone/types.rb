# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataZone
  module Types

    # Specifies the prediction (aka, the automatically generated piece of
    # metadata) and the target (for example, a column name) that can be
    # accepted.
    #
    # @!attribute [rw] prediction_choice
    #   Specifies the prediction (aka, the automatically generated piece of
    #   metadata) that can be accepted.
    #   @return [Integer]
    #
    # @!attribute [rw] prediction_target
    #   Specifies the target (for example, a column name) where a prediction
    #   can be accepted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptChoice AWS API Documentation
    #
    class AcceptChoice < Struct.new(
      :prediction_choice,
      :prediction_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accept_choices
    #   @return [Array<Types::AcceptChoice>]
    #
    # @!attribute [rw] accept_rule
    #   Specifies the rule (or the conditions) under which a prediction can
    #   be accepted.
    #   @return [Types::AcceptRule]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptPredictionsInput AWS API Documentation
    #
    class AcceptPredictionsInput < Struct.new(
      :accept_choices,
      :accept_rule,
      :client_token,
      :domain_identifier,
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptPredictionsOutput AWS API Documentation
    #
    class AcceptPredictionsOutput < Struct.new(
      :asset_id,
      :domain_id,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the rule and the threshold under which a prediction can be
    # accepted.
    #
    # @!attribute [rw] rule
    #   Specifies whether you want to accept the top prediction for all
    #   targets or none.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The confidence score that specifies the condition at which a
    #   prediction can be accepted.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptRule AWS API Documentation
    #
    class AcceptRule < Struct.new(
      :rule,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] decision_comment
    #   A description that specifies the reason for accepting the specified
    #   subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The Amazon DataZone domain where the specified subscription request
    #   is being accepted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the subscription request that is to be
    #   accepted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptSubscriptionRequestInput AWS API Documentation
    #
    class AcceptSubscriptionRequestInput < Struct.new(
      :decision_comment,
      :domain_identifier,
      :identifier)
      SENSITIVE = [:decision_comment]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp that specifies when the subscription request was
    #   accepted.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Specifies the Amazon DataZone user that accepted the specified
    #   subscription request.
    #   @return [String]
    #
    # @!attribute [rw] decision_comment
    #   Specifies the reason for accepting the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Amazon DataZone domain where the
    #   specified subscription request was accepted.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   Specifies the reason for requesting a subscription to the asset.
    #   @return [String]
    #
    # @!attribute [rw] reviewer_id
    #   Specifes the ID of the Amazon DataZone user who reviewed the
    #   subscription request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   Specifies the asset for which the subscription request was created.
    #   @return [Array<Types::SubscribedListing>]
    #
    # @!attribute [rw] subscribed_principals
    #   Specifies the Amazon DataZone users who are subscribed to the asset
    #   specified in the subscription request.
    #   @return [Array<Types::SubscribedPrincipal>]
    #
    # @!attribute [rw] updated_at
    #   Specifies the timestamp when subscription request was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   Specifies the Amazon DataZone user who updated the subscription
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptSubscriptionRequestOutput AWS API Documentation
    #
    class AcceptSubscriptionRequestOutput < Struct.new(
      :created_at,
      :created_by,
      :decision_comment,
      :domain_id,
      :id,
      :request_reason,
      :reviewer_id,
      :status,
      :subscribed_listings,
      :subscribed_principals,
      :updated_at,
      :updated_by)
      SENSITIVE = [:decision_comment, :request_reason]
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Amazon DataZone inventory asset.
    #
    # @!attribute [rw] additional_attributes
    #   The additional attributes of a Amazon DataZone inventory asset.
    #   @return [Types::AssetItemAdditionalAttributes]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the Amazon DataZone inventory asset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an Amazon DataZone inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the inventory
    #   asset exists.
    #   @return [String]
    #
    # @!attribute [rw] external_identifier
    #   The external identifier of the Amazon DataZone inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp of when the first revision of the inventory asset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The Amazon DataZone user who created the first revision of the
    #   inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms attached to the Amazon DataZone inventory asset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   the identifier of the Amazon DataZone inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the Amazon DataZone project that owns the
    #   inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] type_identifier
    #   The identifier of the asset type of the specified Amazon DataZone
    #   inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision of the inventory asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetItem AWS API Documentation
    #
    class AssetItem < Struct.new(
      :additional_attributes,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :external_identifier,
      :first_revision_created_at,
      :first_revision_created_by,
      :glossary_terms,
      :identifier,
      :name,
      :owning_project_id,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :external_identifier, :name]
      include Aws::Structure
    end

    # The additional attributes of an inventory asset.
    #
    # @!attribute [rw] forms_output
    #   The forms included in the additional attributes of an inventory
    #   asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] read_only_forms_output
    #   The read-only forms included in the additional attributes of an
    #   inventory asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetItemAdditionalAttributes AWS API Documentation
    #
    class AssetItemAdditionalAttributes < Struct.new(
      :forms_output,
      :read_only_forms_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset published in an Amazon DataZone catalog.
    #
    # @!attribute [rw] asset_id
    #   The identifier of an asset published in an Amazon DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] asset_revision
    #   The revision of an asset published in an Amazon DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of an asset published in an Amazon DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when an asset published in an Amazon DataZone
    #   catalog was created.
    #   @return [Time]
    #
    # @!attribute [rw] forms
    #   The metadata forms attached to an asset published in an Amazon
    #   DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms attached to an asset published in an Amazon
    #   DataZone catalog.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the project where an asset published in an Amazon
    #   DataZone catalog exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetListing AWS API Documentation
    #
    class AssetListing < Struct.new(
      :asset_id,
      :asset_revision,
      :asset_type,
      :created_at,
      :forms,
      :glossary_terms,
      :owning_project_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an asset published in an Amazon DataZone catalog.
    #
    # @!attribute [rw] listing_id
    #   The identifier of an asset published in an Amazon DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] listing_status
    #   The status of an asset published in an Amazon DataZone catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetListingDetails AWS API Documentation
    #
    class AssetListingDetails < Struct.new(
      :listing_id,
      :listing_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an asset published in an Amazon DataZone catalog.
    #
    # @!attribute [rw] additional_attributes
    #   The additional attributes of an asset published in an Amazon
    #   DataZone catalog.
    #   @return [Types::AssetListingItemAdditionalAttributes]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when an asset published in an Amazon DataZone
    #   catalog was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of an asset published in an Amazon DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   The revision of the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   Glossary terms attached to the inventory asset.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] listing_created_by
    #   The Amazon DataZone user who created the listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The identifier of the listing (asset published in Amazon DataZone
    #   catalog).
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   The revision of the listing (asset published in Amazon DataZone
    #   catalog).
    #   @return [String]
    #
    # @!attribute [rw] listing_updated_by
    #   The Amazon DataZone user who updated the listing.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the project that owns the inventory asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetListingItem AWS API Documentation
    #
    class AssetListingItem < Struct.new(
      :additional_attributes,
      :created_at,
      :description,
      :entity_id,
      :entity_revision,
      :entity_type,
      :glossary_terms,
      :listing_created_by,
      :listing_id,
      :listing_revision,
      :listing_updated_by,
      :name,
      :owning_project_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Additional attributes of an inventory asset.
    #
    # @!attribute [rw] forms
    #   The metadata forms that form additional attributes of the metadata
    #   asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetListingItemAdditionalAttributes AWS API Documentation
    #
    class AssetListingItemAdditionalAttributes < Struct.new(
      :forms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The revision of an inventory asset.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when an inventory asset revison was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the asset revision.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Amazon DataZone user who created the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the inventory asset revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision details of the inventory asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetRevision AWS API Documentation
    #
    class AssetRevision < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The identifier of the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The target name in the asset target name map.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetTargetNameMap AWS API Documentation
    #
    class AssetTargetNameMap < Struct.new(
      :asset_id,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the asset type.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the asset type was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the asset type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain where the asset type
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The forms included in the details of the asset type.
    #   @return [Hash<String,Types::FormEntryOutput>]
    #
    # @!attribute [rw] name
    #   The name of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] origin_domain_id
    #   The identifier of the Amazon DataZone domain where the asset type
    #   was originally created.
    #   @return [String]
    #
    # @!attribute [rw] origin_project_id
    #   The identifier of the Amazon DataZone project where the asset type
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the Amazon DataZone project that owns the asset
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the asset type was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetTypeItem AWS API Documentation
    #
    class AssetTypeItem < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :forms_output,
      :name,
      :origin_domain_id,
      :origin_project_id,
      :owning_project_id,
      :revision,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The configuration of the business name generation.
    #
    # @!attribute [rw] enabled
    #   Specifies whether the business name generation is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/BusinessNameGenerationConfiguration AWS API Documentation
    #
    class BusinessNameGenerationConfiguration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The unique identifier of the Amazon DataZone domain where the
    #   subscription request is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the subscription that is being cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelSubscriptionInput AWS API Documentation
    #
    class CancelSubscriptionInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp that specifies when the request to cancel the
    #   subscription was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Specifies the Amazon DataZone user who is cancelling the
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Amazon DataZone domain where the
    #   subscription is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] retain_permissions
    #   Specifies whether the permissions to the asset are retained after
    #   the subscription is cancelled.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the request to cancel the subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing
    #   The asset to which a subscription is being cancelled.
    #   @return [Types::SubscribedListing]
    #
    # @!attribute [rw] subscribed_principal
    #   The Amazon DataZone user who is made a subscriber to the specified
    #   asset by the subscription that is being cancelled.
    #   @return [Types::SubscribedPrincipal]
    #
    # @!attribute [rw] subscription_request_id
    #   The unique ID of the subscripton request for the subscription that
    #   is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp that specifies when the subscription was cancelled.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user that cancelled the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelSubscriptionOutput AWS API Documentation
    #
    class CancelSubscriptionOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :retain_permissions,
      :status,
      :subscribed_listing,
      :subscribed_principal,
      :subscription_request_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the provisioning properties of the environment blueprint.
    #
    # @!attribute [rw] template_url
    #   The template URL of the cloud formation provisioning properties of
    #   the environment blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CloudFormationProperties AWS API Documentation
    #
    class CloudFormationProperties < Struct.new(
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the parameters for the configurable environment action.
    #
    # @!attribute [rw] key
    #   The key of the configurable action parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the configurable action parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConfigurableActionParameter AWS API Documentation
    #
    class ConfigurableActionParameter < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurable action of a Amazon DataZone environment.
    #
    # @!attribute [rw] auth
    #   The authentication type of a configurable action of a Amazon
    #   DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of a configurable action in a Amazon DataZone
    #   environment.
    #   @return [Array<Types::ConfigurableActionParameter>]
    #
    # @!attribute [rw] type
    #   The type of a configurable action in a Amazon DataZone environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConfigurableEnvironmentAction AWS API Documentation
    #
    class ConfigurableEnvironmentAction < Struct.new(
      :auth,
      :parameters,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a conflict while performing this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Asset description.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   Amazon DataZone domain where the asset is created.
    #   @return [String]
    #
    # @!attribute [rw] external_identifier
    #   @return [String]
    #
    # @!attribute [rw] forms_input
    #   Metadata forms attached to the asset.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] glossary_terms
    #   Glossary terms attached to the asset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   Asset name.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The unique identifier of the project that owns this asset.
    #   @return [String]
    #
    # @!attribute [rw] prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #   @return [Types::PredictionConfiguration]
    #
    # @!attribute [rw] type_identifier
    #   The unique identifier of this asset's type.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision of this asset's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetInput AWS API Documentation
    #
    class CreateAssetInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :external_identifier,
      :forms_input,
      :glossary_terms,
      :name,
      :owning_project_identifier,
      :prediction_configuration,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :external_identifier, :forms_input, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the asset was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user that created this asset in the catalog.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the created asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the asset was created.
    #   @return [String]
    #
    # @!attribute [rw] external_identifier
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp of when the first revision of the asset took place.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The Amazon DataZone user that made the first revision of the asset.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms that are attached to the created asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms that are attached to the created asset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique identifier of the created asset.
    #   @return [String]
    #
    # @!attribute [rw] listing
    #   @return [Types::AssetListingDetails]
    #
    # @!attribute [rw] name
    #   The name of the created asset.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the Amazon DataZone project that owns the created asset.
    #   @return [String]
    #
    # @!attribute [rw] prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #   @return [Types::PredictionConfiguration]
    #
    # @!attribute [rw] read_only_forms_output
    #   The read-only metadata forms that are attached to the created asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] revision
    #   The revision of the asset.
    #   @return [String]
    #
    # @!attribute [rw] type_identifier
    #   The identifier of the created asset type.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision type of the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetOutput AWS API Documentation
    #
    class CreateAssetOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :external_identifier,
      :first_revision_created_at,
      :first_revision_created_by,
      :forms_output,
      :glossary_terms,
      :id,
      :listing,
      :name,
      :owning_project_id,
      :prediction_configuration,
      :read_only_forms_output,
      :revision,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :external_identifier, :name]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The revised description of the asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The unique identifier of the domain where the asset is being
    #   revised.
    #   @return [String]
    #
    # @!attribute [rw] forms_input
    #   The metadata forms to be attached to the asset as part of asset
    #   revision.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms to be attached to the asset as part of asset
    #   revision.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   The identifier of the asset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Te revised name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #   @return [Types::PredictionConfiguration]
    #
    # @!attribute [rw] type_revision
    #   The revision type of the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetRevisionInput AWS API Documentation
    #
    class CreateAssetRevisionInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :forms_input,
      :glossary_terms,
      :identifier,
      :name,
      :prediction_configuration,
      :type_revision)
      SENSITIVE = [:description, :forms_input, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the asset revision occured.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who performed the asset revision.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The revised asset description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Amazon DataZone domain where the asset
    #   was revised.
    #   @return [String]
    #
    # @!attribute [rw] external_identifier
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp of when the first asset revision occured.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The Amazon DataZone user who performed the first asset revision.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms that were attached to the asset as part of the
    #   asset revision.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms that were attached to the asset as part of asset
    #   revision.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique identifier of the asset revision.
    #   @return [String]
    #
    # @!attribute [rw] listing
    #   @return [Types::AssetListingDetails]
    #
    # @!attribute [rw] name
    #   The revised name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The unique identifier of the revised project that owns the asset.
    #   @return [String]
    #
    # @!attribute [rw] prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #   @return [Types::PredictionConfiguration]
    #
    # @!attribute [rw] read_only_forms_output
    #   The read-only metadata forms that were attached to the asset as part
    #   of the asset revision.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] revision
    #   The revision of the asset.
    #   @return [String]
    #
    # @!attribute [rw] type_identifier
    #   The identifier of the revision type.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision type of the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetRevisionOutput AWS API Documentation
    #
    class CreateAssetRevisionOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :external_identifier,
      :first_revision_created_at,
      :first_revision_created_by,
      :forms_output,
      :glossary_terms,
      :id,
      :listing,
      :name,
      :owning_project_id,
      :prediction_configuration,
      :read_only_forms_output,
      :revision,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :external_identifier, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The descripton of the custom asset type.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The unique identifier of the Amazon DataZone domain where the custom
    #   asset type is being created.
    #   @return [String]
    #
    # @!attribute [rw] forms_input
    #   The metadata forms that are to be attached to the custom asset type.
    #   @return [Hash<String,Types::FormEntryInput>]
    #
    # @!attribute [rw] name
    #   The name of the custom asset type.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The identifier of the Amazon DataZone project that is to own the
    #   custom asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetTypeInput AWS API Documentation
    #
    class CreateAssetTypeInput < Struct.new(
      :description,
      :domain_identifier,
      :forms_input,
      :name,
      :owning_project_identifier)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the asset type is to be created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who creates this custom asset type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom asset type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the asset type was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms that are attached to the asset type.
    #   @return [Hash<String,Types::FormEntryOutput>]
    #
    # @!attribute [rw] name
    #   The name of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] origin_domain_id
    #   The ID of the Amazon DataZone domain where the asset type was
    #   originally created.
    #   @return [String]
    #
    # @!attribute [rw] origin_project_id
    #   The ID of the Amazon DataZone project where the asset type was
    #   originally created.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the Amazon DataZone project that currently owns this asset
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the custom asset type.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the custom type was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user that created the custom asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetTypeOutput AWS API Documentation
    #
    class CreateAssetTypeOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :forms_output,
      :name,
      :origin_domain_id,
      :origin_project_id,
      :owning_project_id,
      :revision,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] asset_forms_input
    #   The metadata forms that are to be attached to the assets that this
    #   data source works with.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Specifies the configuration of the data source. It can be set to
    #   either `glueRunConfiguration` or `redshiftRunConfiguration`.
    #   @return [Types::DataSourceConfigurationInput]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where the data source is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   Specifies whether the data source is enabled.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The unique identifier of the Amazon DataZone environment to which
    #   the data source publishes assets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the Amazon DataZone project in which you want to
    #   add this data source.
    #   @return [String]
    #
    # @!attribute [rw] publish_on_import
    #   Specifies whether the assets that this data source creates in the
    #   inventory are to be also automatically published to the catalog.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation
    #   Specifies whether the business name generation is to be enabled for
    #   this data source.
    #   @return [Types::RecommendationConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule of the data source runs.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataSourceInput AWS API Documentation
    #
    class CreateDataSourceInput < Struct.new(
      :asset_forms_input,
      :client_token,
      :configuration,
      :description,
      :domain_identifier,
      :enable_setting,
      :environment_identifier,
      :name,
      :project_identifier,
      :publish_on_import,
      :recommendation,
      :schedule,
      :type)
      SENSITIVE = [:asset_forms_input, :description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] asset_forms_output
    #   The metadata forms attached to the assets that this data source
    #   creates.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] configuration
    #   Specifies the configuration of the data source. It can be set to
    #   either `glueRunConfiguration` or `redshiftRunConfiguration`.
    #   @return [Types::DataSourceConfigurationOutput]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the data source is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   Specifies whether the data source is enabled.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the Amazon DataZone environment to which
    #   the data source publishes assets.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] last_run_at
    #   The timestamp that specifies when the data source was last run.
    #   @return [Time]
    #
    # @!attribute [rw] last_run_error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] last_run_status
    #   The status of the last run of this data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the Amazon DataZone project to which the data source is
    #   added.
    #   @return [String]
    #
    # @!attribute [rw] publish_on_import
    #   Specifies whether the assets that this data source creates in the
    #   inventory are to be also automatically published to the catalog.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation
    #   Specifies whether the business name generation is to be enabled for
    #   this data source.
    #   @return [Types::RecommendationConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule of the data source runs.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the data source was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataSourceOutput AWS API Documentation
    #
    class CreateDataSourceOutput < Struct.new(
      :asset_forms_output,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :enable_setting,
      :environment_id,
      :error_message,
      :id,
      :last_run_at,
      :last_run_error_message,
      :last_run_status,
      :name,
      :project_id,
      :publish_on_import,
      :recommendation,
      :schedule,
      :status,
      :type,
      :updated_at)
      SENSITIVE = [:description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_execution_role
    #   The domain execution role that is created when an Amazon DataZone
    #   domain is created. The domain execution role is created in the
    #   Amazon Web Services account that houses the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The identifier of the Amazon Web Services Key Management Service
    #   (KMS) key that is used to encrypt the Amazon DataZone domain,
    #   metadata, and reporting data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on
    #   The single-sign on configuration of the Amazon DataZone domain.
    #   @return [Types::SingleSignOn]
    #
    # @!attribute [rw] tags
    #   The tags specified for the Amazon DataZone domain.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomainInput AWS API Documentation
    #
    class CreateDomainInput < Struct.new(
      :client_token,
      :description,
      :domain_execution_role,
      :kms_key_identifier,
      :name,
      :single_sign_on,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_execution_role
    #   The domain execution role that is created when an Amazon DataZone
    #   domain is created. The domain execution role is created in the
    #   Amazon Web Services account that houses the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The identifier of the Amazon Web Services Key Management Service
    #   (KMS) key that is used to encrypt the Amazon DataZone domain,
    #   metadata, and reporting data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] portal_url
    #   The URL of the data portal for this Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on
    #   The single-sign on configuration of the Amazon DataZone domain.
    #   @return [Types::SingleSignOn]
    #
    # @!attribute [rw] status
    #   The status of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags specified for the Amazon DataZone domain.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomainOutput AWS API Documentation
    #
    class CreateDomainOutput < Struct.new(
      :arn,
      :description,
      :domain_execution_role,
      :id,
      :kms_key_identifier,
      :name,
      :portal_url,
      :single_sign_on,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which the
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_profile_identifier
    #   The identifier of the environment profile that is used to create
    #   this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the Amazon DataZone project in which this
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of this Amazon DataZone environment.
    #   @return [Array<Types::EnvironmentParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentInput AWS API Documentation
    #
    class CreateEnvironmentInput < Struct.new(
      :description,
      :domain_identifier,
      :environment_profile_identifier,
      :glossary_terms,
      :name,
      :project_identifier,
      :user_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account in which the Amazon DataZone
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region in which the Amazon DataZone
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created this environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_properties
    #   The deployment properties of this Amazon DataZone environment.
    #   @return [Types::DeploymentProperties]
    #
    # @!attribute [rw] description
    #   The description of this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_actions
    #   The configurable actions of this Amazon DataZone environment.
    #   @return [Array<Types::ConfigurableEnvironmentAction>]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The ID of the blueprint with which this Amazon DataZone environment
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] environment_profile_id
    #   The ID of the environment profile with which this Amazon DataZone
    #   environment was created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment
    #   The details of the last deployment of this Amazon DataZone
    #   environment.
    #   @return [Types::Deployment]
    #
    # @!attribute [rw] name
    #   The name of this environment.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the Amazon DataZone project in which this environment is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_resources
    #   The provisioned resources of this Amazon DataZone environment.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] provisioning_properties
    #   The provisioning properties of this Amazon DataZone environment.
    #   @return [Types::ProvisioningProperties]
    #
    # @!attribute [rw] status
    #   The status of this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this environment was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of this Amazon DataZone environment.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentOutput AWS API Documentation
    #
    class CreateEnvironmentOutput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :deployment_properties,
      :description,
      :domain_id,
      :environment_actions,
      :environment_blueprint_id,
      :environment_profile_id,
      :glossary_terms,
      :id,
      :last_deployment,
      :name,
      :project_id,
      :provider,
      :provisioned_resources,
      :provisioning_properties,
      :status,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account in which the Amazon DataZone
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region in which this environment profile is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of this Amazon DataZone environment profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment
    #   profile is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   The ID of the blueprint with which this environment profile is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this Amazon DataZone environment profile.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the project in which to create the environment
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of this Amazon DataZone environment profile.
    #   @return [Array<Types::EnvironmentParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentProfileInput AWS API Documentation
    #
    class CreateEnvironmentProfileInput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :description,
      :domain_identifier,
      :environment_blueprint_identifier,
      :name,
      :project_identifier,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID in which this Amazon DataZone
    #   environment profile is created.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region in which this Amazon DataZone
    #   environment profile is created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when this environment profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created this environment profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of this Amazon DataZone environment profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this environment
    #   profile is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The ID of the blueprint with which this environment profile is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of this Amazon DataZone environment profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this Amazon DataZone environment profile.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the Amazon DataZone project in which this environment
    #   profile is created.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this environment profile was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of this Amazon DataZone environment profile.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentProfileOutput AWS API Documentation
    #
    class CreateEnvironmentProfileOutput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :environment_blueprint_id,
      :id,
      :name,
      :project_id,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of this Amazon DataZone metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this metadata form
    #   type is created.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of this Amazon DataZone metadata form type.
    #   @return [Types::Model]
    #
    # @!attribute [rw] name
    #   The name of this Amazon DataZone metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The ID of the Amazon DataZone project that owns this metadata form
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this Amazon DataZone metadata form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateFormTypeInput AWS API Documentation
    #
    class CreateFormTypeInput < Struct.new(
      :description,
      :domain_identifier,
      :model,
      :name,
      :owning_project_identifier,
      :status)
      SENSITIVE = [:description, :model, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of this Amazon DataZone metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this metadata form
    #   type is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this Amazon DataZone metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] origin_domain_id
    #   The ID of the Amazon DataZone domain in which this metadata form
    #   type was originally created.
    #   @return [String]
    #
    # @!attribute [rw] origin_project_id
    #   The ID of the project in which this Amazon DataZone metadata form
    #   type was originally created.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns this Amazon DataZone metadata form
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of this Amazon DataZone metadata form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateFormTypeOutput AWS API Documentation
    #
    class CreateFormTypeOutput < Struct.new(
      :description,
      :domain_id,
      :name,
      :origin_domain_id,
      :origin_project_id,
      :owning_project_id,
      :revision)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The ID of the project that currently owns business glossary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this business glossary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryInput AWS API Documentation
    #
    class CreateGlossaryInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :name,
      :owning_project_identifier,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that currently owns this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this business glossary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryOutput AWS API Documentation
    #
    class CreateGlossaryOutput < Struct.new(
      :description,
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term is created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_identifier
    #   The ID of the business glossary in which this term is created.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The long description of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The short description of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] term_relations
    #   The term relations of this business glossary term.
    #   @return [Types::TermRelations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryTermInput AWS API Documentation
    #
    class CreateGlossaryTermInput < Struct.new(
      :client_token,
      :domain_identifier,
      :glossary_identifier,
      :long_description,
      :name,
      :short_description,
      :status,
      :term_relations)
      SENSITIVE = [:long_description, :name, :short_description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term is created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_id
    #   The ID of the business glossary in which this term is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The long description of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The short description of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] term_relations
    #   The term relations of this business glossary term.
    #   @return [Types::TermRelations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryTermOutput AWS API Documentation
    #
    class CreateGlossaryTermOutput < Struct.new(
      :domain_id,
      :glossary_id,
      :id,
      :long_description,
      :name,
      :short_description,
      :status,
      :term_relations)
      SENSITIVE = [:long_description, :name, :short_description]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile is created.
    #   @return [String]
    #
    # @!attribute [rw] group_identifier
    #   The identifier of the group for which the group profile is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGroupProfileInput AWS API Documentation
    #
    class CreateGroupProfileInput < Struct.new(
      :client_token,
      :domain_identifier,
      :group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile is created.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group for which group profile is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the group profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the group profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGroupProfileOutput AWS API Documentation
    #
    class CreateGroupProfileOutput < Struct.new(
      :domain_id,
      :group_name,
      :id,
      :status)
      SENSITIVE = [:group_name]
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateListingChangeSetInput AWS API Documentation
    #
    class CreateListingChangeSetInput < Struct.new(
      :action,
      :client_token,
      :domain_identifier,
      :entity_identifier,
      :entity_revision,
      :entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listing_id
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateListingChangeSetOutput AWS API Documentation
    #
    class CreateListingChangeSetOutput < Struct.new(
      :listing_id,
      :listing_revision,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the Amazon DataZone project.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this project is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectInput AWS API Documentation
    #
    class CreateProjectInput < Struct.new(
      :description,
      :domain_identifier,
      :glossary_terms,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] designation
    #   The designation of the project membership.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which project membership is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The project member whose project membership was created.
    #   @return [Types::Member]
    #
    # @!attribute [rw] project_identifier
    #   The ID of the project for which this project membership was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectMembershipInput AWS API Documentation
    #
    class CreateProjectMembershipInput < Struct.new(
      :designation,
      :domain_identifier,
      :member,
      :project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectMembershipOutput AWS API Documentation
    #
    class CreateProjectMembershipOutput < Aws::EmptyStructure; end

    # @!attribute [rw] created_at
    #   The timestamp of when the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the project
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms that can be used in the project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the Amazon DataZone project.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the project was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectOutput AWS API Documentation
    #
    class CreateProjectOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :glossary_terms,
      :id,
      :last_updated_at,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] asset_target_names
    #   The names of the assets for which the subscription grant is created.
    #   @return [Array<Types::AssetTargetNameMap>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment in which the subscription grant is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] granted_entity
    #   The entity to which the subscription is to be granted.
    #   @return [Types::GrantedEntityInput]
    #
    # @!attribute [rw] subscription_target_identifier
    #   The ID of the subscription target for which the subscription grant
    #   is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionGrantInput AWS API Documentation
    #
    class CreateSubscriptionGrantInput < Struct.new(
      :asset_target_names,
      :client_token,
      :domain_identifier,
      :environment_identifier,
      :granted_entity,
      :subscription_target_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   The assets for which the subscription grant is created.
    #   @return [Array<Types::SubscribedAsset>]
    #
    # @!attribute [rw] created_at
    #   A timestamp of when the subscription grant is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] granted_entity
    #   The entity to which the subscription is granted.
    #   @return [Types::GrantedEntity]
    #
    # @!attribute [rw] id
    #   The ID of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_id
    #   The ID of the subscription target for which the subscription grant
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   A timestamp of when the subscription grant was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionGrantOutput AWS API Documentation
    #
    class CreateSubscriptionGrantOutput < Struct.new(
      :assets,
      :created_at,
      :created_by,
      :domain_id,
      :granted_entity,
      :id,
      :status,
      :subscription_id,
      :subscription_target_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription
    #   request is created.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   @return [Array<Types::SubscribedListingInput>]
    #
    # @!attribute [rw] subscribed_principals
    #   The Amazon DataZone principals for whom the subscription request is
    #   created.
    #   @return [Array<Types::SubscribedPrincipalInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionRequestInput AWS API Documentation
    #
    class CreateSubscriptionRequestInput < Struct.new(
      :client_token,
      :domain_identifier,
      :request_reason,
      :subscribed_listings,
      :subscribed_principals)
      SENSITIVE = [:request_reason]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   A timestamp of when the subscription request is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] decision_comment
    #   The decision comment of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in whcih the subscription
    #   request is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] reviewer_id
    #   The ID of the reviewer of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   @return [Array<Types::SubscribedListing>]
    #
    # @!attribute [rw] subscribed_principals
    #   The subscribed principals of the subscription request.
    #   @return [Array<Types::SubscribedPrincipal>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription request was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionRequestOutput AWS API Documentation
    #
    class CreateSubscriptionRequestOutput < Struct.new(
      :created_at,
      :created_by,
      :decision_comment,
      :domain_id,
      :id,
      :request_reason,
      :reviewer_id,
      :status,
      :subscribed_listings,
      :subscribed_principals,
      :updated_at,
      :updated_by)
      SENSITIVE = [:decision_comment, :request_reason]
      include Aws::Structure
    end

    # @!attribute [rw] applicable_asset_types
    #   The asset types that can be included in the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorized_principals
    #   The authorized principals of the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which subscription target is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment in which subscription target is created.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role
    #   The manage access role that is used to create the subscription
    #   target.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_config
    #   The configuration of the subscription target.
    #   @return [Array<Types::SubscriptionTargetForm>]
    #
    # @!attribute [rw] type
    #   The type of the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionTargetInput AWS API Documentation
    #
    class CreateSubscriptionTargetInput < Struct.new(
      :applicable_asset_types,
      :authorized_principals,
      :client_token,
      :domain_identifier,
      :environment_identifier,
      :manage_access_role,
      :name,
      :provider,
      :subscription_target_config,
      :type)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] applicable_asset_types
    #   The asset types that can be included in the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorized_principals
    #   The authorised principals of the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription target was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the subscription
    #   target was created.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment in which the subscription target was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role
    #   The manage access role with which the subscription target was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   ???
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_config
    #   The configuration of the subscription target.
    #   @return [Array<Types::SubscriptionTargetForm>]
    #
    # @!attribute [rw] type
    #   The type of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription target was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionTargetOutput AWS API Documentation
    #
    class CreateSubscriptionTargetOutput < Struct.new(
      :applicable_asset_types,
      :authorized_principals,
      :created_at,
      :created_by,
      :domain_id,
      :environment_id,
      :id,
      :manage_access_role,
      :name,
      :project_id,
      :provider,
      :subscription_target_config,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] user_identifier
    #   The identifier of the user for which the user profile is created.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The user type of the user for which the user profile is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateUserProfileInput AWS API Documentation
    #
    class CreateUserProfileInput < Struct.new(
      :client_token,
      :domain_identifier,
      :user_identifier,
      :user_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] details
    #   The details of the user profile in Amazon DataZone.
    #   @return [Types::UserProfileDetails]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateUserProfileOutput AWS API Documentation
    #
    class CreateUserProfileOutput < Struct.new(
      :details,
      :domain_id,
      :id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of user parameters of an environment blueprint.
    #
    # @!attribute [rw] default_value
    #   The default value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] field_type
    #   The filed type of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_editable
    #   Specifies whether the parameter is editable.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_optional
    #   Specifies whether the custom parameter is optional.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_name
    #   The key name of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CustomParameter AWS API Documentation
    #
    class CustomParameter < Struct.new(
      :default_value,
      :description,
      :field_type,
      :is_editable,
      :is_optional,
      :key_name)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] item_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductItem AWS API Documentation
    #
    class DataProductItem < Struct.new(
      :domain_id,
      :item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] data_product_items
    #   @return [Array<Types::DataProductItem>]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductSummary AWS API Documentation
    #
    class DataProductSummary < Struct.new(
      :created_at,
      :created_by,
      :data_product_items,
      :description,
      :domain_id,
      :glossary_terms,
      :id,
      :name,
      :owning_project_id,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The configuration of the data source.
    #
    # @note DataSourceConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] glue_run_configuration
    #   The configuration of the Amazon Web Services Glue data source.
    #   @return [Types::GlueRunConfigurationInput]
    #
    # @!attribute [rw] redshift_run_configuration
    #   The configuration of the Amazon Redshift data source.
    #   @return [Types::RedshiftRunConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceConfigurationInput AWS API Documentation
    #
    class DataSourceConfigurationInput < Struct.new(
      :glue_run_configuration,
      :redshift_run_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueRunConfiguration < DataSourceConfigurationInput; end
      class RedshiftRunConfiguration < DataSourceConfigurationInput; end
      class Unknown < DataSourceConfigurationInput; end
    end

    # The configuration of the data source.
    #
    # @note DataSourceConfigurationOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataSourceConfigurationOutput corresponding to the set member.
    #
    # @!attribute [rw] glue_run_configuration
    #   The configuration of the Amazon Web Services Glue data source.
    #   @return [Types::GlueRunConfigurationOutput]
    #
    # @!attribute [rw] redshift_run_configuration
    #   The configuration of the Amazon Redshift data source.
    #   @return [Types::RedshiftRunConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceConfigurationOutput AWS API Documentation
    #
    class DataSourceConfigurationOutput < Struct.new(
      :glue_run_configuration,
      :redshift_run_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueRunConfiguration < DataSourceConfigurationOutput; end
      class RedshiftRunConfiguration < DataSourceConfigurationOutput; end
      class Unknown < DataSourceConfigurationOutput; end
    end

    # The details of the error message that is returned if the operation
    # cannot be successfully completed.
    #
    # @!attribute [rw] error_detail
    #   The details of the error message that is returned if the operation
    #   cannot be successfully completed.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The type of the error message that is returned if the operation
    #   cannot be successfully completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceErrorMessage AWS API Documentation
    #
    class DataSourceErrorMessage < Struct.new(
      :error_detail,
      :error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The activity details of the data source run.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when data source run activity was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_asset_id
    #   The identifier of the asset included in the data source run
    #   activity.
    #   @return [String]
    #
    # @!attribute [rw] data_asset_status
    #   The status of the asset included in the data source run activity.
    #   @return [String]
    #
    # @!attribute [rw] data_source_run_id
    #   The identifier of the data source for the data source run activity.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database included in the data source run activity.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The details of the error message that is returned if the operation
    #   cannot be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] project_id
    #   The project ID included in the data source run activity.
    #   @return [String]
    #
    # @!attribute [rw] technical_description
    #   The technical description included in the data source run activity.
    #   @return [String]
    #
    # @!attribute [rw] technical_name
    #   The technical name included in the data source run activity.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when data source run activity was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceRunActivity AWS API Documentation
    #
    class DataSourceRunActivity < Struct.new(
      :created_at,
      :data_asset_id,
      :data_asset_status,
      :data_source_run_id,
      :database,
      :error_message,
      :project_id,
      :technical_description,
      :technical_name,
      :updated_at)
      SENSITIVE = [:database, :technical_description, :technical_name]
      include Aws::Structure
    end

    # The details of a data source run.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when a data source run was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The details of the error message that is returned if the operation
    #   cannot be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The identifier of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The project ID of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] run_statistics_for_assets
    #   The asset statistics from the data source run.
    #   @return [Types::RunStatisticsForAssets]
    #
    # @!attribute [rw] started_at
    #   The timestamp of when a data source run was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] stopped_at
    #   The timestamp of when a data source run was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when a data source run was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceRunSummary AWS API Documentation
    #
    class DataSourceRunSummary < Struct.new(
      :created_at,
      :data_source_id,
      :error_message,
      :id,
      :project_id,
      :run_statistics_for_assets,
      :started_at,
      :status,
      :stopped_at,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the data source.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the data source
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   Specifies whether the data source is enabled.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment in which the data source exists.
    #   @return [String]
    #
    # @!attribute [rw] last_run_asset_count
    #   The count of the assets created during the last data source run.
    #   @return [Integer]
    #
    # @!attribute [rw] last_run_at
    #   The timestamp of when the data source run was last performed.
    #   @return [Time]
    #
    # @!attribute [rw] last_run_error_message
    #   The details of the error message that is returned if the operation
    #   cannot be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] last_run_status
    #   The status of the last data source run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The details of the schedule of the data source runs.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the data source was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceSummary AWS API Documentation
    #
    class DataSourceSummary < Struct.new(
      :created_at,
      :data_source_id,
      :domain_id,
      :enable_setting,
      :environment_id,
      :last_run_asset_count,
      :last_run_at,
      :last_run_error_message,
      :last_run_status,
      :name,
      :schedule,
      :status,
      :type,
      :updated_at)
      SENSITIVE = [:name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the asset that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetInput AWS API Documentation
    #
    class DeleteAssetInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetOutput AWS API Documentation
    #
    class DeleteAssetOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset type is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the asset type that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetTypeInput AWS API Documentation
    #
    class DeleteAssetTypeInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetTypeOutput AWS API Documentation
    #
    class DeleteAssetTypeOutput < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the data source is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the data source that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataSourceInput AWS API Documentation
    #
    class DeleteDataSourceInput < Struct.new(
      :client_token,
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_forms_output
    #   The asset data forms associated with this data source.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] configuration
    #   The configuration of the data source that is deleted.
    #   @return [Types::DataSourceConfigurationOutput]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when this data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the data source that is deleted.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the data source is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   The enable setting of the data source that specifies whether the
    #   data source is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environemnt associated with this data source.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The ID of the data source that is deleted.
    #   @return [String]
    #
    # @!attribute [rw] last_run_at
    #   The timestamp of when the data source was last run.
    #   @return [Time]
    #
    # @!attribute [rw] last_run_error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] last_run_status
    #   The status of the last run of this data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source that is deleted.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the project in which this data source exists and from
    #   which it's deleted.
    #   @return [String]
    #
    # @!attribute [rw] publish_on_import
    #   Specifies whether the assets that this data source creates in the
    #   inventory are to be also automatically published to the catalog.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of runs for this data source.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] status
    #   The status of this data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this data source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this data source was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataSourceOutput AWS API Documentation
    #
    class DeleteDataSourceOutput < Struct.new(
      :asset_forms_output,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :enable_setting,
      :environment_id,
      :error_message,
      :id,
      :last_run_at,
      :last_run_error_message,
      :last_run_status,
      :name,
      :project_id,
      :publish_on_import,
      :schedule,
      :status,
      :type,
      :updated_at)
      SENSITIVE = [:description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the Amazon Web Services domain that is to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomainInput AWS API Documentation
    #
    class DeleteDomainInput < Struct.new(
      :client_token,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomainOutput AWS API Documentation
    #
    class DeleteDomainOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the blueprint
    #   configuration is deleted.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   The ID of the blueprint the configuration of which is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentBlueprintConfigurationInput AWS API Documentation
    #
    class DeleteEnvironmentBlueprintConfigurationInput < Struct.new(
      :domain_identifier,
      :environment_blueprint_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentBlueprintConfigurationOutput AWS API Documentation
    #
    class DeleteEnvironmentBlueprintConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the environment that is to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentInput AWS API Documentation
    #
    class DeleteEnvironmentInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment
    #   profile is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the environment profile that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentProfileInput AWS API Documentation
    #
    class DeleteEnvironmentProfileInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the metadata form type
    #   is deleted.
    #   @return [String]
    #
    # @!attribute [rw] form_type_identifier
    #   The ID of the metadata form type that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteFormTypeInput AWS API Documentation
    #
    class DeleteFormTypeInput < Struct.new(
      :domain_identifier,
      :form_type_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteFormTypeOutput AWS API Documentation
    #
    class DeleteFormTypeOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the business glossary
    #   is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the business glossary that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossaryInput AWS API Documentation
    #
    class DeleteGlossaryInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossaryOutput AWS API Documentation
    #
    class DeleteGlossaryOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the business glossary
    #   term is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the business glossary term that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossaryTermInput AWS API Documentation
    #
    class DeleteGlossaryTermInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossaryTermOutput AWS API Documentation
    #
    class DeleteGlossaryTermOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteListingInput AWS API Documentation
    #
    class DeleteListingInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteListingOutput AWS API Documentation
    #
    class DeleteListingOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the project is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the project that is to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectInput AWS API Documentation
    #
    class DeleteProjectInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where project membership is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The project member whose project membership is deleted.
    #   @return [Types::Member]
    #
    # @!attribute [rw] project_identifier
    #   The ID of the Amazon DataZone project the membership to which is
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectMembershipInput AWS API Documentation
    #
    class DeleteProjectMembershipInput < Struct.new(
      :domain_identifier,
      :member,
      :project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectMembershipOutput AWS API Documentation
    #
    class DeleteProjectMembershipOutput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectOutput AWS API Documentation
    #
    class DeleteProjectOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where the subscription grant is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the subscription grant that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionGrantInput AWS API Documentation
    #
    class DeleteSubscriptionGrantInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   The assets for which the subsctiption grant that is deleted gave
    #   access.
    #   @return [Array<Types::SubscribedAsset>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription grant that is deleted was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription grant that is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   is deleted.
    #   @return [String]
    #
    # @!attribute [rw] granted_entity
    #   The entity to which the subscription is deleted.
    #   @return [Types::GrantedEntity]
    #
    # @!attribute [rw] id
    #   The ID of the subscription grant that is deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription grant that is deleted.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the subsctiption whose subscription grant is to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_id
    #   The ID of the subscription target associated with the subscription
    #   grant that is deleted.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription grant that is deleted was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription grant that is
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionGrantOutput AWS API Documentation
    #
    class DeleteSubscriptionGrantOutput < Struct.new(
      :assets,
      :created_at,
      :created_by,
      :domain_id,
      :granted_entity,
      :id,
      :status,
      :subscription_id,
      :subscription_target_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription
    #   request is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the subscription request that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionRequestInput AWS API Documentation
    #
    class DeleteSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription
    #   target is deleted.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the Amazon DataZone environment in which the subscription
    #   target is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the subscription target that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionTargetInput AWS API Documentation
    #
    class DeleteSubscriptionTargetInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the last deployment of the environment.
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the last deployment of the environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   The status of the last deployment of the environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   The type of the last deployment of the environment.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason of the last deployment of the environment.
    #   @return [Types::EnvironmentError]
    #
    # @!attribute [rw] is_deployment_complete
    #   Specifies whether the last deployment of the environment is
    #   complete.
    #   @return [Boolean]
    #
    # @!attribute [rw] messages
    #   The messages of the last deployment of the environment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :deployment_id,
      :deployment_status,
      :deployment_type,
      :failure_reason,
      :is_deployment_complete,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment properties of the Amazon DataZone blueprint.
    #
    # @!attribute [rw] end_timeout_minutes
    #   The end timeout of the environment blueprint deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] start_timeout_minutes
    #   The start timeout of the environment blueprint deployment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeploymentProperties AWS API Documentation
    #
    class DeploymentProperties < Struct.new(
      :end_timeout_minutes,
      :start_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a glossary term attached to the inventory asset.
    #
    # @!attribute [rw] name
    #   The name of a glossary term attached to the inventory asset.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The shoft description of a glossary term attached to the inventory
    #   asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DetailedGlossaryTerm AWS API Documentation
    #
    class DetailedGlossaryTerm < Struct.new(
      :name,
      :short_description)
      SENSITIVE = [:name, :short_description]
      include Aws::Structure
    end

    # A summary of a Amazon DataZone domain.
    #
    # @!attribute [rw] arn
    #   The ARN of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   A timestamp of when a Amazon DataZone domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of an Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   A timestamp of when a Amazon DataZone domain was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] managed_account_id
    #   The identifier of the Amazon Web Services account that manages the
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name of an Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] portal_url
    #   The data portal URL for the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon DataZone domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :last_updated_at,
      :managed_account_id,
      :name,
      :portal_url,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The configuration details of an environment blueprint.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when an environment blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which an environment
    #   blueprint exists.
    #   @return [String]
    #
    # @!attribute [rw] enabled_regions
    #   The enabled Amazon Web Services Regions specified in a blueprint
    #   configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The identifier of the environment blueprint.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role specified in the environment
    #   blueprint configuration.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The ARN of the provisioning role specified in the environment
    #   blueprint configuration.
    #   @return [String]
    #
    # @!attribute [rw] regional_parameters
    #   The regional parameters of the environment blueprint.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the environment blueprint was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentBlueprintConfigurationItem AWS API Documentation
    #
    class EnvironmentBlueprintConfigurationItem < Struct.new(
      :created_at,
      :domain_id,
      :enabled_regions,
      :environment_blueprint_id,
      :manage_access_role_arn,
      :provisioning_role_arn,
      :regional_parameters,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an environment blueprint summary.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when an environment blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of a blueprint.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_properties
    #   The provisioning properties of the blueprint.
    #   @return [Types::ProvisioningProperties]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the blueprint was enabled.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentBlueprintSummary AWS API Documentation
    #
    class EnvironmentBlueprintSummary < Struct.new(
      :created_at,
      :description,
      :id,
      :name,
      :provider,
      :provisioning_properties,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The failure reasons for the environment deployment.
    #
    # @!attribute [rw] code
    #   The error code for the failure reason for the environment
    #   deployment.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message for the failure reason for the environment
    #   deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentError AWS API Documentation
    #
    class EnvironmentError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter details of an evironment profile.
    #
    # @!attribute [rw] name
    #   The name of an environment profile parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of an environment profile parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentParameter AWS API Documentation
    #
    class EnvironmentParameter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an environment profile.
    #
    # @!attribute [rw] aws_account_id
    #   The identifier of an Amazon Web Services account in which an
    #   environment profile exists.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services Region in which an environment profile
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when an environment profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the
    #   environment profile exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The identifier of a blueprint with which an environment profile is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of a project in which an environment profile exists.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the environment profile was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentProfileSummary AWS API Documentation
    #
    class EnvironmentProfileSummary < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :environment_blueprint_id,
      :id,
      :name,
      :project_id,
      :updated_at)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The details of an environment.
    #
    # @!attribute [rw] aws_account_id
    #   The identifier of the Amazon Web Services account in which an
    #   environment exists.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services Region in which an environment exists.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the
    #   environment exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_profile_id
    #   The identifier of the environment profile with which the environment
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of the project in which the environment exists.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the environment.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the environment was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentSummary AWS API Documentation
    #
    class EnvironmentSummary < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :environment_profile_id,
      :id,
      :name,
      :project_id,
      :provider,
      :status,
      :updated_at)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Specifies the error message that is returned if the operation cannot
    # be successfully completed.
    #
    # @!attribute [rw] message
    #   The description of the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FailureCause AWS API Documentation
    #
    class FailureCause < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A search filter in Amazon DataZone.
    #
    # @!attribute [rw] attribute
    #   A search filter attribute in Amazon DataZone.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A search filter value in Amazon DataZone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :attribute,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A search filter clause in Amazon DataZone.
    #
    # @note FilterClause is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] and
    #   The 'and' search filter clause in Amazon DataZone.
    #   @return [Array<Types::FilterClause>]
    #
    # @!attribute [rw] filter
    #   A search filter in Amazon DataZone.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] or
    #   The 'or' search filter clause in Amazon DataZone.
    #   @return [Array<Types::FilterClause>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FilterClause AWS API Documentation
    #
    class FilterClause < Struct.new(
      :and,
      :filter,
      :or,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class And < FilterClause; end
      class Filter < FilterClause; end
      class Or < FilterClause; end
      class Unknown < FilterClause; end
    end

    # A filter expression in Amazon DataZone.
    #
    # @!attribute [rw] expression
    #   The search filter expression.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The search filter explresison type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FilterExpression AWS API Documentation
    #
    class FilterExpression < Struct.new(
      :expression,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the form entry.
    #
    # @!attribute [rw] required
    #   Specifies whether a form entry is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] type_identifier
    #   The type ID of the form entry.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The type revision of the form entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FormEntryInput AWS API Documentation
    #
    class FormEntryInput < Struct.new(
      :required,
      :type_identifier,
      :type_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the form entry.
    #
    # @!attribute [rw] required
    #   Specifies whether a form entry is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] type_name
    #   The name of the type of the form entry.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The type revision of the form entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FormEntryOutput AWS API Documentation
    #
    class FormEntryOutput < Struct.new(
      :required,
      :type_name,
      :type_revision)
      SENSITIVE = [:type_name]
      include Aws::Structure
    end

    # The details of a metadata form.
    #
    # @!attribute [rw] content
    #   The content of the metadata form.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the metadata form.
    #   @return [String]
    #
    # @!attribute [rw] type_identifier
    #   The ID of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision of the metadata form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FormInput AWS API Documentation
    #
    class FormInput < Struct.new(
      :content,
      :form_name,
      :type_identifier,
      :type_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a metadata form.
    #
    # @!attribute [rw] content
    #   The content of the metadata form.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the metadata form.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision of the metadata form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FormOutput AWS API Documentation
    #
    class FormOutput < Struct.new(
      :content,
      :form_name,
      :type_name,
      :type_revision)
      SENSITIVE = [:type_name]
      include Aws::Structure
    end

    # The details of the metadata form type.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the metadata form type was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created teh metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the form type
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] imports
    #   The imports specified in the form type.
    #   @return [Array<Types::Import>]
    #
    # @!attribute [rw] model
    #   The model of the form type.
    #   @return [Types::Model]
    #
    # @!attribute [rw] name
    #   The name of the form type.
    #   @return [String]
    #
    # @!attribute [rw] origin_domain_id
    #   The identifier of the Amazon DataZone domain in which the form type
    #   was originally created.
    #   @return [String]
    #
    # @!attribute [rw] origin_project_id
    #   The identifier of the project in which the form type was originally
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the project that owns the form type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the form type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/FormTypeData AWS API Documentation
    #
    class FormTypeData < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :imports,
      :model,
      :name,
      :origin_domain_id,
      :origin_project_id,
      :owning_project_id,
      :revision,
      :status)
      SENSITIVE = [:description, :model, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain to which the asset belongs.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the Amazon DataZone asset.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the Amazon DataZone asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetInput AWS API Documentation
    #
    class GetAssetInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the asset was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the asset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon DataZone asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain to which the asset belongs.
    #   @return [String]
    #
    # @!attribute [rw] external_identifier
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp of when the first revision of the asset was created.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The Amazon DataZone user who created the first revision of the
    #   asset.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms attached to the asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] glossary_terms
    #   The business glossary terms attached to the asset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] listing
    #   @return [Types::AssetListingDetails]
    #
    # @!attribute [rw] name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns the asset.
    #   @return [String]
    #
    # @!attribute [rw] read_only_forms_output
    #   The read-only metadata forms attached to the asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] revision
    #   The revision of the asset.
    #   @return [String]
    #
    # @!attribute [rw] type_identifier
    #   The ID of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision of the asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetOutput AWS API Documentation
    #
    class GetAssetOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :external_identifier,
      :first_revision_created_at,
      :first_revision_created_by,
      :forms_output,
      :glossary_terms,
      :id,
      :listing,
      :name,
      :owning_project_id,
      :read_only_forms_output,
      :revision,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :external_identifier, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset type exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetTypeInput AWS API Documentation
    #
    class GetAssetTypeInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the asset type was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the asset type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the asset type exists.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms attached to the asset type.
    #   @return [Hash<String,Types::FormEntryOutput>]
    #
    # @!attribute [rw] name
    #   The name of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] origin_domain_id
    #   The ID of the Amazon DataZone domain in which the asset type was
    #   originally created.
    #   @return [String]
    #
    # @!attribute [rw] origin_project_id
    #   The ID of the Amazon DataZone project in which the asset type was
    #   originally created.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the Amazon DataZone project that owns the asset type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the asset type.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the asset type was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user that updated the asset type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetTypeOutput AWS API Documentation
    #
    class GetAssetTypeOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :forms_output,
      :name,
      :origin_domain_id,
      :origin_project_id,
      :owning_project_id,
      :revision,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the data source
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the Amazon DataZone data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSourceInput AWS API Documentation
    #
    class GetDataSourceInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_forms_output
    #   The metadata forms attached to the assets created by this data
    #   source.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] configuration
    #   The configuration of the data source.
    #   @return [Types::DataSourceConfigurationOutput]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the data source
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   Specifies whether this data source is enabled or not.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment where this data source creates and
    #   publishes assets,
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The ID of the data source.
    #   @return [String]
    #
    # @!attribute [rw] last_run_asset_count
    #   The number of assets created by the data source during its last run.
    #   @return [Integer]
    #
    # @!attribute [rw] last_run_at
    #   The timestamp of the last run of the data source.
    #   @return [Time]
    #
    # @!attribute [rw] last_run_error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] last_run_status
    #   The status of the last run of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the project where the data source creates and publishes
    #   assets.
    #   @return [String]
    #
    # @!attribute [rw] publish_on_import
    #   Specifies whether the assets that this data source creates in the
    #   inventory are to be also automatically published to the catalog.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation
    #   @return [Types::RecommendationConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule of the data source runs.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the data source was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSourceOutput AWS API Documentation
    #
    class GetDataSourceOutput < Struct.new(
      :asset_forms_output,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :enable_setting,
      :environment_id,
      :error_message,
      :id,
      :last_run_asset_count,
      :last_run_at,
      :last_run_error_message,
      :last_run_status,
      :name,
      :project_id,
      :publish_on_import,
      :recommendation,
      :schedule,
      :status,
      :type,
      :updated_at)
      SENSITIVE = [:description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain in which this data source run was performed.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the data source run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSourceRunInput AWS API Documentation
    #
    class GetDataSourceRunInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the data source run was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_configuration_snapshot
    #   The configuration snapshot of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source for this data source run.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain in which this data source run was performed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The ID of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the project in which this data source run occured.
    #   @return [String]
    #
    # @!attribute [rw] run_statistics_for_assets
    #   The asset statistics from this data source run.
    #   @return [Types::RunStatisticsForAssets]
    #
    # @!attribute [rw] started_at
    #   The timestamp of when this data source run started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of this data source run.
    #   @return [String]
    #
    # @!attribute [rw] stopped_at
    #   The timestamp of when this data source run stopped.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of this data source run.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this data source run was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSourceRunOutput AWS API Documentation
    #
    class GetDataSourceRunOutput < Struct.new(
      :created_at,
      :data_source_configuration_snapshot,
      :data_source_id,
      :domain_id,
      :error_message,
      :id,
      :project_id,
      :run_statistics_for_assets,
      :started_at,
      :status,
      :stopped_at,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the specified Amazon DataZone domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomainInput AWS API Documentation
    #
    class GetDomainInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the specified Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the Amazon DataZone domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_execution_role
    #   The domain execution role with which the Amazon DataZone domain is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the specified Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The identifier of the Amazon Web Services Key Management Service
    #   (KMS) key that is used to encrypt the Amazon DataZone domain,
    #   metadata, and reporting data.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the Amazon DataZone domain was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] portal_url
    #   The URL of the data portal for this Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on
    #   The single sing-on option of the specified Amazon DataZone domain.
    #   @return [Types::SingleSignOn]
    #
    # @!attribute [rw] status
    #   The status of the specified Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags specified for the Amazon DataZone domain.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomainOutput AWS API Documentation
    #
    class GetDomainOutput < Struct.new(
      :arn,
      :created_at,
      :description,
      :domain_execution_role,
      :id,
      :kms_key_identifier,
      :last_updated_at,
      :name,
      :portal_url,
      :single_sign_on,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where this blueprint exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   He ID of the blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprintConfigurationInput AWS API Documentation
    #
    class GetEnvironmentBlueprintConfigurationInput < Struct.new(
      :domain_identifier,
      :environment_blueprint_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when this blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain where this blueprint exists.
    #   @return [String]
    #
    # @!attribute [rw] enabled_regions
    #   The Amazon Web Services regions in which this blueprint is enabled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The ID of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role with which this blueprint is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The ARN of the provisioning role with which this blueprint is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] regional_parameters
    #   The regional parameters of the blueprint.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this blueprint was upated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprintConfigurationOutput AWS API Documentation
    #
    class GetEnvironmentBlueprintConfigurationOutput < Struct.new(
      :created_at,
      :domain_id,
      :enabled_regions,
      :environment_blueprint_id,
      :manage_access_role_arn,
      :provisioning_role_arn,
      :regional_parameters,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the domain in which this blueprint exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of this Amazon DataZone blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprintInput AWS API Documentation
    #
    class GetEnvironmentBlueprintInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   A timestamp of when this blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_properties
    #   The deployment properties of this Amazon DataZone blueprint.
    #   @return [Types::DeploymentProperties]
    #
    # @!attribute [rw] description
    #   The description of this Amazon DataZone blueprint.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms attached to this Amazon DataZone blueprint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of this Amazon DataZone blueprint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this Amazon DataZone blueprint.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of this Amazon DataZone blueprint.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_properties
    #   The provisioning properties of this Amazon DataZone blueprint.
    #   @return [Types::ProvisioningProperties]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this blueprint was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of this blueprint.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprintOutput AWS API Documentation
    #
    class GetEnvironmentBlueprintOutput < Struct.new(
      :created_at,
      :deployment_properties,
      :description,
      :glossary_terms,
      :id,
      :name,
      :provider,
      :provisioning_properties,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where the environment exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the Amazon DataZone environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentInput AWS API Documentation
    #
    class GetEnvironmentInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where the environment
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region where the environment exists.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_properties
    #   The deployment properties of the environment.
    #   @return [Types::DeploymentProperties]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain where the environment exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_actions
    #   The actions of the environment.
    #   @return [Array<Types::ConfigurableEnvironmentAction>]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The blueprint with which the environment is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_profile_id
    #   The ID of the environment profile with which the environment is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The business glossary terms that can be used in this environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment
    #   The details of the last deployment of the environment.
    #   @return [Types::Deployment]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the Amazon DataZone project in which this environment is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_resources
    #   The provisioned resources of this Amazon DataZone environment.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] provisioning_properties
    #   The provisioning properties of this Amazon DataZone environment.
    #   @return [Types::ProvisioningProperties]
    #
    # @!attribute [rw] status
    #   The status of this Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this environment was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of this Amazon DataZone environment.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentOutput AWS API Documentation
    #
    class GetEnvironmentOutput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :deployment_properties,
      :description,
      :domain_id,
      :environment_actions,
      :environment_blueprint_id,
      :environment_profile_id,
      :glossary_terms,
      :id,
      :last_deployment,
      :name,
      :project_id,
      :provider,
      :provisioned_resources,
      :provisioning_properties,
      :status,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment
    #   profile exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the environment profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentProfileInput AWS API Documentation
    #
    class GetEnvironmentProfileInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where this environment
    #   profile exists.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region where this environment profile
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when this environment profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created this environment profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this environment
    #   profile exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The ID of the blueprint with which this environment profile is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the Amazon DataZone project in which this environment
    #   profile is created.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when this environment profile was upated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of the environment profile.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentProfileOutput AWS API Documentation
    #
    class GetEnvironmentProfileOutput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :environment_blueprint_id,
      :id,
      :name,
      :project_id,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this metadata form
    #   type exists.
    #   @return [String]
    #
    # @!attribute [rw] form_type_identifier
    #   The ID of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of this metadata form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetFormTypeInput AWS API Documentation
    #
    class GetFormTypeInput < Struct.new(
      :domain_identifier,
      :form_type_identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when this metadata form type was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created this metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this metadata form
    #   type exists.
    #   @return [String]
    #
    # @!attribute [rw] imports
    #   The imports of the metadata form type.
    #   @return [Array<Types::Import>]
    #
    # @!attribute [rw] model
    #   The model of the metadata form type.
    #   @return [Types::Model]
    #
    # @!attribute [rw] name
    #   The name of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] origin_domain_id
    #   The ID of the Amazon DataZone domain in which the metadata form type
    #   was originally created.
    #   @return [String]
    #
    # @!attribute [rw] origin_project_id
    #   The ID of the project in which this metadata form type was
    #   originally created.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns this metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the metadata form type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the metadata form type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetFormTypeOutput AWS API Documentation
    #
    class GetFormTypeOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :imports,
      :model,
      :name,
      :origin_domain_id,
      :origin_project_id,
      :owning_project_id,
      :revision,
      :status)
      SENSITIVE = [:description, :model, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the business glossary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossaryInput AWS API Documentation
    #
    class GetGlossaryInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when this business glossary was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the business glossary.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the business glossary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the business glossary.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns this business glossary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the business glossary.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the business glossary was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the business glossary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossaryOutput AWS API Documentation
    #
    class GetGlossaryOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :status,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the business glossary term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossaryTermInput AWS API Documentation
    #
    class GetGlossaryTermInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the business glossary term was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the business glossary.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term exists.
    #   @return [String]
    #
    # @!attribute [rw] glossary_id
    #   The ID of the business glossary to which this term belongs.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The long description of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The short decription of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] term_relations
    #   The relations of the business glossary term.
    #   @return [Types::TermRelations]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the business glossary term was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the business glossary term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossaryTermOutput AWS API Documentation
    #
    class GetGlossaryTermOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :glossary_id,
      :id,
      :long_description,
      :name,
      :short_description,
      :status,
      :term_relations,
      :updated_at,
      :updated_by)
      SENSITIVE = [:long_description, :name, :short_description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile exists.
    #   @return [String]
    #
    # @!attribute [rw] group_identifier
    #   The identifier of the group profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGroupProfileInput AWS API Documentation
    #
    class GetGroupProfileInput < Struct.new(
      :domain_identifier,
      :group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile exists.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group for which the specified group profile exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the group profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The identifier of the group profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGroupProfileOutput AWS API Documentation
    #
    class GetGroupProfileOutput < Struct.new(
      :domain_id,
      :group_name,
      :id,
      :status)
      SENSITIVE = [:group_name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   the ID of the Amazon DataZone domain the data portal of which you
    #   want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetIamPortalLoginUrlInput AWS API Documentation
    #
    class GetIamPortalLoginUrlInput < Struct.new(
      :domain_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auth_code_url
    #   The data portal URL of the specified Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_id
    #   The ID of the user profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetIamPortalLoginUrlOutput AWS API Documentation
    #
    class GetIamPortalLoginUrlOutput < Struct.new(
      :auth_code_url,
      :user_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetListingInput AWS API Documentation
    #
    class GetListingInput < Struct.new(
      :domain_identifier,
      :identifier,
      :listing_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the listing.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] item
    #   @return [Types::ListingItem]
    #
    # @!attribute [rw] listing_revision
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the listing was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetListingOutput AWS API Documentation
    #
    class GetListingOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :item,
      :listing_revision,
      :name,
      :status,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the project exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProjectInput AWS API Documentation
    #
    class GetProjectInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the project exists.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The business glossary terms that can be used in the project.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   &gt;The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the project was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProjectOutput AWS API Documentation
    #
    class GetProjectOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :glossary_terms,
      :id,
      :last_updated_at,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the subscription grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionGrantInput AWS API Documentation
    #
    class GetSubscriptionGrantInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   The assets for which the subscription grant is created.
    #   @return [Array<Types::SubscribedAsset>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription grant is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] granted_entity
    #   The entity to which the subscription is granted.
    #   @return [Types::GrantedEntity]
    #
    # @!attribute [rw] id
    #   The ID of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_id
    #   The subscription target ID associated with the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription grant was upated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionGrantOutput AWS API Documentation
    #
    class GetSubscriptionGrantOutput < Struct.new(
      :assets,
      :created_at,
      :created_by,
      :domain_id,
      :granted_entity,
      :id,
      :status,
      :subscription_id,
      :subscription_target_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionInput AWS API Documentation
    #
    class GetSubscriptionInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the subscription was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the subscription
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] retain_permissions
    #   The retain permissions of the subscription.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing
    #   @return [Types::SubscribedListing]
    #
    # @!attribute [rw] subscribed_principal
    #   The principal that owns the subscription.
    #   @return [Types::SubscribedPrincipal]
    #
    # @!attribute [rw] subscription_request_id
    #   The ID of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionOutput AWS API Documentation
    #
    class GetSubscriptionOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :retain_permissions,
      :status,
      :subscribed_listing,
      :subscribed_principal,
      :subscription_request_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which to get the
    #   subscription request details.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the subscription request the details of which to
    #   get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionRequestDetailsInput AWS API Documentation
    #
    class GetSubscriptionRequestDetailsInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the specified subscription request was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] decision_comment
    #   The decision comment of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Amazon DataZone domain of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] reviewer_id
    #   The identifier of the Amazon DataZone user who reviewed the
    #   subscription request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   The subscribed listings in the subscription request.
    #   @return [Array<Types::SubscribedListing>]
    #
    # @!attribute [rw] subscribed_principals
    #   The subscribed principals in the subscription request.
    #   @return [Array<Types::SubscribedPrincipal>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription request was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionRequestDetailsOutput AWS API Documentation
    #
    class GetSubscriptionRequestDetailsOutput < Struct.new(
      :created_at,
      :created_by,
      :decision_comment,
      :domain_id,
      :id,
      :request_reason,
      :reviewer_id,
      :status,
      :subscribed_listings,
      :subscribed_principals,
      :updated_at,
      :updated_by)
      SENSITIVE = [:decision_comment, :request_reason]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription
    #   target exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment associated with the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionTargetInput AWS API Documentation
    #
    class GetSubscriptionTargetInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applicable_asset_types
    #   The asset types associated with the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorized_principals
    #   The authorized principals of the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription target was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the subscription
    #   target exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment associated with the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role
    #   The manage access role with which the subscription target was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The ID of the project associated with the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_config
    #   The configuration of teh subscription target.
    #   @return [Array<Types::SubscriptionTargetForm>]
    #
    # @!attribute [rw] type
    #   The type of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription target was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionTargetOutput AWS API Documentation
    #
    class GetSubscriptionTargetOutput < Struct.new(
      :applicable_asset_types,
      :authorized_principals,
      :created_at,
      :created_by,
      :domain_id,
      :environment_id,
      :id,
      :manage_access_role,
      :name,
      :project_id,
      :provider,
      :subscription_target_config,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   the ID of the Amazon DataZone domain the data portal of which you
    #   want to get.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] user_identifier
    #   The identifier of the user for which you want to get the user
    #   profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetUserProfileInput AWS API Documentation
    #
    class GetUserProfileInput < Struct.new(
      :domain_identifier,
      :type,
      :user_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] details
    #   The details of the user profile in Amazon DataZone.
    #   @return [Types::UserProfileDetails]
    #
    # @!attribute [rw] domain_id
    #   the identifier of the Amazon DataZone domain of which you want to
    #   get the user profile.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetUserProfileOutput AWS API Documentation
    #
    class GetUserProfileOutput < Struct.new(
      :details,
      :domain_id,
      :id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a business glossary.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the glossary was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the glossary.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The business glossary description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the business
    #   glossary exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the glossary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the glossary.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the project that owns the business glosary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The business glossary status.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the business glossary was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the business glossary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlossaryItem AWS API Documentation
    #
    class GlossaryItem < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :status,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The details of a business glossary term.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when a business glossary term was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the business glossary.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the business
    #   glossary exists.
    #   @return [String]
    #
    # @!attribute [rw] glossary_id
    #   The identifier of the business glossary to which the term belongs.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The long description of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The short description of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the business glossary term.
    #   @return [String]
    #
    # @!attribute [rw] term_relations
    #   The relations of the business glossary term.
    #   @return [Types::TermRelations]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when a business glossary term was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the business glossary term.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlossaryTermItem AWS API Documentation
    #
    class GlossaryTermItem < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :glossary_id,
      :id,
      :long_description,
      :name,
      :short_description,
      :status,
      :term_relations,
      :updated_at,
      :updated_by)
      SENSITIVE = [:long_description, :name, :short_description]
      include Aws::Structure
    end

    # The configuration details of the Amazon Web Services Glue data source.
    #
    # @!attribute [rw] data_access_role
    #   The data access role included in the configuration details of the
    #   Amazon Web Services Glue data source.
    #   @return [String]
    #
    # @!attribute [rw] relational_filter_configurations
    #   The relational filter configurations included in the configuration
    #   details of the Amazon Web Services Glue data source.
    #   @return [Array<Types::RelationalFilterConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueRunConfigurationInput AWS API Documentation
    #
    class GlueRunConfigurationInput < Struct.new(
      :data_access_role,
      :relational_filter_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of the Amazon Web Services Glue data source.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID included in the configuration
    #   details of the Amazon Web Services Glue data source.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role
    #   The data access role included in the configuration details of the
    #   Amazon Web Services Glue data source.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services region included in the configuration details
    #   of the Amazon Web Services Glue data source.
    #   @return [String]
    #
    # @!attribute [rw] relational_filter_configurations
    #   The relational filter configurations included in the configuration
    #   details of the Amazon Web Services Glue data source.
    #   @return [Array<Types::RelationalFilterConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueRunConfigurationOutput AWS API Documentation
    #
    class GlueRunConfigurationOutput < Struct.new(
      :account_id,
      :data_access_role,
      :region,
      :relational_filter_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a listing for which a subscription is granted.
    #
    # @note GrantedEntity is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GrantedEntity corresponding to the set member.
    #
    # @!attribute [rw] listing
    #   The listing for which a subscription is granted.
    #   @return [Types::ListingRevision]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GrantedEntity AWS API Documentation
    #
    class GrantedEntity < Struct.new(
      :listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Listing < GrantedEntity; end
      class Unknown < GrantedEntity; end
    end

    # The details of a listing for which a subscription is to be granted.
    #
    # @note GrantedEntityInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] listing
    #   The listing for which a subscription is to be granted.
    #   @return [Types::ListingRevisionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GrantedEntityInput AWS API Documentation
    #
    class GrantedEntityInput < Struct.new(
      :listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Listing < GrantedEntityInput; end
      class Unknown < GrantedEntityInput; end
    end

    # The details of a group in Amazon DataZone.
    #
    # @!attribute [rw] group_id
    #   The identifier of the group in Amazon DataZone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GroupDetails AWS API Documentation
    #
    class GroupDetails < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a group profile.
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain of a group profile.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The group name of a group profile.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of a group profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a group profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GroupProfileSummary AWS API Documentation
    #
    class GroupProfileSummary < Struct.new(
      :domain_id,
      :group_name,
      :id,
      :status)
      SENSITIVE = [:group_name]
      include Aws::Structure
    end

    # The details of an IAM user profile in Amazon DataZone.
    #
    # @!attribute [rw] arn
    #   The ARN of an IAM user profile in Amazon DataZone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/IamUserProfileDetails AWS API Documentation
    #
    class IamUserProfileDetails < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the import of the metadata form type.
    #
    # @!attribute [rw] name
    #   The name of the import.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Import AWS API Documentation
    #
    class Import < Struct.new(
      :name,
      :revision)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The request has failed because of an unknown error, exception or
    # failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the asset.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of revisions to return in a single call to
    #   `ListAssetRevisions`. When the number of revisions to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListAssetRevisions` to list the next set of revisions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of revisions is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of revisions, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListAssetRevisions` to
    #   list the next set of revisions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetRevisionsInput AWS API Documentation
    #
    class ListAssetRevisionsInput < Struct.new(
      :domain_identifier,
      :identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListAssetRevisions` action.
    #   @return [Array<Types::AssetRevision>]
    #
    # @!attribute [rw] next_token
    #   When the number of revisions is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of revisions, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListAssetRevisions` to
    #   list the next set of revisions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetRevisionsOutput AWS API Documentation
    #
    class ListAssetRevisionsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list data
    #   source run activities.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of activities to return in a single call to
    #   `ListDataSourceRunActivities`. When the number of activities to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call
    #   to `ListDataSourceRunActivities` to list the next set of activities.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of activities is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of activities, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListDataSourceRunActivities` to list the next set of activities.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRunActivitiesInput AWS API Documentation
    #
    class ListDataSourceRunActivitiesInput < Struct.new(
      :domain_identifier,
      :identifier,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListDataSourceRunActivities` action.
    #   @return [Array<Types::DataSourceRunActivity>]
    #
    # @!attribute [rw] next_token
    #   When the number of activities is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of activities, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListDataSourceRunActivities` to list the next set of activities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRunActivitiesOutput AWS API Documentation
    #
    class ListDataSourceRunActivitiesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_identifier
    #   The identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which to invoke the
    #   `ListDataSourceRuns` action.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of runs to return in a single call to
    #   `ListDataSourceRuns`. When the number of runs to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListDataSourceRuns` to list the next set of runs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of runs is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of runs, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDataSourceRuns` to
    #   list the next set of runs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRunsInput AWS API Documentation
    #
    class ListDataSourceRunsInput < Struct.new(
      :data_source_identifier,
      :domain_identifier,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListDataSourceRuns` action.
    #   @return [Array<Types::DataSourceRunSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of runs is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of runs, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDataSourceRuns` to
    #   list the next set of runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRunsOutput AWS API Documentation
    #
    class ListDataSourceRunsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list the
    #   data sources.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The identifier of the environment in which to list the data sources.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data sources to return in a single call to
    #   `ListDataSources`. When the number of data sources to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of data sources is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of data sources, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the project in which to list data sources.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourcesInput AWS API Documentation
    #
    class ListDataSourcesInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :max_results,
      :name,
      :next_token,
      :project_identifier,
      :status,
      :type)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListDataSources` action.
    #   @return [Array<Types::DataSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of data sources is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of data sources, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourcesOutput AWS API Documentation
    #
    class ListDataSourcesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of domains to return in a single call to
    #   `ListDomains`. When the number of domains to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListDomains` to list
    #   the next set of domains.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of domains is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of domains, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDomains` to list the
    #   next set of domains.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomainsInput AWS API Documentation
    #
    class ListDomainsInput < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListDomains` action.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of domains is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of domains, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDomains` to list the
    #   next set of domains.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomainsOutput AWS API Documentation
    #
    class ListDomainsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of blueprint configurations to return in a single
    #   call to `ListEnvironmentBlueprintConfigurations`. When the number of
    #   configurations to be listed is greater than the value of
    #   `MaxResults`, the response contains a `NextToken` value that you can
    #   use in a subsequent call to `ListEnvironmentBlueprintConfigurations`
    #   to list the next set of configurations.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of blueprint configurations is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   configurations, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListEnvironmentBlueprintConfigurations` to list the next
    #   set of configurations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprintConfigurationsInput AWS API Documentation
    #
    class ListEnvironmentBlueprintConfigurationsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListEnvironmentBlueprintConfigurations` action.
    #   @return [Array<Types::EnvironmentBlueprintConfigurationItem>]
    #
    # @!attribute [rw] next_token
    #   When the number of blueprint configurations is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   configurations, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListEnvironmentBlueprintConfigurations` to list the next
    #   set of configurations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprintConfigurationsOutput AWS API Documentation
    #
    class ListEnvironmentBlueprintConfigurationsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] managed
    #   Specifies whether the environment blueprint is managed by Amazon
    #   DataZone.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of blueprints to return in a single call to
    #   `ListEnvironmentBlueprints`. When the number of blueprints to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call
    #   to `ListEnvironmentBlueprints` to list the next set of blueprints.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of blueprints in the environment is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   blueprints in the environment, the response includes a pagination
    #   token named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListEnvironmentBlueprints`to list the next set
    #   of blueprints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprintsInput AWS API Documentation
    #
    class ListEnvironmentBlueprintsInput < Struct.new(
      :domain_identifier,
      :managed,
      :max_results,
      :name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListEnvironmentBlueprints` action.
    #   @return [Array<Types::EnvironmentBlueprintSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of blueprints in the environment is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   blueprints in the environment, the response includes a pagination
    #   token named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListEnvironmentBlueprints`to list the next set
    #   of blueprints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprintsOutput AWS API Documentation
    #
    class ListEnvironmentBlueprintsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The identifier of the Amazon Web Services account where you want to
    #   list environment profiles.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region where you want to list environment
    #   profiles.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   The identifier of the blueprint that was used to create the
    #   environment profiles that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environment profiles to return in a single
    #   call to `ListEnvironmentProfiles`. When the number of environment
    #   profiles to be listed is greater than the value of `MaxResults`, the
    #   response contains a `NextToken` value that you can use in a
    #   subsequent call to `ListEnvironmentProfiles` to list the next set of
    #   environment profiles.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of environment profiles is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   profiles, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListEnvironmentProfiles` to list the next set of
    #   environment profiles.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the Amazon DataZone project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentProfilesInput AWS API Documentation
    #
    class ListEnvironmentProfilesInput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :domain_identifier,
      :environment_blueprint_identifier,
      :max_results,
      :name,
      :next_token,
      :project_identifier)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListEnvironmentProfiles` action.
    #   @return [Array<Types::EnvironmentProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of environment profiles is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   profiles, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListEnvironmentProfiles` to list the next set of
    #   environment profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentProfilesOutput AWS API Documentation
    #
    class ListEnvironmentProfilesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The identifier of the Amazon Web Services account where you want to
    #   list environments.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services region where you want to list environments.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   The identifier of the Amazon DataZone blueprint.
    #   @return [String]
    #
    # @!attribute [rw] environment_profile_identifier
    #   The identifier of the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environments to return in a single call to
    #   `ListEnvironments`. When the number of environments to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of environments is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of environments, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the Amazon DataZone project.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the environments that you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentsInput AWS API Documentation
    #
    class ListEnvironmentsInput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :domain_identifier,
      :environment_blueprint_identifier,
      :environment_profile_identifier,
      :max_results,
      :name,
      :next_token,
      :project_identifier,
      :provider,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListEnvironments` action.
    #   @return [Array<Types::EnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of environments is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of environments, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentsOutput AWS API Documentation
    #
    class ListEnvironmentsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] after_timestamp
    #   The time after which you want to list notifications.
    #   @return [Time]
    #
    # @!attribute [rw] before_timestamp
    #   The time before which you want to list notifications.
    #   @return [Time]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of notifications to return in a single call to
    #   `ListNotifications`. When the number of notifications to be listed
    #   is greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of notifications is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of notifications, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #   @return [String]
    #
    # @!attribute [rw] subjects
    #   The subjects of notifications.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_status
    #   The task status of notifications.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of notifications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListNotificationsInput AWS API Documentation
    #
    class ListNotificationsInput < Struct.new(
      :after_timestamp,
      :before_timestamp,
      :domain_identifier,
      :max_results,
      :next_token,
      :subjects,
      :task_status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When the number of notifications is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of notifications, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #   @return [String]
    #
    # @!attribute [rw] notifications
    #   The results of the `ListNotifications` action.
    #   @return [Array<Types::NotificationOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListNotificationsOutput AWS API Documentation
    #
    class ListNotificationsOutput < Struct.new(
      :next_token,
      :notifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   list project memberships.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of memberships to return in a single call to
    #   `ListProjectMemberships`. When the number of memberships to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call
    #   to `ListProjectMemberships` to list the next set of memberships.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of memberships is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of memberships, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListProjectMemberships` to list the next set of memberships.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The identifier of the project whose memberships you want to list.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The method by which you want to sort the project memberships.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order of the project memberships.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectMembershipsInput AWS API Documentation
    #
    class ListProjectMembershipsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :project_identifier,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The members of the project.
    #   @return [Array<Types::ProjectMember>]
    #
    # @!attribute [rw] next_token
    #   When the number of memberships is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of memberships, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListProjectMemberships` to list the next set of memberships.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectMembershipsOutput AWS API Documentation
    #
    class ListProjectMembershipsOutput < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] group_identifier
    #   The identifier of a group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of projects to return in a single call to
    #   `ListProjects`. When the number of projects to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListProjects` to
    #   list the next set of projects.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of projects is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of projects, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListProjects` to list the
    #   next set of projects.
    #   @return [String]
    #
    # @!attribute [rw] user_identifier
    #   The identifier of the Amazon DataZone user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectsInput AWS API Documentation
    #
    class ListProjectsInput < Struct.new(
      :domain_identifier,
      :group_identifier,
      :max_results,
      :name,
      :next_token,
      :user_identifier)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListProjects` action.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of projects is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of projects, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListProjects` to list the
    #   next set of projects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectsOutput AWS API Documentation
    #
    class ListProjectsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of subscription grants to return in a single call
    #   to `ListSubscriptionGrants`. When the number of subscription grants
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call
    #   to `ListSubscriptionGrants` to list the next set of subscription
    #   grants.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of subscription grants is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   grants, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionGrants` to list the next set of subscription
    #   grants.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the way of sorting the results of this action.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order of this action.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing_id
    #   The identifier of the subscribed listing.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_id
    #   The identifier of the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionGrantsInput AWS API Documentation
    #
    class ListSubscriptionGrantsInput < Struct.new(
      :domain_identifier,
      :environment_id,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :subscribed_listing_id,
      :subscription_id,
      :subscription_target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListSubscriptionGrants` action.
    #   @return [Array<Types::SubscriptionGrantSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of subscription grants is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   grants, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionGrants` to list the next set of subscription
    #   grants.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionGrantsOutput AWS API Documentation
    #
    class ListSubscriptionGrantsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approver_project_id
    #   The identifier of the subscription request approver's project.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of subscription requests to return in a single
    #   call to `ListSubscriptionRequests`. When the number of subscription
    #   requests to be listed is greater than the value of `MaxResults`, the
    #   response contains a `NextToken` value that you can use in a
    #   subsequent call to `ListSubscriptionRequests` to list the next set
    #   of subscription requests.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of subscription requests is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   requests, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListSubscriptionRequests` to list the next set of
    #   subscription requests.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the project for the subscription requests.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the way to sort the results of this action.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order for the results of this action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the subscription requests.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing_id
    #   The identifier of the subscribed listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionRequestsInput AWS API Documentation
    #
    class ListSubscriptionRequestsInput < Struct.new(
      :approver_project_id,
      :domain_identifier,
      :max_results,
      :next_token,
      :owning_project_id,
      :sort_by,
      :sort_order,
      :status,
      :subscribed_listing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListSubscriptionRequests` action.
    #   @return [Array<Types::SubscriptionRequestSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of subscription requests is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   requests, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListSubscriptionRequests` to list the next set of
    #   subscription requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionRequestsOutput AWS API Documentation
    #
    class ListSubscriptionRequestsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain where you want to list
    #   subscription targets.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The identifier of the environment where you want to list
    #   subscription targets.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of subscription targets to return in a single
    #   call to `ListSubscriptionTargets`. When the number of subscription
    #   targets to be listed is greater than the value of `MaxResults`, the
    #   response contains a `NextToken` value that you can use in a
    #   subsequent call to `ListSubscriptionTargets` to list the next set of
    #   subscription targets.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of subscription targets is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   targets, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionTargets` to list the next set of subscription
    #   targets.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the way in which the results of this action are to be
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order for the results of this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionTargetsInput AWS API Documentation
    #
    class ListSubscriptionTargetsInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListSubscriptionTargets` action.
    #   @return [Array<Types::SubscriptionTargetSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of subscription targets is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   targets, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionTargets` to list the next set of subscription
    #   targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionTargetsOutput AWS API Documentation
    #
    class ListSubscriptionTargetsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approver_project_id
    #   The identifier of the project for the subscription's approver.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of subscriptions to return in a single call to
    #   `ListSubscriptions`. When the number of subscriptions to be listed
    #   is greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptions` to list the next set of Subscriptions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of subscriptions is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of subscriptions, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptions` to list the next set of subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the owning project.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the way in which the results of this action are to be
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order for the results of this action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscriptions that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing_id
    #   The identifier of the subscribed listing for the subscriptions that
    #   you want to list.
    #   @return [String]
    #
    # @!attribute [rw] subscription_request_identifier
    #   The identifier of the subscription request for the subscriptions
    #   that you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionsInput AWS API Documentation
    #
    class ListSubscriptionsInput < Struct.new(
      :approver_project_id,
      :domain_identifier,
      :max_results,
      :next_token,
      :owning_project_id,
      :sort_by,
      :sort_order,
      :status,
      :subscribed_listing_id,
      :subscription_request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListSubscriptions` action.
    #   @return [Array<Types::SubscriptionSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of subscriptions is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of subscriptions, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptions` to list the next set of subscriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionsOutput AWS API Documentation
    #
    class ListSubscriptionsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a listing (aka asset published in a Amazon DataZone
    # catalog).
    #
    # @note ListingItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ListingItem corresponding to the set member.
    #
    # @!attribute [rw] asset_listing
    #   An asset published in an Amazon DataZone catalog.
    #   @return [Types::AssetListing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListingItem AWS API Documentation
    #
    class ListingItem < Struct.new(
      :asset_listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetListing < ListingItem; end
      class Unknown < ListingItem; end
    end

    # A revision of an asset published in a Amazon DataZone catalog.
    #
    # @!attribute [rw] id
    #   An identifier of a revision of an asset published in a Amazon
    #   DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The details of a revision of an asset published in a Amazon DataZone
    #   catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListingRevision AWS API Documentation
    #
    class ListingRevision < Struct.new(
      :id,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # A revision to be made to an asset published in a Amazon DataZone
    # catalog.
    #
    # @!attribute [rw] identifier
    #   An identifier of revision to be made to an asset published in a
    #   Amazon DataZone catalog.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The details of a revision to be made to an asset published in a
    #   Amazon DataZone catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListingRevisionInput AWS API Documentation
    #
    class ListingRevisionInput < Struct.new(
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about a project member.
    #
    # @note Member is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] group_identifier
    #   The ID of the group of a project member.
    #   @return [String]
    #
    # @!attribute [rw] user_identifier
    #   The user ID of a project member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Member AWS API Documentation
    #
    class Member < Struct.new(
      :group_identifier,
      :user_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GroupIdentifier < Member; end
      class UserIdentifier < Member; end
      class Unknown < Member; end
    end

    # The details about a project member.
    #
    # @note MemberDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MemberDetails corresponding to the set member.
    #
    # @!attribute [rw] group
    #   The group details of a project member.
    #   @return [Types::GroupDetails]
    #
    # @!attribute [rw] user
    #   The user details of a project member.
    #   @return [Types::UserDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MemberDetails AWS API Documentation
    #
    class MemberDetails < Struct.new(
      :group,
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Group < MemberDetails; end
      class User < MemberDetails; end
      class Unknown < MemberDetails; end
    end

    # @note Model is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Model is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Model corresponding to the set member.
    #
    # @!attribute [rw] smithy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Model AWS API Documentation
    #
    class Model < Struct.new(
      :smithy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Smithy < Model; end
      class Unknown < Model; end
    end

    # The details of a notification generated in Amazon DataZone.
    #
    # @!attribute [rw] action_link
    #   The action link included in the notification.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp of when a notification was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of a Amazon DataZone domain in which the notification
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the notification.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the notification was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The message included in the notification.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata included in the notification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status included in the notification.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the notification.
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The topic of the notification.
    #   @return [Types::Topic]
    #
    # @!attribute [rw] type
    #   The type of the notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/NotificationOutput AWS API Documentation
    #
    class NotificationOutput < Struct.new(
      :action_link,
      :creation_timestamp,
      :domain_identifier,
      :identifier,
      :last_updated_timestamp,
      :message,
      :metadata,
      :status,
      :title,
      :topic,
      :type)
      SENSITIVE = [:action_link, :message, :title]
      include Aws::Structure
    end

    # The details of the resource mentioned in a notification.
    #
    # @!attribute [rw] id
    #   The ID of the resource mentioned in a notification.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource mentioned in a notification.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource mentioned in a notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/NotificationResource AWS API Documentation
    #
    class NotificationResource < Struct.new(
      :id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the prediction.
    #
    # @!attribute [rw] business_name_generation
    #   The business name generation mechanism.
    #   @return [Types::BusinessNameGenerationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PredictionConfiguration AWS API Documentation
    #
    class PredictionConfiguration < Struct.new(
      :business_name_generation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a project member.
    #
    # @!attribute [rw] designation
    #   The designated role of a project member.
    #   @return [String]
    #
    # @!attribute [rw] member_details
    #   The membership details of a project member.
    #   @return [Types::MemberDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectMember AWS API Documentation
    #
    class ProjectMember < Struct.new(
      :designation,
      :member_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a Amazon DataZone project.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when a project was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a project.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of a Amazon DataZone domain where the project exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of a project.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a project.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the project was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :name,
      :updated_at)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The provisioning properties of an environment blueprint.
    #
    # @note ProvisioningProperties is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProvisioningProperties corresponding to the set member.
    #
    # @!attribute [rw] cloud_formation
    #   The cloud formation properties included as part of the provisioning
    #   properties of an environment blueprint.
    #   @return [Types::CloudFormationProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProvisioningProperties AWS API Documentation
    #
    class ProvisioningProperties < Struct.new(
      :cloud_formation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudFormation < ProvisioningProperties; end
      class Unknown < ProvisioningProperties; end
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] enabled_regions
    #   Specifies the enabled Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   The identifier of the environment blueprint.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The ARN of the provisioning role.
    #   @return [String]
    #
    # @!attribute [rw] regional_parameters
    #   The regional parameters in the environment blueprint.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PutEnvironmentBlueprintConfigurationInput AWS API Documentation
    #
    class PutEnvironmentBlueprintConfigurationInput < Struct.new(
      :domain_identifier,
      :enabled_regions,
      :environment_blueprint_identifier,
      :manage_access_role_arn,
      :provisioning_role_arn,
      :regional_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the environment blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] enabled_regions
    #   Specifies the enabled Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The identifier of the environment blueprint.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_role_arn
    #   The ARN of the provisioning role.
    #   @return [String]
    #
    # @!attribute [rw] regional_parameters
    #   The regional parameters in the environment blueprint.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the environment blueprint was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PutEnvironmentBlueprintConfigurationOutput AWS API Documentation
    #
    class PutEnvironmentBlueprintConfigurationOutput < Struct.new(
      :created_at,
      :domain_id,
      :enabled_regions,
      :environment_blueprint_id,
      :manage_access_role_arn,
      :provisioning_role_arn,
      :regional_parameters,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recommendation to be updated as part of the `UpdateDataSource`
    # action.
    #
    # @!attribute [rw] enable_business_name_generation
    #   Specifies whether automatic business name generation is to be
    #   enabled or not as part of the recommendation configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RecommendationConfiguration AWS API Documentation
    #
    class RecommendationConfiguration < Struct.new(
      :enable_business_name_generation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Amazon Redshift cluster storage.
    #
    # @!attribute [rw] cluster_name
    #   The name of an Amazon Redshift cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftClusterStorage AWS API Documentation
    #
    class RedshiftClusterStorage < Struct.new(
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the credentials required to access an Amazon Redshift
    # cluster.
    #
    # @!attribute [rw] secret_manager_arn
    #   The ARN of a secret manager for an Amazon Redshift cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftCredentialConfiguration AWS API Documentation
    #
    class RedshiftCredentialConfiguration < Struct.new(
      :secret_manager_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of the Amazon Redshift data source.
    #
    # @!attribute [rw] data_access_role
    #   The data access role included in the configuration details of the
    #   Amazon Redshift data source.
    #   @return [String]
    #
    # @!attribute [rw] redshift_credential_configuration
    #   The details of the credentials required to access an Amazon Redshift
    #   cluster.
    #   @return [Types::RedshiftCredentialConfiguration]
    #
    # @!attribute [rw] redshift_storage
    #   The details of the Amazon Redshift storage as part of the
    #   configuration of an Amazon Redshift data source run.
    #   @return [Types::RedshiftStorage]
    #
    # @!attribute [rw] relational_filter_configurations
    #   The relational filger configurations included in the configuration
    #   details of the Amazon Redshift data source.
    #   @return [Array<Types::RelationalFilterConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftRunConfigurationInput AWS API Documentation
    #
    class RedshiftRunConfigurationInput < Struct.new(
      :data_access_role,
      :redshift_credential_configuration,
      :redshift_storage,
      :relational_filter_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of the Amazon Redshift data source.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account included in the
    #   configuration details of the Amazon Redshift data source.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role
    #   The data access role included in the configuration details of the
    #   Amazon Redshift data source.
    #   @return [String]
    #
    # @!attribute [rw] redshift_credential_configuration
    #   The details of the credentials required to access an Amazon Redshift
    #   cluster.
    #   @return [Types::RedshiftCredentialConfiguration]
    #
    # @!attribute [rw] redshift_storage
    #   The details of the Amazon Redshift storage as part of the
    #   configuration of an Amazon Redshift data source run.
    #   @return [Types::RedshiftStorage]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services region included in the configuration details
    #   of the Amazon Redshift data source.
    #   @return [String]
    #
    # @!attribute [rw] relational_filter_configurations
    #   The relational filger configurations included in the configuration
    #   details of the Amazon Redshift data source.
    #   @return [Array<Types::RelationalFilterConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftRunConfigurationOutput AWS API Documentation
    #
    class RedshiftRunConfigurationOutput < Struct.new(
      :account_id,
      :data_access_role,
      :redshift_credential_configuration,
      :redshift_storage,
      :region,
      :relational_filter_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Amazon Redshift Serverless workgroup storage.
    #
    # @!attribute [rw] workgroup_name
    #   The name of the Amazon Redshift Serverless workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftServerlessStorage AWS API Documentation
    #
    class RedshiftServerlessStorage < Struct.new(
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Amazon Redshift storage as part of the
    # configuration of an Amazon Redshift data source run.
    #
    # @note RedshiftStorage is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RedshiftStorage is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RedshiftStorage corresponding to the set member.
    #
    # @!attribute [rw] redshift_cluster_source
    #   The details of the Amazon Redshift cluster source.
    #   @return [Types::RedshiftClusterStorage]
    #
    # @!attribute [rw] redshift_serverless_source
    #   The details of the Amazon Redshift Serverless workgroup source.
    #   @return [Types::RedshiftServerlessStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftStorage AWS API Documentation
    #
    class RedshiftStorage < Struct.new(
      :redshift_cluster_source,
      :redshift_serverless_source,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RedshiftClusterSource < RedshiftStorage; end
      class RedshiftServerlessSource < RedshiftStorage; end
      class Unknown < RedshiftStorage; end
    end

    # The details of the automatically generated business metadata that is
    # rejected.
    #
    # @!attribute [rw] prediction_choices
    #   Specifies the the automatically generated business metadata that can
    #   be rejected.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] prediction_target
    #   Specifies the target (for example, a column name) where a prediction
    #   can be rejected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectChoice AWS API Documentation
    #
    class RejectChoice < Struct.new(
      :prediction_choices,
      :prediction_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the prediction.
    #   @return [String]
    #
    # @!attribute [rw] reject_choices
    #   @return [Array<Types::RejectChoice>]
    #
    # @!attribute [rw] reject_rule
    #   @return [Types::RejectRule]
    #
    # @!attribute [rw] revision
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectPredictionsInput AWS API Documentation
    #
    class RejectPredictionsInput < Struct.new(
      :client_token,
      :domain_identifier,
      :identifier,
      :reject_choices,
      :reject_rule,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   @return [String]
    #
    # @!attribute [rw] asset_revision
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectPredictionsOutput AWS API Documentation
    #
    class RejectPredictionsOutput < Struct.new(
      :asset_id,
      :asset_revision,
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the rule and the threshold under which a prediction can be
    # rejected.
    #
    # @!attribute [rw] rule
    #   Specifies whether you want to reject the top prediction for all
    #   targets or none.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The confidence score that specifies the condition at which a
    #   prediction can be rejected.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectRule AWS API Documentation
    #
    class RejectRule < Struct.new(
      :rule,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] decision_comment
    #   The decision comment of the rejected subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which the
    #   subscription request was rejected.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the subscription request that was rejected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectSubscriptionRequestInput AWS API Documentation
    #
    class RejectSubscriptionRequestInput < Struct.new(
      :decision_comment,
      :domain_identifier,
      :identifier)
      SENSITIVE = [:decision_comment]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the subscription request was rejected.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The timestamp of when the subscription request was rejected.
    #   @return [String]
    #
    # @!attribute [rw] decision_comment
    #   The decision comment of the rejected subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the
    #   subscription request was rejected.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request that was rejected.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] reviewer_id
    #   The identifier of the subscription request reviewer.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   The subscribed listings of the subscription request.
    #   @return [Array<Types::SubscribedListing>]
    #
    # @!attribute [rw] subscribed_principals
    #   The subscribed principals of the subscription request.
    #   @return [Array<Types::SubscribedPrincipal>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription request was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectSubscriptionRequestOutput AWS API Documentation
    #
    class RejectSubscriptionRequestOutput < Struct.new(
      :created_at,
      :created_by,
      :decision_comment,
      :domain_id,
      :id,
      :request_reason,
      :reviewer_id,
      :status,
      :subscribed_listings,
      :subscribed_principals,
      :updated_at,
      :updated_by)
      SENSITIVE = [:decision_comment, :request_reason]
      include Aws::Structure
    end

    # The relational filter configuration for the data source.
    #
    # @!attribute [rw] database_name
    #   The database name specified in the relational filter configuration
    #   for the data source.
    #   @return [String]
    #
    # @!attribute [rw] filter_expressions
    #   The filter expressions specified in the relational filter
    #   configuration for the data source.
    #   @return [Array<Types::FilterExpression>]
    #
    # @!attribute [rw] schema_name
    #   The schema name specified in the relational filter configuration for
    #   the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RelationalFilterConfiguration AWS API Documentation
    #
    class RelationalFilterConfiguration < Struct.new(
      :database_name,
      :filter_expressions,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a provisioned resource of this Amazon DataZone
    # environment.
    #
    # @!attribute [rw] name
    #   The name of a provisioned resource of this Amazon DataZone
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of a provisioned resource of this Amazon DataZone
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a provisioned resource of this Amazon DataZone
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a provisioned resource of this Amazon DataZone
    #   environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :name,
      :provider,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain where you want to
    #   revoke a subscription.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the revoked subscription.
    #   @return [String]
    #
    # @!attribute [rw] retain_permissions
    #   Specifies whether permissions are retained when the subscription is
    #   revoked.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RevokeSubscriptionInput AWS API Documentation
    #
    class RevokeSubscriptionInput < Struct.new(
      :domain_identifier,
      :identifier,
      :retain_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the subscription was revoked.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user who revoked the subscription.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain where you want to
    #   revoke a subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the revoked subscription.
    #   @return [String]
    #
    # @!attribute [rw] retain_permissions
    #   Specifies whether permissions are retained when the subscription is
    #   revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the revoked subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing
    #   The subscribed listing of the revoked subscription.
    #   @return [Types::SubscribedListing]
    #
    # @!attribute [rw] subscribed_principal
    #   The subscribed principal of the revoked subscription.
    #   @return [Types::SubscribedPrincipal]
    #
    # @!attribute [rw] subscription_request_id
    #   The identifier of the subscription request for the revoked
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription was revoked.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who revoked the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RevokeSubscriptionOutput AWS API Documentation
    #
    class RevokeSubscriptionOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :retain_permissions,
      :status,
      :subscribed_listing,
      :subscribed_principal,
      :subscription_request_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The asset statistics from the data source run.
    #
    # @!attribute [rw] added
    #   The `added` statistic for the data source run.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   The `failed` statistic for the data source run.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped
    #   The `skipped` statistic for the data source run.
    #   @return [Integer]
    #
    # @!attribute [rw] unchanged
    #   The `unchanged` statistic for the data source run.
    #   @return [Integer]
    #
    # @!attribute [rw] updated
    #   The `updated` statistic for the data source run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RunStatisticsForAssets AWS API Documentation
    #
    class RunStatisticsForAssets < Struct.new(
      :added,
      :failed,
      :skipped,
      :unchanged,
      :updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the schedule of the data source runs.
    #
    # @!attribute [rw] schedule
    #   The schedule of the data source runs.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The timezone of the data source run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ScheduleConfiguration AWS API Documentation
    #
    class ScheduleConfiguration < Struct.new(
      :schedule,
      :timezone)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   search group profiles.
    #   @return [String]
    #
    # @!attribute [rw] group_type
    #   The group type for which to search.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call to
    #   `SearchGroupProfiles`. When the number of results to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `SearchGroupProfiles` to list the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchGroupProfiles` to
    #   list the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   Specifies the text for which to search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchGroupProfilesInput AWS API Documentation
    #
    class SearchGroupProfilesInput < Struct.new(
      :domain_identifier,
      :group_type,
      :max_results,
      :next_token,
      :search_text)
      SENSITIVE = [:search_text]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `SearchGroupProfiles` action.
    #   @return [Array<Types::GroupProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchGroupProfiles` to
    #   list the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchGroupProfilesOutput AWS API Documentation
    #
    class SearchGroupProfilesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the search.
    #
    # @!attribute [rw] attribute
    #   The search attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchInItem AWS API Documentation
    #
    class SearchInItem < Struct.new(
      :attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_attributes
    #   Specifies additional attributes for the `Search` action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Specifies the search filters.
    #   @return [Types::FilterClause]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call to
    #   `Search`. When the number of results to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `Search` to list the next
    #   set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `Search` to list the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The identifier of the owning project specified for the search.
    #   @return [String]
    #
    # @!attribute [rw] search_in
    #   @return [Array<Types::SearchInItem>]
    #
    # @!attribute [rw] search_scope
    #   The scope of the search.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   Specifies the text for which to search.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Specifies the way in which the search results are to be sorted.
    #   @return [Types::SearchSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchInput AWS API Documentation
    #
    class SearchInput < Struct.new(
      :additional_attributes,
      :domain_identifier,
      :filters,
      :max_results,
      :next_token,
      :owning_project_identifier,
      :search_in,
      :search_scope,
      :search_text,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the search results.
    #
    # @note SearchInventoryResultItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SearchInventoryResultItem corresponding to the set member.
    #
    # @!attribute [rw] asset_item
    #   The asset item included in the search results.
    #   @return [Types::AssetItem]
    #
    # @!attribute [rw] data_product_item
    #   The data product item included in the search results.
    #   @return [Types::DataProductSummary]
    #
    # @!attribute [rw] glossary_item
    #   The glossary item included in the search results.
    #   @return [Types::GlossaryItem]
    #
    # @!attribute [rw] glossary_term_item
    #   The glossary term item included in the search results.
    #   @return [Types::GlossaryTermItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchInventoryResultItem AWS API Documentation
    #
    class SearchInventoryResultItem < Struct.new(
      :asset_item,
      :data_product_item,
      :glossary_item,
      :glossary_term_item,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetItem < SearchInventoryResultItem; end
      class DataProductItem < SearchInventoryResultItem; end
      class GlossaryItem < SearchInventoryResultItem; end
      class GlossaryTermItem < SearchInventoryResultItem; end
      class Unknown < SearchInventoryResultItem; end
    end

    # @!attribute [rw] additional_attributes
    #   Specifies additional attributes for the search.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the domain in which to search listings.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Specifies the filters for the search of listings.
    #   @return [Types::FilterClause]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call to
    #   `SearchListings`. When the number of results to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `SearchListings` to
    #   list the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchListings` to list
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] search_in
    #   @return [Array<Types::SearchInItem>]
    #
    # @!attribute [rw] search_text
    #   Specifies the text for which to search.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Specifies the way for sorting the search results.
    #   @return [Types::SearchSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchListingsInput AWS API Documentation
    #
    class SearchListingsInput < Struct.new(
      :additional_attributes,
      :domain_identifier,
      :filters,
      :max_results,
      :next_token,
      :search_in,
      :search_text,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `SearchListings` action.
    #   @return [Array<Types::SearchResultItem>]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchListings` to list
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] total_match_count
    #   Total number of search results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchListingsOutput AWS API Documentation
    #
    class SearchListingsOutput < Struct.new(
      :items,
      :next_token,
      :total_match_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `Search` action.
    #   @return [Array<Types::SearchInventoryResultItem>]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `Search` to list the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] total_match_count
    #   Total number of search results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchOutput AWS API Documentation
    #
    class SearchOutput < Struct.new(
      :items,
      :next_token,
      :total_match_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the results of the `SearchListings` action.
    #
    # @note SearchResultItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SearchResultItem corresponding to the set member.
    #
    # @!attribute [rw] asset_listing
    #   The asset listing included in the results of the `SearchListings`
    #   action.
    #   @return [Types::AssetListingItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchResultItem AWS API Documentation
    #
    class SearchResultItem < Struct.new(
      :asset_listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetListing < SearchResultItem; end
      class Unknown < SearchResultItem; end
    end

    # The details of the way to sort search results.
    #
    # @!attribute [rw] attribute
    #   The attribute detail of the way to sort search results.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order detail of the wya to sort search results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchSort AWS API Documentation
    #
    class SearchSort < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which to invoke the
    #   `SearchTypes` action.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters for the `SearchTypes` action.
    #   @return [Types::FilterClause]
    #
    # @!attribute [rw] managed
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call to
    #   `SearchTypes`. When the number of results to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `SearchTypes` to list
    #   the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchTypes` to list the
    #   next set of results.
    #   @return [String]
    #
    # @!attribute [rw] search_in
    #   @return [Array<Types::SearchInItem>]
    #
    # @!attribute [rw] search_scope
    #   Specifies the scope of the search for types.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   Specifies the text for which to search.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The specifies the way to sort the `SearchTypes` results.
    #   @return [Types::SearchSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchTypesInput AWS API Documentation
    #
    class SearchTypesInput < Struct.new(
      :domain_identifier,
      :filters,
      :managed,
      :max_results,
      :next_token,
      :search_in,
      :search_scope,
      :search_text,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `SearchTypes` action.
    #   @return [Array<Types::SearchTypesResultItem>]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchTypes` to list the
    #   next set of results.
    #   @return [String]
    #
    # @!attribute [rw] total_match_count
    #   Total number of search results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchTypesOutput AWS API Documentation
    #
    class SearchTypesOutput < Struct.new(
      :items,
      :next_token,
      :total_match_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the results of the `SearchTypes` action.
    #
    # @note SearchTypesResultItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SearchTypesResultItem corresponding to the set member.
    #
    # @!attribute [rw] asset_type_item
    #   The asset type included in the results of the `SearchTypes` action.
    #   @return [Types::AssetTypeItem]
    #
    # @!attribute [rw] form_type_item
    #   The form type included in the results of the `SearchTypes` action.
    #   @return [Types::FormTypeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchTypesResultItem AWS API Documentation
    #
    class SearchTypesResultItem < Struct.new(
      :asset_type_item,
      :form_type_item,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetTypeItem < SearchTypesResultItem; end
      class FormTypeItem < SearchTypesResultItem; end
      class Unknown < SearchTypesResultItem; end
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   search user profiles.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call to
    #   `SearchUserProfiles`. When the number of results to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `SearchUserProfiles` to list the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchUserProfiles` to
    #   list the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   Specifies the text for which to search.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   Specifies the user type for the `SearchUserProfiles` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchUserProfilesInput AWS API Documentation
    #
    class SearchUserProfilesInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :search_text,
      :user_type)
      SENSITIVE = [:search_text]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `SearchUserProfiles` action.
    #   @return [Array<Types::UserProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchUserProfiles` to
    #   list the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchUserProfilesOutput AWS API Documentation
    #
    class SearchUserProfilesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has exceeded the specified service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The single sign-on details in Amazon DataZone.
    #
    # @!attribute [rw] type
    #   The type of single sign-on in Amazon DataZone.
    #   @return [String]
    #
    # @!attribute [rw] user_assignment
    #   The single sign-on user assignment in Amazon DataZone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SingleSignOn AWS API Documentation
    #
    class SingleSignOn < Struct.new(
      :type,
      :user_assignment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The single sign-on details of the user profile.
    #
    # @!attribute [rw] first_name
    #   The first name included in the single sign-on details of the user
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name included in the single sign-on details of the user
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username included in the single sign-on details of the user
    #   profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SsoUserProfileDetails AWS API Documentation
    #
    class SsoUserProfileDetails < Struct.new(
      :first_name,
      :last_name,
      :username)
      SENSITIVE = [:first_name, :last_name, :username]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] data_source_identifier
    #   The identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which to start a
    #   data source run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartDataSourceRunInput AWS API Documentation
    #
    class StartDataSourceRunInput < Struct.new(
      :client_token,
      :data_source_identifier,
      :domain_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when data source run was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_configuration_snapshot
    #   The configuration snapshot of the data source that is being run.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which to start a
    #   data source run.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The identifier of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of the project.
    #   @return [String]
    #
    # @!attribute [rw] run_statistics_for_assets
    #   Specifies run statistics for assets.
    #   @return [Types::RunStatisticsForAssets]
    #
    # @!attribute [rw] started_at
    #   The timestamp of when the data source run was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] stopped_at
    #   The timestamp of when the data source run was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of the data source run.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the data source run was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartDataSourceRunOutput AWS API Documentation
    #
    class StartDataSourceRunOutput < Struct.new(
      :created_at,
      :data_source_configuration_snapshot,
      :data_source_id,
      :domain_id,
      :error_message,
      :id,
      :project_id,
      :run_statistics_for_assets,
      :started_at,
      :status,
      :stopped_at,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the asset for which the subscription grant is created.
    #
    # @!attribute [rw] asset_id
    #   The identifier of the asset for which the subscription grant is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] asset_revision
    #   The revision of the asset for which the subscription grant is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] failure_cause
    #   The failure cause included in the details of the asset for which the
    #   subscription grant is created.
    #   @return [Types::FailureCause]
    #
    # @!attribute [rw] failure_timestamp
    #   The failure timestamp included in the details of the asset for which
    #   the subscription grant is created.
    #   @return [Time]
    #
    # @!attribute [rw] granted_timestamp
    #   The timestamp of when the subscription grant to the asset is
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the asset for which the subscription grant is created.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The target name of the asset for which the subscription grant is
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedAsset AWS API Documentation
    #
    class SubscribedAsset < Struct.new(
      :asset_id,
      :asset_revision,
      :failure_cause,
      :failure_timestamp,
      :granted_timestamp,
      :status,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the published asset for which the subscription grant is
    # created.
    #
    # @!attribute [rw] entity_id
    #   The identifier of the published asset for which the subscription
    #   grant is created.
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   The revision of the published asset for which the subscription grant
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the published asset for which the subscription grant is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] forms
    #   The forms attached to the published asset for which the subscription
    #   grant is created.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms attached to the published asset for which the
    #   subscription grant is created.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedAssetListing AWS API Documentation
    #
    class SubscribedAssetListing < Struct.new(
      :entity_id,
      :entity_revision,
      :entity_type,
      :forms,
      :glossary_terms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the published asset for which the subscription grant is
    # created.
    #
    # @!attribute [rw] description
    #   The description of the published asset for which the subscription
    #   grant is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the published asset for which the subscription
    #   grant is created.
    #   @return [String]
    #
    # @!attribute [rw] item
    #   The published asset for which the subscription grant is created.
    #   @return [Types::SubscribedListingItem]
    #
    # @!attribute [rw] name
    #   The name of the published asset for which the subscription grant is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] owner_project_id
    #   The identifier of the project of the published asset for which the
    #   subscription grant is created.
    #   @return [String]
    #
    # @!attribute [rw] owner_project_name
    #   The name of the project that owns the published asset for which the
    #   subscription grant is created.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the published asset for which the subscription grant
    #   is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedListing AWS API Documentation
    #
    class SubscribedListing < Struct.new(
      :description,
      :id,
      :item,
      :name,
      :owner_project_id,
      :owner_project_name,
      :revision)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The published asset for which the subscription grant is to be created.
    #
    # @!attribute [rw] identifier
    #   The identifier of the published asset for which the subscription
    #   grant is to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedListingInput AWS API Documentation
    #
    class SubscribedListingInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The published asset for which the subscription grant is created.
    #
    # @note SubscribedListingItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SubscribedListingItem corresponding to the set member.
    #
    # @!attribute [rw] asset_listing
    #   The asset for which the subscription grant is created.
    #   @return [Types::SubscribedAssetListing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedListingItem AWS API Documentation
    #
    class SubscribedListingItem < Struct.new(
      :asset_listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetListing < SubscribedListingItem; end
      class Unknown < SubscribedListingItem; end
    end

    # The principal that has the subscription grant for the asset.
    #
    # @note SubscribedPrincipal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SubscribedPrincipal corresponding to the set member.
    #
    # @!attribute [rw] project
    #   The project that has the subscription grant.
    #   @return [Types::SubscribedProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedPrincipal AWS API Documentation
    #
    class SubscribedPrincipal < Struct.new(
      :project,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Project < SubscribedPrincipal; end
      class Unknown < SubscribedPrincipal; end
    end

    # The principal that is to be given a subscriptiong grant.
    #
    # @note SubscribedPrincipalInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] project
    #   The project that is to be given a subscription grant.
    #   @return [Types::SubscribedProjectInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedPrincipalInput AWS API Documentation
    #
    class SubscribedPrincipalInput < Struct.new(
      :project,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Project < SubscribedPrincipalInput; end
      class Unknown < SubscribedPrincipalInput; end
    end

    # The project that has the subscription grant.
    #
    # @!attribute [rw] id
    #   The identifier of the project that has the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project that has the subscription grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedProject AWS API Documentation
    #
    class SubscribedProject < Struct.new(
      :id,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The project that is to be given a subscription grant.
    #
    # @!attribute [rw] identifier
    #   The identifier of the project that is to be given a subscription
    #   grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedProjectInput AWS API Documentation
    #
    class SubscribedProjectInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the subscription grant.
    #
    # @!attribute [rw] assets
    #   The assets included in the subscription grant.
    #   @return [Array<Types::SubscribedAsset>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when a subscription grant was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The datazone user who created the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   grant exists.
    #   @return [String]
    #
    # @!attribute [rw] granted_entity
    #   The entity to which the subscription is granted.
    #   @return [Types::GrantedEntity]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The ID of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_id
    #   The identifier of the target of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestampf of when the subscription grant was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscriptionGrantSummary AWS API Documentation
    #
    class SubscriptionGrantSummary < Struct.new(
      :assets,
      :created_at,
      :created_by,
      :domain_id,
      :granted_entity,
      :id,
      :status,
      :subscription_id,
      :subscription_target_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the subscription request.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when a subscription request was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] decision_comment
    #   The decision comment of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   request exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] reviewer_id
    #   The identifier of the subscription request reviewer.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   The listings included in the subscription request.
    #   @return [Array<Types::SubscribedListing>]
    #
    # @!attribute [rw] subscribed_principals
    #   The principals included in the subscription request.
    #   @return [Array<Types::SubscribedPrincipal>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription request was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The identifier of the Amazon DataZone user who updated the
    #   subscription request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscriptionRequestSummary AWS API Documentation
    #
    class SubscriptionRequestSummary < Struct.new(
      :created_at,
      :created_by,
      :decision_comment,
      :domain_id,
      :id,
      :request_reason,
      :reviewer_id,
      :status,
      :subscribed_listings,
      :subscribed_principals,
      :updated_at,
      :updated_by)
      SENSITIVE = [:decision_comment, :request_reason]
      include Aws::Structure
    end

    # The details of the subscription.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] retain_permissions
    #   The retain permissions included in the subscription.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listing
    #   The listing included in the subscription.
    #   @return [Types::SubscribedListing]
    #
    # @!attribute [rw] subscribed_principal
    #   The principal included in the subscription.
    #   @return [Types::SubscribedPrincipal]
    #
    # @!attribute [rw] subscription_request_id
    #   The identifier of the subscription request for the subscription.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscriptionSummary AWS API Documentation
    #
    class SubscriptionSummary < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :retain_permissions,
      :status,
      :subscribed_listing,
      :subscribed_principal,
      :subscription_request_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the subscription target configuration.
    #
    # @!attribute [rw] content
    #   The content of the subscription target configuration.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The form name included in the subscription target configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscriptionTargetForm AWS API Documentation
    #
    class SubscriptionTargetForm < Struct.new(
      :content,
      :form_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the subscription target.
    #
    # @!attribute [rw] applicable_asset_types
    #   The asset types included in the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorized_principals
    #   The authorized principals included in the subscription target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription target was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the
    #   subscription target exists.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the environment of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role
    #   The manage access role specified in the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of the project specified in the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_config
    #   The configuration of the subscription target.
    #   @return [Array<Types::SubscriptionTargetForm>]
    #
    # @!attribute [rw] type
    #   The type of the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription target was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscriptionTargetSummary AWS API Documentation
    #
    class SubscriptionTargetSummary < Struct.new(
      :applicable_asset_types,
      :authorized_principals,
      :created_at,
      :created_by,
      :domain_id,
      :environment_id,
      :id,
      :manage_access_role,
      :name,
      :project_id,
      :provider,
      :subscription_target_config,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be tagged in Amazon DataZone.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the tags for the `TagResource` action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The details of the term relations.
    #
    # @!attribute [rw] classifies
    #   The classifies of the term relations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_a
    #   The `isA` property of the term relations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TermRelations AWS API Documentation
    #
    class TermRelations < Struct.new(
      :classifies,
      :is_a)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The topic of the notification.
    #
    # @!attribute [rw] resource
    #   The details of the resource mentioned in a notification.
    #   @return [Types::NotificationResource]
    #
    # @!attribute [rw] role
    #   The role of the resource mentioned in a notification.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject of the resource mentioned in a notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Topic AWS API Documentation
    #
    class Topic < Struct.new(
      :resource,
      :role,
      :subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be untagged in Amazon DataZone.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the tag keys for the `UntagResource` action.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] asset_forms_input
    #   The asset forms to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] configuration
    #   The configuration to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [Types::DataSourceConfigurationInput]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the domain in which to update a data source.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   The enable setting to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the data source to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateDataSource` action.
    #   @return [String]
    #
    # @!attribute [rw] publish_on_import
    #   The publish on import setting to be updated as part of the
    #   `UpdateDataSource` action.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation
    #   The recommendation to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [Types::RecommendationConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule to be updated as part of the `UpdateDataSource` action.
    #   @return [Types::ScheduleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDataSourceInput AWS API Documentation
    #
    class UpdateDataSourceInput < Struct.new(
      :asset_forms_input,
      :configuration,
      :description,
      :domain_identifier,
      :enable_setting,
      :identifier,
      :name,
      :publish_on_import,
      :recommendation,
      :schedule)
      SENSITIVE = [:asset_forms_input, :description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] asset_forms_output
    #   The asset forms to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] configuration
    #   The configuration to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [Types::DataSourceConfigurationOutput]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the data source was updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a data source
    #   is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] enable_setting
    #   The enable setting to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the environment in which a data source is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] id
    #   The identifier of the data source to be updated.
    #   @return [String]
    #
    # @!attribute [rw] last_run_at
    #   The timestamp of when the data source was last run.
    #   @return [Time]
    #
    # @!attribute [rw] last_run_error_message
    #   The last run error message of the data source.
    #   @return [Types::DataSourceErrorMessage]
    #
    # @!attribute [rw] last_run_status
    #   The last run status of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateDataSource` action.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of the project where data source is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] publish_on_import
    #   The publish on import setting to be updated as part of the
    #   `UpdateDataSource` action.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation
    #   The recommendation to be updated as part of the `UpdateDataSource`
    #   action.
    #   @return [Types::RecommendationConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule to be updated as part of the `UpdateDataSource` action.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the `UpdateDataSource` action.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type to be updated as part of the `UpdateDataSource` action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the data source was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDataSourceOutput AWS API Documentation
    #
    class UpdateDataSourceOutput < Struct.new(
      :asset_forms_output,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :enable_setting,
      :environment_id,
      :error_message,
      :id,
      :last_run_at,
      :last_run_error_message,
      :last_run_status,
      :name,
      :project_id,
      :publish_on_import,
      :recommendation,
      :schedule,
      :status,
      :type,
      :updated_at)
      SENSITIVE = [:description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateDomain` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_execution_role
    #   The domain execution role to be updated as part of the
    #   `UpdateDomain` action.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the Amazon Web Services domain that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateDomain` action.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on
    #   The single sign-on option to be updated as part of the
    #   `UpdateDomain` action.
    #   @return [Types::SingleSignOn]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomainInput AWS API Documentation
    #
    class UpdateDomainInput < Struct.new(
      :client_token,
      :description,
      :domain_execution_role,
      :identifier,
      :name,
      :single_sign_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateDomain` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_execution_role
    #   The domain execution role to be updated as part of the
    #   `UpdateDomain` action.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies the timestamp of when the domain was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateDomain` action.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on
    #   The single sign-on option of the Amazon DataZone domain.
    #   @return [Types::SingleSignOn]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomainOutput AWS API Documentation
    #
    class UpdateDomainOutput < Struct.new(
      :description,
      :domain_execution_role,
      :id,
      :last_updated_at,
      :name,
      :single_sign_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateEnvironment`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the domain in which the environment is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms to be updated as part of the `UpdateEnvironment`
    #   action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   The identifier of the environment that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateEnvironment` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentInput AWS API Documentation
    #
    class UpdateEnvironmentInput < Struct.new(
      :description,
      :domain_identifier,
      :glossary_terms,
      :identifier,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The identifier of the Amazon Web Services account in which the
    #   environment is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services Region in which the environment is updated.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_properties
    #   The deployment properties to be updated as part of the
    #   `UpdateEnvironment` action.
    #   @return [Types::DeploymentProperties]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateEnvironment`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain in which the environment is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_actions
    #   The environment actions to be updated as part of the
    #   `UpdateEnvironment` action.
    #   @return [Array<Types::ConfigurableEnvironmentAction>]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The blueprint identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_profile_id
    #   The profile identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms to be updated as part of the `UpdateEnvironment`
    #   action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The identifier of the environment that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment
    #   The last deployment of the environment.
    #   @return [Types::Deployment]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateEnvironment` action.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The project identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_resources
    #   The provisioned resources to be updated as part of the
    #   `UpdateEnvironment` action.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] provisioning_properties
    #   The provisioning properties to be updated as part of the
    #   `UpdateEnvironment` action.
    #   @return [Types::ProvisioningProperties]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the `UpdateEnvironment` action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the environment was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters to be updated as part of the `UpdateEnvironment`
    #   action.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentOutput AWS API Documentation
    #
    class UpdateEnvironmentOutput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :deployment_properties,
      :description,
      :domain_id,
      :environment_actions,
      :environment_blueprint_id,
      :environment_profile_id,
      :glossary_terms,
      :id,
      :last_deployment,
      :name,
      :project_id,
      :provider,
      :provisioned_resources,
      :provisioning_properties,
      :status,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account in which a specified environment
    #   profile is to be udpated.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services Region in which a specified environment
    #   profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which an environment
    #   profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the environment profile that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateEnvironmentProfile`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #   @return [Array<Types::EnvironmentParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentProfileInput AWS API Documentation
    #
    class UpdateEnvironmentProfileInput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :description,
      :domain_identifier,
      :identifier,
      :name,
      :user_parameters)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account in which a specified environment
    #   profile is to be udpated.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_region
    #   The Amazon Web Services Region in which a specified environment
    #   profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the environment profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which the
    #   environment profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The identifier of the blueprint of the environment profile that is
    #   to be updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the environment profile that is to be udpated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateEnvironmentProfile`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of the project of the environment profile that is to
    #   be updated.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the environment profile was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #   @return [Array<Types::CustomParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentProfileOutput AWS API Documentation
    #
    class UpdateEnvironmentProfileOutput < Struct.new(
      :aws_account_id,
      :aws_account_region,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :environment_blueprint_id,
      :id,
      :name,
      :project_id,
      :updated_at,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateGlossary`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the business glossary to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateGlossary` action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the `UpdateGlossary` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossaryInput AWS API Documentation
    #
    class UpdateGlossaryInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :identifier,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateGlossary`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the business glossary that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateGlossary` action.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The identifier of the project in which to update a business
    #   glossary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the `UpdateGlossary` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossaryOutput AWS API Documentation
    #
    class UpdateGlossaryOutput < Struct.new(
      :description,
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary term is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] glossary_identifier
    #   The identifier of the business glossary in which a term is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the business glossary term that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The long description to be updated as part of the
    #   `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The short description to be updated as part of the
    #   `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] term_relations
    #   The term relations to be updated as part of the `UpdateGlossaryTerm`
    #   action.
    #   @return [Types::TermRelations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossaryTermInput AWS API Documentation
    #
    class UpdateGlossaryTermInput < Struct.new(
      :domain_identifier,
      :glossary_identifier,
      :identifier,
      :long_description,
      :name,
      :short_description,
      :status,
      :term_relations)
      SENSITIVE = [:long_description, :name, :short_description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary term is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] glossary_id
    #   The identifier of the business glossary in which a term is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the business glossary term that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The long description to be updated as part of the
    #   `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   The short description to be updated as part of the
    #   `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the `UpdateGlossaryTerm` action.
    #   @return [String]
    #
    # @!attribute [rw] term_relations
    #   The term relations to be updated as part of the `UpdateGlossaryTerm`
    #   action.
    #   @return [Types::TermRelations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossaryTermOutput AWS API Documentation
    #
    class UpdateGlossaryTermOutput < Struct.new(
      :domain_id,
      :glossary_id,
      :id,
      :long_description,
      :name,
      :short_description,
      :status,
      :term_relations)
      SENSITIVE = [:long_description, :name, :short_description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a group
    #   profile is updated.
    #   @return [String]
    #
    # @!attribute [rw] group_identifier
    #   The identifier of the group profile that is updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the group profile that is updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGroupProfileInput AWS API Documentation
    #
    class UpdateGroupProfileInput < Struct.new(
      :domain_identifier,
      :group_identifier,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a group
    #   profile is updated.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group profile that is updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the group profile that is updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the group profile that is updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGroupProfileOutput AWS API Documentation
    #
    class UpdateGroupProfileOutput < Struct.new(
      :domain_id,
      :group_name,
      :id,
      :status)
      SENSITIVE = [:group_name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description to be updated as part of the `UpdateProject` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a project is
    #   to be updated.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms to be updated as part of the `UpdateProject`
    #   action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   The identifier of the project that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateProject` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectInput AWS API Documentation
    #
    class UpdateProjectInput < Struct.new(
      :description,
      :domain_identifier,
      :glossary_terms,
      :identifier,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a project is
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the project that are to be updated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The identifier of the project that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the project was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the project that is to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectOutput AWS API Documentation
    #
    class UpdateProjectOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :glossary_terms,
      :id,
      :last_updated_at,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] asset_identifier
    #   The identifier of the asset the subscription grant status of which
    #   is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   grant status is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] failure_cause
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Types::FailureCause]
    #
    # @!attribute [rw] identifier
    #   The identifier of the subscription grant the status of which is to
    #   be updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The target name to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionGrantStatusInput AWS API Documentation
    #
    class UpdateSubscriptionGrantStatusInput < Struct.new(
      :asset_identifier,
      :domain_identifier,
      :failure_cause,
      :identifier,
      :status,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   @return [Array<Types::SubscribedAsset>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the subscription grant status was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone domain user who created the subscription grant
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   grant status is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] granted_entity
    #   The granted entity to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #   @return [Types::GrantedEntity]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription grant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_id
    #   The identifier of the subscription target whose subscription grant
    #   status is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription grant status is to be
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription grant status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionGrantStatusOutput AWS API Documentation
    #
    class UpdateSubscriptionGrantStatusOutput < Struct.new(
      :assets,
      :created_at,
      :created_by,
      :domain_id,
      :granted_entity,
      :id,
      :status,
      :subscription_id,
      :subscription_target_id,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   request is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the subscription request that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the `UpdateSubscriptionRequest` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionRequestInput AWS API Documentation
    #
    class UpdateSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :identifier,
      :request_reason)
      SENSITIVE = [:request_reason]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the subscription request was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] decision_comment
    #   The decision comment of the `UpdateSubscriptionRequest` action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   request is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] request_reason
    #   The reason for the `UpdateSubscriptionRequest` action.
    #   @return [String]
    #
    # @!attribute [rw] reviewer_id
    #   The identifier of the Amazon DataZone user who reviews the
    #   subscription request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   The subscribed listings of the subscription request.
    #   @return [Array<Types::SubscribedListing>]
    #
    # @!attribute [rw] subscribed_principals
    #   The subscribed principals of the subscription request.
    #   @return [Array<Types::SubscribedPrincipal>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription request was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionRequestOutput AWS API Documentation
    #
    class UpdateSubscriptionRequestOutput < Struct.new(
      :created_at,
      :created_by,
      :decision_comment,
      :domain_id,
      :id,
      :request_reason,
      :reviewer_id,
      :status,
      :subscribed_listings,
      :subscribed_principals,
      :updated_at,
      :updated_by)
      SENSITIVE = [:decision_comment, :request_reason]
      include Aws::Structure
    end

    # @!attribute [rw] applicable_asset_types
    #   The applicable asset types to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorized_principals
    #   The authorized principals to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   target is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The identifier of the environment in which a subscription target is
    #   to be updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Identifier of the subscription target that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role
    #   The manage access role to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_config
    #   The configuration to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [Array<Types::SubscriptionTargetForm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionTargetInput AWS API Documentation
    #
    class UpdateSubscriptionTargetInput < Struct.new(
      :applicable_asset_types,
      :authorized_principals,
      :domain_identifier,
      :environment_identifier,
      :identifier,
      :manage_access_role,
      :name,
      :provider,
      :subscription_target_config)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] applicable_asset_types
    #   The applicable asset types to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorized_principals
    #   The authorized principals to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when a subscription target was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the subscription target.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   target is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the environment in which a subscription target is
    #   to be updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the subscription target that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role
    #   The manage access role to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The identifier of the project in which a subscription target is to
    #   be updated.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] subscription_target_config
    #   The configuration to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #   @return [Array<Types::SubscriptionTargetForm>]
    #
    # @!attribute [rw] type
    #   The type to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the subscription target was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The Amazon DataZone user who updated the subscription target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionTargetOutput AWS API Documentation
    #
    class UpdateSubscriptionTargetOutput < Struct.new(
      :applicable_asset_types,
      :authorized_principals,
      :created_at,
      :created_by,
      :domain_id,
      :environment_id,
      :id,
      :manage_access_role,
      :name,
      :project_id,
      :provider,
      :subscription_target_config,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the user profile that are to be updated.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user profile that are to be updated.
    #   @return [String]
    #
    # @!attribute [rw] user_identifier
    #   The identifier of the user whose user profile is to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateUserProfileInput AWS API Documentation
    #
    class UpdateUserProfileInput < Struct.new(
      :domain_identifier,
      :status,
      :type,
      :user_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] details
    #   The details of the user profile in Amazon DataZone.
    #   @return [Types::UserProfileDetails]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateUserProfileOutput AWS API Documentation
    #
    class UpdateUserProfileOutput < Struct.new(
      :details,
      :domain_id,
      :id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user details of a project member.
    #
    # @!attribute [rw] user_id
    #   The identifier of the Amazon DataZone user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UserDetails AWS API Documentation
    #
    class UserDetails < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the user profile in Amazon DataZone.
    #
    # @note UserProfileDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of UserProfileDetails corresponding to the set member.
    #
    # @!attribute [rw] iam
    #   The IAM details included in the user profile details.
    #   @return [Types::IamUserProfileDetails]
    #
    # @!attribute [rw] sso
    #   The single sign-on details included in the user profile details.
    #   @return [Types::SsoUserProfileDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UserProfileDetails AWS API Documentation
    #
    class UserProfileDetails < Struct.new(
      :iam,
      :sso,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Iam < UserProfileDetails; end
      class Sso < UserProfileDetails; end
      class Unknown < UserProfileDetails; end
    end

    # The details of the user profile.
    #
    # @!attribute [rw] details
    #   The details of the user profile.
    #   @return [Types::UserProfileDetails]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the user profile.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UserProfileSummary AWS API Documentation
    #
    class UserProfileSummary < Struct.new(
      :details,
      :domain_id,
      :id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
