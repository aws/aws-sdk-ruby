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
    # @!attribute [rw] edited_value
    #   The edit of the prediction.
    #   @return [String]
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
      :edited_value,
      :prediction_choice,
      :prediction_target)
      SENSITIVE = [:edited_value]
      include Aws::Structure
    end

    # @!attribute [rw] accept_choices
    #   Specifies the prediction (aka, the automatically generated piece of
    #   metadata) and the target (for example, a column name) that can be
    #   accepted.
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
    #   The identifier of the asset.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision that is to be made to the asset.
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
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision that is to be made to the asset.
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

    # @!attribute [rw] asset_scopes
    #   The asset scopes of the accept subscription request.
    #   @return [Array<Types::AcceptedAssetScope>]
    #
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
      :asset_scopes,
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
    # @!attribute [rw] existing_subscription_id
    #   The ID of the existing subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] metadata_forms
    #   The metadata form in the subscription request.
    #   @return [Array<Types::FormOutput>]
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
      :existing_subscription_id,
      :id,
      :metadata_forms,
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

    # The accepted asset scope.
    #
    # @!attribute [rw] asset_id
    #   The asset ID of the accepted asset scope.
    #   @return [String]
    #
    # @!attribute [rw] filter_ids
    #   The filter IDs of the accepted asset scope.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptedAssetScope AWS API Documentation
    #
    class AcceptedAssetScope < Struct.new(
      :asset_id,
      :filter_ids)
      SENSITIVE = []
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

    # The parameters of the environment action.
    #
    # @note ActionParameters is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ActionParameters is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ActionParameters corresponding to the set member.
    #
    # @!attribute [rw] aws_console_link
    #   The console link specified as part of the environment action.
    #   @return [Types::AwsConsoleLinkParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ActionParameters AWS API Documentation
    #
    class ActionParameters < Struct.new(
      :aws_console_link,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsConsoleLink < ActionParameters; end
      class Unknown < ActionParameters; end
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
    #   The ID of the domain in which you want to add the entity owner.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity to which you want to add an owner.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of an entity.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner that you want to add to the entity.
    #   @return [Types::OwnerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddEntityOwnerInput AWS API Documentation
    #
    class AddEntityOwnerInput < Struct.new(
      :client_token,
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddEntityOwnerOutput AWS API Documentation
    #
    class AddEntityOwnerOutput < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The details of the policy grant.
    #   @return [Types::PolicyGrantDetail]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to add a policy grant.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity (resource) to which you want to add a policy
    #   grant.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of entity (resource) to which the grant is added.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy that you want to grant.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal to whom the permissions are granted.
    #   @return [Types::PolicyGrantPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddPolicyGrantInput AWS API Documentation
    #
    class AddPolicyGrantInput < Struct.new(
      :client_token,
      :detail,
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :policy_type,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddPolicyGrantOutput AWS API Documentation
    #
    class AddPolicyGrantOutput < Aws::EmptyStructure; end

    # The details of the policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy grant is applied to child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddToProjectMemberPoolPolicyGrantDetail AWS API Documentation
    #
    class AddToProjectMemberPoolPolicyGrantDetail < Struct.new(
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation list item.
    #
    # @!attribute [rw] attribute
    #   An attribute on which to compute aggregations.
    #   @return [String]
    #
    # @!attribute [rw] display_value
    #   The display value of the aggregation list item. Supported values
    #   include `value` and `glossaryTerm.name`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AggregationListItem AWS API Documentation
    #
    class AggregationListItem < Struct.new(
      :attribute,
      :display_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregation for an attribute.
    #
    # @!attribute [rw] attribute
    #   The attribute for this aggregation.
    #   @return [String]
    #
    # @!attribute [rw] display_value
    #   The display value of the aggregation output item.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   A list of aggregation output items.
    #   @return [Array<Types::AggregationOutputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AggregationOutput AWS API Documentation
    #
    class AggregationOutput < Struct.new(
      :attribute,
      :display_value,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation output item.
    #
    # @!attribute [rw] count
    #   The count of the aggregation output item.
    #   @return [Integer]
    #
    # @!attribute [rw] display_value
    #   The display value of the aggregation. If the attribute being
    #   aggregated corresponds to the id of a public resource, the service
    #   automatically resolves the id to the provided display value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The attribute value of the aggregation output item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AggregationOutputItem AWS API Documentation
    #
    class AggregationOutputItem < Struct.new(
      :count,
      :display_value,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The grant filter for all domain units.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AllDomainUnitsGrantFilter AWS API Documentation
    #
    class AllDomainUnitsGrantFilter < Aws::EmptyStructure; end

    # The all users grant filter.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AllUsersGrantFilter AWS API Documentation
    #
    class AllUsersGrantFilter < Aws::EmptyStructure; end

    # The configuration details of the asset filter.
    #
    # @note AssetFilterConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AssetFilterConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssetFilterConfiguration corresponding to the set member.
    #
    # @!attribute [rw] column_configuration
    #   The column configuration of the asset filter.
    #   @return [Types::ColumnFilterConfiguration]
    #
    # @!attribute [rw] row_configuration
    #   The row configuration of the asset filter.
    #   @return [Types::RowFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetFilterConfiguration AWS API Documentation
    #
    class AssetFilterConfiguration < Struct.new(
      :column_configuration,
      :row_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ColumnConfiguration < AssetFilterConfiguration; end
      class RowConfiguration < AssetFilterConfiguration; end
      class Unknown < AssetFilterConfiguration; end
    end

    # The summary of the asset filter.
    #
    # @!attribute [rw] asset_id
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the asset filter was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the asset filter lives.
    #   @return [String]
    #
    # @!attribute [rw] effective_column_names
    #   The effective column names of the asset filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] effective_row_filter
    #   The effective row filter of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that is displayed if the action does not succeed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetFilterSummary AWS API Documentation
    #
    class AssetFilterSummary < Struct.new(
      :asset_id,
      :created_at,
      :description,
      :domain_id,
      :effective_column_names,
      :effective_row_filter,
      :error_message,
      :id,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The listing of the asset in a data product.
    #
    # @!attribute [rw] entity_id
    #   The entity ID of the listing of the asset in a data product.
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   The entity revision of the listing of the asset in a data product.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The entity type of the listing of the asset in a data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetInDataProductListingItem AWS API Documentation
    #
    class AssetInDataProductListingItem < Struct.new(
      :entity_id,
      :entity_revision,
      :entity_type)
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
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The additional attributes of an inventory asset.
    #
    # @!attribute [rw] forms_output
    #   The forms included in the additional attributes of an inventory
    #   asset.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] latest_time_series_data_point_forms_output
    #   The latest time series data points forms included in the additional
    #   attributes of an asset.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    #
    # @!attribute [rw] match_rationale
    #   List of rationales indicating why this item was matched by search.
    #   @return [Array<Types::MatchRationaleItem>]
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
      :latest_time_series_data_point_forms_output,
      :match_rationale,
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
    # @!attribute [rw] latest_time_series_data_point_forms
    #   The latest time series data points forms included in the additional
    #   attributes of an asset.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
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
      :latest_time_series_data_point_forms,
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
    # @!attribute [rw] latest_time_series_data_point_forms
    #   The latest time series data points forms included in the additional
    #   attributes of an asset.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    #
    # @!attribute [rw] match_rationale
    #   List of rationales indicating why this item was matched by search.
    #   @return [Array<Types::MatchRationaleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetListingItemAdditionalAttributes AWS API Documentation
    #
    class AssetListingItemAdditionalAttributes < Struct.new(
      :forms,
      :latest_time_series_data_point_forms,
      :match_rationale)
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

    # The asset scope.
    #
    # @!attribute [rw] asset_id
    #   The asset ID of the asset scope.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message of the asset scope.
    #   @return [String]
    #
    # @!attribute [rw] filter_ids
    #   The filter IDs of the asset scope.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the asset scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetScope AWS API Documentation
    #
    class AssetScope < Struct.new(
      :asset_id,
      :error_message,
      :filter_ids,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name map for assets.
    #
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

    # The asset type for the rule details.
    #
    # @!attribute [rw] selection_mode
    #   The selection mode for the rule.
    #   @return [String]
    #
    # @!attribute [rw] specific_asset_types
    #   The specific asset types that are included in the rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssetTypesForRule AWS API Documentation
    #
    class AssetTypesForRule < Struct.new(
      :selection_mode,
      :specific_asset_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment role
    #   is associated.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_role_arn
    #   The ARN of the environment role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssociateEnvironmentRoleInput AWS API Documentation
    #
    class AssociateEnvironmentRoleInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :environment_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssociateEnvironmentRoleOutput AWS API Documentation
    #
    class AssociateEnvironmentRoleOutput < Aws::EmptyStructure; end

    # The Amazon Athena properties of a connection.
    #
    # @!attribute [rw] workgroup_name
    #   The Amazon Athena workgroup name of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AthenaPropertiesInput AWS API Documentation
    #
    class AthenaPropertiesInput < Struct.new(
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Athena properties of a connection.
    #
    # @!attribute [rw] workgroup_name
    #   The Amazon Athena workgroup name of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AthenaPropertiesOutput AWS API Documentation
    #
    class AthenaPropertiesOutput < Struct.new(
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Athena properties patch of a connection.
    #
    # @!attribute [rw] workgroup_name
    #   The Amazon Athena workgroup name of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AthenaPropertiesPatch AWS API Documentation
    #
    class AthenaPropertiesPatch < Struct.new(
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication configuration of a connection.
    #
    # @!attribute [rw] authentication_type
    #   The authentication type of a connection.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_properties
    #   The oAuth2 properties of a connection.
    #   @return [Types::OAuth2Properties]
    #
    # @!attribute [rw] secret_arn
    #   The secret ARN of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AuthenticationConfiguration AWS API Documentation
    #
    class AuthenticationConfiguration < Struct.new(
      :authentication_type,
      :o_auth_2_properties,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication configuration of a connection.
    #
    # @!attribute [rw] authentication_type
    #   The authentication type of a connection.
    #   @return [String]
    #
    # @!attribute [rw] basic_authentication_credentials
    #   The basic authentication credentials of a connection.
    #   @return [Types::BasicAuthenticationCredentials]
    #
    # @!attribute [rw] custom_authentication_credentials
    #   The custom authentication credentials of a connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN of a connection.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_properties
    #   The oAuth2 properties of a connection.
    #   @return [Types::OAuth2Properties]
    #
    # @!attribute [rw] secret_arn
    #   The secret ARN of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AuthenticationConfigurationInput AWS API Documentation
    #
    class AuthenticationConfigurationInput < Struct.new(
      :authentication_type,
      :basic_authentication_credentials,
      :custom_authentication_credentials,
      :kms_key_arn,
      :o_auth_2_properties,
      :secret_arn)
      SENSITIVE = [:basic_authentication_credentials, :custom_authentication_credentials]
      include Aws::Structure
    end

    # The authentication configuration patch of a connection.
    #
    # @!attribute [rw] basic_authentication_credentials
    #   The basic authentication credentials of a connection.
    #   @return [Types::BasicAuthenticationCredentials]
    #
    # @!attribute [rw] secret_arn
    #   The secret ARN of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AuthenticationConfigurationPatch AWS API Documentation
    #
    class AuthenticationConfigurationPatch < Struct.new(
      :basic_authentication_credentials,
      :secret_arn)
      SENSITIVE = [:basic_authentication_credentials]
      include Aws::Structure
    end

    # The authorization code properties of a connection.
    #
    # @!attribute [rw] authorization_code
    #   The authorization code of a connection.
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The redirect URI of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AuthorizationCodeProperties AWS API Documentation
    #
    class AuthorizationCodeProperties < Struct.new(
      :authorization_code,
      :redirect_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account ID of a project.
    #
    # @note AwsAccount is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AwsAccount is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AwsAccount corresponding to the set member.
    #
    # @!attribute [rw] aws_account_id
    #   The account ID of a project.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id_path
    #   The account ID path of a project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AwsAccount AWS API Documentation
    #
    class AwsAccount < Struct.new(
      :aws_account_id,
      :aws_account_id_path,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsAccountId < AwsAccount; end
      class AwsAccountIdPath < AwsAccount; end
      class Unknown < AwsAccount; end
    end

    # The parameters of the console link specified as part of the
    # environment action.
    #
    # @!attribute [rw] uri
    #   The URI of the console link specified as part of the environment
    #   action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AwsConsoleLinkParameters AWS API Documentation
    #
    class AwsConsoleLinkParameters < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of a project.
    #
    # @!attribute [rw] access_role
    #   The access role of a connection.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The account ID of a connection.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Region of a connection.
    #   @return [String]
    #
    # @!attribute [rw] iam_connection_id
    #   The IAM connection ID of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AwsLocation AWS API Documentation
    #
    class AwsLocation < Struct.new(
      :access_role,
      :aws_account_id,
      :aws_region,
      :iam_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The basic authentication credentials of a connection.
    #
    # @!attribute [rw] password
    #   The password for a connection.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name for the connecion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/BasicAuthenticationCredentials AWS API Documentation
    #
    class BasicAuthenticationCredentials < Struct.new(
      :password,
      :user_name)
      SENSITIVE = []
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
    #   The ID of the Amazon DataZone domain in which the metadata
    #   generation run is to be cancelled.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the metadata generation run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelMetadataGenerationRunInput AWS API Documentation
    #
    class CancelMetadataGenerationRunInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelMetadataGenerationRunOutput AWS API Documentation
    #
    class CancelMetadataGenerationRunOutput < Aws::EmptyStructure; end

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

    # The column configuration of the asset filter.
    #
    # @!attribute [rw] included_column_names
    #   Specifies whether to include column names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ColumnFilterConfiguration AWS API Documentation
    #
    class ColumnFilterConfiguration < Struct.new(
      :included_column_names)
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

    # The credentials of a connection.
    #
    # @!attribute [rw] access_key_id
    #   The access key ID of a connection.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The expiration of the connection credentials.
    #   @return [Time]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key of a connection.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token of a connection credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConnectionCredentials AWS API Documentation
    #
    class ConnectionCredentials < Struct.new(
      :access_key_id,
      :expiration,
      :secret_access_key,
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a connection.
    #
    # @note ConnectionPropertiesInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] athena_properties
    #   The Amazon Athena properties of a connection.
    #   @return [Types::AthenaPropertiesInput]
    #
    # @!attribute [rw] glue_properties
    #   The Amazon Web Services Glue properties of a connection.
    #   @return [Types::GluePropertiesInput]
    #
    # @!attribute [rw] hyper_pod_properties
    #   The hyper pod properties of a connection.
    #   @return [Types::HyperPodPropertiesInput]
    #
    # @!attribute [rw] iam_properties
    #   The IAM properties of a connection.
    #   @return [Types::IamPropertiesInput]
    #
    # @!attribute [rw] redshift_properties
    #   The Amazon Redshift properties of a connection.
    #   @return [Types::RedshiftPropertiesInput]
    #
    # @!attribute [rw] s3_properties
    #   The Amazon S3 properties of a connection.
    #   @return [Types::S3PropertiesInput]
    #
    # @!attribute [rw] spark_emr_properties
    #   The Spark EMR properties of a connection.
    #   @return [Types::SparkEmrPropertiesInput]
    #
    # @!attribute [rw] spark_glue_properties
    #   The Spark Amazon Web Services Glue properties of a connection.
    #   @return [Types::SparkGluePropertiesInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConnectionPropertiesInput AWS API Documentation
    #
    class ConnectionPropertiesInput < Struct.new(
      :athena_properties,
      :glue_properties,
      :hyper_pod_properties,
      :iam_properties,
      :redshift_properties,
      :s3_properties,
      :spark_emr_properties,
      :spark_glue_properties,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AthenaProperties < ConnectionPropertiesInput; end
      class GlueProperties < ConnectionPropertiesInput; end
      class HyperPodProperties < ConnectionPropertiesInput; end
      class IamProperties < ConnectionPropertiesInput; end
      class RedshiftProperties < ConnectionPropertiesInput; end
      class S3Properties < ConnectionPropertiesInput; end
      class SparkEmrProperties < ConnectionPropertiesInput; end
      class SparkGlueProperties < ConnectionPropertiesInput; end
      class Unknown < ConnectionPropertiesInput; end
    end

    # The properties of a connection.
    #
    # @note ConnectionPropertiesOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConnectionPropertiesOutput corresponding to the set member.
    #
    # @!attribute [rw] athena_properties
    #   The Amazon Athena properties of a connection.
    #   @return [Types::AthenaPropertiesOutput]
    #
    # @!attribute [rw] glue_properties
    #   The Amazon Web Services Glue properties of a connection.
    #   @return [Types::GluePropertiesOutput]
    #
    # @!attribute [rw] hyper_pod_properties
    #   The hyper pod properties of a connection.
    #   @return [Types::HyperPodPropertiesOutput]
    #
    # @!attribute [rw] iam_properties
    #   The IAM properties of a connection.
    #   @return [Types::IamPropertiesOutput]
    #
    # @!attribute [rw] redshift_properties
    #   The Amazon Redshift properties of a connection.
    #   @return [Types::RedshiftPropertiesOutput]
    #
    # @!attribute [rw] s3_properties
    #   The Amazon S3 properties of a connection.
    #   @return [Types::S3PropertiesOutput]
    #
    # @!attribute [rw] spark_emr_properties
    #   The Spark EMR properties of a connection.
    #   @return [Types::SparkEmrPropertiesOutput]
    #
    # @!attribute [rw] spark_glue_properties
    #   The Spark Amazon Web Services Glue properties of a connection.
    #   @return [Types::SparkGluePropertiesOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConnectionPropertiesOutput AWS API Documentation
    #
    class ConnectionPropertiesOutput < Struct.new(
      :athena_properties,
      :glue_properties,
      :hyper_pod_properties,
      :iam_properties,
      :redshift_properties,
      :s3_properties,
      :spark_emr_properties,
      :spark_glue_properties,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AthenaProperties < ConnectionPropertiesOutput; end
      class GlueProperties < ConnectionPropertiesOutput; end
      class HyperPodProperties < ConnectionPropertiesOutput; end
      class IamProperties < ConnectionPropertiesOutput; end
      class RedshiftProperties < ConnectionPropertiesOutput; end
      class S3Properties < ConnectionPropertiesOutput; end
      class SparkEmrProperties < ConnectionPropertiesOutput; end
      class SparkGlueProperties < ConnectionPropertiesOutput; end
      class Unknown < ConnectionPropertiesOutput; end
    end

    # The connection properties patch.
    #
    # @note ConnectionPropertiesPatch is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] athena_properties
    #   The Amazon Athena properties of a connection properties patch.
    #   @return [Types::AthenaPropertiesPatch]
    #
    # @!attribute [rw] glue_properties
    #   The Amazon Web Services Glue properties of a connection properties
    #   patch.
    #   @return [Types::GluePropertiesPatch]
    #
    # @!attribute [rw] iam_properties
    #   The IAM properties of a connection properties patch.
    #   @return [Types::IamPropertiesPatch]
    #
    # @!attribute [rw] redshift_properties
    #   The Amazon Redshift properties of a connection properties patch.
    #   @return [Types::RedshiftPropertiesPatch]
    #
    # @!attribute [rw] s3_properties
    #   The Amazon S3 properties of a connection properties patch.
    #   @return [Types::S3PropertiesPatch]
    #
    # @!attribute [rw] spark_emr_properties
    #   The Spark EMR properties of a connection properties patch.
    #   @return [Types::SparkEmrPropertiesPatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConnectionPropertiesPatch AWS API Documentation
    #
    class ConnectionPropertiesPatch < Struct.new(
      :athena_properties,
      :glue_properties,
      :iam_properties,
      :redshift_properties,
      :s3_properties,
      :spark_emr_properties,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AthenaProperties < ConnectionPropertiesPatch; end
      class GlueProperties < ConnectionPropertiesPatch; end
      class IamProperties < ConnectionPropertiesPatch; end
      class RedshiftProperties < ConnectionPropertiesPatch; end
      class S3Properties < ConnectionPropertiesPatch; end
      class SparkEmrProperties < ConnectionPropertiesPatch; end
      class Unknown < ConnectionPropertiesPatch; end
    end

    # The summary of a connection.
    #
    # @!attribute [rw] connection_id
    #   The ID of a connection.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID of a connection.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The domain unit ID of a connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID of a connection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The connection name.
    #   @return [String]
    #
    # @!attribute [rw] physical_endpoints
    #   The connection physical endpoints.
    #   @return [Array<Types::PhysicalEndpoint>]
    #
    # @!attribute [rw] project_id
    #   The connection project ID.
    #   @return [String]
    #
    # @!attribute [rw] props
    #   The connection props.
    #   @return [Types::ConnectionPropertiesOutput]
    #
    # @!attribute [rw] type
    #   The connection type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ConnectionSummary AWS API Documentation
    #
    class ConnectionSummary < Struct.new(
      :connection_id,
      :domain_id,
      :domain_unit_id,
      :environment_id,
      :name,
      :physical_endpoints,
      :project_id,
      :props,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_identifier
    #   The ID of the data asset.
    #   @return [String]
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
    #   The configuration of the asset filter.
    #   @return [Types::AssetFilterConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain in which you want to create an asset filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetFilterInput AWS API Documentation
    #
    class CreateAssetFilterInput < Struct.new(
      :asset_identifier,
      :client_token,
      :configuration,
      :description,
      :domain_identifier,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the asset filter.
    #   @return [Types::AssetFilterConfiguration]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the asset filter was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the asset filter is created.
    #   @return [String]
    #
    # @!attribute [rw] effective_column_names
    #   The column names in the asset filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] effective_row_filter
    #   The row filter in the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that is displayed if the asset filter is not
    #   created successfully.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetFilterOutput AWS API Documentation
    #
    class CreateAssetFilterOutput < Struct.new(
      :asset_id,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :effective_column_names,
      :effective_row_filter,
      :error_message,
      :id,
      :name,
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
    # @!attribute [rw] description
    #   Asset description.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   Amazon DataZone domain where the asset is created.
    #   @return [String]
    #
    # @!attribute [rw] external_identifier
    #   The external identifier of the asset.
    #
    #   If the value for the `externalIdentifier` parameter is specified, it
    #   must be a unique value.
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
      SENSITIVE = [:description, :forms_input, :name]
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
    #   The external identifier of the asset.
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
    # @!attribute [rw] latest_time_series_data_point_forms_output
    #   The latest data point that was imported into the time series form
    #   for the asset.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    #
    # @!attribute [rw] listing
    #   The details of an asset published in an Amazon DataZone catalog.
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
      :latest_time_series_data_point_forms_output,
      :listing,
      :name,
      :owning_project_id,
      :prediction_configuration,
      :read_only_forms_output,
      :revision,
      :type_identifier,
      :type_revision)
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
    #   The external identifier of the asset.
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
    # @!attribute [rw] latest_time_series_data_point_forms_output
    #   The latest data point that was imported into the time series form
    #   for the asset.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    #
    # @!attribute [rw] listing
    #   The details of an asset published in an Amazon DataZone catalog.
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
      :latest_time_series_data_point_forms_output,
      :listing,
      :name,
      :owning_project_id,
      :prediction_configuration,
      :read_only_forms_output,
      :revision,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :name]
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

    # The details of the policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy grant is applied to child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetTypePolicyGrantDetail AWS API Documentation
    #
    class CreateAssetTypePolicyGrantDetail < Struct.new(
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_location
    #   The location where the connection is created.
    #   @return [Types::AwsLocation]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A connection description.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the connection is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment where the connection is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The connection name.
    #   @return [String]
    #
    # @!attribute [rw] props
    #   The connection props.
    #   @return [Types::ConnectionPropertiesInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateConnectionInput AWS API Documentation
    #
    class CreateConnectionInput < Struct.new(
      :aws_location,
      :client_token,
      :description,
      :domain_identifier,
      :environment_identifier,
      :name,
      :props)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The connection description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the connection is created.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit where the connection is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment where the connection is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The connection name.
    #   @return [String]
    #
    # @!attribute [rw] physical_endpoints
    #   The physical endpoints of the connection.
    #   @return [Array<Types::PhysicalEndpoint>]
    #
    # @!attribute [rw] project_id
    #   The ID of the project where the connection is created.
    #   @return [String]
    #
    # @!attribute [rw] props
    #   The connection props.
    #   @return [Types::ConnectionPropertiesOutput]
    #
    # @!attribute [rw] type
    #   The connection type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateConnectionOutput AWS API Documentation
    #
    class CreateConnectionOutput < Struct.new(
      :connection_id,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_id,
      :name,
      :physical_endpoints,
      :project_id,
      :props,
      :type)
      SENSITIVE = [:description]
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
    #   The description of the data product.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the data product is created.
    #   @return [String]
    #
    # @!attribute [rw] forms_input
    #   The metadata forms of the data product.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] items
    #   The data assets of the data product.
    #   @return [Array<Types::DataProductItem>]
    #
    # @!attribute [rw] name
    #   The name of the data product.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The ID of the owning project of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataProductInput AWS API Documentation
    #
    class CreateDataProductInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :forms_input,
      :glossary_terms,
      :items,
      :name,
      :owning_project_identifier)
      SENSITIVE = [:description, :forms_input, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp at which the data product was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data product.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the data product lives.
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp at which the first revision of the data product was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The user who created the first revision of the data product.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms of the data product.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the data product.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The data assets of the data product.
    #   @return [Array<Types::DataProductItem>]
    #
    # @!attribute [rw] name
    #   The name of the data product.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the data product.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the data product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataProductOutput AWS API Documentation
    #
    class CreateDataProductOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :first_revision_created_at,
      :first_revision_created_by,
      :forms_output,
      :glossary_terms,
      :id,
      :items,
      :name,
      :owning_project_id,
      :revision,
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
    # @!attribute [rw] description
    #   The description of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the data product revision is created.
    #   @return [String]
    #
    # @!attribute [rw] forms_input
    #   The metadata forms of the data product revision.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product revision.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   The ID of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The data assets of the data product revision.
    #   @return [Array<Types::DataProductItem>]
    #
    # @!attribute [rw] name
    #   The name of the data product revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataProductRevisionInput AWS API Documentation
    #
    class CreateDataProductRevisionInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :forms_input,
      :glossary_terms,
      :identifier,
      :items,
      :name)
      SENSITIVE = [:description, :forms_input, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp at which the data product revision is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where data product revision is created.
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp at which the first revision of the data product is
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The user who created the first revision of the data product.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms of the data product revision.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product revision.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The data assets of the data product revision.
    #   @return [Array<Types::DataProductItem>]
    #
    # @!attribute [rw] name
    #   The name of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data product revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataProductRevisionOutput AWS API Documentation
    #
    class CreateDataProductRevisionOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :first_revision_created_at,
      :first_revision_created_by,
      :forms_output,
      :glossary_terms,
      :id,
      :items,
      :name,
      :owning_project_id,
      :revision,
      :status)
      SENSITIVE = [:description, :name]
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
    # @!attribute [rw] connection_identifier
    #   The ID of the connection.
    #   @return [String]
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
    #   The type of the data source. In Amazon DataZone, you can use data
    #   sources to import technical metadata of assets (data) from the
    #   source databases or data warehouses into Amazon DataZone. In the
    #   current release of Amazon DataZone, you can create and run data
    #   sources for Amazon Web Services Glue and Amazon Redshift.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataSourceInput AWS API Documentation
    #
    class CreateDataSourceInput < Struct.new(
      :asset_forms_input,
      :client_token,
      :configuration,
      :connection_identifier,
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
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
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
      :connection_id,
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
    # @!attribute [rw] domain_version
    #   The version of the domain that is created.
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
    # @!attribute [rw] service_role
    #   The service role of the domain that is created.
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
      :domain_version,
      :kms_key_identifier,
      :name,
      :service_role,
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
    # @!attribute [rw] domain_version
    #   The version of the domain that is created.
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
    # @!attribute [rw] root_domain_unit_id
    #   The ID of the root domain unit.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   Te service role of the domain that is created.
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
      :domain_version,
      :id,
      :kms_key_identifier,
      :name,
      :portal_url,
      :root_domain_unit_id,
      :service_role,
      :single_sign_on,
      :status,
      :tags)
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
    #   The description of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to crate a domain unit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] parent_domain_unit_identifier
    #   The ID of the parent domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomainUnitInput AWS API Documentation
    #
    class CreateDomainUnitInput < Struct.new(
      :client_token,
      :description,
      :domain_identifier,
      :name,
      :parent_domain_unit_identifier)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] ancestor_domain_unit_ids
    #   The IDs of the ancestor domain units.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the domain unit was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the domain unit was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] owners
    #   The owners of the domain unit.
    #   @return [Array<Types::DomainUnitOwnerProperties>]
    #
    # @!attribute [rw] parent_domain_unit_id
    #   The ID of the parent domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomainUnitOutput AWS API Documentation
    #
    class CreateDomainUnitOutput < Struct.new(
      :ancestor_domain_unit_ids,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :name,
      :owners,
      :parent_domain_unit_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The details of the policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy grant is applied to child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomainUnitPolicyGrantDetail AWS API Documentation
    #
    class CreateDomainUnitPolicyGrantDetail < Struct.new(
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the environment action that is being created in
    #   the environment.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment action
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment in which the environment action is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the environment action.
    #   @return [Types::ActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentActionInput AWS API Documentation
    #
    class CreateEnvironmentActionInput < Struct.new(
      :description,
      :domain_identifier,
      :environment_identifier,
      :name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain in which the environment action is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment in which the environment is created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the environment action.
    #   @return [Types::ActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentActionOutput AWS API Documentation
    #
    class CreateEnvironmentActionOutput < Struct.new(
      :description,
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_order
    #   The deployment order of the environment.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the Amazon DataZone environment.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The identifier of the Amazon DataZone domain in which the
    #   environment is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_identifier
    #   The ID of the account in which the environment is being created.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_region
    #   The region of the account in which the environment is being created.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_identifier
    #   The ID of the blueprint with which the environment is being created.
    #   @return [String]
    #
    # @!attribute [rw] environment_configuration_id
    #   The configuration ID of the environment.
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
      :deployment_order,
      :description,
      :domain_identifier,
      :environment_account_identifier,
      :environment_account_region,
      :environment_blueprint_identifier,
      :environment_configuration_id,
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
    # @!attribute [rw] environment_configuration_id
    #   The configuration ID of the environment.
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
      :environment_configuration_id,
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
      SENSITIVE = [:description, :environment_configuration_id, :name]
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

    # The details of the policy grant.
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentProfilePolicyGrantDetail AWS API Documentation
    #
    class CreateEnvironmentProfilePolicyGrantDetail < Struct.new(
      :domain_unit_id)
      SENSITIVE = []
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

    # The details of the policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy grant is applied to child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateFormTypePolicyGrantDetail AWS API Documentation
    #
    class CreateFormTypePolicyGrantDetail < Struct.new(
      :include_child_domain_units)
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

    # The details of the policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy grant is applied to child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryPolicyGrantDetail AWS API Documentation
    #
    class CreateGlossaryPolicyGrantDetail < Struct.new(
      :include_child_domain_units)
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
    #   Specifies whether to publish or unpublish a listing.
    #   @return [String]
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
    #   The ID of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   The revision of an asset.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of an entity.
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
    #   The ID of the listing (a record of an asset at a given time).
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   The revision of a listing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the listing.
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

    # Specifies whether to create a project from project profile policy
    # grant details.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether to include child domain units when creating a
    #   project from project profile policy grant details
    #   @return [Boolean]
    #
    # @!attribute [rw] project_profiles
    #   Specifies project profiles when creating a project from project
    #   profile policy grant details
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectFromProjectProfilePolicyGrantDetail AWS API Documentation
    #
    class CreateProjectFromProjectProfilePolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      :project_profiles)
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
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit. This parameter is not required and if it
    #   is not specified, then the project is created at the root domain
    #   unit level.
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
    # @!attribute [rw] project_profile_id
    #   The ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of the project.
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectInput AWS API Documentation
    #
    class CreateProjectInput < Struct.new(
      :description,
      :domain_identifier,
      :domain_unit_id,
      :glossary_terms,
      :name,
      :project_profile_id,
      :user_parameters)
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
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] environment_deployment_details
    #   The environment deployment details.
    #   @return [Types::EnvironmentDeploymentDetails]
    #
    # @!attribute [rw] failure_reasons
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Array<Types::ProjectDeletionError>]
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
    # @!attribute [rw] project_profile_id
    #   The project profile ID.
    #   @return [String]
    #
    # @!attribute [rw] project_status
    #   The status of the Amazon DataZone project that was created.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of the project.
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectOutput AWS API Documentation
    #
    class CreateProjectOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_deployment_details,
      :failure_reasons,
      :glossary_terms,
      :id,
      :last_updated_at,
      :name,
      :project_profile_id,
      :project_status,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The details of the policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy grant is applied to child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectPolicyGrantDetail AWS API Documentation
    #
    class CreateProjectPolicyGrantDetail < Struct.new(
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of a project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   A domain ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_identifier
    #   A domain unit ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] environment_configurations
    #   Environment configurations of the project profile.
    #   @return [Array<Types::EnvironmentConfiguration>]
    #
    # @!attribute [rw] name
    #   Project profile name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Project profile status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectProfileInput AWS API Documentation
    #
    class CreateProjectProfileInput < Struct.new(
      :description,
      :domain_identifier,
      :domain_unit_identifier,
      :environment_configurations,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   A timestamp at which a project profile is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   A user who created a project profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A project profile description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where a project profile is created.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit where a project profile is created.
    #   @return [String]
    #
    # @!attribute [rw] environment_configurations
    #   Environment configurations of a project profile.
    #   @return [Array<Types::EnvironmentConfiguration>]
    #
    # @!attribute [rw] id
    #   Project profile ID.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   A timestamp when a project profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Project profile name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Project profile status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectProfileOutput AWS API Documentation
    #
    class CreateProjectProfileOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_configurations,
      :id,
      :last_updated_at,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action of the rule.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The detail of the rule.
    #   @return [Types::RuleDetail]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the rule is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the rule.
    #   @return [Types::RuleScope]
    #
    # @!attribute [rw] target
    #   The target of the rule.
    #   @return [Types::RuleTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateRuleInput AWS API Documentation
    #
    class CreateRuleInput < Struct.new(
      :action,
      :client_token,
      :description,
      :detail,
      :domain_identifier,
      :name,
      :scope,
      :target)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action of the rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the rule is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who creates the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The detail of the rule.
    #   @return [Types::RuleDetail]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the rule.
    #   @return [Types::RuleScope]
    #
    # @!attribute [rw] target
    #   The target of the rule.
    #   @return [Types::RuleTarget]
    #
    # @!attribute [rw] target_type
    #   The target type of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateRuleOutput AWS API Documentation
    #
    class CreateRuleOutput < Struct.new(
      :action,
      :created_at,
      :created_by,
      :description,
      :detail,
      :identifier,
      :name,
      :rule_type,
      :scope,
      :target,
      :target_type)
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
    # @!attribute [rw] metadata_forms
    #   The metadata form included in the subscription request.
    #   @return [Array<Types::FormInput>]
    #
    # @!attribute [rw] request_reason
    #   The reason for the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_listings
    #   The published asset for which the subscription grant is to be
    #   created.
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
      :metadata_forms,
      :request_reason,
      :subscribed_listings,
      :subscribed_principals)
      SENSITIVE = [:metadata_forms, :request_reason]
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
    # @!attribute [rw] existing_subscription_id
    #   The ID of the existing subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] metadata_forms
    #   The metadata form included in the subscription request.
    #   @return [Array<Types::FormOutput>]
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
    #   The published asset for which the subscription grant is to be
    #   created.
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
      :existing_subscription_id,
      :id,
      :metadata_forms,
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

    # The data product.
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   The ID of the data product.
    #   @return [String]
    #
    # @!attribute [rw] item_type
    #   The type of the data product.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductItem AWS API Documentation
    #
    class DataProductItem < Struct.new(
      :glossary_terms,
      :identifier,
      :item_type,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The additional attributes of an Amazon DataZone data product.
    #
    # @!attribute [rw] match_rationale
    #   List of rationales indicating why this item was matched by search.
    #   @return [Array<Types::MatchRationaleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductItemAdditionalAttributes AWS API Documentation
    #
    class DataProductItemAdditionalAttributes < Struct.new(
      :match_rationale)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data product listing.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the data product listing was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_product_id
    #   The ID of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] data_product_revision
    #   The revision of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] forms
    #   The metadata forms of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product listing.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] items
    #   The data assets of the data product listing.
    #   @return [Array<Types::ListingSummary>]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the data product listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductListing AWS API Documentation
    #
    class DataProductListing < Struct.new(
      :created_at,
      :data_product_id,
      :data_product_revision,
      :forms,
      :glossary_terms,
      :items,
      :owning_project_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The asset of the data product listing.
    #
    # @!attribute [rw] additional_attributes
    #   The additional attributes of the asset of the data product.
    #   @return [Types::DataProductListingItemAdditionalAttributes]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the asset of the data product listing was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the asset of the asset of the data product.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The entity ID of the asset of the asset of the data product.
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   The revision of the asset of the asset of the data product.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the asset of the asset of the data product.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] items
    #   The data of the asset of the data product.
    #   @return [Array<Types::ListingSummaryItem>]
    #
    # @!attribute [rw] listing_created_by
    #   The timestamp at which the listing was created.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The ID of the listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   The revision of the listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_updated_by
    #   The user who updated the listing.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset of the data product.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the asset of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductListingItem AWS API Documentation
    #
    class DataProductListingItem < Struct.new(
      :additional_attributes,
      :created_at,
      :description,
      :entity_id,
      :entity_revision,
      :glossary_terms,
      :items,
      :listing_created_by,
      :listing_id,
      :listing_revision,
      :listing_updated_by,
      :name,
      :owning_project_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The additional attributes of the asset of the data product.
    #
    # @!attribute [rw] forms
    #   The metadata forms of the asset of the data product.
    #   @return [String]
    #
    # @!attribute [rw] match_rationale
    #   List of rationales indicating why this item was matched by search.
    #   @return [Array<Types::MatchRationaleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductListingItemAdditionalAttributes AWS API Documentation
    #
    class DataProductListingItemAdditionalAttributes < Struct.new(
      :forms,
      :match_rationale)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data product.
    #
    # @!attribute [rw] additional_attributes
    #   The additional attributes of an Amazon DataZone data product.
    #   @return [Types::DataProductItemAdditionalAttributes]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the data product was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data product.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the data product lives.
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp at which first revision of the data product was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The user who created the first revision of the data product.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the data product.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data product.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductResultItem AWS API Documentation
    #
    class DataProductResultItem < Struct.new(
      :additional_attributes,
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :first_revision_created_at,
      :first_revision_created_by,
      :glossary_terms,
      :id,
      :name,
      :owning_project_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The data product revision.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the data product revision was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the data product revision lives.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The data product revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataProductRevision AWS API Documentation
    #
    class DataProductRevision < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :revision)
      SENSITIVE = []
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
    # @!attribute [rw] sage_maker_run_configuration
    #   The Amazon SageMaker run configuration.
    #   @return [Types::SageMakerRunConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceConfigurationInput AWS API Documentation
    #
    class DataSourceConfigurationInput < Struct.new(
      :glue_run_configuration,
      :redshift_run_configuration,
      :sage_maker_run_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueRunConfiguration < DataSourceConfigurationInput; end
      class RedshiftRunConfiguration < DataSourceConfigurationInput; end
      class SageMakerRunConfiguration < DataSourceConfigurationInput; end
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
    # @!attribute [rw] sage_maker_run_configuration
    #   The Amazon SageMaker run configuration.
    #   @return [Types::SageMakerRunConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceConfigurationOutput AWS API Documentation
    #
    class DataSourceConfigurationOutput < Struct.new(
      :glue_run_configuration,
      :redshift_run_configuration,
      :sage_maker_run_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueRunConfiguration < DataSourceConfigurationOutput; end
      class RedshiftRunConfiguration < DataSourceConfigurationOutput; end
      class SageMakerRunConfiguration < DataSourceConfigurationOutput; end
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
    # @!attribute [rw] lineage_summary
    #   The data lineage summary.
    #   @return [Types::LineageInfo]
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
      :lineage_summary,
      :project_id,
      :technical_description,
      :technical_name,
      :updated_at)
      SENSITIVE = [:database, :technical_description, :technical_name]
      include Aws::Structure
    end

    # The run lineage summary of a data source.
    #
    # @!attribute [rw] import_status
    #   The import status that's part of the run lineage summary of a data
    #   source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DataSourceRunLineageSummary AWS API Documentation
    #
    class DataSourceRunLineageSummary < Struct.new(
      :import_status)
      SENSITIVE = []
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
    # @!attribute [rw] lineage_summary
    #   The run lineage summary of a data source.
    #   @return [Types::DataSourceRunLineageSummary]
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
      :lineage_summary,
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
    # @!attribute [rw] connection_id
    #   The connection ID that's part of the data source summary.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The data source description.
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
      :connection_id,
      :created_at,
      :data_source_id,
      :description,
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
      SENSITIVE = [:description, :name, :schedule]
      include Aws::Structure
    end

    # @!attribute [rw] asset_identifier
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to delete an asset filter.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the asset filter that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetFilterInput AWS API Documentation
    #
    class DeleteAssetFilterInput < Struct.new(
      :asset_identifier,
      :domain_identifier,
      :identifier)
      SENSITIVE = []
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

    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the connection is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the connection that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteConnectionInput AWS API Documentation
    #
    class DeleteConnectionInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteConnectionOutput AWS API Documentation
    #
    class DeleteConnectionOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the data product is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the data product that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataProductInput AWS API Documentation
    #
    class DeleteDataProductInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataProductOutput AWS API Documentation
    #
    class DeleteDataProductOutput < Aws::EmptyStructure; end

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
    # @!attribute [rw] retain_permissions_on_revoke_failure
    #   Specifies that the granted permissions are retained in case of a
    #   self-subscribe functionality failure for a data source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataSourceInput AWS API Documentation
    #
    class DeleteDataSourceInput < Struct.new(
      :client_token,
      :domain_identifier,
      :identifier,
      :retain_permissions_on_revoke_failure)
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
    # @!attribute [rw] connection_id
    #   The ID of the connection that is deleted.
    #   @return [String]
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
    # @!attribute [rw] retain_permissions_on_revoke_failure
    #   Specifies that the granted permissions are retained in case of a
    #   self-subscribe functionality failure for a data source.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of runs for this data source.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] self_grant_status
    #   Specifies the status of the self-granting functionality.
    #   @return [Types::SelfGrantStatusOutput]
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
      :connection_id,
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
      :retain_permissions_on_revoke_failure,
      :schedule,
      :self_grant_status,
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
    # @!attribute [rw] skip_deletion_check
    #   Specifies the optional flag to delete all child entities within the
    #   domain.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomainInput AWS API Documentation
    #
    class DeleteDomainInput < Struct.new(
      :client_token,
      :identifier,
      :skip_deletion_check)
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
    #   The ID of the domain where you want to delete a domain unit.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the domain unit that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomainUnitInput AWS API Documentation
    #
    class DeleteDomainUnitInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomainUnitOutput AWS API Documentation
    #
    class DeleteDomainUnitOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which an environment action
    #   is deleted.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment where an environment action is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the environment action that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentActionInput AWS API Documentation
    #
    class DeleteEnvironmentActionInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier)
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
    #   The ID of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the listing to be deleted.
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
    # @!attribute [rw] skip_deletion_check
    #   Specifies the optional flag to delete all child entities within the
    #   project.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectInput AWS API Documentation
    #
    class DeleteProjectInput < Struct.new(
      :domain_identifier,
      :identifier,
      :skip_deletion_check)
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
    #   The ID of the domain where a project profile is deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the project profile that is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectProfileInput AWS API Documentation
    #
    class DeleteProjectProfileInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectProfileOutput AWS API Documentation
    #
    class DeleteProjectProfileOutput < Aws::EmptyStructure; end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain that where the rule is to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule that is to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteRuleInput AWS API Documentation
    #
    class DeleteRuleInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteRuleOutput AWS API Documentation
    #
    class DeleteRuleOutput < Aws::EmptyStructure; end

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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain that houses the asset for which
    #   you want to delete a time series form.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the asset for which you want to delete a time series form.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the asset for which you want to delete a time series
    #   form.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the time series form that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteTimeSeriesDataPointsInput AWS API Documentation
    #
    class DeleteTimeSeriesDataPointsInput < Struct.new(
      :client_token,
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :form_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteTimeSeriesDataPointsOutput AWS API Documentation
    #
    class DeleteTimeSeriesDataPointsOutput < Aws::EmptyStructure; end

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

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which an environment role is
    #   disassociated.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_role_arn
    #   The ARN of the environment role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DisassociateEnvironmentRoleInput AWS API Documentation
    #
    class DisassociateEnvironmentRoleInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :environment_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DisassociateEnvironmentRoleOutput AWS API Documentation
    #
    class DisassociateEnvironmentRoleOutput < Aws::EmptyStructure; end

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
    # @!attribute [rw] domain_version
    #   The domain version.
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
      :domain_version,
      :id,
      :last_updated_at,
      :managed_account_id,
      :name,
      :portal_url,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # The domain unit filter of the project grant filter.
    #
    # @!attribute [rw] domain_unit
    #   The domain unit ID to use in the filter.
    #   @return [String]
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether to include child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitFilterForProject AWS API Documentation
    #
    class DomainUnitFilterForProject < Struct.new(
      :domain_unit,
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The grant filter for the domain unit. In the current release of Amazon
    # DataZone, the only supported filter is the
    # `allDomainUnitsGrantFilter`.
    #
    # @note DomainUnitGrantFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DomainUnitGrantFilter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DomainUnitGrantFilter corresponding to the set member.
    #
    # @!attribute [rw] all_domain_units_grant_filter
    #   Specifies a grant filter containing all domain units.
    #   @return [Types::AllDomainUnitsGrantFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitGrantFilter AWS API Documentation
    #
    class DomainUnitGrantFilter < Struct.new(
      :all_domain_units_grant_filter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AllDomainUnitsGrantFilter < DomainUnitGrantFilter; end
      class Unknown < DomainUnitGrantFilter; end
    end

    # The properties of a domain unit group.
    #
    # @!attribute [rw] group_id
    #   The ID of the domain unit group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitGroupProperties AWS API Documentation
    #
    class DomainUnitGroupProperties < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the domain unit owner.
    #
    # @note DomainUnitOwnerProperties is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DomainUnitOwnerProperties corresponding to the set member.
    #
    # @!attribute [rw] group
    #   Indicates that the domain unit owner is a group.
    #   @return [Types::DomainUnitGroupProperties]
    #
    # @!attribute [rw] user
    #   Indicates that the domain unit owner is a user.
    #   @return [Types::DomainUnitUserProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitOwnerProperties AWS API Documentation
    #
    class DomainUnitOwnerProperties < Struct.new(
      :group,
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Group < DomainUnitOwnerProperties; end
      class User < DomainUnitOwnerProperties; end
      class Unknown < DomainUnitOwnerProperties; end
    end

    # The domain unit principal to whom the policy is granted.
    #
    # @!attribute [rw] domain_unit_designation
    #   Specifes the designation of the domain unit users.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_grant_filter
    #   The grant filter for the domain unit.
    #   @return [Types::DomainUnitGrantFilter]
    #
    # @!attribute [rw] domain_unit_identifier
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitPolicyGrantPrincipal AWS API Documentation
    #
    class DomainUnitPolicyGrantPrincipal < Struct.new(
      :domain_unit_designation,
      :domain_unit_grant_filter,
      :domain_unit_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the domain unit.
    #
    # @!attribute [rw] id
    #   The ID of the domain unit summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain unit summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitSummary AWS API Documentation
    #
    class DomainUnitSummary < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target for the domain unit.
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether to apply a rule to the child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitTarget AWS API Documentation
    #
    class DomainUnitTarget < Struct.new(
      :domain_unit_id,
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the domain unit user.
    #
    # @!attribute [rw] user_id
    #   The ID of teh domain unit user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DomainUnitUserProperties AWS API Documentation
    #
    class DomainUnitUserProperties < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the specified action configured for an environment.
    # For example, the details of the specified console links for an
    # analytics tool that is available in this environment.
    #
    # @!attribute [rw] description
    #   The environment action description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Amazon DataZone domain ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the environment action.
    #   @return [Types::ActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentActionSummary AWS API Documentation
    #
    class EnvironmentActionSummary < Struct.new(
      :description,
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters)
      SENSITIVE = []
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
    # @!attribute [rw] environment_role_permission_boundary
    #   The environment role permission boundary.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role specified in the environment
    #   blueprint configuration.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_configurations
    #   The provisioning configuration of a blueprint.
    #   @return [Array<Types::ProvisioningConfiguration>]
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
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :provisioning_configurations,
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

    # The configuration of an environment.
    #
    # @!attribute [rw] aws_account
    #   The Amazon Web Services account of the environment.
    #   @return [Types::AwsAccount]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region of the environment.
    #   @return [Types::Region]
    #
    # @!attribute [rw] configuration_parameters
    #   The configuration parameters of the environment.
    #   @return [Types::EnvironmentConfigurationParametersDetails]
    #
    # @!attribute [rw] deployment_mode
    #   The deployment mode of the environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_order
    #   The deployment order of the environment.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The environment description.
    #   @return [String]
    #
    # @!attribute [rw] environment_blueprint_id
    #   The environment blueprint ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The environment name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentConfiguration AWS API Documentation
    #
    class EnvironmentConfiguration < Struct.new(
      :aws_account,
      :aws_region,
      :configuration_parameters,
      :deployment_mode,
      :deployment_order,
      :description,
      :environment_blueprint_id,
      :id,
      :name)
      SENSITIVE = [:description, :id, :name]
      include Aws::Structure
    end

    # The environment configuration parameter.
    #
    # @!attribute [rw] is_editable
    #   Specifies whether the environment parameter is editable.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the environment configuration parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment configuration parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentConfigurationParameter AWS API Documentation
    #
    class EnvironmentConfigurationParameter < Struct.new(
      :is_editable,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the environment configuration parameter.
    #
    # @!attribute [rw] parameter_overrides
    #   The parameter overrides.
    #   @return [Array<Types::EnvironmentConfigurationParameter>]
    #
    # @!attribute [rw] resolved_parameters
    #   The resolved environment configuration parameters.
    #   @return [Array<Types::EnvironmentConfigurationParameter>]
    #
    # @!attribute [rw] ssm_path
    #   Ssm path environment configuration parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentConfigurationParametersDetails AWS API Documentation
    #
    class EnvironmentConfigurationParametersDetails < Struct.new(
      :parameter_overrides,
      :resolved_parameters,
      :ssm_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment configuration user parameters.
    #
    # @!attribute [rw] environment_configuration_name
    #   The environment configuration name.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_parameters
    #   The environment parameters.
    #   @return [Array<Types::EnvironmentParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentConfigurationUserParameter AWS API Documentation
    #
    class EnvironmentConfigurationUserParameter < Struct.new(
      :environment_configuration_name,
      :environment_id,
      :environment_parameters)
      SENSITIVE = [:environment_configuration_name]
      include Aws::Structure
    end

    # The environment deployment details.
    #
    # @!attribute [rw] environment_failure_reasons
    #   Environment failure reasons.
    #   @return [Hash<String,Array<Types::EnvironmentError>>]
    #
    # @!attribute [rw] overall_deployment_status
    #   The overall deployment status of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EnvironmentDeploymentDetails AWS API Documentation
    #
    class EnvironmentDeploymentDetails < Struct.new(
      :environment_failure_reasons,
      :overall_deployment_status)
      SENSITIVE = []
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
    # @!attribute [rw] environment_configuration_id
    #   The configuration ID with which the environment is created.
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
      :environment_configuration_id,
      :environment_profile_id,
      :id,
      :name,
      :project_id,
      :provider,
      :status,
      :updated_at)
      SENSITIVE = [:description, :environment_configuration_id, :name]
      include Aws::Structure
    end

    # Specifies whether the value is equal to an expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might be equal to an expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EqualToExpression AWS API Documentation
    #
    class EqualToExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event summary.
    #
    # @note EventSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EventSummary corresponding to the set member.
    #
    # @!attribute [rw] open_lineage_run_event_summary
    #   The open lineage run event summary.
    #   @return [Types::OpenLineageRunEventSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/EventSummary AWS API Documentation
    #
    class EventSummary < Struct.new(
      :open_lineage_run_event_summary,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpenLineageRunEventSummary < EventSummary; end
      class Unknown < EventSummary; end
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

    # @!attribute [rw] asset_identifier
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to get an asset filter.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetFilterInput AWS API Documentation
    #
    class GetAssetFilterInput < Struct.new(
      :asset_identifier,
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the asset filter.
    #   @return [Types::AssetFilterConfiguration]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the asset filter was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where you want to get an asset filter.
    #   @return [String]
    #
    # @!attribute [rw] effective_column_names
    #   The column names of the asset filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] effective_row_filter
    #   The row filter of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that is displayed if the action does not complete
    #   successfully.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetFilterOutput AWS API Documentation
    #
    class GetAssetFilterOutput < Struct.new(
      :asset_id,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :effective_column_names,
      :effective_row_filter,
      :error_message,
      :id,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain to which the asset belongs.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the Amazon DataZone asset.
    #
    #   This parameter supports either the value of `assetId` or
    #   `externalIdentifier` as input. If you are passing the value of
    #   `externalIdentifier`, you must prefix this value with
    #   `externalIdentifer%2F`.
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
    #   The external ID of the asset.
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
    # @!attribute [rw] latest_time_series_data_point_forms_output
    #   The latest data point that was imported into the time series form
    #   for the asset.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    #
    # @!attribute [rw] listing
    #   The listing of the asset.
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
      :latest_time_series_data_point_forms_output,
      :listing,
      :name,
      :owning_project_id,
      :read_only_forms_output,
      :revision,
      :type_identifier,
      :type_revision)
      SENSITIVE = [:description, :name]
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
    #   The ID of the domain where we get the connection.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The connection ID.
    #   @return [String]
    #
    # @!attribute [rw] with_secret
    #   Specifies whether a connection has a secret.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetConnectionInput AWS API Documentation
    #
    class GetConnectionInput < Struct.new(
      :domain_identifier,
      :identifier,
      :with_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_credentials
    #   Connection credentials.
    #   @return [Types::ConnectionCredentials]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Connection description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The domain unit ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_user_role
    #   The environment user role.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] physical_endpoints
    #   The physical endpoints of the connection.
    #   @return [Array<Types::PhysicalEndpoint>]
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] props
    #   Connection props.
    #   @return [Types::ConnectionPropertiesOutput]
    #
    # @!attribute [rw] type
    #   The type of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetConnectionOutput AWS API Documentation
    #
    class GetConnectionOutput < Struct.new(
      :connection_credentials,
      :connection_id,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_id,
      :environment_user_role,
      :name,
      :physical_endpoints,
      :project_id,
      :props,
      :type)
      SENSITIVE = [:connection_credentials, :description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the data product lives.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the data product.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataProductInput AWS API Documentation
    #
    class GetDataProductInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp at which the data product is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data product.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the data product lives.
    #   @return [String]
    #
    # @!attribute [rw] first_revision_created_at
    #   The timestamp at which the first revision of the data product is
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] first_revision_created_by
    #   The user who created the first revision of the data product.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The metadata forms of the data product.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The ID of the data product.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The data assets of the data product.
    #   @return [Array<Types::DataProductItem>]
    #
    # @!attribute [rw] name
    #   The name of the data product.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the data product.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the data product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataProductOutput AWS API Documentation
    #
    class GetDataProductOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :first_revision_created_at,
      :first_revision_created_by,
      :forms_output,
      :glossary_terms,
      :id,
      :items,
      :name,
      :owning_project_id,
      :revision,
      :status)
      SENSITIVE = [:description, :name]
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
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
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
    #   The recommendation configuration of the data source.
    #   @return [Types::RecommendationConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule of the data source runs.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] self_grant_status
    #   Specifies the status of the self-granting functionality.
    #   @return [Types::SelfGrantStatusOutput]
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
      :connection_id,
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
      :self_grant_status,
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
    # @!attribute [rw] lineage_summary
    #   The summary of the data lineage.
    #   @return [Types::DataSourceRunLineageSummary]
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
      :lineage_summary,
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
    # @!attribute [rw] domain_version
    #   The version of the domain.
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
    # @!attribute [rw] root_domain_unit_id
    #   The ID of the root domain in Amazon Datazone.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The service role of the domain.
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
      :domain_version,
      :id,
      :kms_key_identifier,
      :last_updated_at,
      :name,
      :portal_url,
      :root_domain_unit_id,
      :service_role,
      :single_sign_on,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to get a domain unit.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the domain unit that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomainUnitInput AWS API Documentation
    #
    class GetDomainUnitInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The time stamp at which the domain unit was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain in which the domain unit lives.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp at which the domain unit was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The user who last updated the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] owners
    #   The owners of the domain unit.
    #   @return [Array<Types::DomainUnitOwnerProperties>]
    #
    # @!attribute [rw] parent_domain_unit_id
    #   The ID of the parent domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomainUnitOutput AWS API Documentation
    #
    class GetDomainUnitOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :last_updated_at,
      :last_updated_by,
      :name,
      :owners,
      :parent_domain_unit_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the
    #   `GetEnvironmentAction` API is invoked.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The environment ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the environment action
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentActionInput AWS API Documentation
    #
    class GetEnvironmentActionInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the environment action
    #   lives.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the environment action.
    #   @return [Types::ActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentActionOutput AWS API Documentation
    #
    class GetEnvironmentActionOutput < Struct.new(
      :description,
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters)
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
    # @!attribute [rw] environment_role_permission_boundary
    #   The environment role permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role with which this blueprint is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_configurations
    #   The provisioning configuration of a blueprint.
    #   @return [Array<Types::ProvisioningConfiguration>]
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
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :provisioning_configurations,
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
    #   The ID of the Amazon DataZone domain in which this environment and
    #   its credentials exist.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment whose credentials this operation gets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentCredentialsInput AWS API Documentation
    #
    class GetEnvironmentCredentialsInput < Struct.new(
      :domain_identifier,
      :environment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_key_id
    #   The access key ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The expiration timestamp of the environment credentials.
    #   @return [Time]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key of the environment credentials.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token of the environment credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentCredentialsOutput AWS API Documentation
    #
    class GetEnvironmentCredentialsOutput < Struct.new(
      :access_key_id,
      :expiration,
      :secret_access_key,
      :session_token)
      SENSITIVE = []
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
    # @!attribute [rw] environment_configuration_id
    #   The configuration ID that is used to create the environment.
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
      :environment_configuration_id,
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
      SENSITIVE = [:description, :environment_configuration_id, :name]
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
    #   The ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetJobRunInput AWS API Documentation
    #
    class GetJobRunInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the job run was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the job run.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the job run.
    #   @return [Types::JobRunDetails]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp of when the job run ended.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   The error generated if the action is not completed successfully.
    #   @return [Types::JobRunError]
    #
    # @!attribute [rw] id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of the job run.
    #   @return [String]
    #
    # @!attribute [rw] run_mode
    #   The mode of the job run.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp of when the job run started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetJobRunOutput AWS API Documentation
    #
    class GetJobRunOutput < Struct.new(
      :created_at,
      :created_by,
      :details,
      :domain_id,
      :end_time,
      :error,
      :id,
      :job_id,
      :job_type,
      :run_mode,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the lineage event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetLineageEventInput AWS API Documentation
    #
    class GetLineageEventInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the lineage event was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the lineage event.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The lineage event details.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time of the lineage event.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID of the lineage event.
    #   @return [String]
    #
    # @!attribute [rw] processing_status
    #   The progressing status of the lineage event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetLineageEventOutput AWS API Documentation
    #
    class GetLineageEventOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :event,
      :event_time,
      :id,
      :processing_status)
      SENSITIVE = [:event]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain in which you want to get the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The event time stamp for which you want to get the data lineage
    #   node.
    #   @return [Time]
    #
    # @!attribute [rw] identifier
    #   The ID of the data lineage node that you want to get.
    #
    #   Both, a lineage node identifier generated by Amazon DataZone and a
    #   `sourceIdentifier` of the lineage node are supported. If
    #   `sourceIdentifier` is greater than 1800 characters, you can use
    #   lineage node identifier generated by Amazon DataZone to get the node
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetLineageNodeInput AWS API Documentation
    #
    class GetLineageNodeInput < Struct.new(
      :domain_identifier,
      :event_timestamp,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp at which the data lineage node was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where you're getting the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] downstream_nodes
    #   The downsteam nodes of the specified data lineage node.
    #   @return [Array<Types::LineageNodeReference>]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp of the event described in the data lineage node.
    #   @return [Time]
    #
    # @!attribute [rw] forms_output
    #   The metadata of the specified data lineage node.
    #   @return [Array<Types::FormOutput>]
    #
    # @!attribute [rw] id
    #   The ID of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   The source identifier of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the type of the specified data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision type of the specified data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the data lineage node was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who updated the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] upstream_nodes
    #   The upstream nodes of the specified data lineage node.
    #   @return [Array<Types::LineageNodeReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetLineageNodeOutput AWS API Documentation
    #
    class GetLineageNodeOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :downstream_nodes,
      :event_timestamp,
      :forms_output,
      :id,
      :name,
      :source_identifier,
      :type_name,
      :type_revision,
      :updated_at,
      :updated_by,
      :upstream_nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   The revision of the listing.
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
    #   The timestamp of when the listing was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who created the listing.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the listing.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the listing.
    #   @return [String]
    #
    # @!attribute [rw] item
    #   The details of a listing.
    #   @return [Types::ListingItem]
    #
    # @!attribute [rw] listing_revision
    #   The revision of a listing.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the listing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the listing.
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
    #   The ID of the Amazon DataZone domain the metadata generation run of
    #   which you want to get.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the metadata generation run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetMetadataGenerationRunInput AWS API Documentation
    #
    class GetMetadataGenerationRunInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the metadata generation run was start.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon DataZone user who started the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain the metadata generation run of
    #   which you want to get.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns the assets for which you're running
    #   metadata generation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The asset for which you're generating metadata.
    #   @return [Types::MetadataGenerationRunTarget]
    #
    # @!attribute [rw] type
    #   The type of metadata generation run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetMetadataGenerationRunOutput AWS API Documentation
    #
    class GetMetadataGenerationRunOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :owning_project_id,
      :status,
      :target,
      :type)
      SENSITIVE = []
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
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] environment_deployment_details
    #   The environment deployment status of a project.
    #   @return [Types::EnvironmentDeploymentDetails]
    #
    # @!attribute [rw] failure_reasons
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Array<Types::ProjectDeletionError>]
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
    # @!attribute [rw] project_profile_id
    #   The ID of the project profile of a project.
    #   @return [String]
    #
    # @!attribute [rw] project_status
    #   The status of the project.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of a project.
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProjectOutput AWS API Documentation
    #
    class GetProjectOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_deployment_details,
      :failure_reasons,
      :glossary_terms,
      :id,
      :last_updated_at,
      :name,
      :project_profile_id,
      :project_status,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the project profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProjectProfileInput AWS API Documentation
    #
    class GetProjectProfileInput < Struct.new(
      :domain_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the project profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the project profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] environment_configurations
    #   The environment configurations of the project profile.
    #   @return [Array<Types::EnvironmentConfiguration>]
    #
    # @!attribute [rw] id
    #   The ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when project profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the project profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProjectProfileOutput AWS API Documentation
    #
    class GetProjectProfileOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_configurations,
      :id,
      :last_updated_at,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain where the `GetRule` action is to be invoked.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetRuleInput AWS API Documentation
    #
    class GetRuleInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action of the rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The detail of the rule.
    #   @return [Types::RuleDetail]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The timestamp at which the rule was last updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the rule.
    #   @return [Types::RuleScope]
    #
    # @!attribute [rw] target
    #   The target of the rule.
    #   @return [Types::RuleTarget]
    #
    # @!attribute [rw] target_type
    #   The target type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetRuleOutput AWS API Documentation
    #
    class GetRuleOutput < Struct.new(
      :action,
      :created_at,
      :created_by,
      :description,
      :detail,
      :identifier,
      :last_updated_by,
      :name,
      :revision,
      :rule_type,
      :scope,
      :target,
      :target_type,
      :updated_at)
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
    #   The details of the published asset for which the subscription grant
    #   is created.
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
    # @!attribute [rw] existing_subscription_id
    #   The ID of the existing subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] metadata_forms
    #   The metadata forms included in the subscription request.
    #   @return [Array<Types::FormOutput>]
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
      :existing_subscription_id,
      :id,
      :metadata_forms,
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
    #   The ID of the Amazon DataZone domain that houses the asset for which
    #   you want to get the data point.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the asset for which you want to get the data point.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the asset for which you want to get the data point.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the time series form that houses the data point that you
    #   want to get.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the data point that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetTimeSeriesDataPointInput AWS API Documentation
    #
    class GetTimeSeriesDataPointInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :form_name,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain that houses the asset data
    #   point that you want to get.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the asset for which you want to get the data point.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the asset for which you want to get the data point.
    #   @return [String]
    #
    # @!attribute [rw] form
    #   The time series form that houses the data point that you want to
    #   get.
    #   @return [Types::TimeSeriesDataPointFormOutput]
    #
    # @!attribute [rw] form_name
    #   The name of the time series form that houses the data point that you
    #   want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetTimeSeriesDataPointOutput AWS API Documentation
    #
    class GetTimeSeriesDataPointOutput < Struct.new(
      :domain_id,
      :entity_id,
      :entity_type,
      :form,
      :form_name)
      SENSITIVE = []
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
    # @!attribute [rw] additional_attributes
    #   The additional attributes of an Amazon DataZone glossary.
    #   @return [Types::GlossaryItemAdditionalAttributes]
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
      :additional_attributes,
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

    # The additional attributes of an Amazon DataZone glossary.
    #
    # @!attribute [rw] match_rationale
    #   List of rationales indicating why this item was matched by search.
    #   @return [Array<Types::MatchRationaleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlossaryItemAdditionalAttributes AWS API Documentation
    #
    class GlossaryItemAdditionalAttributes < Struct.new(
      :match_rationale)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a business glossary term.
    #
    # @!attribute [rw] additional_attributes
    #   The additional attributes of an Amazon DataZone glossary term.
    #   @return [Types::GlossaryTermItemAdditionalAttributes]
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
      :additional_attributes,
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

    # The additional attributes of an Amazon DataZone glossary term.
    #
    # @!attribute [rw] match_rationale
    #   List of rationales indicating why this item was matched by search.
    #   @return [Array<Types::MatchRationaleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlossaryTermItemAdditionalAttributes AWS API Documentation
    #
    class GlossaryTermItemAdditionalAttributes < Struct.new(
      :match_rationale)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Glue connection.
    #
    # @!attribute [rw] athena_properties
    #   The Amazon Athena properties of the Amazon Web Services Glue
    #   connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon Web Services Glue
    #   connection.
    #   @return [Types::AuthenticationConfiguration]
    #
    # @!attribute [rw] compatible_compute_environments
    #   The compatible compute environments of the Amazon Web Services Glue
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   The properties of the Amazon Web Services Glue connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connection_schema_version
    #   The connection schema version of the Amazon Web Services Glue
    #   connection.
    #   @return [Integer]
    #
    # @!attribute [rw] connection_type
    #   The type of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the Amazon Web Services Glue connection.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] last_connection_validation_time
    #   The last validation time of the Amazon Web Services Glue connection.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The user who last updated the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp at which the Amazon Web Services Glue connection was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] match_criteria
    #   The match criteria of the Amazon Web Services Glue connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] physical_connection_requirements
    #   The physical connection requirements of the Amazon Web Services Glue
    #   connection.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @!attribute [rw] python_properties
    #   The Python properties of the Amazon Web Services Glue connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] spark_properties
    #   The Spark properties of the Amazon Web Services Glue connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueConnection AWS API Documentation
    #
    class GlueConnection < Struct.new(
      :athena_properties,
      :authentication_configuration,
      :compatible_compute_environments,
      :connection_properties,
      :connection_schema_version,
      :connection_type,
      :creation_time,
      :description,
      :last_connection_validation_time,
      :last_updated_by,
      :last_updated_time,
      :match_criteria,
      :name,
      :physical_connection_requirements,
      :python_properties,
      :spark_properties,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Glue connecton input.
    #
    # @!attribute [rw] athena_properties
    #   The Amazon Athena properties of the Amazon Web Services Glue
    #   connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon Web Services Glue
    #   connection.
    #   @return [Types::AuthenticationConfigurationInput]
    #
    # @!attribute [rw] connection_properties
    #   The connection properties of the Amazon Web Services Glue
    #   connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connection_type
    #   The connection type of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   The match criteria of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Web Services Glue connection.
    #   @return [String]
    #
    # @!attribute [rw] physical_connection_requirements
    #   The physical connection requirements for the Amazon Web Services
    #   Glue connection.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @!attribute [rw] python_properties
    #   The Python properties of the Amazon Web Services Glue connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] spark_properties
    #   The Spark properties of the Amazon Web Services Glue connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] validate_credentials
    #   Speciefies whether to validate credentials of the Amazon Web
    #   Services Glue connection.
    #   @return [Boolean]
    #
    # @!attribute [rw] validate_for_compute_environments
    #   Speciefies whether to validate for compute environments of the
    #   Amazon Web Services Glue connection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueConnectionInput AWS API Documentation
    #
    class GlueConnectionInput < Struct.new(
      :athena_properties,
      :authentication_configuration,
      :connection_properties,
      :connection_type,
      :description,
      :match_criteria,
      :name,
      :physical_connection_requirements,
      :python_properties,
      :spark_properties,
      :validate_credentials,
      :validate_for_compute_environments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Glue connection patch.
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon Web Services Glue
    #   connection patch.
    #   @return [Types::AuthenticationConfigurationPatch]
    #
    # @!attribute [rw] connection_properties
    #   The properties of the Amazon Web Services Glue connection patch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Web Services Glue connection patch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueConnectionPatch AWS API Documentation
    #
    class GlueConnectionPatch < Struct.new(
      :authentication_configuration,
      :connection_properties,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GlueOAuth2 credentials of a connection.
    #
    # @!attribute [rw] access_token
    #   The access token of a connection.
    #   @return [String]
    #
    # @!attribute [rw] jwt_token
    #   The jwt token of the connection.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token of the connection.
    #   @return [String]
    #
    # @!attribute [rw] user_managed_client_application_client_secret
    #   The user managed client application client secret of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueOAuth2Credentials AWS API Documentation
    #
    class GlueOAuth2Credentials < Struct.new(
      :access_token,
      :jwt_token,
      :refresh_token,
      :user_managed_client_application_client_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Glue properties of a connection.
    #
    # @!attribute [rw] glue_connection_input
    #   The Amazon Web Services Glue connection.
    #   @return [Types::GlueConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GluePropertiesInput AWS API Documentation
    #
    class GluePropertiesInput < Struct.new(
      :glue_connection_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the Amazon Web Services Glue connection.
    #
    # @!attribute [rw] error_message
    #   The error message generated if the action is not completed
    #   successfully.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GluePropertiesOutput AWS API Documentation
    #
    class GluePropertiesOutput < Struct.new(
      :error_message,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Glue properties patch of a connection.
    #
    # @!attribute [rw] glue_connection_input
    #   The Amazon Web Services Glue properties patch of a connection.
    #   @return [Types::GlueConnectionPatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GluePropertiesPatch AWS API Documentation
    #
    class GluePropertiesPatch < Struct.new(
      :glue_connection_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of the Amazon Web Services Glue data source.
    #
    # @!attribute [rw] auto_import_data_quality_result
    #   Specifies whether to automatically import data quality metrics as
    #   part of the data source run.
    #   @return [Boolean]
    #
    # @!attribute [rw] catalog_name
    #   The catalog name in the Amazon Web Services Glue run configuration.
    #   @return [String]
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
      :auto_import_data_quality_result,
      :catalog_name,
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
    # @!attribute [rw] auto_import_data_quality_result
    #   Specifies whether to automatically import data quality metrics as
    #   part of the data source run.
    #   @return [Boolean]
    #
    # @!attribute [rw] catalog_name
    #   The catalog name in the Amazon Web Services Glue run configuration.
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
      :auto_import_data_quality_result,
      :catalog_name,
      :data_access_role,
      :region,
      :relational_filter_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the self granting status.
    #
    # @!attribute [rw] self_grant_status_details
    #   The details for the self granting status for a Glue data source.
    #   @return [Array<Types::SelfGrantStatusDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GlueSelfGrantStatusOutput AWS API Documentation
    #
    class GlueSelfGrantStatusOutput < Struct.new(
      :self_grant_status_details)
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

    # Specifies whether the value is greater than an expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might be greater than an expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GreaterThanExpression AWS API Documentation
    #
    class GreaterThanExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the value is greater than or equal to an expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might be greater than or equal to an expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GreaterThanOrEqualToExpression AWS API Documentation
    #
    class GreaterThanOrEqualToExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
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

    # The group principal to whom the policy is granted.
    #
    # @note GroupPolicyGrantPrincipal is a union - when making an API calls you must set exactly one of the members.
    #
    # @note GroupPolicyGrantPrincipal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GroupPolicyGrantPrincipal corresponding to the set member.
    #
    # @!attribute [rw] group_identifier
    #   The ID Of the group of the group principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GroupPolicyGrantPrincipal AWS API Documentation
    #
    class GroupPolicyGrantPrincipal < Struct.new(
      :group_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GroupIdentifier < GroupPolicyGrantPrincipal; end
      class Unknown < GroupPolicyGrantPrincipal; end
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

    # The hyper pod properties of a Amazon Web Services Glue properties
    # patch.
    #
    # @!attribute [rw] cluster_name
    #   The cluster name the hyper pod properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/HyperPodPropertiesInput AWS API Documentation
    #
    class HyperPodPropertiesInput < Struct.new(
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The hyper pod properties of a Amazon Web Services Glue properties
    # patch.
    #
    # @!attribute [rw] cluster_arn
    #   The cluster ARN of the hyper pod properties.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The cluster name the hyper pod properties.
    #   @return [String]
    #
    # @!attribute [rw] orchestrator
    #   The orchestrator of the hyper pod properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/HyperPodPropertiesOutput AWS API Documentation
    #
    class HyperPodPropertiesOutput < Struct.new(
      :cluster_arn,
      :cluster_name,
      :orchestrator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IAM properties of a connection.
    #
    # @!attribute [rw] glue_lineage_sync_enabled
    #   Specifies whether Amazon Web Services Glue lineage sync is enabled
    #   for a connection.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/IamPropertiesInput AWS API Documentation
    #
    class IamPropertiesInput < Struct.new(
      :glue_lineage_sync_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IAM properties of a connection.
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] glue_lineage_sync_enabled
    #   Specifies whether Amazon Web Services Glue lineage sync is enabled
    #   for a connection.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/IamPropertiesOutput AWS API Documentation
    #
    class IamPropertiesOutput < Struct.new(
      :environment_id,
      :glue_lineage_sync_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IAM properties patch of a connection.
    #
    # @!attribute [rw] glue_lineage_sync_enabled
    #   Specifies whether Amazon Web Services Glue lineage sync is enabled
    #   for a connection.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/IamPropertiesPatch AWS API Documentation
    #
    class IamPropertiesPatch < Struct.new(
      :glue_lineage_sync_enabled)
      SENSITIVE = []
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

    # Specifies whether values are in the expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values that might be in the expression.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/InExpression AWS API Documentation
    #
    class InExpression < Struct.new(
      :column_name,
      :values)
      SENSITIVE = []
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

    # Specifies that the expression is not null.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/IsNotNullExpression AWS API Documentation
    #
    class IsNotNullExpression < Struct.new(
      :column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that the expression is null.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/IsNullExpression AWS API Documentation
    #
    class IsNullExpression < Struct.new(
      :column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a job run.
    #
    # @note JobRunDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of JobRunDetails corresponding to the set member.
    #
    # @!attribute [rw] lineage_run_details
    #   The data lineage details of a job run.
    #   @return [Types::LineageRunDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/JobRunDetails AWS API Documentation
    #
    class JobRunDetails < Struct.new(
      :lineage_run_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LineageRunDetails < JobRunDetails; end
      class Unknown < JobRunDetails; end
    end

    # The job run error.
    #
    # @!attribute [rw] message
    #   The job run error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/JobRunError AWS API Documentation
    #
    class JobRunError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job run summary.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which job run was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the job run.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time of a job run.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   The error of a job run.
    #   @return [Types::JobRunError]
    #
    # @!attribute [rw] job_id
    #   The job ID of a job run.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job type of a job run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run ID of a job run.
    #   @return [String]
    #
    # @!attribute [rw] run_mode
    #   The run mode of a job run.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of a job run.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of a job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/JobRunSummary AWS API Documentation
    #
    class JobRunSummary < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :end_time,
      :error,
      :job_id,
      :job_type,
      :run_id,
      :run_mode,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lake Formation configuration of the Data Lake blueprint.
    #
    # @!attribute [rw] location_registration_exclude_s3_locations
    #   Specifies certain Amazon S3 locations if you do not want Amazon
    #   DataZone to automatically register them in hybrid mode.
    #   @return [Array<String>]
    #
    # @!attribute [rw] location_registration_role
    #   The role that is used to manage read/write access to the chosen
    #   Amazon S3 bucket(s) for Data Lake using Amazon Web Services Lake
    #   Formation hybrid access mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LakeFormationConfiguration AWS API Documentation
    #
    class LakeFormationConfiguration < Struct.new(
      :location_registration_exclude_s3_locations,
      :location_registration_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a value is less than an expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might be less than the expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LessThanExpression AWS API Documentation
    #
    class LessThanExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a value is less than or equal to an expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might be less than or equal to an expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LessThanOrEqualToExpression AWS API Documentation
    #
    class LessThanOrEqualToExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a value is like the expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might be like the expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LikeExpression AWS API Documentation
    #
    class LikeExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data lineage event summary.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which data lineage event was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data lineage event.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID of the lineage event.
    #   @return [String]
    #
    # @!attribute [rw] event_summary
    #   The summary of the data lineate event.
    #   @return [Types::EventSummary]
    #
    # @!attribute [rw] event_time
    #   The time of the data lineage event.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID of the data lineage event.
    #   @return [String]
    #
    # @!attribute [rw] processing_status
    #   The processing status of the data lineage event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageEventSummary AWS API Documentation
    #
    class LineageEventSummary < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :event_summary,
      :event_time,
      :id,
      :processing_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data lineage information.
    #
    # @!attribute [rw] error_message
    #   The data lineage error message.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The data lineage event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The data lineage event status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageInfo AWS API Documentation
    #
    class LineageInfo < Struct.new(
      :error_message,
      :event_id,
      :event_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference details for the data lineage node.
    #
    # @!attribute [rw] event_timestamp
    #   The event timestamp of the data lineage node.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID of the data lineage node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageNodeReference AWS API Documentation
    #
    class LineageNodeReference < Struct.new(
      :event_timestamp,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the data lineage node.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the data lineage node was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The event timestamp of the data lineage node.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   The alternate ID of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the type of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The type of the revision of the data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the data lineage node was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who updated the data lineage node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageNodeSummary AWS API Documentation
    #
    class LineageNodeSummary < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :event_timestamp,
      :id,
      :name,
      :source_identifier,
      :type_name,
      :type_revision,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a data lineage node type.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the data lineage node type was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the data lineage node type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data lineage node type.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the data lineage node type lives.
    #   @return [String]
    #
    # @!attribute [rw] forms_output
    #   The forms output of the data lineage node type.
    #   @return [Hash<String,Types::FormEntryOutput>]
    #
    # @!attribute [rw] name
    #   The name of the data lineage node type.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the data lineage node type.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the data lineage node type was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who updated the data lineage node type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageNodeTypeItem AWS API Documentation
    #
    class LineageNodeTypeItem < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :forms_output,
      :name,
      :revision,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data lineage run details.
    #
    # @!attribute [rw] sql_query_run_details
    #   The SQL query run details of a data lineage run.
    #   @return [Types::LineageSqlQueryRunDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageRunDetails AWS API Documentation
    #
    class LineageRunDetails < Struct.new(
      :sql_query_run_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SQL query run details of a data lineage run.
    #
    # @!attribute [rw] error_messages
    #   The error message of the SQL query run details of a data lineage
    #   run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_queries_failed
    #   The number of queries that failed in the SQL query run details of a
    #   data lineage run.
    #   @return [Integer]
    #
    # @!attribute [rw] query_end_time
    #   The query end time in the SQL query run details of a data lineage
    #   run.
    #   @return [Time]
    #
    # @!attribute [rw] query_start_time
    #   The query start time in the SQL query run details of a data lineage
    #   run.
    #   @return [Time]
    #
    # @!attribute [rw] total_queries_processed
    #   The total queries processed in the SQL query run details of a data
    #   lineage run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageSqlQueryRunDetails AWS API Documentation
    #
    class LineageSqlQueryRunDetails < Struct.new(
      :error_messages,
      :num_queries_failed,
      :query_end_time,
      :query_start_time,
      :total_queries_processed)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lineage sync schedule.
    #
    # @!attribute [rw] schedule
    #   The lineage sync schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/LineageSyncSchedule AWS API Documentation
    #
    class LineageSyncSchedule < Struct.new(
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_identifier
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to list asset filters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of asset filters to return in a single call to
    #   `ListAssetFilters`. When the number of asset filters to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListAssetFilters` to list the next set of asset filters.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of asset filters is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of asset filters, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListAssetFilters` to list the next set of asset filters.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetFiltersInput AWS API Documentation
    #
    class ListAssetFiltersInput < Struct.new(
      :asset_identifier,
      :domain_identifier,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListAssetFilters` action.
    #   @return [Array<Types::AssetFilterSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of asset filters is greater than the default value
    #   for the `MaxResults` parameter, or if you explicitly specify a value
    #   for `MaxResults` that is less than the number of asset filters, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListAssetFilters` to list the next set of asset filters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetFiltersOutput AWS API Documentation
    #
    class ListAssetFiltersOutput < Struct.new(
      :items,
      :next_token)
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
    #   The ID of the domain where you want to list connections.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment where you want to list connections.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connections to return in a single call to
    #   ListConnections. When the number of connections to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListConnections to list the next set of connections.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of connections is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of connections, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListConnections to list the
    #   next set of connections.
    #   @return [String]
    #
    # @!attribute [rw] project_identifier
    #   The ID of the project where you want to list connections.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies how you want to sort the listed connections.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order for the listed connections.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListConnectionsInput AWS API Documentation
    #
    class ListConnectionsInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :max_results,
      :name,
      :next_token,
      :project_identifier,
      :sort_by,
      :sort_order,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the ListConnections action.
    #   @return [Array<Types::ConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of connections is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of connections, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListConnections to list the
    #   next set of connections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListConnectionsOutput AWS API Documentation
    #
    class ListConnectionsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain of the data product revisions that you want to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the data product revision.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of asset filters to return in a single call to
    #   `ListDataProductRevisions`. When the number of data product
    #   revisions to be listed is greater than the value of `MaxResults`,
    #   the response contains a `NextToken` value that you can use in a
    #   subsequent call to `ListDataProductRevisions` to list the next set
    #   of data product revisions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of data product revisions is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   data product revisions, the response includes a pagination token
    #   named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListDataProductRevisions` to list the next set
    #   of data product revisions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataProductRevisionsInput AWS API Documentation
    #
    class ListDataProductRevisionsInput < Struct.new(
      :domain_identifier,
      :identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListDataProductRevisions` action.
    #   @return [Array<Types::DataProductRevision>]
    #
    # @!attribute [rw] next_token
    #   When the number of data product revisions is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   data product revisions, the response includes a pagination token
    #   named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListDataProductRevisions` to list the next set
    #   of data product revisions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataProductRevisionsOutput AWS API Documentation
    #
    class ListDataProductRevisionsOutput < Struct.new(
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

    # @!attribute [rw] connection_identifier
    #   The ID of the connection.
    #   @return [String]
    #
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
      :connection_identifier,
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

    # @!attribute [rw] domain_identifier
    #   The ID of the domain in which you want to list domain units for a
    #   parent domain unit.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of domain units to return in a single call to
    #   ListDomainUnitsForParent. When the number of domain units to be
    #   listed is greater than the value of MaxResults, the response
    #   contains a NextToken value that you can use in a subsequent call to
    #   ListDomainUnitsForParent to list the next set of domain units.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of domain units is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value
    #   for MaxResults that is less than the number of domain units, the
    #   response includes a pagination token named NextToken. You can
    #   specify this NextToken value in a subsequent call to
    #   ListDomainUnitsForParent to list the next set of domain units.
    #   @return [String]
    #
    # @!attribute [rw] parent_domain_unit_identifier
    #   The ID of the parent domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomainUnitsForParentInput AWS API Documentation
    #
    class ListDomainUnitsForParentInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :parent_domain_unit_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results returned by this action.
    #   @return [Array<Types::DomainUnitSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of domain units is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value
    #   for MaxResults that is less than the number of domain units, the
    #   response includes a pagination token named NextToken. You can
    #   specify this NextToken value in a subsequent call to
    #   ListDomainUnitsForParent to list the next set of domain units.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomainUnitsForParentOutput AWS API Documentation
    #
    class ListDomainUnitsForParentOutput < Struct.new(
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
    #   The ID of the domain where you want to list entity owners.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the entity that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of entities to return in a single call to
    #   `ListEntityOwners`. When the number of entities to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListEntityOwners` to list the next set of entities.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of entities is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of entities, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListEntityOwners` to list
    #   the next set of entities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEntityOwnersInput AWS API Documentation
    #
    class ListEntityOwnersInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When the number of entities is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of entities, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListEntityOwners` to list
    #   the next set of entities.
    #   @return [String]
    #
    # @!attribute [rw] owners
    #   The owners of the entity.
    #   @return [Array<Types::OwnerPropertiesOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEntityOwnersOutput AWS API Documentation
    #
    class ListEntityOwnersOutput < Struct.new(
      :next_token,
      :owners)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment
    #   actions are listed.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the envrironment whose environment actions are listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environment actions to return in a single call
    #   to `ListEnvironmentActions`. When the number of environment actions
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call
    #   to `ListEnvironmentActions` to list the next set of environment
    #   actions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of environment actions is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   actions, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListEnvironmentActions` to list the next set of environment
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentActionsInput AWS API Documentation
    #
    class ListEnvironmentActionsInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of `ListEnvironmentActions`.
    #   @return [Array<Types::EnvironmentActionSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of environment actions is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   actions, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListEnvironmentActions` to list the next set of environment
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentActionsOutput AWS API Documentation
    #
    class ListEnvironmentActionsOutput < Struct.new(
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
    #   The name of the environment.
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

    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to list job runs.
    #   @return [String]
    #
    # @!attribute [rw] job_identifier
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of job runs to return in a single call to
    #   ListJobRuns. When the number of job runs to be listed is greater
    #   than the value of MaxResults, the response contains a NextToken
    #   value that you can use in a subsequent call to ListJobRuns to list
    #   the next set of job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of job runs is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of job runs, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListJobRuns to list the next
    #   set of job runs.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the order in which job runs are to be sorted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListJobRunsInput AWS API Documentation
    #
    class ListJobRunsInput < Struct.new(
      :domain_identifier,
      :job_identifier,
      :max_results,
      :next_token,
      :sort_order,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the ListJobRuns action.
    #   @return [Array<Types::JobRunSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of job runs is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of job runs, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListJobRuns to list the next
    #   set of job runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListJobRunsOutput AWS API Documentation
    #
    class ListJobRunsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to list lineage events.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of lineage events to return in a single call to
    #   ListLineageEvents. When the number of lineage events to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListLineageEvents to list the next set of lineage events.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of lineage events is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value
    #   for MaxResults that is less than the number of lineage events, the
    #   response includes a pagination token named NextToken. You can
    #   specify this NextToken value in a subsequent call to
    #   ListLineageEvents to list the next set of lineage events.
    #   @return [String]
    #
    # @!attribute [rw] processing_status
    #   The processing status of a lineage event.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order of the lineage events.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_after
    #   The after timestamp of a lineage event.
    #   @return [Time]
    #
    # @!attribute [rw] timestamp_before
    #   The before timestamp of a lineage event.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListLineageEventsInput AWS API Documentation
    #
    class ListLineageEventsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :processing_status,
      :sort_order,
      :timestamp_after,
      :timestamp_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the ListLineageEvents action.
    #   @return [Array<Types::LineageEventSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of lineage events is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value
    #   for MaxResults that is less than the number of lineage events, the
    #   response includes a pagination token named NextToken. You can
    #   specify this NextToken value in a subsequent call to
    #   ListLineageEvents to list the next set of lineage events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListLineageEventsOutput AWS API Documentation
    #
    class ListLineageEventsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] direction
    #   The direction of the data lineage node refers to the lineage node
    #   having neighbors in that direction. For example, if direction is
    #   `UPSTREAM`, the `ListLineageNodeHistory` API responds with
    #   historical versions with upstream neighbors only.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to list the history of the
    #   specified data lineage node.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp_gte
    #   Specifies whether the action is to return data lineage node history
    #   from the time after the event timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] event_timestamp_lte
    #   Specifies whether the action is to return data lineage node history
    #   from the time prior of the event timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] identifier
    #   The ID of the data lineage node whose history you want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of history items to return in a single call to
    #   ListLineageNodeHistory. When the number of memberships to be listed
    #   is greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListLineageNodeHistory to list the next set of items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of history items is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value
    #   for MaxResults that is less than the number of items, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListLineageNodeHistory to
    #   list the next set of items.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order by which you want data lineage node history to be sorted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListLineageNodeHistoryInput AWS API Documentation
    #
    class ListLineageNodeHistoryInput < Struct.new(
      :direction,
      :domain_identifier,
      :event_timestamp_gte,
      :event_timestamp_lte,
      :identifier,
      :max_results,
      :next_token,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When the number of history items is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value
    #   for MaxResults that is less than the number of items, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListLineageNodeHistory to
    #   list the next set of items.
    #   @return [String]
    #
    # @!attribute [rw] nodes
    #   The nodes returned by the ListLineageNodeHistory action.
    #   @return [Array<Types::LineageNodeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListLineageNodeHistoryOutput AWS API Documentation
    #
    class ListLineageNodeHistoryOutput < Struct.new(
      :next_token,
      :nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where you want to list metadata
    #   generation runs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of metadata generation runs to return in a single
    #   call to ListMetadataGenerationRuns. When the number of metadata
    #   generation runs to be listed is greater than the value of
    #   MaxResults, the response contains a NextToken value that you can use
    #   in a subsequent call to ListMetadataGenerationRuns to list the next
    #   set of revisions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of metadata generation runs is greater than the
    #   default value for the MaxResults parameter, or if you explicitly
    #   specify a value for MaxResults that is less than the number of
    #   metadata generation runs, the response includes a pagination token
    #   named NextToken. You can specify this NextToken value in a
    #   subsequent call to ListMetadataGenerationRuns to list the next set
    #   of revisions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the metadata generation runs.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the metadata generation runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListMetadataGenerationRunsInput AWS API Documentation
    #
    class ListMetadataGenerationRunsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the ListMetadataGenerationRuns action.
    #   @return [Array<Types::MetadataGenerationRunItem>]
    #
    # @!attribute [rw] next_token
    #   When the number of metadata generation runs is greater than the
    #   default value for the MaxResults parameter, or if you explicitly
    #   specify a value for MaxResults that is less than the number of
    #   metadata generation runs, the response includes a pagination token
    #   named NextToken. You can specify this NextToken value in a
    #   subsequent call to ListMetadataGenerationRuns to list the next set
    #   of revisions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListMetadataGenerationRunsOutput AWS API Documentation
    #
    class ListMetadataGenerationRunsOutput < Struct.new(
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
    #   The ID of the domain where you want to list policy grants.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity for which you want to list policy grants.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of entity for which you want to list policy grants.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of grants to return in a single call to
    #   `ListPolicyGrants`. When the number of grants to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListPolicyGrants` to list the next set of grants.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of grants is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of grants, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListPolicyGrants` to list
    #   the next set of grants.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy that you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListPolicyGrantsInput AWS API Documentation
    #
    class ListPolicyGrantsInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :max_results,
      :next_token,
      :policy_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_list
    #   The results of this action - the listed grants.
    #   @return [Array<Types::PolicyGrantMember>]
    #
    # @!attribute [rw] next_token
    #   When the number of grants is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of grants, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListPolicyGrants` to list
    #   the next set of grants.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListPolicyGrantsOutput AWS API Documentation
    #
    class ListPolicyGrantsOutput < Struct.new(
      :grant_list,
      :next_token)
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
    #   The ID of the domain where you want to list project profiles.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of project profiles to return in a single call to
    #   ListProjectProfiles. When the number of project profiles to be
    #   listed is greater than the value of MaxResults, the response
    #   contains a NextToken value that you can use in a subsequent call to
    #   ListProjectProfiles to list the next set of project profiles.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of a project profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of project profiles is greater than the default
    #   value for the MaxResults parameter, or if you explicitly specify a
    #   value for MaxResults that is less than the number of project
    #   profiles, the response includes a pagination token named NextToken.
    #   You can specify this NextToken value in a subsequent call to
    #   ListProjectProfiles to list the next set of project profiles.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies by what to sort project profiles.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order of the project profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectProfilesInput AWS API Documentation
    #
    class ListProjectProfilesInput < Struct.new(
      :domain_identifier,
      :max_results,
      :name,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the ListProjectProfiles action.
    #   @return [Array<Types::ProjectProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of project profiles is greater than the default
    #   value for the MaxResults parameter, or if you explicitly specify a
    #   value for MaxResults that is less than the number of project
    #   profiles, the response includes a pagination token named NextToken.
    #   You can specify this NextToken value in a subsequent call to
    #   ListProjectProfiles to list the next set of project profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectProfilesOutput AWS API Documentation
    #
    class ListProjectProfilesOutput < Struct.new(
      :items,
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
    #   The name of the project.
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

    # @!attribute [rw] action
    #   The action of the rule.
    #   @return [String]
    #
    # @!attribute [rw] asset_types
    #   The asset types of the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_product
    #   The data product of the rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain in which the rules are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] include_cascaded
    #   Specifies whether to include cascading rules in the results.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rules to return in a single call to
    #   `ListRules`. When the number of rules to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `ListRules` to list the
    #   next set of rules.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of rules is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of rules, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListRules` to list the
    #   next set of rules.
    #   @return [String]
    #
    # @!attribute [rw] project_ids
    #   The IDs of projects in which rules are to be listed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] target_identifier
    #   The target ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The target type of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListRulesInput AWS API Documentation
    #
    class ListRulesInput < Struct.new(
      :action,
      :asset_types,
      :data_product,
      :domain_identifier,
      :include_cascaded,
      :max_results,
      :next_token,
      :project_ids,
      :rule_type,
      :target_identifier,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the `ListRules` action.
    #   @return [Array<Types::RuleSummary>]
    #
    # @!attribute [rw] next_token
    #   When the number of rules is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of rules, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListRules` to list the
    #   next set of rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListRulesOutput AWS API Documentation
    #
    class ListRulesOutput < Struct.new(
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
    # @!attribute [rw] owning_project_id
    #   The ID of the owning project of the subscription grants.
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
      :owning_project_id,
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
    #
    #   <note markdown="1"> This is not a required parameter, but if not specified, by default,
    #   Amazon DataZone returns only `PENDING` subscription requests.
    #
    #    </note>
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
    #
    #   <note markdown="1"> This is not a required parameter, but if not provided, by default,
    #   Amazon DataZone returns only `APPROVED` subscriptions.
    #
    #    </note>
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

    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain that houses the assets for
    #   which you want to list time series data points.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The timestamp at which the data points that you wanted to list
    #   ended.
    #   @return [Time]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the asset for which you want to list data points.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the asset for which you want to list data points.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data points to return in a single call to
    #   ListTimeSeriesDataPoints. When the number of data points to be
    #   listed is greater than the value of MaxResults, the response
    #   contains a NextToken value that you can use in a subsequent call to
    #   ListTimeSeriesDataPoints to list the next set of data points.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When the number of data points is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of data points, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListTimeSeriesDataPoints to
    #   list the next set of data points.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp at which the data points that you want to list
    #   started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTimeSeriesDataPointsInput AWS API Documentation
    #
    class ListTimeSeriesDataPointsInput < Struct.new(
      :domain_identifier,
      :ended_at,
      :entity_identifier,
      :entity_type,
      :form_name,
      :max_results,
      :next_token,
      :started_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The results of the ListTimeSeriesDataPoints action.
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    #
    # @!attribute [rw] next_token
    #   When the number of data points is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of data points, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListTimeSeriesDataPoints to
    #   list the next set of data points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTimeSeriesDataPointsOutput AWS API Documentation
    #
    class ListTimeSeriesDataPointsOutput < Struct.new(
      :items,
      :next_token)
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
    # @!attribute [rw] data_product_listing
    #   The data product listing.
    #   @return [Types::DataProductListing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListingItem AWS API Documentation
    #
    class ListingItem < Struct.new(
      :asset_listing,
      :data_product_listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetListing < ListingItem; end
      class DataProductListing < ListingItem; end
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

    # The summary of the listing of the data product.
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] listing_id
    #   The ID of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   The revision of the data product listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListingSummary AWS API Documentation
    #
    class ListingSummary < Struct.new(
      :glossary_terms,
      :listing_id,
      :listing_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of the data product summary.
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product listing.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] listing_id
    #   The ID of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] listing_revision
    #   The revision of the data product listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListingSummaryItem AWS API Documentation
    #
    class ListingSummaryItem < Struct.new(
      :glossary_terms,
      :listing_id,
      :listing_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The offset of a matched term.
    #
    # @!attribute [rw] end_offset
    #   The 0-indexed number indicating the end position (exclusive) of a
    #   matched term.
    #   @return [Integer]
    #
    # @!attribute [rw] start_offset
    #   The 0-indexed number indicating the start position (inclusive) of a
    #   matched term.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MatchOffset AWS API Documentation
    #
    class MatchOffset < Struct.new(
      :end_offset,
      :start_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rationale indicating why this item was matched by search.
    #
    # @note MatchRationaleItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MatchRationaleItem corresponding to the set member.
    #
    # @!attribute [rw] text_matches
    #   A list of TextMatchItems.
    #   @return [Array<Types::TextMatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MatchRationaleItem AWS API Documentation
    #
    class MatchRationaleItem < Struct.new(
      :text_matches,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TextMatches < MatchRationaleItem; end
      class Unknown < MatchRationaleItem; end
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

    # The enforcement details of a metadata form.
    #
    # @!attribute [rw] required_metadata_forms
    #   The required metadata forms.
    #   @return [Array<Types::MetadataFormReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MetadataFormEnforcementDetail AWS API Documentation
    #
    class MetadataFormEnforcementDetail < Struct.new(
      :required_metadata_forms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference of a metadata form.
    #
    # @!attribute [rw] type_identifier
    #   The type ID of the metadata form reference.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The type revision of the metadata form reference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MetadataFormReference AWS API Documentation
    #
    class MetadataFormReference < Struct.new(
      :type_identifier,
      :type_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the metadata form.
    #
    # @!attribute [rw] form_name
    #   The form name of the metadata form.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name of the metadata form.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The type revision of the metadata form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MetadataFormSummary AWS API Documentation
    #
    class MetadataFormSummary < Struct.new(
      :form_name,
      :type_name,
      :type_revision)
      SENSITIVE = [:type_name]
      include Aws::Structure
    end

    # The metadata generation run.
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the metadata generation run was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the metadata
    #   generation run was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns the asset for which the metadata
    #   generation was ran.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The asset for which metadata was generated.
    #   @return [Types::MetadataGenerationRunTarget]
    #
    # @!attribute [rw] type
    #   The type of the metadata generation run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MetadataGenerationRunItem AWS API Documentation
    #
    class MetadataGenerationRunItem < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :owning_project_id,
      :status,
      :target,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The asset for which metadata was generated.
    #
    # @!attribute [rw] identifier
    #   The ID of the metadata generation run's target.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the asset for which metadata was generated.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the asset for which metadata was generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/MetadataGenerationRunTarget AWS API Documentation
    #
    class MetadataGenerationRunTarget < Struct.new(
      :identifier,
      :revision,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model of the API.
    #
    # @note Model is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Model is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Model corresponding to the set member.
    #
    # @!attribute [rw] smithy
    #   Indicates the smithy model of the API.
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

    # The name identifier.
    #
    # @!attribute [rw] name
    #   The name in the name identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace in the name identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/NameIdentifier AWS API Documentation
    #
    class NameIdentifier < Struct.new(
      :name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a value is not equal to the expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might not be equal to the expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/NotEqualToExpression AWS API Documentation
    #
    class NotEqualToExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a value is not in the expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value that might not be in the expression.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/NotInExpression AWS API Documentation
    #
    class NotInExpression < Struct.new(
      :column_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that a value might be not like the expression.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that might not be like the expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/NotLikeExpression AWS API Documentation
    #
    class NotLikeExpression < Struct.new(
      :column_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
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

    # The OAuth2Client application.
    #
    # @!attribute [rw] a_ws_managed_client_application_reference
    #   The Amazon Web Services managed client application reference in the
    #   OAuth2Client application.
    #   @return [String]
    #
    # @!attribute [rw] user_managed_client_application_client_id
    #   The user managed client application client ID in the OAuth2Client
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OAuth2ClientApplication AWS API Documentation
    #
    class OAuth2ClientApplication < Struct.new(
      :a_ws_managed_client_application_reference,
      :user_managed_client_application_client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth2 properties.
    #
    # @!attribute [rw] authorization_code_properties
    #   The authorization code properties of the OAuth2 properties.
    #   @return [Types::AuthorizationCodeProperties]
    #
    # @!attribute [rw] o_auth_2_client_application
    #   The OAuth2 client application of the OAuth2 properties.
    #   @return [Types::OAuth2ClientApplication]
    #
    # @!attribute [rw] o_auth_2_credentials
    #   The OAuth2 credentials of the OAuth2 properties.
    #   @return [Types::GlueOAuth2Credentials]
    #
    # @!attribute [rw] o_auth_2_grant_type
    #   The OAuth2 grant type of the OAuth2 properties.
    #   @return [String]
    #
    # @!attribute [rw] token_url
    #   The OAuth2 token URL of the OAuth2 properties.
    #   @return [String]
    #
    # @!attribute [rw] token_url_parameters_map
    #   The OAuth2 token URL parameter map of the OAuth2 properties.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OAuth2Properties AWS API Documentation
    #
    class OAuth2Properties < Struct.new(
      :authorization_code_properties,
      :o_auth_2_client_application,
      :o_auth_2_credentials,
      :o_auth_2_grant_type,
      :token_url,
      :token_url_parameters_map)
      SENSITIVE = [:o_auth_2_credentials]
      include Aws::Structure
    end

    # The open lineage run event summary.
    #
    # @!attribute [rw] event_type
    #   The event type of the open lineage run event summary.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The inputs of the open lineage run event summary.
    #   @return [Array<Types::NameIdentifier>]
    #
    # @!attribute [rw] job
    #   The job of the open lineage run event summary.
    #   @return [Types::NameIdentifier]
    #
    # @!attribute [rw] outputs
    #   The outputs of the open lineage run event summary.
    #   @return [Array<Types::NameIdentifier>]
    #
    # @!attribute [rw] run_id
    #   The runID of the open lineage run event summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OpenLineageRunEventSummary AWS API Documentation
    #
    class OpenLineageRunEventSummary < Struct.new(
      :event_type,
      :inputs,
      :job,
      :outputs,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The grant details of the override domain unit owners policy.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy is inherited by child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OverrideDomainUnitOwnersPolicyGrantDetail AWS API Documentation
    #
    class OverrideDomainUnitOwnersPolicyGrantDetail < Struct.new(
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the override project owners policy grant.
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether the policy is inherited by child domain units.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OverrideProjectOwnersPolicyGrantDetail AWS API Documentation
    #
    class OverrideProjectOwnersPolicyGrantDetail < Struct.new(
      :include_child_domain_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the domain unit owners group.
    #
    # @!attribute [rw] group_identifier
    #   The ID of the domain unit owners group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OwnerGroupProperties AWS API Documentation
    #
    class OwnerGroupProperties < Struct.new(
      :group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the domain unit owners group.
    #
    # @!attribute [rw] group_id
    #   The ID of the domain unit owners group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OwnerGroupPropertiesOutput AWS API Documentation
    #
    class OwnerGroupPropertiesOutput < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a domain unit's owner.
    #
    # @note OwnerProperties is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] group
    #   Specifies that the domain unit owner is a group.
    #   @return [Types::OwnerGroupProperties]
    #
    # @!attribute [rw] user
    #   Specifies that the domain unit owner is a user.
    #   @return [Types::OwnerUserProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OwnerProperties AWS API Documentation
    #
    class OwnerProperties < Struct.new(
      :group,
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Group < OwnerProperties; end
      class User < OwnerProperties; end
      class Unknown < OwnerProperties; end
    end

    # The ID of the domain unit owners group.
    #
    # @note OwnerPropertiesOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OwnerPropertiesOutput corresponding to the set member.
    #
    # @!attribute [rw] group
    #   Specifies that the domain unit owner is a group.
    #   @return [Types::OwnerGroupPropertiesOutput]
    #
    # @!attribute [rw] user
    #   Specifies that the domain unit owner is a user.
    #   @return [Types::OwnerUserPropertiesOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OwnerPropertiesOutput AWS API Documentation
    #
    class OwnerPropertiesOutput < Struct.new(
      :group,
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Group < OwnerPropertiesOutput; end
      class User < OwnerPropertiesOutput; end
      class Unknown < OwnerPropertiesOutput; end
    end

    # The properties of the owner user.
    #
    # @!attribute [rw] user_identifier
    #   The ID of the owner user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OwnerUserProperties AWS API Documentation
    #
    class OwnerUserProperties < Struct.new(
      :user_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the owner user.
    #
    # @!attribute [rw] user_id
    #   The ID of the owner user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/OwnerUserPropertiesOutput AWS API Documentation
    #
    class OwnerUserPropertiesOutput < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Physical connection requirements of a connection.
    #
    # @!attribute [rw] availability_zone
    #   The availability zone of the physical connection requirements of a
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id_list
    #   The group ID list of the physical connection requirements of a
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID of the physical connection requirements of a
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id_list
    #   The subnet ID list of the physical connection requirements of a
    #   connection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PhysicalConnectionRequirements AWS API Documentation
    #
    class PhysicalConnectionRequirements < Struct.new(
      :availability_zone,
      :security_group_id_list,
      :subnet_id,
      :subnet_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The physical endpoints of a connection.
    #
    # @!attribute [rw] aws_location
    #   The location of a connection.
    #   @return [Types::AwsLocation]
    #
    # @!attribute [rw] glue_connection
    #   The Amazon Web Services Glue connection.
    #   @return [Types::GlueConnection]
    #
    # @!attribute [rw] glue_connection_name
    #   The Amazon Web Services Glue connection name.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The host in the physical endpoints of a connection.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port in the physical endpoints of a connection.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol in the physical endpoints of a connection.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The stage in the physical endpoints of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PhysicalEndpoint AWS API Documentation
    #
    class PhysicalEndpoint < Struct.new(
      :aws_location,
      :glue_connection,
      :glue_connection_name,
      :host,
      :port,
      :protocol,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the policy grant.
    #
    # @note PolicyGrantDetail is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PolicyGrantDetail is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PolicyGrantDetail corresponding to the set member.
    #
    # @!attribute [rw] add_to_project_member_pool
    #   Specifies that the policy grant is to be added to the members of the
    #   project.
    #   @return [Types::AddToProjectMemberPoolPolicyGrantDetail]
    #
    # @!attribute [rw] create_asset_type
    #   Specifies that this is a create asset type policy.
    #   @return [Types::CreateAssetTypePolicyGrantDetail]
    #
    # @!attribute [rw] create_domain_unit
    #   Specifies that this is a create domain unit policy.
    #   @return [Types::CreateDomainUnitPolicyGrantDetail]
    #
    # @!attribute [rw] create_environment
    #   Specifies that this is a create environment policy.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] create_environment_from_blueprint
    #   The details of the policy of creating an environment.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] create_environment_profile
    #   Specifies that this is a create environment profile policy.
    #   @return [Types::CreateEnvironmentProfilePolicyGrantDetail]
    #
    # @!attribute [rw] create_form_type
    #   Specifies that this is a create form type policy.
    #   @return [Types::CreateFormTypePolicyGrantDetail]
    #
    # @!attribute [rw] create_glossary
    #   Specifies that this is a create glossary policy.
    #   @return [Types::CreateGlossaryPolicyGrantDetail]
    #
    # @!attribute [rw] create_project
    #   Specifies that this is a create project policy.
    #   @return [Types::CreateProjectPolicyGrantDetail]
    #
    # @!attribute [rw] create_project_from_project_profile
    #   Specifies whether to create a project from project profile.
    #   @return [Types::CreateProjectFromProjectProfilePolicyGrantDetail]
    #
    # @!attribute [rw] delegate_create_environment_profile
    #   Specifies that this is the delegation of the create environment
    #   profile policy.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] override_domain_unit_owners
    #   Specifies whether to override domain unit owners.
    #   @return [Types::OverrideDomainUnitOwnersPolicyGrantDetail]
    #
    # @!attribute [rw] override_project_owners
    #   Specifies whether to override project owners.
    #   @return [Types::OverrideProjectOwnersPolicyGrantDetail]
    #
    # @!attribute [rw] use_asset_type
    #   Specifies the domain unit(s) whose projects can use this asset type
    #   while creating asset or asset revisions.
    #   @return [Types::UseAssetTypePolicyGrantDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PolicyGrantDetail AWS API Documentation
    #
    class PolicyGrantDetail < Struct.new(
      :add_to_project_member_pool,
      :create_asset_type,
      :create_domain_unit,
      :create_environment,
      :create_environment_from_blueprint,
      :create_environment_profile,
      :create_form_type,
      :create_glossary,
      :create_project,
      :create_project_from_project_profile,
      :delegate_create_environment_profile,
      :override_domain_unit_owners,
      :override_project_owners,
      :use_asset_type,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AddToProjectMemberPool < PolicyGrantDetail; end
      class CreateAssetType < PolicyGrantDetail; end
      class CreateDomainUnit < PolicyGrantDetail; end
      class CreateEnvironment < PolicyGrantDetail; end
      class CreateEnvironmentFromBlueprint < PolicyGrantDetail; end
      class CreateEnvironmentProfile < PolicyGrantDetail; end
      class CreateFormType < PolicyGrantDetail; end
      class CreateGlossary < PolicyGrantDetail; end
      class CreateProject < PolicyGrantDetail; end
      class CreateProjectFromProjectProfile < PolicyGrantDetail; end
      class DelegateCreateEnvironmentProfile < PolicyGrantDetail; end
      class OverrideDomainUnitOwners < PolicyGrantDetail; end
      class OverrideProjectOwners < PolicyGrantDetail; end
      class UseAssetType < PolicyGrantDetail; end
      class Unknown < PolicyGrantDetail; end
    end

    # A member of the policy grant list.
    #
    # @!attribute [rw] created_at
    #   Specifies the timestamp at which policy grant member was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Specifies the user who created the policy grant member.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The details of the policy grant member.
    #   @return [Types::PolicyGrantDetail]
    #
    # @!attribute [rw] principal
    #   The principal of the policy grant member.
    #   @return [Types::PolicyGrantPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PolicyGrantMember AWS API Documentation
    #
    class PolicyGrantMember < Struct.new(
      :created_at,
      :created_by,
      :detail,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy grant principal.
    #
    # @note PolicyGrantPrincipal is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PolicyGrantPrincipal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PolicyGrantPrincipal corresponding to the set member.
    #
    # @!attribute [rw] domain_unit
    #   The domain unit of the policy grant principal.
    #   @return [Types::DomainUnitPolicyGrantPrincipal]
    #
    # @!attribute [rw] group
    #   The group of the policy grant principal.
    #   @return [Types::GroupPolicyGrantPrincipal]
    #
    # @!attribute [rw] project
    #   The project of the policy grant principal.
    #   @return [Types::ProjectPolicyGrantPrincipal]
    #
    # @!attribute [rw] user
    #   The user of the policy grant principal.
    #   @return [Types::UserPolicyGrantPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PolicyGrantPrincipal AWS API Documentation
    #
    class PolicyGrantPrincipal < Struct.new(
      :domain_unit,
      :group,
      :project,
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DomainUnit < PolicyGrantPrincipal; end
      class Group < PolicyGrantPrincipal; end
      class Project < PolicyGrantPrincipal; end
      class User < PolicyGrantPrincipal; end
      class Unknown < PolicyGrantPrincipal; end
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
    #   The ID of the domain where you want to post a data lineage event.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The data lineage event that you want to post. Only open-lineage run
    #   event are supported as events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PostLineageEventInput AWS API Documentation
    #
    class PostLineageEventInput < Struct.new(
      :client_token,
      :domain_identifier,
      :event)
      SENSITIVE = [:event]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the domain.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the lineage event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PostLineageEventOutput AWS API Documentation
    #
    class PostLineageEventOutput < Struct.new(
      :domain_id,
      :id)
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
    #   The ID of the Amazon DataZone domain in which you want to post time
    #   series data points.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the asset for which you want to post time series data
    #   points.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the asset for which you want to post data points.
    #   @return [String]
    #
    # @!attribute [rw] forms
    #   The forms that contain the data points that you want to post.
    #   @return [Array<Types::TimeSeriesDataPointFormInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PostTimeSeriesDataPointsInput AWS API Documentation
    #
    class PostTimeSeriesDataPointsInput < Struct.new(
      :client_token,
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :forms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which you want to post time
    #   series data points.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the asset for which you want to post time series data
    #   points.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the asset for which you want to post data points.
    #   @return [String]
    #
    # @!attribute [rw] forms
    #   The forms that contain the data points that you have posted.
    #   @return [Array<Types::TimeSeriesDataPointFormOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PostTimeSeriesDataPointsOutput AWS API Documentation
    #
    class PostTimeSeriesDataPointsOutput < Struct.new(
      :domain_id,
      :entity_id,
      :entity_type,
      :forms)
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

    # Specifies the error message that is returned if the operation cannot
    # be successfully completed.
    #
    # @!attribute [rw] code
    #   The code of the project deletion error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message of the project deletion error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectDeletionError AWS API Documentation
    #
    class ProjectDeletionError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The project grant filter.
    #
    # @note ProjectGrantFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProjectGrantFilter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProjectGrantFilter corresponding to the set member.
    #
    # @!attribute [rw] domain_unit_filter
    #   The domain unit filter of the project grant filter.
    #   @return [Types::DomainUnitFilterForProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectGrantFilter AWS API Documentation
    #
    class ProjectGrantFilter < Struct.new(
      :domain_unit_filter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DomainUnitFilter < ProjectGrantFilter; end
      class Unknown < ProjectGrantFilter; end
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

    # The project policy grant principal.
    #
    # @!attribute [rw] project_designation
    #   The project designation of the project policy grant principal.
    #   @return [String]
    #
    # @!attribute [rw] project_grant_filter
    #   The project grant filter of the project policy grant principal.
    #   @return [Types::ProjectGrantFilter]
    #
    # @!attribute [rw] project_identifier
    #   The project ID of the project policy grant principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectPolicyGrantPrincipal AWS API Documentation
    #
    class ProjectPolicyGrantPrincipal < Struct.new(
      :project_designation,
      :project_grant_filter,
      :project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a project profile.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the project profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the project profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The domain unit ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp at which a project profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of a project profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a project profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectProfileSummary AWS API Documentation
    #
    class ProjectProfileSummary < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :id,
      :last_updated_at,
      :name,
      :status)
      SENSITIVE = [:description, :name]
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
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Array<Types::ProjectDeletionError>]
    #
    # @!attribute [rw] id
    #   The identifier of a project.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a project.
    #   @return [String]
    #
    # @!attribute [rw] project_status
    #   The status of the project.
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
      :domain_unit_id,
      :failure_reasons,
      :id,
      :name,
      :project_status,
      :updated_at)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Specifies projects in which the rule is created.
    #
    # @!attribute [rw] selection_mode
    #   The selection mode of the rule.
    #   @return [String]
    #
    # @!attribute [rw] specific_projects
    #   The specific projects in which the rule is created.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProjectsForRule AWS API Documentation
    #
    class ProjectsForRule < Struct.new(
      :selection_mode,
      :specific_projects)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provisioning configuration of the blueprint.
    #
    # @note ProvisioningConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProvisioningConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProvisioningConfiguration corresponding to the set member.
    #
    # @!attribute [rw] lake_formation_configuration
    #   The Lake Formation configuration of the Data Lake blueprint.
    #   @return [Types::LakeFormationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ProvisioningConfiguration AWS API Documentation
    #
    class ProvisioningConfiguration < Struct.new(
      :lake_formation_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LakeFormationConfiguration < ProvisioningConfiguration; end
      class Unknown < ProvisioningConfiguration; end
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
    # @!attribute [rw] environment_role_permission_boundary
    #   The environment role permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_configurations
    #   The provisioning configuration of a blueprint.
    #   @return [Array<Types::ProvisioningConfiguration>]
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
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :provisioning_configurations,
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
    # @!attribute [rw] environment_role_permission_boundary
    #   The environment role permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] manage_access_role_arn
    #   The ARN of the manage access role.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_configurations
    #   The provisioning configuration of a blueprint.
    #   @return [Array<Types::ProvisioningConfiguration>]
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
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :provisioning_configurations,
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

    # Amazon Redshift credentials of a connection.
    #
    # @note RedshiftCredentials is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RedshiftCredentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RedshiftCredentials corresponding to the set member.
    #
    # @!attribute [rw] secret_arn
    #   The secret ARN of the Amazon Redshift credentials of a connection.
    #   @return [String]
    #
    # @!attribute [rw] username_password
    #   The username and password of the Amazon Redshift credentials of a
    #   connection.
    #   @return [Types::UsernamePassword]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftCredentials AWS API Documentation
    #
    class RedshiftCredentials < Struct.new(
      :secret_arn,
      :username_password,
      :unknown)
      SENSITIVE = [:username_password]
      include Aws::Structure
      include Aws::Structure::Union

      class SecretArn < RedshiftCredentials; end
      class UsernamePassword < RedshiftCredentials; end
      class Unknown < RedshiftCredentials; end
    end

    # The Amaon Redshift lineage sync configuration.
    #
    # @!attribute [rw] enabled
    #   Specifies whether the Amaon Redshift lineage sync configuration is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the Amaon Redshift lineage sync configuration.
    #   @return [Types::LineageSyncSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftLineageSyncConfigurationInput AWS API Documentation
    #
    class RedshiftLineageSyncConfigurationInput < Struct.new(
      :enabled,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amaon Redshift lineage sync configuration.
    #
    # @!attribute [rw] enabled
    #   Specifies whether the Amaon Redshift lineage sync configuration is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] lineage_job_id
    #   The lineage job ID of the Amaon Redshift lineage sync configuration.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of teh Amaon Redshift lineage sync configuration.
    #   @return [Types::LineageSyncSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftLineageSyncConfigurationOutput AWS API Documentation
    #
    class RedshiftLineageSyncConfigurationOutput < Struct.new(
      :enabled,
      :lineage_job_id,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Redshift properties.
    #
    # @!attribute [rw] credentials
    #   The Amaon Redshift credentials.
    #   @return [Types::RedshiftCredentials]
    #
    # @!attribute [rw] database_name
    #   The Amazon Redshift database name.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The Amazon Redshift host.
    #   @return [String]
    #
    # @!attribute [rw] lineage_sync
    #   The lineage sync of the Amazon Redshift.
    #   @return [Types::RedshiftLineageSyncConfigurationInput]
    #
    # @!attribute [rw] port
    #   The Amaon Redshift port.
    #   @return [Integer]
    #
    # @!attribute [rw] storage
    #   The Amazon Redshift storage.
    #   @return [Types::RedshiftStorageProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftPropertiesInput AWS API Documentation
    #
    class RedshiftPropertiesInput < Struct.new(
      :credentials,
      :database_name,
      :host,
      :lineage_sync,
      :port,
      :storage)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # The Amazon Redshift properties.
    #
    # @!attribute [rw] credentials
    #   The Amazon Redshift credentials.
    #   @return [Types::RedshiftCredentials]
    #
    # @!attribute [rw] database_name
    #   The Amazon Redshift database name.
    #   @return [String]
    #
    # @!attribute [rw] is_provisioned_secret
    #   Specifies whether Amaon Redshift properties has a provisioned
    #   secret.
    #   @return [Boolean]
    #
    # @!attribute [rw] jdbc_iam_url
    #   The jdbcIam URL of the Amazon Redshift properties.
    #   @return [String]
    #
    # @!attribute [rw] jdbc_url
    #   The jdbcURL of the Amazon Redshift properties.
    #   @return [String]
    #
    # @!attribute [rw] lineage_sync
    #   The lineage syn of the Amazon Redshift properties.
    #   @return [Types::RedshiftLineageSyncConfigurationOutput]
    #
    # @!attribute [rw] redshift_temp_dir
    #   The redshiftTempDir of the Amazon Redshift properties.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status in the Amazon Redshift properties.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The storage in the Amazon Redshift properties.
    #   @return [Types::RedshiftStorageProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftPropertiesOutput AWS API Documentation
    #
    class RedshiftPropertiesOutput < Struct.new(
      :credentials,
      :database_name,
      :is_provisioned_secret,
      :jdbc_iam_url,
      :jdbc_url,
      :lineage_sync,
      :redshift_temp_dir,
      :status,
      :storage)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # Amazon Redshift properties patch.
    #
    # @!attribute [rw] credentials
    #   The credentials in the Amazon Redshift properties patch.
    #   @return [Types::RedshiftCredentials]
    #
    # @!attribute [rw] database_name
    #   The name in the Amazon Redshift properties patch.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The host in the Amazon Redshift properties patch.
    #   @return [String]
    #
    # @!attribute [rw] lineage_sync
    #   The lineage sync in the Amazon Redshift properties patch.
    #   @return [Types::RedshiftLineageSyncConfigurationInput]
    #
    # @!attribute [rw] port
    #   The port in the Amazon Redshift properties patch.
    #   @return [Integer]
    #
    # @!attribute [rw] storage
    #   The storage in the Amazon Redshift properties patch.
    #   @return [Types::RedshiftStorageProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftPropertiesPatch AWS API Documentation
    #
    class RedshiftPropertiesPatch < Struct.new(
      :credentials,
      :database_name,
      :host,
      :lineage_sync,
      :port,
      :storage)
      SENSITIVE = [:credentials]
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

    # The details for the self granting status for an Amazon Redshift data
    # source.
    #
    # @!attribute [rw] self_grant_status_details
    #   The details for the self granting status for an Amazon Redshift data
    #   source.
    #   @return [Array<Types::SelfGrantStatusDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftSelfGrantStatusOutput AWS API Documentation
    #
    class RedshiftSelfGrantStatusOutput < Struct.new(
      :self_grant_status_details)
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

    # The Amazon Redshift storage properties.
    #
    # @note RedshiftStorageProperties is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RedshiftStorageProperties is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RedshiftStorageProperties corresponding to the set member.
    #
    # @!attribute [rw] cluster_name
    #   The cluster name in the Amazon Redshift storage properties.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The workgroup name in the Amazon Redshift storage properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RedshiftStorageProperties AWS API Documentation
    #
    class RedshiftStorageProperties < Struct.new(
      :cluster_name,
      :workgroup_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ClusterName < RedshiftStorageProperties; end
      class WorkgroupName < RedshiftStorageProperties; end
      class Unknown < RedshiftStorageProperties; end
    end

    # The Amazon Web Services Region.
    #
    # @note Region is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Region is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Region corresponding to the set member.
    #
    # @!attribute [rw] region_name
    #   The Amazon Web Services Region name.
    #   @return [String]
    #
    # @!attribute [rw] region_name_path
    #   The region name path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Region AWS API Documentation
    #
    class Region < Struct.new(
      :region_name,
      :region_name_path,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RegionName < Region; end
      class RegionNamePath < Region; end
      class Unknown < Region; end
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
    #   Specifies the prediction (aka, the automatically generated piece of
    #   metadata) and the target (for example, a column name) that can be
    #   rejected.
    #   @return [Array<Types::RejectChoice>]
    #
    # @!attribute [rw] reject_rule
    #   Specifies the rule (or the conditions) under which a prediction can
    #   be rejected.
    #   @return [Types::RejectRule]
    #
    # @!attribute [rw] revision
    #   The revision that is to be made to the asset.
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
    #   The ID of the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_revision
    #   The revision that is to be made to the asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain.
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
    # @!attribute [rw] existing_subscription_id
    #   The ID of the existing subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request that was rejected.
    #   @return [String]
    #
    # @!attribute [rw] metadata_forms
    #   Metadata forms included in the subscription request.
    #   @return [Array<Types::FormOutput>]
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
      :existing_subscription_id,
      :id,
      :metadata_forms,
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to remove an owner from an
    #   entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity from which you want to remove an owner.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the entity from which you want to remove an owner.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner that you want to remove from an entity.
    #   @return [Types::OwnerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RemoveEntityOwnerInput AWS API Documentation
    #
    class RemoveEntityOwnerInput < Struct.new(
      :client_token,
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RemoveEntityOwnerOutput AWS API Documentation
    #
    class RemoveEntityOwnerOutput < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to remove a policy grant.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity from which you want to remove a policy grant.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the entity from which you want to remove a policy grant.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of the policy that you want to remove.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal from which you want to remove a policy grant.
    #   @return [Types::PolicyGrantPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RemovePolicyGrantInput AWS API Documentation
    #
    class RemovePolicyGrantInput < Struct.new(
      :client_token,
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :policy_type,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RemovePolicyGrantOutput AWS API Documentation
    #
    class RemovePolicyGrantOutput < Aws::EmptyStructure; end

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

    # The row filter.
    #
    # @note RowFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RowFilter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RowFilter corresponding to the set member.
    #
    # @!attribute [rw] and
    #   The 'and' clause of the row filter.
    #   @return [Array<Types::RowFilter>]
    #
    # @!attribute [rw] expression
    #   The expression of the row filter.
    #   @return [Types::RowFilterExpression]
    #
    # @!attribute [rw] or
    #   The 'or' clause of the row filter.
    #   @return [Array<Types::RowFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RowFilter AWS API Documentation
    #
    class RowFilter < Struct.new(
      :and,
      :expression,
      :or,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class And < RowFilter; end
      class Expression < RowFilter; end
      class Or < RowFilter; end
      class Unknown < RowFilter; end
    end

    # The row filter configuration details.
    #
    # @!attribute [rw] row_filter
    #   The row filter.
    #   @return [Types::RowFilter]
    #
    # @!attribute [rw] sensitive
    #   Specifies whether the row filter is sensitive.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RowFilterConfiguration AWS API Documentation
    #
    class RowFilterConfiguration < Struct.new(
      :row_filter,
      :sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # The row filter expression.
    #
    # @note RowFilterExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RowFilterExpression is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RowFilterExpression corresponding to the set member.
    #
    # @!attribute [rw] equal_to
    #   The 'equal to' clause of the row filter expression.
    #   @return [Types::EqualToExpression]
    #
    # @!attribute [rw] greater_than
    #   The 'greater than' clause of the row filter expression.
    #   @return [Types::GreaterThanExpression]
    #
    # @!attribute [rw] greater_than_or_equal_to
    #   The 'greater than or equal to' clause of the filter expression.
    #   @return [Types::GreaterThanOrEqualToExpression]
    #
    # @!attribute [rw] in
    #   The 'in' clause of the row filter expression.
    #   @return [Types::InExpression]
    #
    # @!attribute [rw] is_not_null
    #   The 'is not null' clause of the row filter expression.
    #   @return [Types::IsNotNullExpression]
    #
    # @!attribute [rw] is_null
    #   The 'is null' clause of the row filter expression.
    #   @return [Types::IsNullExpression]
    #
    # @!attribute [rw] less_than
    #   The 'less than' clause of the row filter expression.
    #   @return [Types::LessThanExpression]
    #
    # @!attribute [rw] less_than_or_equal_to
    #   The 'less than or equal to' clause of the row filter expression.
    #   @return [Types::LessThanOrEqualToExpression]
    #
    # @!attribute [rw] like
    #   The 'like' clause of the row filter expression.
    #   @return [Types::LikeExpression]
    #
    # @!attribute [rw] not_equal_to
    #   The 'no equal to' clause of the row filter expression.
    #   @return [Types::NotEqualToExpression]
    #
    # @!attribute [rw] not_in
    #   The 'not in' clause of the row filter expression.
    #   @return [Types::NotInExpression]
    #
    # @!attribute [rw] not_like
    #   The 'not like' clause of the row filter expression.
    #   @return [Types::NotLikeExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RowFilterExpression AWS API Documentation
    #
    class RowFilterExpression < Struct.new(
      :equal_to,
      :greater_than,
      :greater_than_or_equal_to,
      :in,
      :is_not_null,
      :is_null,
      :less_than,
      :less_than_or_equal_to,
      :like,
      :not_equal_to,
      :not_in,
      :not_like,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EqualTo < RowFilterExpression; end
      class GreaterThan < RowFilterExpression; end
      class GreaterThanOrEqualTo < RowFilterExpression; end
      class In < RowFilterExpression; end
      class IsNotNull < RowFilterExpression; end
      class IsNull < RowFilterExpression; end
      class LessThan < RowFilterExpression; end
      class LessThanOrEqualTo < RowFilterExpression; end
      class Like < RowFilterExpression; end
      class NotEqualTo < RowFilterExpression; end
      class NotIn < RowFilterExpression; end
      class NotLike < RowFilterExpression; end
      class Unknown < RowFilterExpression; end
    end

    # The details of a rule.
    #
    # @note RuleDetail is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleDetail is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleDetail corresponding to the set member.
    #
    # @!attribute [rw] metadata_form_enforcement_detail
    #   The enforcement detail of the metadata form.
    #   @return [Types::MetadataFormEnforcementDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RuleDetail AWS API Documentation
    #
    class RuleDetail < Struct.new(
      :metadata_form_enforcement_detail,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MetadataFormEnforcementDetail < RuleDetail; end
      class Unknown < RuleDetail; end
    end

    # The scope of a rule.
    #
    # @!attribute [rw] asset_type
    #   The asset type included in the rule scope.
    #   @return [Types::AssetTypesForRule]
    #
    # @!attribute [rw] data_product
    #   The data product included in the rule scope.
    #   @return [Boolean]
    #
    # @!attribute [rw] project
    #   The project included in the rule scope.
    #   @return [Types::ProjectsForRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RuleScope AWS API Documentation
    #
    class RuleScope < Struct.new(
      :asset_type,
      :data_product,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the rule.
    #
    # @!attribute [rw] action
    #   The action of the rule.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The timestamp at which the rule was last updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the rule.
    #   @return [Types::RuleScope]
    #
    # @!attribute [rw] target
    #   The target of the rule.
    #   @return [Types::RuleTarget]
    #
    # @!attribute [rw] target_type
    #   The target type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :action,
      :identifier,
      :last_updated_by,
      :name,
      :revision,
      :rule_type,
      :scope,
      :target,
      :target_type,
      :updated_at)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The target of the rule.
    #
    # @note RuleTarget is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleTarget is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleTarget corresponding to the set member.
    #
    # @!attribute [rw] domain_unit_target
    #   The ID of the domain unit.
    #   @return [Types::DomainUnitTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RuleTarget AWS API Documentation
    #
    class RuleTarget < Struct.new(
      :domain_unit_target,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DomainUnitTarget < RuleTarget; end
      class Unknown < RuleTarget; end
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

    # The Amazon S3 properties of a connection.
    #
    # @!attribute [rw] s3_access_grant_location_id
    #   The Amazon S3 Access Grant location ID that's part of the Amazon S3
    #   properties of a connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI that's part of the Amazon S3 properties of a
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/S3PropertiesInput AWS API Documentation
    #
    class S3PropertiesInput < Struct.new(
      :s3_access_grant_location_id,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 properties of a connection.
    #
    # @!attribute [rw] error_message
    #   The error message that gets displayed.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_grant_location_id
    #   The Amazon S3 Access Grant location ID that's part of the Amazon S3
    #   properties of a connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI that's part of the Amazon S3 properties of a
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon S3 connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/S3PropertiesOutput AWS API Documentation
    #
    class S3PropertiesOutput < Struct.new(
      :error_message,
      :s3_access_grant_location_id,
      :s3_uri,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 properties patch of a connection.
    #
    # @!attribute [rw] s3_access_grant_location_id
    #   The Amazon S3 Access Grant location ID that's part of the Amazon S3
    #   properties patch of a connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI that's part of the Amazon S3 properties patch of
    #   a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/S3PropertiesPatch AWS API Documentation
    #
    class S3PropertiesPatch < Struct.new(
      :s3_access_grant_location_id,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon SageMaker run configuration.
    #
    # @!attribute [rw] tracking_assets
    #   The tracking assets of the Amazon SageMaker run.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SageMakerRunConfigurationInput AWS API Documentation
    #
    class SageMakerRunConfigurationInput < Struct.new(
      :tracking_assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon SageMaker run configuration.
    #
    # @!attribute [rw] account_id
    #   The Amazon SageMaker account ID.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon SageMaker Region.
    #   @return [String]
    #
    # @!attribute [rw] tracking_assets
    #   The tracking assets of the Amazon SageMaker.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SageMakerRunConfigurationOutput AWS API Documentation
    #
    class SageMakerRunConfigurationOutput < Struct.new(
      :account_id,
      :region,
      :tracking_assets)
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
    #   The details of the search.
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
    #   The data product.
    #   @return [Types::DataProductResultItem]
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
    # @!attribute [rw] aggregations
    #   Enables you to specify one or more attributes to compute and return
    #   counts grouped by field values.
    #   @return [Array<Types::AggregationListItem>]
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
    #   The details of the search.
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
      :aggregations,
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

    # @!attribute [rw] aggregates
    #   Contains computed counts grouped by field values based on the
    #   requested aggregation attributes for the matching listings.
    #   @return [Array<Types::AggregationOutput>]
    #
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
      :aggregates,
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
    # @!attribute [rw] data_product_listing
    #   The data product listing.
    #   @return [Types::DataProductListingItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchResultItem AWS API Documentation
    #
    class SearchResultItem < Struct.new(
      :asset_listing,
      :data_product_listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetListing < SearchResultItem; end
      class DataProductListing < SearchResultItem; end
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
    #   Specifies whether the search is managed.
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
    #   The details of the search.
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
    # @!attribute [rw] lineage_node_type_item
    #   The details of a data lineage node type.
    #   @return [Types::LineageNodeTypeItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchTypesResultItem AWS API Documentation
    #
    class SearchTypesResultItem < Struct.new(
      :asset_type_item,
      :form_type_item,
      :lineage_node_type_item,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetTypeItem < SearchTypesResultItem; end
      class FormTypeItem < SearchTypesResultItem; end
      class LineageNodeTypeItem < SearchTypesResultItem; end
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

    # The details for the self granting status.
    #
    # @!attribute [rw] database_name
    #   The name of the database used for the data source.
    #   @return [String]
    #
    # @!attribute [rw] failure_cause
    #   The reason for why the operation failed.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema used in the data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The self granting status of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SelfGrantStatusDetail AWS API Documentation
    #
    class SelfGrantStatusDetail < Struct.new(
      :database_name,
      :failure_cause,
      :schema_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the self granting status for a data source.
    #
    # @note SelfGrantStatusOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SelfGrantStatusOutput corresponding to the set member.
    #
    # @!attribute [rw] glue_self_grant_status
    #   The details for the self granting status for a Glue data source.
    #   @return [Types::GlueSelfGrantStatusOutput]
    #
    # @!attribute [rw] redshift_self_grant_status
    #   The details for the self granting status for an Amazon Redshift data
    #   source.
    #   @return [Types::RedshiftSelfGrantStatusOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SelfGrantStatusOutput AWS API Documentation
    #
    class SelfGrantStatusOutput < Struct.new(
      :glue_self_grant_status,
      :redshift_self_grant_status,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueSelfGrantStatus < SelfGrantStatusOutput; end
      class RedshiftSelfGrantStatus < SelfGrantStatusOutput; end
      class Unknown < SelfGrantStatusOutput; end
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
    # @!attribute [rw] idc_instance_arn
    #   The ARN of the IDC instance.
    #   @return [String]
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
      :idc_instance_arn,
      :type,
      :user_assignment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Spark EMR properties.
    #
    # @!attribute [rw] compute_arn
    #   The compute ARN of Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The instance profile ARN of Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] java_virtual_env
    #   The java virtual env of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   The log URI of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] python_virtual_env
    #   The Python virtual env of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role
    #   The runtime role of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] trusted_certificates_s3_uri
    #   The certificates S3 URI of the Spark EMR.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SparkEmrPropertiesInput AWS API Documentation
    #
    class SparkEmrPropertiesInput < Struct.new(
      :compute_arn,
      :instance_profile_arn,
      :java_virtual_env,
      :log_uri,
      :python_virtual_env,
      :runtime_role,
      :trusted_certificates_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Spark EMR properties.
    #
    # @!attribute [rw] compute_arn
    #   The compute ARN of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The credentials of the Spark EMR.
    #   @return [Types::UsernamePassword]
    #
    # @!attribute [rw] credentials_expiration
    #   The credential expiration of the Spark EMR.
    #   @return [Time]
    #
    # @!attribute [rw] governance_type
    #   The governance type of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The instance profile ARN of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] java_virtual_env
    #   The Java virtual env of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] livy_endpoint
    #   The livy endpoint of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   The log URI of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] python_virtual_env
    #   The Python virtual env of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role
    #   The runtime role of the Spark EMR.
    #   @return [String]
    #
    # @!attribute [rw] trusted_certificates_s3_uri
    #   The trusted certificate S3 URL of the Spark EMR.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SparkEmrPropertiesOutput AWS API Documentation
    #
    class SparkEmrPropertiesOutput < Struct.new(
      :compute_arn,
      :credentials,
      :credentials_expiration,
      :governance_type,
      :instance_profile_arn,
      :java_virtual_env,
      :livy_endpoint,
      :log_uri,
      :python_virtual_env,
      :runtime_role,
      :trusted_certificates_s3_uri)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # The Spark EMR properties patch.
    #
    # @!attribute [rw] compute_arn
    #   The compute ARN in the Spark EMR properties patch.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The instance profile ARN in the Spark EMR properties patch.
    #   @return [String]
    #
    # @!attribute [rw] java_virtual_env
    #   The Java virtual evn in the Spark EMR properties patch.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   The log URI in the Spark EMR properties patch.
    #   @return [String]
    #
    # @!attribute [rw] python_virtual_env
    #   The Python virtual env in the Spark EMR properties patch.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role
    #   The runtime role in the Spark EMR properties patch.
    #   @return [String]
    #
    # @!attribute [rw] trusted_certificates_s3_uri
    #   The trusted certificates S3 URI in the Spark EMR properties patch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SparkEmrPropertiesPatch AWS API Documentation
    #
    class SparkEmrPropertiesPatch < Struct.new(
      :compute_arn,
      :instance_profile_arn,
      :java_virtual_env,
      :log_uri,
      :python_virtual_env,
      :runtime_role,
      :trusted_certificates_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Spark Amazon Web Services Glue args.
    #
    # @!attribute [rw] connection
    #   The connection in the Spark Amazon Web Services Glue args.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SparkGlueArgs AWS API Documentation
    #
    class SparkGlueArgs < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Spark Amazon Web Services Glue properties.
    #
    # @!attribute [rw] additional_args
    #   The additional args in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [Types::SparkGlueArgs]
    #
    # @!attribute [rw] glue_connection_name
    #   The Amazon Web Services Glue connection name in the Spark Amazon Web
    #   Services Glue properties.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   The Amazon Web Services Glue version in the Spark Amazon Web
    #   Services Glue properties.
    #   @return [String]
    #
    # @!attribute [rw] idle_timeout
    #   The idle timeout in the Spark Amazon Web Services Glue properties.
    #   @return [Integer]
    #
    # @!attribute [rw] java_virtual_env
    #   The Java virtual env in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [Integer]
    #
    # @!attribute [rw] python_virtual_env
    #   The Python virtual env in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] worker_type
    #   The worker type in the Spark Amazon Web Services Glue properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SparkGluePropertiesInput AWS API Documentation
    #
    class SparkGluePropertiesInput < Struct.new(
      :additional_args,
      :glue_connection_name,
      :glue_version,
      :idle_timeout,
      :java_virtual_env,
      :number_of_workers,
      :python_virtual_env,
      :worker_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Spark Amazon Web Services Glue properties.
    #
    # @!attribute [rw] additional_args
    #   The additional args in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [Types::SparkGlueArgs]
    #
    # @!attribute [rw] glue_connection_name
    #   The Amazon Web Services Glue connection name in the Spark Amazon Web
    #   Services Glue properties.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   The Amazon Web Services Glue version in the Spark Amazon Web
    #   Services Glue properties.
    #   @return [String]
    #
    # @!attribute [rw] idle_timeout
    #   The idle timeout in the Spark Amazon Web Services Glue properties.
    #   @return [Integer]
    #
    # @!attribute [rw] java_virtual_env
    #   The Java virtual env in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [Integer]
    #
    # @!attribute [rw] python_virtual_env
    #   The Python virtual env in the Spark Amazon Web Services Glue
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] worker_type
    #   The worker type in the Spark Amazon Web Services Glue properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SparkGluePropertiesOutput AWS API Documentation
    #
    class SparkGluePropertiesOutput < Struct.new(
      :additional_args,
      :glue_connection_name,
      :glue_version,
      :idle_timeout,
      :java_virtual_env,
      :number_of_workers,
      :python_virtual_env,
      :worker_type)
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the Amazon DataZone domain where you want to start a
    #   metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_identifier
    #   The ID of the project that owns the asset for which you want to
    #   start a metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The asset for which you want to start a metadata generation run.
    #   @return [Types::MetadataGenerationRunTarget]
    #
    # @!attribute [rw] type
    #   The type of the metadata generation run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartMetadataGenerationRunInput AWS API Documentation
    #
    class StartMetadataGenerationRunInput < Struct.new(
      :client_token,
      :domain_identifier,
      :owning_project_identifier,
      :target,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp at which the metadata generation run was started.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The ID of the user who started the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the Amazon DataZone domain in which the metadata
    #   generation run was started.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] owning_project_id
    #   The ID of the project that owns the asset for which the metadata
    #   generation run was started.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the metadata generation run.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the metadata generation run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartMetadataGenerationRunOutput AWS API Documentation
    #
    class StartMetadataGenerationRunOutput < Struct.new(
      :created_at,
      :created_by,
      :domain_id,
      :id,
      :owning_project_id,
      :status,
      :type)
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
    # @!attribute [rw] asset_scope
    #   The asset scope of the subscribed asset.
    #   @return [Types::AssetScope]
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
      :asset_scope,
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
    # @!attribute [rw] asset_scope
    #   The asset scope of the subscribed asset listing.
    #   @return [Types::AssetScope]
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
      :asset_scope,
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
    # @!attribute [rw] product_listing
    #   The data product listing.
    #   @return [Types::SubscribedProductListing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedListingItem AWS API Documentation
    #
    class SubscribedListingItem < Struct.new(
      :asset_listing,
      :product_listing,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AssetListing < SubscribedListingItem; end
      class ProductListing < SubscribedListingItem; end
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

    # The data product listing.
    #
    # @!attribute [rw] asset_listings
    #   The data assets of the data product listing.
    #   @return [Array<Types::AssetInDataProductListingItem>]
    #
    # @!attribute [rw] description
    #   The description of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] entity_revision
    #   The revision of the data product listing.
    #   @return [String]
    #
    # @!attribute [rw] glossary_terms
    #   The glossary terms of the data product listing.
    #   @return [Array<Types::DetailedGlossaryTerm>]
    #
    # @!attribute [rw] name
    #   The name of the data product listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SubscribedProductListing AWS API Documentation
    #
    class SubscribedProductListing < Struct.new(
      :asset_listings,
      :description,
      :entity_id,
      :entity_revision,
      :glossary_terms,
      :name)
      SENSITIVE = []
      include Aws::Structure
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
    #   The ID of the subscription.
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
    # @!attribute [rw] existing_subscription_id
    #   The ID of the existing subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request.
    #   @return [String]
    #
    # @!attribute [rw] metadata_forms_summary
    #   The summary of the metadata forms.
    #   @return [Array<Types::MetadataFormSummary>]
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
      :existing_subscription_id,
      :id,
      :metadata_forms_summary,
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

    # A structure indicating matched terms for an attribute.
    #
    # @!attribute [rw] attribute
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] match_offsets
    #   List of offsets indicating matching terms in the TextMatchItem text.
    #   @return [Array<Types::MatchOffset>]
    #
    # @!attribute [rw] text
    #   Snippet of attribute text containing highlighted content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TextMatchItem AWS API Documentation
    #
    class TextMatchItem < Struct.new(
      :attribute,
      :match_offsets,
      :text)
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

    # The time series data points form.
    #
    # @!attribute [rw] content
    #   The content of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the time series data points form.
    #   @return [Time]
    #
    # @!attribute [rw] type_identifier
    #   The ID of the type of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision type of the time series data points form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TimeSeriesDataPointFormInput AWS API Documentation
    #
    class TimeSeriesDataPointFormInput < Struct.new(
      :content,
      :form_name,
      :timestamp,
      :type_identifier,
      :type_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time series data points form.
    #
    # @!attribute [rw] content
    #   The content of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the time series data points form.
    #   @return [Time]
    #
    # @!attribute [rw] type_identifier
    #   The ID of the type of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The revision type of the time series data points form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TimeSeriesDataPointFormOutput AWS API Documentation
    #
    class TimeSeriesDataPointFormOutput < Struct.new(
      :content,
      :form_name,
      :id,
      :timestamp,
      :type_identifier,
      :type_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the time series data points form.
    #
    # @!attribute [rw] content_summary
    #   The content of the summary of the time series data points form.
    #   @return [String]
    #
    # @!attribute [rw] form_name
    #   The name of the time series data points summary form.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the time series data points summary form.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the time series data points summary form.
    #   @return [Time]
    #
    # @!attribute [rw] type_identifier
    #   The type ID of the time series data points summary form.
    #   @return [String]
    #
    # @!attribute [rw] type_revision
    #   The type revision of the time series data points summary form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TimeSeriesDataPointSummaryFormOutput AWS API Documentation
    #
    class TimeSeriesDataPointSummaryFormOutput < Struct.new(
      :content_summary,
      :form_name,
      :id,
      :timestamp,
      :type_identifier,
      :type_revision)
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

    # The details of the policy of creating an environment.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Unit AWS API Documentation
    #
    class Unit < Aws::EmptyStructure; end

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

    # @!attribute [rw] asset_identifier
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the asset filter.
    #   @return [Types::AssetFilterConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to update an asset filter.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateAssetFilterInput AWS API Documentation
    #
    class UpdateAssetFilterInput < Struct.new(
      :asset_identifier,
      :configuration,
      :description,
      :domain_identifier,
      :identifier,
      :name)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The ID of the data asset.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the asset filter.
    #   @return [Types::AssetFilterConfiguration]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the asset filter was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where the asset filter was created.
    #   @return [String]
    #
    # @!attribute [rw] effective_column_names
    #   The column names of the asset filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] effective_row_filter
    #   The row filter of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that is displayed if the action is not completed
    #   successfully.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset filter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the asset filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateAssetFilterOutput AWS API Documentation
    #
    class UpdateAssetFilterOutput < Struct.new(
      :asset_id,
      :configuration,
      :created_at,
      :description,
      :domain_id,
      :effective_column_names,
      :effective_row_filter,
      :error_message,
      :id,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] aws_location
    #   The location where a connection is to be updated.
    #   @return [Types::AwsLocation]
    #
    # @!attribute [rw] description
    #   The description of a connection.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where a connection is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the connection to be updated.
    #   @return [String]
    #
    # @!attribute [rw] props
    #   The connection props.
    #   @return [Types::ConnectionPropertiesPatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateConnectionInput AWS API Documentation
    #
    class UpdateConnectionInput < Struct.new(
      :aws_location,
      :description,
      :domain_identifier,
      :identifier,
      :props)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The connection description.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where a connection is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit where a connection is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment where a connection is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] physical_endpoints
    #   The physical endpoints of the connection.
    #   @return [Array<Types::PhysicalEndpoint>]
    #
    # @!attribute [rw] project_id
    #   The project ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] props
    #   The connection props.
    #   @return [Types::ConnectionPropertiesOutput]
    #
    # @!attribute [rw] type
    #   The connection type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateConnectionOutput AWS API Documentation
    #
    class UpdateConnectionOutput < Struct.new(
      :connection_id,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_id,
      :name,
      :physical_endpoints,
      :project_id,
      :props,
      :type)
      SENSITIVE = [:description]
      include Aws::Structure
    end

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
    # @!attribute [rw] retain_permissions_on_revoke_failure
    #   Specifies that the granted permissions are retained in case of a
    #   self-subscribe functionality failure for a data source.
    #   @return [Boolean]
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
      :retain_permissions_on_revoke_failure,
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
    # @!attribute [rw] connection_id
    #   The connection ID.
    #   @return [String]
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
    # @!attribute [rw] retain_permissions_on_revoke_failure
    #   Specifies that the granted permissions are retained in case of a
    #   self-subscribe functionality failure for a data source.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule to be updated as part of the `UpdateDataSource` action.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] self_grant_status
    #   Specifies the status of the self-granting functionality.
    #   @return [Types::SelfGrantStatusOutput]
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
      :connection_id,
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
      :retain_permissions_on_revoke_failure,
      :schedule,
      :self_grant_status,
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
    # @!attribute [rw] service_role
    #   The service role of the domain.
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
      :service_role,
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
    # @!attribute [rw] root_domain_unit_id
    #   The ID of the root domain unit.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The service role of the domain.
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
      :root_domain_unit_id,
      :service_role,
      :single_sign_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the domain unit that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where you want to update a domain unit.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the domain unit that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain unit that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomainUnitInput AWS API Documentation
    #
    class UpdateDomainUnitInput < Struct.new(
      :description,
      :domain_identifier,
      :identifier,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The time stamp at which the domain unit that you want to update was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the domain unit that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain unit that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where you want to update the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the domain unit that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp at which the domain unit was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The user who last updated the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain unit that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] owners
    #   The owners of the domain unit that you want to update.
    #   @return [Array<Types::DomainUnitOwnerProperties>]
    #
    # @!attribute [rw] parent_domain_unit_id
    #   The ID of the parent domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomainUnitOutput AWS API Documentation
    #
    class UpdateDomainUnitOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :id,
      :last_updated_at,
      :last_updated_by,
      :name,
      :owners,
      :parent_domain_unit_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The domain ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The environment ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the environment action.
    #   @return [Types::ActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentActionInput AWS API Documentation
    #
    class UpdateEnvironmentActionInput < Struct.new(
      :description,
      :domain_identifier,
      :environment_identifier,
      :identifier,
      :name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the environment action.
    #   @return [Types::ActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentActionOutput AWS API Documentation
    #
    class UpdateEnvironmentActionOutput < Struct.new(
      :description,
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_version
    #   The blueprint version to which the environment should be updated.
    #   You can only specify the following string for this parameter:
    #   `latest`.
    #   @return [String]
    #
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
    # @!attribute [rw] user_parameters
    #   The user parameters of the environment.
    #   @return [Array<Types::EnvironmentParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentInput AWS API Documentation
    #
    class UpdateEnvironmentInput < Struct.new(
      :blueprint_version,
      :description,
      :domain_identifier,
      :glossary_terms,
      :identifier,
      :name,
      :user_parameters)
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
    # @!attribute [rw] environment_configuration_id
    #   The configuration ID of the environment.
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
      :environment_configuration_id,
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
      SENSITIVE = [:description, :environment_configuration_id, :name]
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
    #   The ID of the Amazon DataZone domain where a project is being
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] environment_deployment_details
    #   The environment deployment details of the project.
    #   @return [Types::EnvironmentDeploymentDetails]
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
    # @!attribute [rw] project_profile_version
    #   The project profile version to which the project should be updated.
    #   You can only specify the following string for this parameter:
    #   `latest`.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of the project.
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectInput AWS API Documentation
    #
    class UpdateProjectInput < Struct.new(
      :description,
      :domain_identifier,
      :domain_unit_id,
      :environment_deployment_details,
      :glossary_terms,
      :identifier,
      :name,
      :project_profile_version,
      :user_parameters)
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
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @!attribute [rw] environment_deployment_details
    #   The environment deployment details of the project.
    #   @return [Types::EnvironmentDeploymentDetails]
    #
    # @!attribute [rw] failure_reasons
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #   @return [Array<Types::ProjectDeletionError>]
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
    # @!attribute [rw] project_profile_id
    #   The ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] project_status
    #   The status of the project.
    #   @return [String]
    #
    # @!attribute [rw] user_parameters
    #   The user parameters of the project.
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectOutput AWS API Documentation
    #
    class UpdateProjectOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_deployment_details,
      :failure_reasons,
      :glossary_terms,
      :id,
      :last_updated_at,
      :name,
      :project_profile_id,
      :project_status,
      :user_parameters)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of a project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain where a project profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_identifier
    #   The ID of the domain unit where a project profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_configurations
    #   The environment configurations of a project profile.
    #   @return [Array<Types::EnvironmentConfiguration>]
    #
    # @!attribute [rw] identifier
    #   The ID of a project profile that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a project profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a project profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectProfileInput AWS API Documentation
    #
    class UpdateProjectProfileInput < Struct.new(
      :description,
      :domain_identifier,
      :domain_unit_identifier,
      :environment_configurations,
      :identifier,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp at which a project profile is created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created a project profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a project profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain where project profile is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_unit_id
    #   The domain unit ID of the project profile to be updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_configurations
    #   The environment configurations of a project profile.
    #   @return [Array<Types::EnvironmentConfiguration>]
    #
    # @!attribute [rw] id
    #   The ID of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp at which a project profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the project profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the project profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectProfileOutput AWS API Documentation
    #
    class UpdateProjectProfileOutput < Struct.new(
      :created_at,
      :created_by,
      :description,
      :domain_id,
      :domain_unit_id,
      :environment_configurations,
      :id,
      :last_updated_at,
      :name,
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The detail of the rule.
    #   @return [Types::RuleDetail]
    #
    # @!attribute [rw] domain_identifier
    #   The ID of the domain in which a rule is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule that is to be updated
    #   @return [String]
    #
    # @!attribute [rw] include_child_domain_units
    #   Specifies whether to update this rule in the child domain units.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scrope of the rule.
    #   @return [Types::RuleScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateRuleInput AWS API Documentation
    #
    class UpdateRuleInput < Struct.new(
      :description,
      :detail,
      :domain_identifier,
      :identifier,
      :include_child_domain_units,
      :name,
      :scope)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action of the rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp at which the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The detail of the rule.
    #   @return [Types::RuleDetail]
    #
    # @!attribute [rw] identifier
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The timestamp at which the rule was last updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the rule.
    #   @return [Types::RuleScope]
    #
    # @!attribute [rw] target
    #   The target of the rule.
    #   @return [Types::RuleTarget]
    #
    # @!attribute [rw] updated_at
    #   The timestamp at which the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateRuleOutput AWS API Documentation
    #
    class UpdateRuleOutput < Struct.new(
      :action,
      :created_at,
      :created_by,
      :description,
      :detail,
      :identifier,
      :last_updated_by,
      :name,
      :revision,
      :rule_type,
      :scope,
      :target,
      :updated_at)
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
    #   The details of the asset for which the subscription grant is
    #   created.
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
    # @!attribute [rw] existing_subscription_id
    #   The ID of the existing subscription.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the subscription request that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] metadata_forms
    #   Metadata forms included in the subscription request.
    #   @return [Array<Types::FormOutput>]
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
      :existing_subscription_id,
      :id,
      :metadata_forms,
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
    #   `UpdateSubscriptionTarget` action. Updates are supported in batches
    #   of 5 at a time.
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

    # Specifies the domain unit(s) whose projects can use this asset type
    # while creating asset or asset revisions.
    #
    # @!attribute [rw] domain_unit_id
    #   The ID of the domain unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UseAssetTypePolicyGrantDetail AWS API Documentation
    #
    class UseAssetTypePolicyGrantDetail < Struct.new(
      :domain_unit_id)
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

    # The user policy grant principal.
    #
    # @note UserPolicyGrantPrincipal is a union - when making an API calls you must set exactly one of the members.
    #
    # @note UserPolicyGrantPrincipal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of UserPolicyGrantPrincipal corresponding to the set member.
    #
    # @!attribute [rw] all_users_grant_filter
    #   The all users grant filter of the user policy grant principal.
    #   @return [Types::AllUsersGrantFilter]
    #
    # @!attribute [rw] user_identifier
    #   The user ID of the user policy grant principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UserPolicyGrantPrincipal AWS API Documentation
    #
    class UserPolicyGrantPrincipal < Struct.new(
      :all_users_grant_filter,
      :user_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AllUsersGrantFilter < UserPolicyGrantPrincipal; end
      class UserIdentifier < UserPolicyGrantPrincipal; end
      class Unknown < UserPolicyGrantPrincipal; end
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

    # The username and password of a connection.
    #
    # @!attribute [rw] password
    #   The password of a connection.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UsernamePassword AWS API Documentation
    #
    class UsernamePassword < Struct.new(
      :password,
      :username)
      SENSITIVE = [:password]
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

