# frozen_string_literal: true

# This is generated code!

module Aws::DataZone
  # This module contains the types returned by client operations.
  module Types

    # <p>Specifies the prediction (aka, the automatically generated piece of metadata) and the
    #          target (for example, a column name) that can be accepted.</p>
    # @!attribute prediction_target
    #   <p>Specifies the target (for example, a column name) where a prediction can be
    #            accepted.</p>
    #   @return [String]
    # @!attribute prediction_choice
    #   <p>Specifies the prediction (aka, the automatically generated piece of metadata) that can
    #            be accepted.</p>
    #   @return [Integer]
    # @!attribute edited_value
    #   <p>The edit of the prediction.</p>
    #   @return [String]
    class AcceptChoice < Struct.new(
      :prediction_target,
      :prediction_choice,
      :edited_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the asset.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision that is to be made to the asset.</p>
    #   @return [String]
    # @!attribute accept_rule
    #   <p>Specifies the rule (or the conditions) under which a prediction can be accepted.</p>
    #   @return [Types::AcceptRule]
    # @!attribute accept_choices
    #   <p>Specifies the prediction (aka, the automatically generated piece of metadata) and the
    #            target (for example, a column name) that can be accepted.</p>
    #   @return [Array<Types::AcceptChoice>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This field is
    #            automatically populated if not provided.</p>
    #   @return [String]
    class AcceptPredictionsInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision,
      :accept_rule,
      :accept_choices,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision that is to be made to the asset.</p>
    #   @return [String]
    class AcceptPredictionsOutput < Struct.new(
      :domain_id,
      :asset_id,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the rule and the threshold under which a prediction can be accepted.</p>
    # @!attribute rule
    #   <p>Specifies whether you want to accept the top prediction for all targets or none.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The confidence score that specifies the condition at which a prediction can be
    #            accepted.</p>
    #   @return [Float]
    class AcceptRule < Struct.new(
      :rule,
      :threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AcceptRuleBehavior
      ALL = 'ALL'
      NONE = 'NONE'
    end

    # @!attribute domain_identifier
    #   <p>The Amazon DataZone domain where the specified subscription request is being accepted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the subscription request that is to be accepted.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>A description that specifies the reason for accepting the specified subscription
    #            request.</p>
    #   @return [String]
    # @!attribute asset_scopes
    #   <p>The asset scopes of the accept subscription request.</p>
    #   @return [Array<Types::AcceptedAssetScope>]
    class AcceptSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :identifier,
      :decision_comment,
      :asset_scopes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the subscription request.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Specifies the Amazon DataZone user that accepted the specified subscription request.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>Specifies the Amazon DataZone user who updated the subscription request.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The unique identifier of the Amazon DataZone domain where the specified subscription request
    #            was accepted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the status of the subscription request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp that specifies when the subscription request was accepted.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Specifies the timestamp when subscription request was updated.</p>
    #   @return [Time]
    # @!attribute request_reason
    #   <p>Specifies the reason for requesting a subscription to the asset.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>Specifies the Amazon DataZone users who are subscribed to the asset specified in the
    #            subscription request.</p>
    #   @return [Array<Types::SubscribedPrincipal>]
    # @!attribute subscribed_listings
    #   <p>Specifies the asset for which the subscription request was created.</p>
    #   @return [Array<Types::SubscribedListing>]
    # @!attribute reviewer_id
    #   <p>Specifes the ID of the Amazon DataZone user who reviewed the subscription request.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>Specifies the reason for accepting the subscription request.</p>
    #   @return [String]
    # @!attribute existing_subscription_id
    #   <p>The ID of the existing subscription.</p>
    #   @return [String]
    # @!attribute metadata_forms
    #   <p>The metadata form in the subscription request.</p>
    #   @return [Array<Types::FormOutput>]
    class AcceptSubscriptionRequestOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :request_reason,
      :subscribed_principals,
      :subscribed_listings,
      :reviewer_id,
      :decision_comment,
      :existing_subscription_id,
      :metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The accepted asset scope.</p>
    # @!attribute asset_id
    #   <p>The asset ID of the accepted asset scope.</p>
    #   @return [String]
    # @!attribute filter_ids
    #   <p>The filter IDs of the accepted asset scope.</p>
    #   @return [Array<String>]
    class AcceptedAssetScope < Struct.new(
      :asset_id,
      :filter_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The account information within an account pool.</p>
    # @!attribute aws_account_id
    #   <p>The account ID.</p>
    #   @return [String]
    # @!attribute supported_regions
    #   <p>The regions supported for an account within an account pool. </p>
    #   @return [Array<String>]
    # @!attribute aws_account_name
    #   <p>The account name.</p>
    #   @return [String]
    class AccountInfo < Struct.new(
      :aws_account_id,
      :supported_regions,
      :aws_account_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the account pool.</p>
    # @!attribute domain_id
    #   <p>The ID of the domain.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the account pool.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool.</p>
    #   @return [String]
    # @!attribute resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The user who created the account pool.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The user who updated the account pool.</p>
    #   @return [String]
    class AccountPoolSummary < Struct.new(
      :domain_id,
      :id,
      :name,
      :resolution_strategy,
      :domain_unit_id,
      :created_by,
      :updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The source of accounts for the account pool. In the current release, it's either a
    #          static list of accounts provided by the customer or a custom Amazon Web Services Lambda
    #          handler. </p>
    # @!attribute accounts
    #   <p>The static list of accounts within an account pool.</p>
    #   @return [Array<Types::AccountInfo>]
    # @!attribute custom_account_pool_handler
    #   <p>The custom Amazon Web Services Lambda handler within an account pool.</p>
    #   @return [Types::CustomAccountPoolHandler]
    class AccountSource < Struct.new(
      :accounts,
      :custom_account_pool_handler,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Accounts < AccountSource; end
      class CustomAccountPoolHandler < AccountSource; end
      class Unknown < AccountSource; end
    end

    # <p>The parameters of the environment action.</p>
    # @!attribute aws_console_link
    #   <p>The console link specified as part of the environment action.</p>
    #   @return [Types::AwsConsoleLinkParameters]
    class ActionParameters < Struct.new(
      :aws_console_link,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AwsConsoleLink < ActionParameters; end
      class Unknown < ActionParameters; end
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which you want to add the entity owner.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of an entity.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity to which you want to add an owner.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner that you want to add to the entity.</p>
    #   @return [Types::OwnerProperties]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class AddEntityOwnerInput < Struct.new(
      :domain_identifier,
      :entity_type,
      :entity_identifier,
      :owner,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AddEntityOwnerOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to add a policy grant.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of entity (resource) to which the grant is added.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity (resource) to which you want to add a policy grant.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy that you want to grant.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal to whom the permissions are granted.</p>
    #   @return [Types::PolicyGrantPrincipal]
    # @!attribute detail
    #   <p>The details of the policy grant.</p>
    #   @return [Types::PolicyGrantDetail]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class AddPolicyGrantInput < Struct.new(
      :domain_identifier,
      :entity_type,
      :entity_identifier,
      :policy_type,
      :principal,
      :detail,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AddPolicyGrantOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy grant is applied to child domain units.</p>
    #   @return [Boolean]
    class AddToProjectMemberPoolPolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An aggregation list item.</p>
    # @!attribute attribute
    #   <p>An attribute on which to compute aggregations.</p>
    #   @return [String]
    # @!attribute display_value
    #   <p>The display value of the aggregation list item. Supported values include
    #               <code>value</code> and <code>glossaryTerm.name</code>.</p>
    #   @return [String]
    class AggregationListItem < Struct.new(
      :attribute,
      :display_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The aggregation for an attribute.</p>
    # @!attribute attribute
    #   <p>The attribute for this aggregation.</p>
    #   @return [String]
    # @!attribute display_value
    #   <p>The display value of the aggregation output item.</p>
    #   @return [String]
    # @!attribute items
    #   <p>A list of aggregation output items.</p>
    #   @return [Array<Types::AggregationOutputItem>]
    class AggregationOutput < Struct.new(
      :attribute,
      :display_value,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An aggregation output item.</p>
    # @!attribute value
    #   <p>The attribute value of the aggregation output item.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The count of the aggregation output item.</p>
    #   @return [Integer]
    # @!attribute display_value
    #   <p>The display value of the aggregation. If the attribute being aggregated corresponds to
    #            the id of a public resource, the service automatically resolves the id to the provided
    #            display value.</p>
    #   @return [String]
    class AggregationOutputItem < Struct.new(
      :value,
      :count,
      :display_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The grant filter for all domain units.</p>
    class AllDomainUnitsGrantFilter < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The all users grant filter.</p>
    class AllUsersGrantFilter < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of the asset filter.</p>
    # @!attribute column_configuration
    #   <p>The column configuration of the asset filter.</p>
    #   @return [Types::ColumnFilterConfiguration]
    # @!attribute row_configuration
    #   <p>The row configuration of the asset filter.</p>
    #   @return [Types::RowFilterConfiguration]
    class AssetFilterConfiguration < Struct.new(
      :column_configuration,
      :row_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ColumnConfiguration < AssetFilterConfiguration; end
      class RowConfiguration < AssetFilterConfiguration; end
      class Unknown < AssetFilterConfiguration; end
    end

    # <p>The summary of the asset filter.</p>
    # @!attribute id
    #   <p>The ID of the asset filter.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where the asset filter lives.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset filter.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asset filter.</p>
    #   @return [String]
    # @!attribute effective_column_names
    #   <p>The effective column names of the asset filter.</p>
    #   @return [Array<String>]
    # @!attribute effective_row_filter
    #   <p>The effective row filter of the asset filter.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the asset filter was created.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message that is displayed if the action does not succeed.</p>
    #   @return [String]
    class AssetFilterSummary < Struct.new(
      :id,
      :domain_id,
      :asset_id,
      :name,
      :description,
      :status,
      :effective_column_names,
      :effective_row_filter,
      :created_at,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The listing of the asset in a data product.</p>
    # @!attribute entity_id
    #   <p>The entity ID of the listing of the asset in a data product.</p>
    #   @return [String]
    # @!attribute entity_revision
    #   <p>The entity revision of the listing of the asset in a data product.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The entity type of the listing of the asset in a data product.</p>
    #   @return [String]
    class AssetInDataProductListingItem < Struct.new(
      :entity_id,
      :entity_revision,
      :entity_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A Amazon DataZone inventory asset.</p>
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the inventory asset exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>the identifier of the Amazon DataZone inventory asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon DataZone inventory asset.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The identifier of the asset type of the specified Amazon DataZone inventory asset.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision of the inventory asset type.</p>
    #   @return [String]
    # @!attribute external_identifier
    #   <p>The external identifier of the Amazon DataZone inventory asset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of an Amazon DataZone inventory asset.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the Amazon DataZone inventory asset was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the inventory asset.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp of when the first revision of the inventory asset was created.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The Amazon DataZone user who created the first revision of the inventory asset.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms attached to the Amazon DataZone inventory asset.</p>
    #   @return [Array<String>]
    # @!attribute owning_project_id
    #   <p>The identifier of the Amazon DataZone project that owns the inventory asset.</p>
    #   @return [String]
    # @!attribute additional_attributes
    #   <p>The additional attributes of a Amazon DataZone inventory asset. </p>
    #   @return [Types::AssetItemAdditionalAttributes]
    class AssetItem < Struct.new(
      :domain_id,
      :identifier,
      :name,
      :type_identifier,
      :type_revision,
      :external_identifier,
      :description,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      :glossary_terms,
      :owning_project_id,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The additional attributes of an inventory asset.</p>
    # @!attribute forms_output
    #   <p>The forms included in the additional attributes of an inventory asset.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute read_only_forms_output
    #   <p>The read-only forms included in the additional attributes of an inventory asset.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute latest_time_series_data_point_forms_output
    #   <p>The latest time series data points forms included in the additional attributes of an
    #            asset.</p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    # @!attribute match_rationale
    #   <p>List of rationales indicating why this item was matched by search.</p>
    #   @return [Array<Types::MatchRationaleItem>]
    class AssetItemAdditionalAttributes < Struct.new(
      :forms_output,
      :read_only_forms_output,
      :latest_time_series_data_point_forms_output,
      :match_rationale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An asset published in an Amazon DataZone catalog.</p>
    # @!attribute asset_id
    #   <p>The identifier of an asset published in an Amazon DataZone catalog. </p>
    #   @return [String]
    # @!attribute asset_revision
    #   <p>The revision of an asset published in an Amazon DataZone catalog. </p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of an asset published in an Amazon DataZone catalog. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when an asset published in an Amazon DataZone catalog was created. </p>
    #   @return [Time]
    # @!attribute forms
    #   <p>The metadata forms attached to an asset published in an Amazon DataZone catalog. </p>
    #   @return [String]
    # @!attribute latest_time_series_data_point_forms
    #   <p>The latest time series data points forms included in the additional attributes of an
    #            asset.</p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    # @!attribute glossary_terms
    #   <p>The glossary terms attached to an asset published in an Amazon DataZone catalog. </p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    # @!attribute owning_project_id
    #   <p>The identifier of the project where an asset published in an Amazon DataZone catalog exists.
    #         </p>
    #   @return [String]
    class AssetListing < Struct.new(
      :asset_id,
      :asset_revision,
      :asset_type,
      :created_at,
      :forms,
      :latest_time_series_data_point_forms,
      :glossary_terms,
      :owning_project_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an asset published in an Amazon DataZone catalog. </p>
    # @!attribute listing_id
    #   <p>The identifier of an asset published in an Amazon DataZone catalog. </p>
    #   @return [String]
    # @!attribute listing_status
    #   <p>The status of an asset published in an Amazon DataZone catalog. </p>
    #   @return [String]
    class AssetListingDetails < Struct.new(
      :listing_id,
      :listing_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an asset published in an Amazon DataZone catalog.</p>
    # @!attribute listing_id
    #   <p>The identifier of the listing (asset published in Amazon DataZone catalog).</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of the listing (asset published in Amazon DataZone catalog).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the inventory asset.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of the inventory asset.</p>
    #   @return [String]
    # @!attribute entity_revision
    #   <p>The revision of the inventory asset.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the inventory asset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of an asset published in an Amazon DataZone catalog.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when an asset published in an Amazon DataZone catalog was created.</p>
    #   @return [Time]
    # @!attribute listing_created_by
    #   <p>The Amazon DataZone user who created the listing.</p>
    #   @return [String]
    # @!attribute listing_updated_by
    #   <p>The Amazon DataZone user who updated the listing.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>Glossary terms attached to the inventory asset.</p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    # @!attribute owning_project_id
    #   <p>The identifier of the project that owns the inventory asset.</p>
    #   @return [String]
    # @!attribute additional_attributes
    #   <p>The additional attributes of an asset published in an Amazon DataZone catalog.</p>
    #   @return [Types::AssetListingItemAdditionalAttributes]
    class AssetListingItem < Struct.new(
      :listing_id,
      :listing_revision,
      :name,
      :entity_id,
      :entity_revision,
      :entity_type,
      :description,
      :created_at,
      :listing_created_by,
      :listing_updated_by,
      :glossary_terms,
      :owning_project_id,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional attributes of an inventory asset.</p>
    # @!attribute forms
    #   <p>The metadata forms that form additional attributes of the metadata asset.</p>
    #   @return [String]
    # @!attribute match_rationale
    #   <p>List of rationales indicating why this item was matched by search.</p>
    #   @return [Array<Types::MatchRationaleItem>]
    # @!attribute latest_time_series_data_point_forms
    #   <p>The latest time series data points forms included in the additional attributes of an
    #            asset.</p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    class AssetListingItemAdditionalAttributes < Struct.new(
      :forms,
      :match_rationale,
      :latest_time_series_data_point_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The revision of an inventory asset.</p>
    # @!attribute domain_id
    #   <p>The Amazon DataZone user who created the inventory asset.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the inventory asset revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision details of the inventory asset.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the asset revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when an inventory asset revison was created.</p>
    #   @return [Time]
    class AssetRevision < Struct.new(
      :domain_id,
      :id,
      :revision,
      :created_by,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The asset scope.</p>
    # @!attribute asset_id
    #   <p>The asset ID of the asset scope.</p>
    #   @return [String]
    # @!attribute filter_ids
    #   <p>The filter IDs of the asset scope.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the asset scope.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message of the asset scope.</p>
    #   @return [String]
    class AssetScope < Struct.new(
      :asset_id,
      :filter_ids,
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The name map for assets.</p>
    # @!attribute asset_id
    #   <p>The identifier of the inventory asset.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The target name in the asset target name map.</p>
    #   @return [String]
    class AssetTargetNameMap < Struct.new(
      :asset_id,
      :target_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the asset type.</p>
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain where the asset type exists.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset type.</p>
    #   @return [String]
    # @!attribute forms_output
    #   <p>The forms included in the details of the asset type.</p>
    #   @return [Hash<String, Types::FormEntryOutput>]
    # @!attribute owning_project_id
    #   <p>The identifier of the Amazon DataZone project that owns the asset type.</p>
    #   @return [String]
    # @!attribute origin_domain_id
    #   <p>The identifier of the Amazon DataZone domain where the asset type was originally
    #            created.</p>
    #   @return [String]
    # @!attribute origin_project_id
    #   <p>The identifier of the Amazon DataZone project where the asset type exists.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the asset type was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the asset type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the asset type was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the asset type.</p>
    #   @return [String]
    class AssetTypeItem < Struct.new(
      :domain_id,
      :name,
      :revision,
      :description,
      :forms_output,
      :owning_project_id,
      :origin_domain_id,
      :origin_project_id,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The asset type for the rule details.</p>
    # @!attribute selection_mode
    #   <p>The selection mode for the rule.</p>
    #   @return [String]
    # @!attribute specific_asset_types
    #   <p>The specific asset types that are included in the rule.</p>
    #   @return [Array<String>]
    class AssetTypesForRule < Struct.new(
      :selection_mode,
      :specific_asset_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment role is associated.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute environment_role_arn
    #   <p>The ARN of the environment role.</p>
    #   @return [String]
    class AssociateEnvironmentRoleInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :environment_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateEnvironmentRoleOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Athena properties of a connection.</p>
    # @!attribute workgroup_name
    #   <p>The Amazon Athena workgroup name of a connection.</p>
    #   @return [String]
    class AthenaPropertiesInput < Struct.new(
      :workgroup_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Athena properties of a connection.</p>
    # @!attribute workgroup_name
    #   <p>The Amazon Athena workgroup name of a connection.</p>
    #   @return [String]
    class AthenaPropertiesOutput < Struct.new(
      :workgroup_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Athena properties patch of a connection.</p>
    # @!attribute workgroup_name
    #   <p>The Amazon Athena workgroup name of a connection.</p>
    #   @return [String]
    class AthenaPropertiesPatch < Struct.new(
      :workgroup_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AuthType
      IAM_IDC = 'IAM_IDC'
      DISABLED = 'DISABLED'
    end

    # <p>The authentication configuration of a connection.</p>
    # @!attribute authentication_type
    #   <p>The authentication type of a connection.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The secret ARN of a connection.</p>
    #   @return [String]
    # @!attribute o_auth2_properties
    #   <p>The oAuth2 properties of a connection.</p>
    #   @return [Types::OAuth2Properties]
    class AuthenticationConfiguration < Struct.new(
      :authentication_type,
      :secret_arn,
      :o_auth2_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The authentication configuration of a connection.</p>
    # @!attribute authentication_type
    #   <p>The authentication type of a connection.</p>
    #   @return [String]
    # @!attribute o_auth2_properties
    #   <p>The oAuth2 properties of a connection.</p>
    #   @return [Types::OAuth2Properties]
    # @!attribute secret_arn
    #   <p>The secret ARN of a connection.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN of a connection.</p>
    #   @return [String]
    # @!attribute basic_authentication_credentials
    #   <p>The basic authentication credentials of a connection.</p>
    #   @return [Types::BasicAuthenticationCredentials]
    # @!attribute custom_authentication_credentials
    #   <p>The custom authentication credentials of a connection.</p>
    #   @return [Hash<String, String>]
    class AuthenticationConfigurationInput < Struct.new(
      :authentication_type,
      :o_auth2_properties,
      :secret_arn,
      :kms_key_arn,
      :basic_authentication_credentials,
      :custom_authentication_credentials,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The authentication configuration patch of a connection. </p>
    # @!attribute secret_arn
    #   <p>The secret ARN of a connection.</p>
    #   @return [String]
    # @!attribute basic_authentication_credentials
    #   <p>The basic authentication credentials of a connection.</p>
    #   @return [Types::BasicAuthenticationCredentials]
    class AuthenticationConfigurationPatch < Struct.new(
      :secret_arn,
      :basic_authentication_credentials,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AuthenticationType
      BASIC = 'BASIC'
      OAUTH2 = 'OAUTH2'
      CUSTOM = 'CUSTOM'
    end

    # <p>The authorization code properties of a connection.</p>
    # @!attribute authorization_code
    #   <p>The authorization code of a connection.</p>
    #   @return [String]
    # @!attribute redirect_uri
    #   <p>The redirect URI of a connection.</p>
    #   @return [String]
    class AuthorizationCodeProperties < Struct.new(
      :authorization_code,
      :redirect_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The account ID of a project.</p>
    # @!attribute aws_account_id
    #   <p>The account ID of a project.</p>
    #   @return [String]
    # @!attribute aws_account_id_path
    #   <p>The account ID path of a project.</p>
    #   @return [String]
    class AwsAccount < Struct.new(
      :aws_account_id,
      :aws_account_id_path,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AwsAccountId < AwsAccount; end
      class AwsAccountIdPath < AwsAccount; end
      class Unknown < AwsAccount; end
    end

    # <p>The parameters of the console link specified as part of the environment action.</p>
    # @!attribute uri
    #   <p>The URI of the console link specified as part of the environment action.</p>
    #   @return [String]
    class AwsConsoleLinkParameters < Struct.new(
      :uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The location of a project.</p>
    # @!attribute access_role
    #   <p>The access role of a connection.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The account ID of a connection.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Region of a connection.</p>
    #   @return [String]
    # @!attribute iam_connection_id
    #   <p>The IAM connection ID of a connection.</p>
    #   @return [String]
    class AwsLocation < Struct.new(
      :access_role,
      :aws_account_id,
      :aws_region,
      :iam_connection_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The basic authentication credentials of a connection.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute user_name
    #   <p>The user name for the connecion.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for a connection.</p>
    #   @return [String]
    class BasicAuthenticationCredentials < Struct.new(
      :user_name,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of the business name generation.</p>
    # @!attribute enabled
    #   <p>Specifies whether the business name generation is enabled.</p>
    #   @return [Boolean]
    class BusinessNameGenerationConfiguration < Struct.new(
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the metadata generation run is to be
    #            cancelled.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the metadata generation run.</p>
    #   @return [String]
    class CancelMetadataGenerationRunInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CancelMetadataGenerationRunOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The unique identifier of the Amazon DataZone domain where the subscription request is being
    #            cancelled.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the subscription that is being cancelled.</p>
    #   @return [String]
    class CancelSubscriptionInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the subscription.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Specifies the Amazon DataZone user who is cancelling the subscription.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user that cancelled the subscription.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The unique identifier of the Amazon DataZone domain where the subscription is being
    #            cancelled.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request to cancel the subscription.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp that specifies when the request to cancel the subscription was
    #            created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp that specifies when the subscription was cancelled.</p>
    #   @return [Time]
    # @!attribute subscribed_principal
    #   <p>The Amazon DataZone user who is made a subscriber to the specified asset by the subscription
    #            that is being cancelled.</p>
    #   @return [Types::SubscribedPrincipal]
    # @!attribute subscribed_listing
    #   <p>The asset to which a subscription is being cancelled.</p>
    #   @return [Types::SubscribedListing]
    # @!attribute subscription_request_id
    #   <p>The unique ID of the subscripton request for the subscription that is being
    #            cancelled.</p>
    #   @return [String]
    # @!attribute retain_permissions
    #   <p>Specifies whether the permissions to the asset are retained after the subscription is
    #            cancelled.</p>
    #   @return [Boolean]
    class CancelSubscriptionOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :subscribed_principal,
      :subscribed_listing,
      :subscription_request_id,
      :retain_permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChangeAction
      PUBLISH = 'PUBLISH'
      UNPUBLISH = 'UNPUBLISH'
    end

    # <p>Part of the provisioning properties of the environment blueprint.</p>
    # @!attribute template_url
    #   <p>The template URL of the cloud formation provisioning properties of the environment
    #            blueprint.</p>
    #   @return [String]
    class CloudFormationProperties < Struct.new(
      :template_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The column configuration of the asset filter.</p>
    # @!attribute included_column_names
    #   <p>Specifies whether to include column names.</p>
    #   @return [Array<String>]
    class ColumnFilterConfiguration < Struct.new(
      :included_column_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ComputeEnvironments
      SPARK = 'SPARK'
      ATHENA = 'ATHENA'
      PYTHON = 'PYTHON'
    end

    # <p>The details of the parameters for the configurable environment action.</p>
    # @!attribute key
    #   <p>The key of the configurable action parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the configurable action parameter.</p>
    #   @return [String]
    class ConfigurableActionParameter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConfigurableActionTypeAuthorization
      IAM = 'IAM'
      HTTPS = 'HTTPS'
    end

    # <p>The configurable action of a Amazon DataZone environment.</p>
    # @!attribute type
    #   <p>The type of a configurable action in a Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute auth
    #   <p>The authentication type of a configurable action of a Amazon DataZone environment. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of a configurable action in a Amazon DataZone environment.</p>
    #   @return [Array<Types::ConfigurableActionParameter>]
    class ConfigurableEnvironmentAction < Struct.new(
      :type,
      :auth,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There is a conflict while performing this action.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The credentials of a connection.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   <p>The access key ID of a connection.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key of a connection.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The session token of a connection credentials.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The expiration of the connection credentials.</p>
    #   @return [Time]
    class ConnectionCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of a connection.</p>
    # @!attribute athena_properties
    #   <p>The Amazon Athena properties of a connection.</p>
    #   @return [Types::AthenaPropertiesInput]
    # @!attribute glue_properties
    #   <p>The Amazon Web Services Glue properties of a connection.</p>
    #   @return [Types::GluePropertiesInput]
    # @!attribute hyper_pod_properties
    #   <p>The hyper pod properties of a connection.</p>
    #   @return [Types::HyperPodPropertiesInput]
    # @!attribute iam_properties
    #   <p>The IAM properties of a connection.</p>
    #   @return [Types::IamPropertiesInput]
    # @!attribute redshift_properties
    #   <p>The Amazon Redshift properties of a connection.</p>
    #   @return [Types::RedshiftPropertiesInput]
    # @!attribute spark_emr_properties
    #   <p>The Spark EMR properties of a connection.</p>
    #   @return [Types::SparkEmrPropertiesInput]
    # @!attribute spark_glue_properties
    #   <p>The Spark Amazon Web Services Glue properties of a connection.</p>
    #   @return [Types::SparkGluePropertiesInput]
    # @!attribute s3_properties
    #   <p>The Amazon S3 properties of a connection.</p>
    #   @return [Types::S3PropertiesInput]
    class ConnectionPropertiesInput < Struct.new(
      :athena_properties,
      :glue_properties,
      :hyper_pod_properties,
      :iam_properties,
      :redshift_properties,
      :spark_emr_properties,
      :spark_glue_properties,
      :s3_properties,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AthenaProperties < ConnectionPropertiesInput; end
      class GlueProperties < ConnectionPropertiesInput; end
      class HyperPodProperties < ConnectionPropertiesInput; end
      class IamProperties < ConnectionPropertiesInput; end
      class RedshiftProperties < ConnectionPropertiesInput; end
      class SparkEmrProperties < ConnectionPropertiesInput; end
      class SparkGlueProperties < ConnectionPropertiesInput; end
      class S3Properties < ConnectionPropertiesInput; end
      class Unknown < ConnectionPropertiesInput; end
    end

    # <p>The properties of a connection.</p>
    # @!attribute athena_properties
    #   <p>The Amazon Athena properties of a connection.</p>
    #   @return [Types::AthenaPropertiesOutput]
    # @!attribute glue_properties
    #   <p>The Amazon Web Services Glue properties of a connection.</p>
    #   @return [Types::GluePropertiesOutput]
    # @!attribute hyper_pod_properties
    #   <p>The hyper pod properties of a connection.</p>
    #   @return [Types::HyperPodPropertiesOutput]
    # @!attribute iam_properties
    #   <p>The IAM properties of a connection.</p>
    #   @return [Types::IamPropertiesOutput]
    # @!attribute redshift_properties
    #   <p>The Amazon Redshift properties of a connection.</p>
    #   @return [Types::RedshiftPropertiesOutput]
    # @!attribute spark_emr_properties
    #   <p>The Spark EMR properties of a connection.</p>
    #   @return [Types::SparkEmrPropertiesOutput]
    # @!attribute spark_glue_properties
    #   <p>The Spark Amazon Web Services Glue properties of a connection.</p>
    #   @return [Types::SparkGluePropertiesOutput]
    # @!attribute s3_properties
    #   <p>The Amazon S3 properties of a connection.</p>
    #   @return [Types::S3PropertiesOutput]
    class ConnectionPropertiesOutput < Struct.new(
      :athena_properties,
      :glue_properties,
      :hyper_pod_properties,
      :iam_properties,
      :redshift_properties,
      :spark_emr_properties,
      :spark_glue_properties,
      :s3_properties,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AthenaProperties < ConnectionPropertiesOutput; end
      class GlueProperties < ConnectionPropertiesOutput; end
      class HyperPodProperties < ConnectionPropertiesOutput; end
      class IamProperties < ConnectionPropertiesOutput; end
      class RedshiftProperties < ConnectionPropertiesOutput; end
      class SparkEmrProperties < ConnectionPropertiesOutput; end
      class SparkGlueProperties < ConnectionPropertiesOutput; end
      class S3Properties < ConnectionPropertiesOutput; end
      class Unknown < ConnectionPropertiesOutput; end
    end

    # <p>The connection properties patch.</p>
    # @!attribute athena_properties
    #   <p>The Amazon Athena properties of a connection properties patch.</p>
    #   @return [Types::AthenaPropertiesPatch]
    # @!attribute glue_properties
    #   <p>The Amazon Web Services Glue properties of a connection properties patch.</p>
    #   @return [Types::GluePropertiesPatch]
    # @!attribute iam_properties
    #   <p>The IAM properties of a connection properties patch.</p>
    #   @return [Types::IamPropertiesPatch]
    # @!attribute redshift_properties
    #   <p>The Amazon Redshift properties of a connection properties patch.</p>
    #   @return [Types::RedshiftPropertiesPatch]
    # @!attribute spark_emr_properties
    #   <p>The Spark EMR properties of a connection properties patch.</p>
    #   @return [Types::SparkEmrPropertiesPatch]
    # @!attribute s3_properties
    #   <p>The Amazon S3 properties of a connection properties patch.</p>
    #   @return [Types::S3PropertiesPatch]
    class ConnectionPropertiesPatch < Struct.new(
      :athena_properties,
      :glue_properties,
      :iam_properties,
      :redshift_properties,
      :spark_emr_properties,
      :s3_properties,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AthenaProperties < ConnectionPropertiesPatch; end
      class GlueProperties < ConnectionPropertiesPatch; end
      class IamProperties < ConnectionPropertiesPatch; end
      class RedshiftProperties < ConnectionPropertiesPatch; end
      class SparkEmrProperties < ConnectionPropertiesPatch; end
      class S3Properties < ConnectionPropertiesPatch; end
      class Unknown < ConnectionPropertiesPatch; end
    end

    module ConnectionStatus
      CREATING = 'CREATING'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETING = 'DELETING'
      DELETE_FAILED = 'DELETE_FAILED'
      READY = 'READY'
      UPDATING = 'UPDATING'
      UPDATE_FAILED = 'UPDATE_FAILED'
      DELETED = 'DELETED'
    end

    # <p>The summary of a connection.</p>
    # @!attribute connection_id
    #   <p>The ID of a connection.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The domain ID of a connection.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The domain unit ID of a connection.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID of a connection.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The connection name.</p>
    #   @return [String]
    # @!attribute physical_endpoints
    #   <p>The connection physical endpoints.</p>
    #   @return [Array<Types::PhysicalEndpoint>]
    # @!attribute project_id
    #   <p>The connection project ID.</p>
    #   @return [String]
    # @!attribute props
    #   <p>The connection props.</p>
    #   @return [Types::ConnectionPropertiesOutput]
    # @!attribute type
    #   <p>The connection type.</p>
    #   @return [String]
    class ConnectionSummary < Struct.new(
      :connection_id,
      :domain_id,
      :domain_unit_id,
      :environment_id,
      :name,
      :physical_endpoints,
      :project_id,
      :props,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConnectionType
      ATHENA = 'ATHENA'
      BIGQUERY = 'BIGQUERY'
      DATABRICKS = 'DATABRICKS'
      DOCUMENTDB = 'DOCUMENTDB'
      DYNAMODB = 'DYNAMODB'
      HYPERPOD = 'HYPERPOD'
      IAM = 'IAM'
      MYSQL = 'MYSQL'
      OPENSEARCH = 'OPENSEARCH'
      ORACLE = 'ORACLE'
      POSTGRESQL = 'POSTGRESQL'
      REDSHIFT = 'REDSHIFT'
      S3 = 'S3'
      SAPHANA = 'SAPHANA'
      SNOWFLAKE = 'SNOWFLAKE'
      SPARK = 'SPARK'
      SQLSERVER = 'SQLSERVER'
      TERADATA = 'TERADATA'
      VERTICA = 'VERTICA'
      WORKFLOWS_MWAA = 'WORKFLOWS_MWAA'
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the account pool is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the account pool.</p>
    #   @return [String]
    # @!attribute resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    #   @return [String]
    # @!attribute account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a
    #            static list of accounts provided by the customer or a custom Amazon Web Services Lambda
    #            handler. </p>
    #   @return [Types::AccountSource]
    class CreateAccountPoolInput < Struct.new(
      :domain_identifier,
      :name,
      :description,
      :resolution_strategy,
      :account_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where the account pool is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the account pool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the account pool.</p>
    #   @return [String]
    # @!attribute resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    #   @return [String]
    # @!attribute account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a
    #            static list of accounts provided by the customer or a custom Amazon Web Services Lambda
    #            handler. </p>
    #   @return [Types::AccountSource]
    # @!attribute created_by
    #   <p>The user who created the account pool.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the account pool was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which the account pool was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the account pool.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain where the account pool is created.</p>
    #   @return [String]
    class CreateAccountPoolOutput < Struct.new(
      :domain_id,
      :name,
      :id,
      :description,
      :resolution_strategy,
      :account_source,
      :created_by,
      :created_at,
      :last_updated_at,
      :updated_by,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which you want to create an asset filter.</p>
    #   @return [String]
    # @!attribute asset_identifier
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset filter.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the asset filter.</p>
    #   @return [Types::AssetFilterConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateAssetFilterInput < Struct.new(
      :domain_identifier,
      :asset_identifier,
      :name,
      :description,
      :configuration,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the asset filter.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where the asset filter is created.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset filter.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asset filter.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the asset filter.</p>
    #   @return [Types::AssetFilterConfiguration]
    # @!attribute created_at
    #   <p>The timestamp at which the asset filter was created.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message that is displayed if the asset filter is not created
    #            successfully.</p>
    #   @return [String]
    # @!attribute effective_column_names
    #   <p>The column names in the asset filter.</p>
    #   @return [Array<String>]
    # @!attribute effective_row_filter
    #   <p>The row filter in the asset filter.</p>
    #   @return [String]
    class CreateAssetFilterOutput < Struct.new(
      :id,
      :domain_id,
      :asset_id,
      :name,
      :description,
      :status,
      :configuration,
      :created_at,
      :error_message,
      :effective_column_names,
      :effective_row_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Asset name.</p>
    #   @return [String]
    # @!attribute domain_identifier
    #   <p>Amazon DataZone domain where the asset is created.</p>
    #   @return [String]
    # @!attribute external_identifier
    #   <p>The external identifier of the asset.</p>
    #            <p>If the value for the <code>externalIdentifier</code> parameter is specified, it must be
    #            a unique value.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The unique identifier of this asset's type.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision of this asset's type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Asset description.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>Glossary terms attached to the asset.</p>
    #   @return [Array<String>]
    # @!attribute forms_input
    #   <p>Metadata forms attached to the asset.</p>
    #   @return [Array<Types::FormInput>]
    # @!attribute owning_project_identifier
    #   <p>The unique identifier of the project that owns this asset.</p>
    #   @return [String]
    # @!attribute prediction_configuration
    #   <p>The configuration of the automatically generated business-friendly metadata for the
    #            asset.</p>
    #   @return [Types::PredictionConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateAssetInput < Struct.new(
      :name,
      :domain_identifier,
      :external_identifier,
      :type_identifier,
      :type_revision,
      :description,
      :glossary_terms,
      :forms_input,
      :owning_project_identifier,
      :prediction_configuration,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the created asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the created asset.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The identifier of the created asset type.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision type of the asset.</p>
    #   @return [String]
    # @!attribute external_identifier
    #   <p>The external identifier of the asset.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the created asset.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the asset was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user that created this asset in the catalog.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp of when the first revision of the asset took place.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The Amazon DataZone user that made the first revision of the asset.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms that are attached to the created asset.</p>
    #   @return [Array<String>]
    # @!attribute owning_project_id
    #   <p>The ID of the Amazon DataZone project that owns the created asset. </p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the asset was created.</p>
    #   @return [String]
    # @!attribute listing
    #   <p>The details of an asset published in an Amazon DataZone catalog.</p>
    #   @return [Types::AssetListingDetails]
    # @!attribute forms_output
    #   <p>The metadata forms that are attached to the created asset.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute read_only_forms_output
    #   <p>The read-only metadata forms that are attached to the created asset.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute latest_time_series_data_point_forms_output
    #   <p>The latest data point that was imported into the time series form for the asset. </p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    # @!attribute prediction_configuration
    #   <p>The configuration of the automatically generated business-friendly metadata for the
    #            asset.</p>
    #   @return [Types::PredictionConfiguration]
    class CreateAssetOutput < Struct.new(
      :id,
      :name,
      :type_identifier,
      :type_revision,
      :external_identifier,
      :revision,
      :description,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      :glossary_terms,
      :owning_project_id,
      :domain_id,
      :listing,
      :forms_output,
      :read_only_forms_output,
      :latest_time_series_data_point_forms_output,
      :prediction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Te revised name of the asset.</p>
    #   @return [String]
    # @!attribute domain_identifier
    #   <p>The unique identifier of the domain where the asset is being revised.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the asset.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision type of the asset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The revised description of the asset.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms to be attached to the asset as part of asset revision.</p>
    #   @return [Array<String>]
    # @!attribute forms_input
    #   <p>The metadata forms to be attached to the asset as part of asset revision.</p>
    #   @return [Array<Types::FormInput>]
    # @!attribute prediction_configuration
    #   <p>The configuration of the automatically generated business-friendly metadata for the
    #            asset.</p>
    #   @return [Types::PredictionConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateAssetRevisionInput < Struct.new(
      :name,
      :domain_identifier,
      :identifier,
      :type_revision,
      :description,
      :glossary_terms,
      :forms_input,
      :prediction_configuration,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the asset revision.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The revised name of the asset.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The identifier of the revision type.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision type of the asset.</p>
    #   @return [String]
    # @!attribute external_identifier
    #   <p>The external identifier of the asset.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The revised asset description.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the asset revision occured.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who performed the asset revision.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp of when the first asset revision occured.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The Amazon DataZone user who performed the first asset revision.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms that were attached to the asset as part of asset revision.</p>
    #   @return [Array<String>]
    # @!attribute owning_project_id
    #   <p>The unique identifier of the revised project that owns the asset.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The unique identifier of the Amazon DataZone domain where the asset was revised.</p>
    #   @return [String]
    # @!attribute listing
    #   <p>The details of an asset published in an Amazon DataZone catalog. </p>
    #   @return [Types::AssetListingDetails]
    # @!attribute forms_output
    #   <p>The metadata forms that were attached to the asset as part of the asset revision.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute read_only_forms_output
    #   <p>The read-only metadata forms that were attached to the asset as part of the asset
    #            revision.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute latest_time_series_data_point_forms_output
    #   <p>The latest data point that was imported into the time series form for the asset. </p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    # @!attribute prediction_configuration
    #   <p>The configuration of the automatically generated business-friendly metadata for the
    #            asset.</p>
    #   @return [Types::PredictionConfiguration]
    class CreateAssetRevisionOutput < Struct.new(
      :id,
      :name,
      :type_identifier,
      :type_revision,
      :external_identifier,
      :revision,
      :description,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      :glossary_terms,
      :owning_project_id,
      :domain_id,
      :listing,
      :forms_output,
      :read_only_forms_output,
      :latest_time_series_data_point_forms_output,
      :prediction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The unique identifier of the Amazon DataZone domain where the custom asset type is being
    #            created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the custom asset type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The descripton of the custom asset type.</p>
    #   @return [String]
    # @!attribute forms_input
    #   <p>The metadata forms that are to be attached to the custom asset type.</p>
    #   @return [Hash<String, Types::FormEntryInput>]
    # @!attribute owning_project_identifier
    #   <p>The identifier of the Amazon DataZone project that is to own the custom asset type.</p>
    #   @return [String]
    class CreateAssetTypeInput < Struct.new(
      :domain_identifier,
      :name,
      :description,
      :forms_input,
      :owning_project_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the asset type was created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the custom asset type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the custom asset type.</p>
    #   @return [String]
    # @!attribute forms_output
    #   <p>The metadata forms that are attached to the asset type.</p>
    #   @return [Hash<String, Types::FormEntryOutput>]
    # @!attribute owning_project_id
    #   <p>The ID of the Amazon DataZone project that currently owns this asset type.</p>
    #   @return [String]
    # @!attribute origin_domain_id
    #   <p>The ID of the Amazon DataZone domain where the asset type was originally created.</p>
    #   @return [String]
    # @!attribute origin_project_id
    #   <p>The ID of the Amazon DataZone project where the asset type was originally created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the asset type is to be created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who creates this custom asset type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the custom type was created.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user that created the custom asset type.</p>
    #   @return [String]
    class CreateAssetTypeOutput < Struct.new(
      :domain_id,
      :name,
      :revision,
      :description,
      :forms_output,
      :owning_project_id,
      :origin_domain_id,
      :origin_project_id,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy grant is applied to child domain units.</p>
    #   @return [Boolean]
    class CreateAssetTypePolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aws_location
    #   <p>The location where the connection is created.</p>
    #   @return [Types::AwsLocation]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A connection description.</p>
    #   @return [String]
    # @!attribute domain_identifier
    #   <p>The ID of the domain where the connection is created.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment where the connection is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The connection name.</p>
    #   @return [String]
    # @!attribute props
    #   <p>The connection props.</p>
    #   @return [Types::ConnectionPropertiesInput]
    class CreateConnectionInput < Struct.new(
      :aws_location,
      :client_token,
      :description,
      :domain_identifier,
      :environment_identifier,
      :name,
      :props,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The connection description.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where the connection is created.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit where the connection is created.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment where the connection is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The connection name.</p>
    #   @return [String]
    # @!attribute physical_endpoints
    #   <p>The physical endpoints of the connection.</p>
    #   @return [Array<Types::PhysicalEndpoint>]
    # @!attribute project_id
    #   <p>The ID of the project where the connection is created.</p>
    #   @return [String]
    # @!attribute props
    #   <p>The connection props.</p>
    #   @return [Types::ConnectionPropertiesOutput]
    # @!attribute type
    #   <p>The connection type.</p>
    #   @return [String]
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
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the data product is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data product.</p>
    #   @return [String]
    # @!attribute owning_project_identifier
    #   <p>The ID of the owning project of the data product.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product.</p>
    #   @return [Array<String>]
    # @!attribute forms_input
    #   <p>The metadata forms of the data product.</p>
    #   @return [Array<Types::FormInput>]
    # @!attribute items
    #   <p>The data assets of the data product.</p>
    #   @return [Array<Types::DataProductItem>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateDataProductInput < Struct.new(
      :domain_identifier,
      :name,
      :owning_project_identifier,
      :description,
      :glossary_terms,
      :forms_input,
      :items,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where the data product lives.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data product.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the data product.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the data product.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data product.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data product.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product.</p>
    #   @return [Array<String>]
    # @!attribute items
    #   <p>The data assets of the data product.</p>
    #   @return [Array<Types::DataProductItem>]
    # @!attribute forms_output
    #   <p>The metadata forms of the data product.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute created_at
    #   <p>The timestamp at which the data product was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data product.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp at which the first revision of the data product was created.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The user who created the first revision of the data product.</p>
    #   @return [String]
    class CreateDataProductOutput < Struct.new(
      :domain_id,
      :id,
      :revision,
      :owning_project_id,
      :name,
      :status,
      :description,
      :glossary_terms,
      :items,
      :forms_output,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:status] = 'CREATED' unless options.key?(:status)
        super
      end
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the data product revision is created.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data product revision.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data product revision.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product revision.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product revision.</p>
    #   @return [Array<String>]
    # @!attribute items
    #   <p>The data assets of the data product revision.</p>
    #   @return [Array<Types::DataProductItem>]
    # @!attribute forms_input
    #   <p>The metadata forms of the data product revision.</p>
    #   @return [Array<Types::FormInput>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateDataProductRevisionInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :glossary_terms,
      :items,
      :forms_input,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where data product revision is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data product revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the data product revision.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the data product revision.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data product revision.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data product revision.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product revision.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product revision.</p>
    #   @return [Array<String>]
    # @!attribute items
    #   <p>The data assets of the data product revision.</p>
    #   @return [Array<Types::DataProductItem>]
    # @!attribute forms_output
    #   <p>The metadata forms of the data product revision.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute created_at
    #   <p>The timestamp at which the data product revision is created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data product revision.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp at which the first revision of the data product is created.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The user who created the first revision of the data product.</p>
    #   @return [String]
    class CreateDataProductRevisionOutput < Struct.new(
      :domain_id,
      :id,
      :revision,
      :owning_project_id,
      :name,
      :status,
      :description,
      :glossary_terms,
      :items,
      :forms_output,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:status] = 'CREATED' unless options.key?(:status)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source.</p>
    #   @return [String]
    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where the data source is created.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The identifier of the Amazon DataZone project in which you want to add this data
    #            source.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The unique identifier of the Amazon DataZone environment to which the data source publishes
    #            assets. </p>
    #   @return [String]
    # @!attribute connection_identifier
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source. In Amazon DataZone, you can use data sources to import
    #            technical metadata of assets (data) from the source databases or data warehouses into
    #            Amazon DataZone. In the current release of Amazon DataZone, you can create and run data
    #            sources for Amazon Web Services Glue and Amazon Redshift.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies the configuration of the data source. It can be set to either
    #               <code>glueRunConfiguration</code> or <code>redshiftRunConfiguration</code>.</p>
    #   @return [Types::DataSourceConfigurationInput]
    # @!attribute recommendation
    #   <p>Specifies whether the business name generation is to be enabled for this data
    #            source.</p>
    #   @return [Types::RecommendationConfiguration]
    # @!attribute enable_setting
    #   <p>Specifies whether the data source is enabled.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule of the data source runs.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute publish_on_import
    #   <p>Specifies whether the assets that this data source creates in the inventory are to be
    #            also automatically published to the catalog.</p>
    #   @return [Boolean]
    # @!attribute asset_forms_input
    #   <p>The metadata forms that are to be attached to the assets that this data source works
    #            with.</p>
    #   @return [Array<Types::FormInput>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateDataSourceInput < Struct.new(
      :name,
      :description,
      :domain_identifier,
      :project_identifier,
      :environment_identifier,
      :connection_identifier,
      :type,
      :configuration,
      :recommendation,
      :enable_setting,
      :schedule,
      :publish_on_import,
      :asset_forms_input,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the data source is created.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the Amazon DataZone project to which the data source is added.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the Amazon DataZone environment to which the data source publishes
    #            assets. </p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies the configuration of the data source. It can be set to either
    #               <code>glueRunConfiguration</code> or <code>redshiftRunConfiguration</code>.</p>
    #   @return [Types::DataSourceConfigurationOutput]
    # @!attribute recommendation
    #   <p>Specifies whether the business name generation is to be enabled for this data
    #            source.</p>
    #   @return [Types::RecommendationConfiguration]
    # @!attribute enable_setting
    #   <p>Specifies whether the data source is enabled.</p>
    #   @return [String]
    # @!attribute publish_on_import
    #   <p>Specifies whether the assets that this data source creates in the inventory are to be
    #            also automatically published to the catalog.</p>
    #   @return [Boolean]
    # @!attribute asset_forms_output
    #   <p>The metadata forms attached to the assets that this data source creates.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute schedule
    #   <p>The schedule of the data source runs.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute last_run_status
    #   <p>The status of the last run of this data source.</p>
    #   @return [String]
    # @!attribute last_run_at
    #   <p>The timestamp that specifies when the data source was last run.</p>
    #   @return [Time]
    # @!attribute last_run_error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when the data source was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data source was updated.</p>
    #   @return [Time]
    class CreateDataSourceOutput < Struct.new(
      :id,
      :status,
      :type,
      :name,
      :description,
      :domain_id,
      :project_id,
      :environment_id,
      :connection_id,
      :configuration,
      :recommendation,
      :enable_setting,
      :publish_on_import,
      :asset_forms_output,
      :schedule,
      :last_run_status,
      :last_run_at,
      :last_run_error_message,
      :error_message,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute single_sign_on
    #   <p>The single-sign on configuration of the Amazon DataZone domain.</p>
    #   @return [Types::SingleSignOn]
    # @!attribute domain_execution_role
    #   <p>The domain execution role that is created when an Amazon DataZone domain is created. The
    #            domain execution role is created in the Amazon Web Services account that houses the
    #            Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The identifier of the Amazon Web Services Key Management Service (KMS) key that is used
    #            to encrypt the Amazon DataZone domain, metadata, and reporting data. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags specified for the Amazon DataZone domain.</p>
    #   @return [Hash<String, String>]
    # @!attribute domain_version
    #   <p>The version of the domain that is created.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The service role of the domain that is created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateDomainInput < Struct.new(
      :name,
      :description,
      :single_sign_on,
      :domain_execution_role,
      :kms_key_identifier,
      :tags,
      :domain_version,
      :service_role,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute root_domain_unit_id
    #   <p>The ID of the root domain unit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute single_sign_on
    #   <p>The single-sign on configuration of the Amazon DataZone domain.</p>
    #   @return [Types::SingleSignOn]
    # @!attribute domain_execution_role
    #   <p>The domain execution role that is created when an Amazon DataZone domain is created. The
    #            domain execution role is created in the Amazon Web Services account that houses the
    #            Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The identifier of the Amazon Web Services Key Management Service (KMS) key that is used
    #            to encrypt the Amazon DataZone domain, metadata, and reporting data. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The URL of the data portal for this Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags specified for the Amazon DataZone domain.</p>
    #   @return [Hash<String, String>]
    # @!attribute domain_version
    #   <p>The version of the domain that is created.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>Te service role of the domain that is created.</p>
    #   @return [String]
    class CreateDomainOutput < Struct.new(
      :id,
      :root_domain_unit_id,
      :name,
      :description,
      :single_sign_on,
      :domain_execution_role,
      :arn,
      :kms_key_identifier,
      :status,
      :portal_url,
      :tags,
      :domain_version,
      :service_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to crate a domain unit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain unit.</p>
    #   @return [String]
    # @!attribute parent_domain_unit_identifier
    #   <p>The ID of the parent domain unit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain unit.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateDomainUnitInput < Struct.new(
      :domain_identifier,
      :name,
      :parent_domain_unit_identifier,
      :description,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where the domain unit was created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain unit.</p>
    #   @return [String]
    # @!attribute parent_domain_unit_id
    #   <p>The ID of the parent domain unit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain unit.</p>
    #   @return [String]
    # @!attribute owners
    #   <p>The owners of the domain unit.</p>
    #   @return [Array<Types::DomainUnitOwnerProperties>]
    # @!attribute ancestor_domain_unit_ids
    #   <p>The IDs of the ancestor domain units.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp at which the domain unit was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the domain unit.</p>
    #   @return [String]
    class CreateDomainUnitOutput < Struct.new(
      :id,
      :domain_id,
      :name,
      :parent_domain_unit_id,
      :description,
      :owners,
      :ancestor_domain_unit_ids,
      :created_at,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy grant is applied to child domain units.</p>
    #   @return [Boolean]
    class CreateDomainUnitPolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment action is created.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment in which the environment action is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the environment action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute description
    #   <p>The description of the environment action that is being created in the
    #            environment.</p>
    #   @return [String]
    class CreateEnvironmentActionInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :name,
      :parameters,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain in which the environment action is created.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment in which the environment is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the environment action.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the environment action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute description
    #   <p>The description of the environment action.</p>
    #   @return [String]
    class CreateEnvironmentActionOutput < Struct.new(
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_identifier
    #   <p>The identifier of the Amazon DataZone project in which this environment is created.</p>
    #   @return [String]
    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the environment is created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute environment_profile_identifier
    #   <p>The identifier of the environment profile that is used to create this Amazon DataZone
    #            environment.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of this Amazon DataZone environment.</p>
    #   @return [Array<Types::EnvironmentParameter>]
    # @!attribute glossary_terms
    #   <p>The glossary terms that can be used in this Amazon DataZone environment.</p>
    #   @return [Array<String>]
    # @!attribute environment_account_identifier
    #   <p>The ID of the account in which the environment is being created.</p>
    #   @return [String]
    # @!attribute environment_account_region
    #   <p>The region of the account in which the environment is being created.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>The ID of the blueprint with which the environment is being created.</p>
    #   @return [String]
    # @!attribute deployment_order
    #   <p>The deployment order of the environment.</p>
    #   @return [Integer]
    # @!attribute environment_configuration_id
    #   <p>The configuration ID of the environment.</p>
    #   @return [String]
    class CreateEnvironmentInput < Struct.new(
      :project_identifier,
      :domain_identifier,
      :description,
      :name,
      :environment_profile_identifier,
      :user_parameters,
      :glossary_terms,
      :environment_account_identifier,
      :environment_account_region,
      :environment_blueprint_identifier,
      :deployment_order,
      :environment_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the Amazon DataZone project in which this environment is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the environment is created.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created this environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this environment was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of this environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute environment_profile_id
    #   <p>The ID of the environment profile with which this Amazon DataZone environment was
    #            created.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account in which the Amazon DataZone environment is created.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region in which the Amazon DataZone environment is created.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>The provisioned resources of this Amazon DataZone environment.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute status
    #   <p>The status of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute environment_actions
    #   <p>The configurable actions of this Amazon DataZone environment.</p>
    #   @return [Array<Types::ConfigurableEnvironmentAction>]
    # @!attribute glossary_terms
    #   <p>The glossary terms that can be used in this Amazon DataZone environment.</p>
    #   @return [Array<String>]
    # @!attribute user_parameters
    #   <p>The user parameters of this Amazon DataZone environment.</p>
    #   @return [Array<Types::CustomParameter>]
    # @!attribute last_deployment
    #   <p>The details of the last deployment of this Amazon DataZone environment.</p>
    #   @return [Types::Deployment]
    # @!attribute provisioning_properties
    #   <p>The provisioning properties of this Amazon DataZone environment.</p>
    #   @return [Types::ProvisioningProperties]
    # @!attribute deployment_properties
    #   <p>The deployment properties of this Amazon DataZone environment.</p>
    #   @return [Types::DeploymentProperties]
    # @!attribute environment_blueprint_id
    #   <p>The ID of the blueprint with which this Amazon DataZone environment was created.</p>
    #   @return [String]
    # @!attribute environment_configuration_id
    #   <p>The configuration ID of the environment.</p>
    #   @return [String]
    class CreateEnvironmentOutput < Struct.new(
      :project_id,
      :id,
      :domain_id,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_profile_id,
      :aws_account_id,
      :aws_account_region,
      :provider,
      :provisioned_resources,
      :status,
      :environment_actions,
      :glossary_terms,
      :user_parameters,
      :last_deployment,
      :provisioning_properties,
      :deployment_properties,
      :environment_blueprint_id,
      :environment_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:environment_profile_id] = '' unless options.key?(:environment_profile_id)
        super
      end
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this environment profile is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this Amazon DataZone environment profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this Amazon DataZone environment profile.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>The ID of the blueprint with which this environment profile is created.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The identifier of the project in which to create the environment profile.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of this Amazon DataZone environment profile.</p>
    #   @return [Array<Types::EnvironmentParameter>]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account in which the Amazon DataZone environment is created.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region in which this environment profile is created.</p>
    #   @return [String]
    class CreateEnvironmentProfileInput < Struct.new(
      :domain_identifier,
      :name,
      :description,
      :environment_blueprint_identifier,
      :project_identifier,
      :user_parameters,
      :aws_account_id,
      :aws_account_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of this Amazon DataZone environment profile.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this environment profile is created.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID in which this Amazon DataZone environment profile is
    #            created.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region in which this Amazon DataZone environment profile is
    #            created.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created this environment profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when this environment profile was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this environment profile was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of this Amazon DataZone environment profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this Amazon DataZone environment profile.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The ID of the blueprint with which this environment profile is created.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the Amazon DataZone project in which this environment profile is created.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of this Amazon DataZone environment profile.</p>
    #   @return [Array<Types::CustomParameter>]
    class CreateEnvironmentProfileOutput < Struct.new(
      :id,
      :domain_id,
      :aws_account_id,
      :aws_account_region,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_blueprint_id,
      :project_id,
      :user_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    class CreateEnvironmentProfilePolicyGrantDetail < Struct.new(
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this Amazon DataZone metadata form type.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of this Amazon DataZone metadata form type.</p>
    #   @return [Types::Model]
    # @!attribute owning_project_identifier
    #   <p>The ID of the Amazon DataZone project that owns this metadata form type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this Amazon DataZone metadata form type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this Amazon DataZone metadata form type.</p>
    #   @return [String]
    class CreateFormTypeInput < Struct.new(
      :domain_identifier,
      :name,
      :model,
      :owning_project_identifier,
      :status,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this Amazon DataZone metadata form type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of this Amazon DataZone metadata form type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this Amazon DataZone metadata form type.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns this Amazon DataZone metadata form type.</p>
    #   @return [String]
    # @!attribute origin_domain_id
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type was originally
    #            created.</p>
    #   @return [String]
    # @!attribute origin_project_id
    #   <p>The ID of the project in which this Amazon DataZone metadata form type was originally
    #            created.</p>
    #   @return [String]
    class CreateFormTypeOutput < Struct.new(
      :domain_id,
      :name,
      :revision,
      :description,
      :owning_project_id,
      :origin_domain_id,
      :origin_project_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy grant is applied to child domain units.</p>
    #   @return [Boolean]
    class CreateFormTypePolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this business glossary.</p>
    #   @return [String]
    # @!attribute owning_project_identifier
    #   <p>The ID of the project that currently owns business glossary.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this business glossary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this business glossary.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateGlossaryInput < Struct.new(
      :domain_identifier,
      :name,
      :owning_project_identifier,
      :description,
      :status,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this business glossary is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of this business glossary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this business glossary.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the project that currently owns this business glossary.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this business glossary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this business glossary.</p>
    #   @return [String]
    class CreateGlossaryOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :description,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy grant is applied to child domain units.</p>
    #   @return [Boolean]
    class CreateGlossaryPolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary term is created.</p>
    #   @return [String]
    # @!attribute glossary_identifier
    #   <p>The ID of the business glossary in which this term is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this business glossary term.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this business glossary term.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The short description of this business glossary term.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>The long description of this business glossary term.</p>
    #   @return [String]
    # @!attribute term_relations
    #   <p>The term relations of this business glossary term.</p>
    #   @return [Types::TermRelations]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateGlossaryTermInput < Struct.new(
      :domain_identifier,
      :glossary_identifier,
      :name,
      :status,
      :short_description,
      :long_description,
      :term_relations,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of this business glossary term.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this business glossary term is created.</p>
    #   @return [String]
    # @!attribute glossary_id
    #   <p>The ID of the business glossary in which this term is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this business glossary term.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this business glossary term.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The short description of this business glossary term.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>The long description of this business glossary term.</p>
    #   @return [String]
    # @!attribute term_relations
    #   <p>The term relations of this business glossary term.</p>
    #   @return [Types::TermRelations]
    class CreateGlossaryTermOutput < Struct.new(
      :id,
      :domain_id,
      :glossary_id,
      :name,
      :status,
      :short_description,
      :long_description,
      :term_relations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the group profile is created.</p>
    #   @return [String]
    # @!attribute group_identifier
    #   <p>The identifier of the group for which the group profile is created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateGroupProfileInput < Struct.new(
      :domain_identifier,
      :group_identifier,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the group profile is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the group profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the group profile.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group for which group profile is created.</p>
    #   @return [String]
    class CreateGroupProfileOutput < Struct.new(
      :domain_id,
      :id,
      :status,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of an entity.</p>
    #   @return [String]
    # @!attribute entity_revision
    #   <p>The revision of an asset.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies whether to publish or unpublish a listing.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateListingChangeSetInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :entity_revision,
      :action,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute listing_id
    #   <p>The ID of the listing (a record of an asset at a given time).</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of a listing.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the status of the listing.</p>
    #   @return [String]
    class CreateListingChangeSetOutput < Struct.new(
      :listing_id,
      :listing_revision,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies whether to create a project from project profile policy grant details.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether to include child domain units when creating a project from project
    #            profile policy grant details</p>
    #   @return [Boolean]
    # @!attribute project_profiles
    #   <p>Specifies project profiles when creating a project from project profile policy grant
    #            details</p>
    #   @return [Array<String>]
    class CreateProjectFromProjectProfilePolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      :project_profiles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this project is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon DataZone project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon DataZone project.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms that can be used in this Amazon DataZone project.</p>
    #   @return [Array<String>]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit. This parameter is not required and if it is not specified,
    #            then the project is created at the root domain unit level.</p>
    #   @return [String]
    # @!attribute project_profile_id
    #   <p>The ID of the project profile.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of the project.</p>
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    class CreateProjectInput < Struct.new(
      :domain_identifier,
      :name,
      :description,
      :glossary_terms,
      :domain_unit_id,
      :project_profile_id,
      :user_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which project membership is created.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The ID of the project for which this project membership was created.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The project member whose project membership was created.</p>
    #   @return [Types::Member]
    # @!attribute designation
    #   <p>The designation of the project membership.</p>
    #   @return [String]
    class CreateProjectMembershipInput < Struct.new(
      :domain_identifier,
      :project_identifier,
      :member,
      :designation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateProjectMembershipOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the project was created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the Amazon DataZone project.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    # @!attribute project_status
    #   <p>The status of the Amazon DataZone project that was created.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Array<Types::ProjectDeletionError>]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the project.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the project was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the project was last updated.</p>
    #   @return [Time]
    # @!attribute glossary_terms
    #   <p>The glossary terms that can be used in the project.</p>
    #   @return [Array<String>]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute project_profile_id
    #   <p>The project profile ID.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of the project.</p>
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    # @!attribute environment_deployment_details
    #   <p>The environment deployment details.</p>
    #   @return [Types::EnvironmentDeploymentDetails]
    class CreateProjectOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :project_status,
      :failure_reasons,
      :created_by,
      :created_at,
      :last_updated_at,
      :glossary_terms,
      :domain_unit_id,
      :project_profile_id,
      :user_parameters,
      :environment_deployment_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy grant is applied to child domain units.</p>
    #   @return [Boolean]
    class CreateProjectPolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>A domain ID of the project profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Project profile name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of a project profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Project profile status.</p>
    #   @return [String]
    # @!attribute environment_configurations
    #   <p>Environment configurations of the project profile.</p>
    #   @return [Array<Types::EnvironmentConfiguration>]
    # @!attribute domain_unit_identifier
    #   <p>A domain unit ID of the project profile.</p>
    #   @return [String]
    class CreateProjectProfileInput < Struct.new(
      :domain_identifier,
      :name,
      :description,
      :status,
      :environment_configurations,
      :domain_unit_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where a project profile is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Project profile ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Project profile name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A project profile description.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Project profile status.</p>
    #   @return [String]
    # @!attribute environment_configurations
    #   <p>Environment configurations of a project profile.</p>
    #   @return [Array<Types::EnvironmentConfiguration>]
    # @!attribute created_by
    #   <p>A user who created a project profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp at which a project profile is created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp when a project profile was last updated.</p>
    #   @return [Time]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit where a project profile is created.</p>
    #   @return [String]
    class CreateProjectProfileOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :status,
      :environment_configurations,
      :created_by,
      :created_at,
      :last_updated_at,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the rule is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of the rule.</p>
    #   @return [Types::RuleTarget]
    # @!attribute action
    #   <p>The action of the rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scope of the rule.</p>
    #   @return [Types::RuleScope]
    # @!attribute detail
    #   <p>The detail of the rule.</p>
    #   @return [Types::RuleDetail]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateRuleInput < Struct.new(
      :domain_identifier,
      :name,
      :target,
      :action,
      :scope,
      :detail,
      :description,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of the rule.</p>
    #   @return [Types::RuleTarget]
    # @!attribute action
    #   <p>The action of the rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scope of the rule.</p>
    #   @return [Types::RuleScope]
    # @!attribute detail
    #   <p>The detail of the rule.</p>
    #   @return [Types::RuleDetail]
    # @!attribute target_type
    #   <p>The target type of the rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the rule is created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who creates the rule.</p>
    #   @return [String]
    class CreateRuleOutput < Struct.new(
      :identifier,
      :name,
      :rule_type,
      :target,
      :action,
      :scope,
      :detail,
      :target_type,
      :description,
      :created_at,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment in which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute subscription_target_identifier
    #   <p>The ID of the subscription target for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute granted_entity
    #   <p>The entity to which the subscription is to be granted.</p>
    #   @return [Types::GrantedEntityInput]
    # @!attribute asset_target_names
    #   <p>The names of the assets for which the subscription grant is created.</p>
    #   @return [Array<Types::AssetTargetNameMap>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateSubscriptionGrantInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :subscription_target_identifier,
      :granted_entity,
      :asset_target_names,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription grant.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription grant.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription grant.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp of when the subscription grant is created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>A timestamp of when the subscription grant was updated.</p>
    #   @return [Time]
    # @!attribute subscription_target_id
    #   <p>The ID of the subscription target for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute granted_entity
    #   <p>The entity to which the subscription is granted.</p>
    #   @return [Types::GrantedEntity]
    # @!attribute status
    #   <p>The status of the subscription grant.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets for which the subscription grant is created.</p>
    #   @return [Array<Types::SubscribedAsset>]
    # @!attribute subscription_id
    #   <p>The identifier of the subscription grant.</p>
    #   @deprecated
    #     Multiple subscriptions can exist for a single grant
    #   @return [String]
    class CreateSubscriptionGrantOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :created_at,
      :updated_at,
      :subscription_target_id,
      :granted_entity,
      :status,
      :assets,
      :subscription_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription request is created.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>The Amazon DataZone principals for whom the subscription request is created.</p>
    #   @return [Array<Types::SubscribedPrincipalInput>]
    # @!attribute subscribed_listings
    #   <p>The published asset for which the subscription grant is to be created.</p>
    #   @return [Array<Types::SubscribedListingInput>]
    # @!attribute request_reason
    #   <p>The reason for the subscription request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    # @!attribute metadata_forms
    #   <p>The metadata form included in the subscription request.</p>
    #   @return [Array<Types::FormInput>]
    class CreateSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :subscribed_principals,
      :subscribed_listings,
      :request_reason,
      :client_token,
      :metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription request.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription request.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription request.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in whcih the subscription request is created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp of when the subscription request is created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription request was updated.</p>
    #   @return [Time]
    # @!attribute request_reason
    #   <p>The reason for the subscription request.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>The subscribed principals of the subscription request.</p>
    #   @return [Array<Types::SubscribedPrincipal>]
    # @!attribute subscribed_listings
    #   <p>The published asset for which the subscription grant is to be created.</p>
    #   @return [Array<Types::SubscribedListing>]
    # @!attribute reviewer_id
    #   <p>The ID of the reviewer of the subscription request.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>The decision comment of the subscription request.</p>
    #   @return [String]
    # @!attribute existing_subscription_id
    #   <p>The ID of the existing subscription.</p>
    #   @return [String]
    # @!attribute metadata_forms
    #   <p>The metadata form included in the subscription request.</p>
    #   @return [Array<Types::FormOutput>]
    class CreateSubscriptionRequestOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :request_reason,
      :subscribed_principals,
      :subscribed_listings,
      :reviewer_id,
      :decision_comment,
      :existing_subscription_id,
      :metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which subscription target is created.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment in which subscription target is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the subscription target.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the subscription target.</p>
    #   @return [String]
    # @!attribute subscription_target_config
    #   <p>The configuration of the subscription target.</p>
    #   @return [Array<Types::SubscriptionTargetForm>]
    # @!attribute authorized_principals
    #   <p>The authorized principals of the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute manage_access_role
    #   <p>The manage access role that is used to create the subscription target.</p>
    #   @return [String]
    # @!attribute applicable_asset_types
    #   <p>The asset types that can be included in the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute provider
    #   <p>The provider of the subscription target.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateSubscriptionTargetInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :name,
      :type,
      :subscription_target_config,
      :authorized_principals,
      :manage_access_role,
      :applicable_asset_types,
      :provider,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription target.</p>
    #   @return [String]
    # @!attribute authorized_principals
    #   <p>The authorised principals of the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the subscription target was created.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>???</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment in which the subscription target was created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the subscription target.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the subscription target.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription target.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription target was updated.</p>
    #   @return [Time]
    # @!attribute manage_access_role
    #   <p>The manage access role with which the subscription target was created.</p>
    #   @return [String]
    # @!attribute applicable_asset_types
    #   <p>The asset types that can be included in the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute subscription_target_config
    #   <p>The configuration of the subscription target.</p>
    #   @return [Array<Types::SubscriptionTargetForm>]
    # @!attribute provider
    #   <p>The provider of the subscription target.</p>
    #   @return [String]
    class CreateSubscriptionTargetOutput < Struct.new(
      :id,
      :authorized_principals,
      :domain_id,
      :project_id,
      :environment_id,
      :name,
      :type,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at,
      :manage_access_role,
      :applicable_asset_types,
      :subscription_target_config,
      :provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a user profile is created.</p>
    #   @return [String]
    # @!attribute user_identifier
    #   <p>The identifier of the user for which the user profile is created.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The user type of the user for which the user profile is created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class CreateUserProfileInput < Struct.new(
      :domain_identifier,
      :user_identifier,
      :user_type,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a user profile is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the user profile.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the user profile.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the user profile in Amazon DataZone.</p>
    #   @return [Types::UserProfileDetails]
    class CreateUserProfileOutput < Struct.new(
      :domain_id,
      :id,
      :type,
      :status,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The custom Amazon Web Services Lambda handler within an account pool.</p>
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Amazon Web Services Lambda function for the custom Amazon Web Services
    #            Lambda handler.</p>
    #   @return [String]
    # @!attribute lambda_execution_role_arn
    #   <p>The ARN of the IAM role that enables Amazon SageMaker Unified Studio to invoke the
    #               Amazon Web Services Lambda funtion if the account source is the custom account pool
    #            handler.</p>
    #   @return [String]
    class CustomAccountPoolHandler < Struct.new(
      :lambda_function_arn,
      :lambda_execution_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of user parameters of an environment blueprint.</p>
    # @!attribute key_name
    #   <p>The key name of the parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the parameter.</p>
    #   @return [String]
    # @!attribute field_type
    #   <p>The filed type of the parameter.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the parameter.</p>
    #   @return [String]
    # @!attribute is_editable
    #   <p>Specifies whether the parameter is editable.</p>
    #   @return [Boolean]
    # @!attribute is_optional
    #   <p>Specifies whether the custom parameter is optional.</p>
    #   @return [Boolean]
    class CustomParameter < Struct.new(
      :key_name,
      :description,
      :field_type,
      :default_value,
      :is_editable,
      :is_optional,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataAssetActivityStatus
      FAILED = 'FAILED'
      PUBLISHING_FAILED = 'PUBLISHING_FAILED'
      SUCCEEDED_CREATED = 'SUCCEEDED_CREATED'
      SUCCEEDED_UPDATED = 'SUCCEEDED_UPDATED'
      SKIPPED_ALREADY_IMPORTED = 'SKIPPED_ALREADY_IMPORTED'
      SKIPPED_ARCHIVED = 'SKIPPED_ARCHIVED'
      SKIPPED_NO_ACCESS = 'SKIPPED_NO_ACCESS'
      UNCHANGED = 'UNCHANGED'
    end

    # <p>The data product.</p>
    # @!attribute item_type
    #   <p>The type of the data product.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data product.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the data product.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product.</p>
    #   @return [Array<String>]
    class DataProductItem < Struct.new(
      :item_type,
      :identifier,
      :revision,
      :glossary_terms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The additional attributes of an Amazon DataZone data product.</p>
    # @!attribute match_rationale
    #   <p>List of rationales indicating why this item was matched by search.</p>
    #   @return [Array<Types::MatchRationaleItem>]
    class DataProductItemAdditionalAttributes < Struct.new(
      :match_rationale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataProductItemType
      ASSET = 'ASSET'
    end

    # <p>The data product listing.</p>
    # @!attribute data_product_id
    #   <p>The ID of the data product listing.</p>
    #   @return [String]
    # @!attribute data_product_revision
    #   <p>The revision of the data product listing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the data product listing was created.</p>
    #   @return [Time]
    # @!attribute forms
    #   <p>The metadata forms of the data product listing.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product listing.</p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the data product listing.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The data assets of the data product listing.</p>
    #   @return [Array<Types::ListingSummary>]
    class DataProductListing < Struct.new(
      :data_product_id,
      :data_product_revision,
      :created_at,
      :forms,
      :glossary_terms,
      :owning_project_id,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The asset of the data product listing.</p>
    # @!attribute listing_id
    #   <p>The ID of the listing.</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of the listing.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset of the data product. </p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The entity ID of the asset of the asset of the data product. </p>
    #   @return [String]
    # @!attribute entity_revision
    #   <p>The revision of the asset of the asset of the data product. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset of the asset of the data product. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the asset of the data product listing was created. </p>
    #   @return [Time]
    # @!attribute listing_created_by
    #   <p>The timestamp at which the listing was created.</p>
    #   @return [String]
    # @!attribute listing_updated_by
    #   <p>The user who updated the listing.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the asset of the asset of the data product. </p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the asset of the data product. </p>
    #   @return [String]
    # @!attribute additional_attributes
    #   <p>The additional attributes of the asset of the data product.</p>
    #   @return [Types::DataProductListingItemAdditionalAttributes]
    # @!attribute items
    #   <p>The data of the asset of the data product. </p>
    #   @return [Array<Types::ListingSummaryItem>]
    class DataProductListingItem < Struct.new(
      :listing_id,
      :listing_revision,
      :name,
      :entity_id,
      :entity_revision,
      :description,
      :created_at,
      :listing_created_by,
      :listing_updated_by,
      :glossary_terms,
      :owning_project_id,
      :additional_attributes,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The additional attributes of the asset of the data product. </p>
    # @!attribute forms
    #   <p>The metadata forms of the asset of the data product. </p>
    #   @return [String]
    # @!attribute match_rationale
    #   <p>List of rationales indicating why this item was matched by search.</p>
    #   @return [Array<Types::MatchRationaleItem>]
    class DataProductListingItemAdditionalAttributes < Struct.new(
      :forms,
      :match_rationale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data product.</p>
    # @!attribute domain_id
    #   <p>The ID of the domain where the data product lives.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data product.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data product.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the data product.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp at which the data product was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data product.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp at which first revision of the data product was created.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The user who created the first revision of the data product.</p>
    #   @return [String]
    # @!attribute additional_attributes
    #   <p>The additional attributes of an Amazon DataZone data product.</p>
    #   @return [Types::DataProductItemAdditionalAttributes]
    class DataProductResultItem < Struct.new(
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :description,
      :glossary_terms,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data product revision.</p>
    # @!attribute domain_id
    #   <p>The ID of the domain where the data product revision lives.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data product revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The data product revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the data product revision was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data product revision.</p>
    #   @return [String]
    class DataProductRevision < Struct.new(
      :domain_id,
      :id,
      :revision,
      :created_at,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataProductStatus
      CREATED = 'CREATED'
      CREATING = 'CREATING'
      CREATE_FAILED = 'CREATE_FAILED'
    end

    # <p>The configuration of the data source.</p>
    # @!attribute glue_run_configuration
    #   <p>The configuration of the Amazon Web Services Glue data source.</p>
    #   @return [Types::GlueRunConfigurationInput]
    # @!attribute redshift_run_configuration
    #   <p>The configuration of the Amazon Redshift data source.</p>
    #   @return [Types::RedshiftRunConfigurationInput]
    # @!attribute sage_maker_run_configuration
    #   <p>The Amazon SageMaker run configuration.</p>
    #   @return [Types::SageMakerRunConfigurationInput]
    class DataSourceConfigurationInput < Struct.new(
      :glue_run_configuration,
      :redshift_run_configuration,
      :sage_maker_run_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class GlueRunConfiguration < DataSourceConfigurationInput; end
      class RedshiftRunConfiguration < DataSourceConfigurationInput; end
      class SageMakerRunConfiguration < DataSourceConfigurationInput; end
      class Unknown < DataSourceConfigurationInput; end
    end

    # <p>The configuration of the data source.</p>
    # @!attribute glue_run_configuration
    #   <p>The configuration of the Amazon Web Services Glue data source.</p>
    #   @return [Types::GlueRunConfigurationOutput]
    # @!attribute redshift_run_configuration
    #   <p>The configuration of the Amazon Redshift data source.</p>
    #   @return [Types::RedshiftRunConfigurationOutput]
    # @!attribute sage_maker_run_configuration
    #   <p>The Amazon SageMaker run configuration.</p>
    #   @return [Types::SageMakerRunConfigurationOutput]
    class DataSourceConfigurationOutput < Struct.new(
      :glue_run_configuration,
      :redshift_run_configuration,
      :sage_maker_run_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class GlueRunConfiguration < DataSourceConfigurationOutput; end
      class RedshiftRunConfiguration < DataSourceConfigurationOutput; end
      class SageMakerRunConfiguration < DataSourceConfigurationOutput; end
      class Unknown < DataSourceConfigurationOutput; end
    end

    # <p>The details of the error message that is returned if the operation cannot be
    #          successfully completed.</p>
    # @!attribute error_type
    #   <p>The type of the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [String]
    # @!attribute error_detail
    #   <p>The details of the error message that is returned if the operation cannot be
    #            successfully completed.</p>
    #   @return [String]
    class DataSourceErrorMessage < Struct.new(
      :error_type,
      :error_detail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataSourceErrorType
      ACCESS_DENIED_EXCEPTION = 'ACCESS_DENIED_EXCEPTION'
      CONFLICT_EXCEPTION = 'CONFLICT_EXCEPTION'
      INTERNAL_SERVER_EXCEPTION = 'INTERNAL_SERVER_EXCEPTION'
      RESOURCE_NOT_FOUND_EXCEPTION = 'RESOURCE_NOT_FOUND_EXCEPTION'
      SERVICE_QUOTA_EXCEEDED_EXCEPTION = 'SERVICE_QUOTA_EXCEEDED_EXCEPTION'
      THROTTLING_EXCEPTION = 'THROTTLING_EXCEPTION'
      VALIDATION_EXCEPTION = 'VALIDATION_EXCEPTION'
    end

    # <p>The activity details of the data source run.</p>
    # @!attribute database
    #   <p>The database included in the data source run activity.</p>
    #   @return [String]
    # @!attribute data_source_run_id
    #   <p>The identifier of the data source for the data source run activity.</p>
    #   @return [String]
    # @!attribute technical_name
    #   <p>The technical name included in the data source run activity.</p>
    #   @return [String]
    # @!attribute data_asset_status
    #   <p>The status of the asset included in the data source run activity.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The project ID included in the data source run activity.</p>
    #   @return [String]
    # @!attribute data_asset_id
    #   <p>The identifier of the asset included in the data source run activity.</p>
    #   @return [String]
    # @!attribute technical_description
    #   <p>The technical description included in the data source run activity.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The details of the error message that is returned if the operation cannot be
    #            successfully completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute lineage_summary
    #   <p>The data lineage summary.</p>
    #   @return [Types::LineageInfo]
    # @!attribute created_at
    #   <p>The timestamp of when data source run activity was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when data source run activity was updated.</p>
    #   @return [Time]
    class DataSourceRunActivity < Struct.new(
      :database,
      :data_source_run_id,
      :technical_name,
      :data_asset_status,
      :project_id,
      :data_asset_id,
      :technical_description,
      :error_message,
      :lineage_summary,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The run lineage summary of a data source.</p>
    # @!attribute import_status
    #   <p>The import status that's part of the run lineage summary of a data source.</p>
    #   @return [String]
    class DataSourceRunLineageSummary < Struct.new(
      :import_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataSourceRunStatus
      REQUESTED = 'REQUESTED'
      RUNNING = 'RUNNING'
      FAILED = 'FAILED'
      PARTIALLY_SUCCEEDED = 'PARTIALLY_SUCCEEDED'
      SUCCESS = 'SUCCESS'
    end

    # <p>The details of a data source run.</p>
    # @!attribute id
    #   <p>The identifier of the data source run.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source of the data source run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source run.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The project ID of the data source run.</p>
    #   @return [String]
    # @!attribute run_statistics_for_assets
    #   <p>The asset statistics from the data source run.</p>
    #   @return [Types::RunStatisticsForAssets]
    # @!attribute error_message
    #   <p>The details of the error message that is returned if the operation cannot be
    #            successfully completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when a data source run was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when a data source run was updated.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The timestamp of when a data source run was started.</p>
    #   @return [Time]
    # @!attribute stopped_at
    #   <p>The timestamp of when a data source run was stopped.</p>
    #   @return [Time]
    # @!attribute lineage_summary
    #   <p>The run lineage summary of a data source.</p>
    #   @return [Types::DataSourceRunLineageSummary]
    class DataSourceRunSummary < Struct.new(
      :id,
      :data_source_id,
      :type,
      :status,
      :project_id,
      :run_statistics_for_assets,
      :error_message,
      :created_at,
      :updated_at,
      :started_at,
      :stopped_at,
      :lineage_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataSourceRunType
      PRIORITIZED = 'PRIORITIZED'
      SCHEDULED = 'SCHEDULED'
    end

    module DataSourceStatus
      CREATING = 'CREATING'
      FAILED_CREATION = 'FAILED_CREATION'
      READY = 'READY'
      UPDATING = 'UPDATING'
      FAILED_UPDATE = 'FAILED_UPDATE'
      RUNNING = 'RUNNING'
      DELETING = 'DELETING'
      FAILED_DELETION = 'FAILED_DELETION'
    end

    # <p>The details of the data source.</p>
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the data source exists.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment in which the data source exists.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The connection ID that's part of the data source summary.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The ID of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute enable_setting
    #   <p>Specifies whether the data source is enabled.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The details of the schedule of the data source runs.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute last_run_status
    #   <p>The status of the last data source run.</p>
    #   @return [String]
    # @!attribute last_run_at
    #   <p>The timestamp of when the data source run was last performed.</p>
    #   @return [Time]
    # @!attribute last_run_error_message
    #   <p>The details of the error message that is returned if the operation cannot be
    #            successfully completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute last_run_asset_count
    #   <p>The count of the assets created during the last data source run.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The timestamp of when the data source was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data source was updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The data source description.</p>
    #   @return [String]
    class DataSourceSummary < Struct.new(
      :domain_id,
      :environment_id,
      :connection_id,
      :data_source_id,
      :name,
      :type,
      :status,
      :enable_setting,
      :schedule,
      :last_run_status,
      :last_run_at,
      :last_run_error_message,
      :last_run_asset_count,
      :created_at,
      :updated_at,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataZoneEntityType
      DOMAIN_UNIT = 'DOMAIN_UNIT'
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the account pool is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the account pool to be deleted.</p>
    #   @return [String]
    class DeleteAccountPoolInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAccountPoolOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to delete an asset filter.</p>
    #   @return [String]
    # @!attribute asset_identifier
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the asset filter that you want to delete.</p>
    #   @return [String]
    class DeleteAssetFilterInput < Struct.new(
      :domain_identifier,
      :asset_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the asset is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the asset that is deleted.</p>
    #   @return [String]
    class DeleteAssetInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAssetOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the asset type is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the asset type that is deleted.</p>
    #   @return [String]
    class DeleteAssetTypeInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAssetTypeOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the connection is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the connection that is deleted.</p>
    #   @return [String]
    class DeleteConnectionInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the action.</p>
    #   @return [String]
    class DeleteConnectionOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the data product is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the data product that is deleted.</p>
    #   @return [String]
    class DeleteDataProductInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDataProductOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the data source is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the data source that is deleted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @deprecated
    #     This field is no longer required for idempotency.
    #     Since: 2024-12-02
    #   @return [String]
    # @!attribute retain_permissions_on_revoke_failure
    #   <p>Specifies that the granted permissions are retained in case of a self-subscribe
    #            functionality failure for a data source.</p>
    #   @return [Boolean]
    class DeleteDataSourceInput < Struct.new(
      :domain_identifier,
      :identifier,
      :client_token,
      :retain_permissions_on_revoke_failure,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the data source that is deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source that is deleted.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source that is deleted.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the data source is deleted.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the project in which this data source exists and from which it's
    #            deleted.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environemnt associated with this data source.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection that is deleted.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the data source that is deleted.</p>
    #   @return [Types::DataSourceConfigurationOutput]
    # @!attribute enable_setting
    #   <p>The enable setting of the data source that specifies whether the data source is enabled
    #            or disabled.</p>
    #   @return [String]
    # @!attribute publish_on_import
    #   <p>Specifies whether the assets that this data source creates in the inventory are to be
    #            also automatically published to the catalog.</p>
    #   @return [Boolean]
    # @!attribute asset_forms_output
    #   <p>The asset data forms associated with this data source.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute schedule
    #   <p>The schedule of runs for this data source.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute last_run_status
    #   <p>The status of the last run of this data source.</p>
    #   @return [String]
    # @!attribute last_run_at
    #   <p>The timestamp of when the data source was last run.</p>
    #   @return [Time]
    # @!attribute last_run_error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when this data source was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this data source was updated.</p>
    #   @return [Time]
    # @!attribute self_grant_status
    #   <p>Specifies the status of the self-granting functionality.</p>
    #   @return [Types::SelfGrantStatusOutput]
    # @!attribute retain_permissions_on_revoke_failure
    #   <p>Specifies that the granted permissions are retained in case of a self-subscribe
    #            functionality failure for a data source.</p>
    #   @return [Boolean]
    class DeleteDataSourceOutput < Struct.new(
      :id,
      :status,
      :type,
      :name,
      :description,
      :domain_id,
      :project_id,
      :environment_id,
      :connection_id,
      :configuration,
      :enable_setting,
      :publish_on_import,
      :asset_forms_output,
      :schedule,
      :last_run_status,
      :last_run_at,
      :last_run_error_message,
      :error_message,
      :created_at,
      :updated_at,
      :self_grant_status,
      :retain_permissions_on_revoke_failure,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the Amazon Web Services domain that is to be deleted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    # @!attribute skip_deletion_check
    #   <p>Specifies the optional flag to delete all child entities within the domain.</p>
    #   @return [Boolean]
    class DeleteDomainInput < Struct.new(
      :identifier,
      :client_token,
      :skip_deletion_check,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the domain.</p>
    #   @return [String]
    class DeleteDomainOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to delete a domain unit.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the domain unit that you want to delete.</p>
    #   @return [String]
    class DeleteDomainUnitInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDomainUnitOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which an environment action is deleted.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment where an environment action is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the environment action that is deleted.</p>
    #   @return [String]
    class DeleteEnvironmentActionInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the blueprint configuration is deleted.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>The ID of the blueprint the configuration of which is deleted.</p>
    #   @return [String]
    class DeleteEnvironmentBlueprintConfigurationInput < Struct.new(
      :domain_identifier,
      :environment_blueprint_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteEnvironmentBlueprintConfigurationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the environment that is to be deleted.</p>
    #   @return [String]
    class DeleteEnvironmentInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment profile is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the environment profile that is deleted.</p>
    #   @return [String]
    class DeleteEnvironmentProfileInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the metadata form type is deleted.</p>
    #   @return [String]
    # @!attribute form_type_identifier
    #   <p>The ID of the metadata form type that is deleted.</p>
    #   @return [String]
    class DeleteFormTypeInput < Struct.new(
      :domain_identifier,
      :form_type_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteFormTypeOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the business glossary is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the business glossary that is deleted.</p>
    #   @return [String]
    class DeleteGlossaryInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteGlossaryOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the business glossary term is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the business glossary term that is deleted.</p>
    #   @return [String]
    class DeleteGlossaryTermInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteGlossaryTermOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the listing to be deleted.</p>
    #   @return [String]
    class DeleteListingInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteListingOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the project is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the project that is to be deleted.</p>
    #   @return [String]
    # @!attribute skip_deletion_check
    #   <p>Specifies the optional flag to delete all child entities within the project.</p>
    #   @return [Boolean]
    class DeleteProjectInput < Struct.new(
      :domain_identifier,
      :identifier,
      :skip_deletion_check,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where project membership is deleted.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The ID of the Amazon DataZone project the membership to which is deleted.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The project member whose project membership is deleted.</p>
    #   @return [Types::Member]
    class DeleteProjectMembershipInput < Struct.new(
      :domain_identifier,
      :project_identifier,
      :member,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProjectMembershipOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProjectOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where a project profile is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the project profile that is deleted.</p>
    #   @return [String]
    class DeleteProjectProfileInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProjectProfileOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain that where the rule is to be deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the rule that is to be deleted.</p>
    #   @return [String]
    class DeleteRuleInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRuleOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where the subscription grant is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the subscription grant that is deleted.</p>
    #   @return [String]
    class DeleteSubscriptionGrantInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription grant that is deleted.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription grant that is deleted.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription grant that is deleted.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant is deleted.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription grant that is deleted was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription grant that is deleted was updated.</p>
    #   @return [Time]
    # @!attribute subscription_target_id
    #   <p>The ID of the subscription target associated with the subscription grant that is
    #            deleted.</p>
    #   @return [String]
    # @!attribute granted_entity
    #   <p>The entity to which the subscription is deleted.</p>
    #   @return [Types::GrantedEntity]
    # @!attribute status
    #   <p>The status of the subscription grant that is deleted.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets for which the subsctiption grant that is deleted gave access.</p>
    #   @return [Array<Types::SubscribedAsset>]
    # @!attribute subscription_id
    #   <p>The identifier of the subsctiption whose subscription grant is to be deleted.</p>
    #   @deprecated
    #     Multiple subscriptions can exist for a single grant
    #   @return [String]
    class DeleteSubscriptionGrantOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :created_at,
      :updated_at,
      :subscription_target_id,
      :granted_entity,
      :status,
      :assets,
      :subscription_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription request is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the subscription request that is deleted.</p>
    #   @return [String]
    class DeleteSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription target is deleted.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the Amazon DataZone environment in which the subscription target is deleted.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the subscription target that is deleted.</p>
    #   @return [String]
    class DeleteSubscriptionTargetInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain that houses the asset for which you want to delete
    #            a time series form.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the asset for which you want to delete a time series form.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the asset for which you want to delete a time series form.</p>
    #   @return [String]
    # @!attribute form_name
    #   <p>The name of the time series form that you want to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This field is
    #            automatically populated if not provided.</p>
    #   @return [String]
    class DeleteTimeSeriesDataPointsInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :form_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteTimeSeriesDataPointsOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the last deployment of the environment.</p>
    # @!attribute deployment_id
    #   <p>The identifier of the last deployment of the environment.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The type of the last deployment of the environment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the last deployment of the environment.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The failure reason of the last deployment of the environment.</p>
    #   @return [Types::EnvironmentError]
    # @!attribute messages
    #   <p>The messages of the last deployment of the environment.</p>
    #   @return [Array<String>]
    # @!attribute is_deployment_complete
    #   <p>Specifies whether the last deployment of the environment is complete.</p>
    #   @return [Boolean]
    class Deployment < Struct.new(
      :deployment_id,
      :deployment_type,
      :deployment_status,
      :failure_reason,
      :messages,
      :is_deployment_complete,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeploymentMode
      ON_CREATE = 'ON_CREATE'
      ON_DEMAND = 'ON_DEMAND'
    end

    # <p>The deployment properties of the Amazon DataZone blueprint.</p>
    # @!attribute start_timeout_minutes
    #   <p>The start timeout of the environment blueprint deployment.</p>
    #   @return [Integer]
    # @!attribute end_timeout_minutes
    #   <p>The end timeout of the environment blueprint deployment.</p>
    #   @return [Integer]
    class DeploymentProperties < Struct.new(
      :start_timeout_minutes,
      :end_timeout_minutes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeploymentStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESSFUL = 'SUCCESSFUL'
      FAILED = 'FAILED'
      PENDING_DEPLOYMENT = 'PENDING_DEPLOYMENT'
    end

    module DeploymentType
      CREATE = 'CREATE'
      UPDATE = 'UPDATE'
      DELETE = 'DELETE'
    end

    # <p>Details of a glossary term attached to the inventory asset.</p>
    # @!attribute name
    #   <p>The name of a glossary term attached to the inventory asset.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The shoft description of a glossary term attached to the inventory asset.</p>
    #   @return [String]
    class DetailedGlossaryTerm < Struct.new(
      :name,
      :short_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which an environment role is disassociated.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute environment_role_arn
    #   <p>The ARN of the environment role.</p>
    #   @return [String]
    class DisassociateEnvironmentRoleInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :environment_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateEnvironmentRoleOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DomainStatus
      CREATING = 'CREATING'
      AVAILABLE = 'AVAILABLE'
      CREATION_FAILED = 'CREATION_FAILED'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      DELETION_FAILED = 'DELETION_FAILED'
    end

    # <p>A summary of a Amazon DataZone domain.</p>
    # @!attribute id
    #   <p>The ID of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name of an Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of an Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute managed_account_id
    #   <p>The identifier of the Amazon Web Services account that manages the domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The data portal URL for the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp of when a Amazon DataZone domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>A timestamp of when a Amazon DataZone domain was last updated.</p>
    #   @return [Time]
    # @!attribute domain_version
    #   <p>The domain version.</p>
    #   @return [String]
    class DomainSummary < Struct.new(
      :id,
      :name,
      :description,
      :arn,
      :managed_account_id,
      :status,
      :portal_url,
      :created_at,
      :last_updated_at,
      :domain_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DomainUnitDesignation
      OWNER = 'OWNER'
    end

    # <p>The domain unit filter of the project grant filter.</p>
    # @!attribute domain_unit
    #   <p>The domain unit ID to use in the filter.</p>
    #   @return [String]
    # @!attribute include_child_domain_units
    #   <p>Specifies whether to include child domain units.</p>
    #   @return [Boolean]
    class DomainUnitFilterForProject < Struct.new(
      :domain_unit,
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_child_domain_units] = false unless options.key?(:include_child_domain_units)
        super
      end
    end

    # <p>The grant filter for the domain unit. In the current release of Amazon DataZone, the
    #          only supported filter is the <code>allDomainUnitsGrantFilter</code>.</p>
    # @!attribute all_domain_units_grant_filter
    #   <p>Specifies a grant filter containing all domain units.</p>
    #   @return [Types::AllDomainUnitsGrantFilter]
    class DomainUnitGrantFilter < Struct.new(
      :all_domain_units_grant_filter,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AllDomainUnitsGrantFilter < DomainUnitGrantFilter; end
      class Unknown < DomainUnitGrantFilter; end
    end

    # <p>The properties of a domain unit group.</p>
    # @!attribute group_id
    #   <p>The ID of the domain unit group.</p>
    #   @return [String]
    class DomainUnitGroupProperties < Struct.new(
      :group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the domain unit owner.</p>
    # @!attribute user
    #   <p>Indicates that the domain unit owner is a user.</p>
    #   @return [Types::DomainUnitUserProperties]
    # @!attribute group
    #   <p>Indicates that the domain unit owner is a group.</p>
    #   @return [Types::DomainUnitGroupProperties]
    class DomainUnitOwnerProperties < Struct.new(
      :user,
      :group,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < DomainUnitOwnerProperties; end
      class Group < DomainUnitOwnerProperties; end
      class Unknown < DomainUnitOwnerProperties; end
    end

    # <p>The domain unit principal to whom the policy is granted.</p>
    # @!attribute domain_unit_designation
    #   <p>Specifes the designation of the domain unit users.</p>
    #   @return [String]
    # @!attribute domain_unit_identifier
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute domain_unit_grant_filter
    #   <p>The grant filter for the domain unit.</p>
    #   @return [Types::DomainUnitGrantFilter]
    class DomainUnitPolicyGrantPrincipal < Struct.new(
      :domain_unit_designation,
      :domain_unit_identifier,
      :domain_unit_grant_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the domain unit.</p>
    # @!attribute name
    #   <p>The name of the domain unit summary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the domain unit summary.</p>
    #   @return [String]
    class DomainUnitSummary < Struct.new(
      :name,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The target for the domain unit.</p>
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute include_child_domain_units
    #   <p>Specifies whether to apply a rule to the child domain units.</p>
    #   @return [Boolean]
    class DomainUnitTarget < Struct.new(
      :domain_unit_id,
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the domain unit user.</p>
    # @!attribute user_id
    #   <p>The ID of teh domain unit user.</p>
    #   @return [String]
    class DomainUnitUserProperties < Struct.new(
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DomainVersion
      V1 = 'V1'
      V2 = 'V2'
    end

    module EdgeDirection
      UPSTREAM = 'UPSTREAM'
      DOWNSTREAM = 'DOWNSTREAM'
    end

    module EnableSetting
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module EntityType
      ASSET = 'ASSET'
      DATA_PRODUCT = 'DATA_PRODUCT'
    end

    # <p>The details about the specified action configured for an environment. For example, the
    #          details of the specified console links for an analytics tool that is available in this
    #          environment.</p>
    # @!attribute domain_id
    #   <p>The Amazon DataZone domain ID of the environment action.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID of the environment action.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the environment action.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the environment action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute description
    #   <p>The environment action description.</p>
    #   @return [String]
    class EnvironmentActionSummary < Struct.new(
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of an environment blueprint.</p>
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which an environment blueprint exists.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The identifier of the environment blueprint.</p>
    #   @return [String]
    # @!attribute provisioning_role_arn
    #   <p>The ARN of the provisioning role specified in the environment blueprint
    #            configuration.</p>
    #   @return [String]
    # @!attribute environment_role_permission_boundary
    #   <p>The environment role permission boundary.</p>
    #   @return [String]
    # @!attribute manage_access_role_arn
    #   <p>The ARN of the manage access role specified in the environment blueprint
    #            configuration.</p>
    #   @return [String]
    # @!attribute enabled_regions
    #   <p>The enabled Amazon Web Services Regions specified in a blueprint configuration.</p>
    #   @return [Array<String>]
    # @!attribute regional_parameters
    #   <p>The regional parameters of the environment blueprint.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute created_at
    #   <p>The timestamp of when an environment blueprint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the environment blueprint was updated.</p>
    #   @return [Time]
    # @!attribute provisioning_configurations
    #   <p>The provisioning configuration of a blueprint.</p>
    #   @return [Array<Types::ProvisioningConfiguration>]
    class EnvironmentBlueprintConfigurationItem < Struct.new(
      :domain_id,
      :environment_blueprint_id,
      :provisioning_role_arn,
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :enabled_regions,
      :regional_parameters,
      :created_at,
      :updated_at,
      :provisioning_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an environment blueprint summary.</p>
    # @!attribute id
    #   <p>The identifier of the blueprint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a blueprint.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the blueprint.</p>
    #   @return [String]
    # @!attribute provisioning_properties
    #   <p>The provisioning properties of the blueprint.</p>
    #   @return [Types::ProvisioningProperties]
    # @!attribute created_at
    #   <p>The timestamp of when an environment blueprint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the blueprint was enabled.</p>
    #   @return [Time]
    class EnvironmentBlueprintSummary < Struct.new(
      :id,
      :name,
      :description,
      :provider,
      :provisioning_properties,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of an environment.</p>
    # @!attribute name
    #   <p>The environment name.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The environment blueprint ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The environment description.</p>
    #   @return [String]
    # @!attribute deployment_mode
    #   <p>The deployment mode of the environment.</p>
    #   @return [String]
    # @!attribute configuration_parameters
    #   <p>The configuration parameters of the environment.</p>
    #   @return [Types::EnvironmentConfigurationParametersDetails]
    # @!attribute aws_account
    #   <p>The Amazon Web Services account of the environment.</p>
    #   @return [Types::AwsAccount]
    # @!attribute account_pools
    #   <p>The account pools used by a custom project profile.</p>
    #   @return [Array<String>]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region of the environment.</p>
    #   @return [Types::Region]
    # @!attribute deployment_order
    #   <p>The deployment order of the environment.</p>
    #   @return [Integer]
    class EnvironmentConfiguration < Struct.new(
      :name,
      :id,
      :environment_blueprint_id,
      :description,
      :deployment_mode,
      :configuration_parameters,
      :aws_account,
      :account_pools,
      :aws_region,
      :deployment_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The environment configuration parameter.</p>
    # @!attribute name
    #   <p>The name of the environment configuration parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the environment configuration parameter.</p>
    #   @return [String]
    # @!attribute is_editable
    #   <p>Specifies whether the environment parameter is editable.</p>
    #   @return [Boolean]
    class EnvironmentConfigurationParameter < Struct.new(
      :name,
      :value,
      :is_editable,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the environment configuration parameter.</p>
    # @!attribute ssm_path
    #   <p>Ssm path environment configuration parameters.</p>
    #   @return [String]
    # @!attribute parameter_overrides
    #   <p>The parameter overrides.</p>
    #   @return [Array<Types::EnvironmentConfigurationParameter>]
    # @!attribute resolved_parameters
    #   <p>The resolved environment configuration parameters.</p>
    #   @return [Array<Types::EnvironmentConfigurationParameter>]
    class EnvironmentConfigurationParametersDetails < Struct.new(
      :ssm_path,
      :parameter_overrides,
      :resolved_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The environment configuration user parameters.</p>
    # @!attribute environment_id
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute environment_resolved_account
    #   <p>Specifies the account/Region that is to be used during project creation for a particular
    #            blueprint.</p>
    #   @return [Types::EnvironmentResolvedAccount]
    # @!attribute environment_configuration_name
    #   <p>The environment configuration name.</p>
    #   @return [String]
    # @!attribute environment_parameters
    #   <p>The environment parameters.</p>
    #   @return [Array<Types::EnvironmentParameter>]
    class EnvironmentConfigurationUserParameter < Struct.new(
      :environment_id,
      :environment_resolved_account,
      :environment_configuration_name,
      :environment_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The environment deployment details.</p>
    # @!attribute overall_deployment_status
    #   <p>The overall deployment status of the environment.</p>
    #   @return [String]
    # @!attribute environment_failure_reasons
    #   <p>Environment failure reasons.</p>
    #   @return [Hash<String, Array<Types::EnvironmentError>>]
    class EnvironmentDeploymentDetails < Struct.new(
      :overall_deployment_status,
      :environment_failure_reasons,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The failure reasons for the environment deployment.</p>
    # @!attribute code
    #   <p>The error code for the failure reason for the environment deployment.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message for the failure reason for the environment deployment.</p>
    #   @return [String]
    class EnvironmentError < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The parameter details of an evironment profile.</p>
    # @!attribute name
    #   <p>The name of an environment profile parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of an environment profile parameter.</p>
    #   @return [String]
    class EnvironmentParameter < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an environment profile.</p>
    # @!attribute id
    #   <p>The identifier of the environment profile.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the environment profile exists.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The identifier of an Amazon Web Services account in which an environment profile exists.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services Region in which an environment profile exists.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the environment profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when an environment profile was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the environment profile was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the environment profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment profile.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The identifier of a blueprint with which an environment profile is created.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The identifier of a project in which an environment profile exists.</p>
    #   @return [String]
    class EnvironmentProfileSummary < Struct.new(
      :id,
      :domain_id,
      :aws_account_id,
      :aws_account_region,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_blueprint_id,
      :project_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the account/Region that is to be used during project creation for a particular
    #          blueprint.</p>
    # @!attribute aws_account_id
    #   <p>The ID of the resolved account.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The name of the resolved Region.</p>
    #   @return [String]
    # @!attribute source_account_pool_id
    #   <p>The ID of the account pool.</p>
    #   @return [String]
    class EnvironmentResolvedAccount < Struct.new(
      :aws_account_id,
      :region_name,
      :source_account_pool_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EnvironmentStatus
      ACTIVE = 'ACTIVE'
      CREATING = 'CREATING'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      DELETE_FAILED = 'DELETE_FAILED'
      VALIDATION_FAILED = 'VALIDATION_FAILED'
      SUSPENDED = 'SUSPENDED'
      DISABLED = 'DISABLED'
      EXPIRED = 'EXPIRED'
      DELETED = 'DELETED'
      INACCESSIBLE = 'INACCESSIBLE'
    end

    # <p>The details of an environment.</p>
    # @!attribute project_id
    #   <p>The identifier of the project in which the environment exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the environment.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the environment exists.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the environment was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute environment_profile_id
    #   <p>The identifier of the environment profile with which the environment was created.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The identifier of the Amazon Web Services account in which an environment exists.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services Region in which an environment exists.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the environment.</p>
    #   @return [String]
    # @!attribute environment_configuration_id
    #   <p>The configuration ID with which the environment is created.</p>
    #   @return [String]
    class EnvironmentSummary < Struct.new(
      :project_id,
      :id,
      :domain_id,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_profile_id,
      :aws_account_id,
      :aws_account_region,
      :provider,
      :status,
      :environment_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:environment_profile_id] = '' unless options.key?(:environment_profile_id)
        super
      end
    end

    # <p>Specifies whether the value is equal to an expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might be equal to an expression.</p>
    #   @return [String]
    class EqualToExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The event summary.</p>
    # @!attribute open_lineage_run_event_summary
    #   <p>The open lineage run event summary.</p>
    #   @return [Types::OpenLineageRunEventSummary]
    class EventSummary < Struct.new(
      :open_lineage_run_event_summary,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class OpenLineageRunEventSummary < EventSummary; end
      class Unknown < EventSummary; end
    end

    # <p>Specifies the error message that is returned if the operation cannot be successfully
    #          completed.</p>
    # @!attribute message
    #   <p>The description of the error message.</p>
    #   @return [String]
    class FailureCause < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A search filter in Amazon DataZone.</p>
    # @!attribute attribute
    #   <p>A search filter attribute in Amazon DataZone.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A search filter value in Amazon DataZone.</p>
    #   @return [String]
    class Filter < Struct.new(
      :attribute,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A search filter clause in Amazon DataZone.</p>
    # @!attribute filter
    #   <p>A search filter in Amazon DataZone.</p>
    #   @return [Types::Filter]
    # @!attribute and
    #   <p>The 'and' search filter clause in Amazon DataZone.</p>
    #   @return [Array<Types::FilterClause>]
    # @!attribute or
    #   <p>The 'or' search filter clause in Amazon DataZone.</p>
    #   @return [Array<Types::FilterClause>]
    class FilterClause < Struct.new(
      :filter,
      :and,
      :or,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Filter < FilterClause; end
      class And < FilterClause; end
      class Or < FilterClause; end
      class Unknown < FilterClause; end
    end

    # <p>A filter expression in Amazon DataZone.</p>
    # @!attribute type
    #   <p>The search filter explresison type.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The search filter expression.</p>
    #   @return [String]
    class FilterExpression < Struct.new(
      :type,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FilterExpressionType
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    module FilterStatus
      VALID = 'VALID'
      INVALID = 'INVALID'
    end

    # <p>The details of the form entry.</p>
    # @!attribute type_identifier
    #   <p>The type ID of the form entry.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The type revision of the form entry.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Specifies whether a form entry is required.</p>
    #   @return [Boolean]
    class FormEntryInput < Struct.new(
      :type_identifier,
      :type_revision,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the form entry.</p>
    # @!attribute type_name
    #   <p>The name of the type of the form entry.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The type revision of the form entry.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Specifies whether a form entry is required.</p>
    #   @return [Boolean]
    class FormEntryOutput < Struct.new(
      :type_name,
      :type_revision,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a metadata form.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute form_name
    #   <p>The name of the metadata form.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The ID of the metadata form type.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision of the metadata form type.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the metadata form.</p>
    #   @return [String]
    class FormInput < Struct.new(
      :form_name,
      :type_identifier,
      :type_revision,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a metadata form.</p>
    # @!attribute form_name
    #   <p>The name of the metadata form.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the metadata form type.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision of the metadata form type.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the metadata form.</p>
    #   @return [String]
    class FormOutput < Struct.new(
      :form_name,
      :type_name,
      :type_revision,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the metadata form type.</p>
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the form type exists.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the form type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the form type.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the form type.</p>
    #   @return [Types::Model]
    # @!attribute status
    #   <p>The status of the form type.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The identifier of the project that owns the form type.</p>
    #   @return [String]
    # @!attribute origin_domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the form type was originally
    #            created.</p>
    #   @return [String]
    # @!attribute origin_project_id
    #   <p>The identifier of the project in which the form type was originally created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the metadata form type was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created teh metadata form type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the metadata form type.</p>
    #   @return [String]
    # @!attribute imports
    #   <p>The imports specified in the form type.</p>
    #   @return [Array<Types::Import>]
    class FormTypeData < Struct.new(
      :domain_id,
      :name,
      :revision,
      :model,
      :status,
      :owning_project_id,
      :origin_domain_id,
      :origin_project_id,
      :created_at,
      :created_by,
      :description,
      :imports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FormTypeStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which the account pool lives whose details are to be
    #            displayed.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the account pool whose details are to be displayed.</p>
    #   @return [String]
    class GetAccountPoolInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain in which the account pool lives whose details are to be
    #            displayed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the account pool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the account pool.</p>
    #   @return [String]
    # @!attribute resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    #   @return [String]
    # @!attribute account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a
    #            static list of accounts provided by the customer or a custom Amazon Web Services Lambda
    #            handler. </p>
    #   @return [Types::AccountSource]
    # @!attribute created_by
    #   <p>The user who created the account pool.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the account pool was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which the account pool was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the account pool.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The domain unit ID of the account pool.</p>
    #   @return [String]
    class GetAccountPoolOutput < Struct.new(
      :domain_id,
      :name,
      :id,
      :description,
      :resolution_strategy,
      :account_source,
      :created_by,
      :created_at,
      :last_updated_at,
      :updated_by,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to get an asset filter.</p>
    #   @return [String]
    # @!attribute asset_identifier
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the asset filter.</p>
    #   @return [String]
    class GetAssetFilterInput < Struct.new(
      :domain_identifier,
      :asset_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the asset filter.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where you want to get an asset filter.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset filter.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asset filter.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the asset filter.</p>
    #   @return [Types::AssetFilterConfiguration]
    # @!attribute created_at
    #   <p>The timestamp at which the asset filter was created.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message that is displayed if the action does not complete successfully.</p>
    #   @return [String]
    # @!attribute effective_column_names
    #   <p>The column names of the asset filter.</p>
    #   @return [Array<String>]
    # @!attribute effective_row_filter
    #   <p>The row filter of the asset filter.</p>
    #   @return [String]
    class GetAssetFilterOutput < Struct.new(
      :id,
      :domain_id,
      :asset_id,
      :name,
      :description,
      :status,
      :configuration,
      :created_at,
      :error_message,
      :effective_column_names,
      :effective_row_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain to which the asset belongs.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the Amazon DataZone asset.</p>
    #            <p>This parameter supports either the value of <code>assetId</code> or
    #               <code>externalIdentifier</code> as input. If you are passing the value of
    #               <code>externalIdentifier</code>, you must prefix this value with
    #               <code>externalIdentifer%2F</code>.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the Amazon DataZone asset.</p>
    #   @return [String]
    class GetAssetInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The ID of the asset type.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision of the asset type.</p>
    #   @return [String]
    # @!attribute external_identifier
    #   <p>The external ID of the asset.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon DataZone asset.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the asset was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the asset.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp of when the first revision of the asset was created.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The Amazon DataZone user who created the first revision of the asset.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The business glossary terms attached to the asset.</p>
    #   @return [Array<String>]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns the asset.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain to which the asset belongs.</p>
    #   @return [String]
    # @!attribute listing
    #   <p>The listing of the asset.</p>
    #   @return [Types::AssetListingDetails]
    # @!attribute forms_output
    #   <p>The metadata forms attached to the asset.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute read_only_forms_output
    #   <p>The read-only metadata forms attached to the asset.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute latest_time_series_data_point_forms_output
    #   <p>The latest data point that was imported into the time series form for the asset. </p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    class GetAssetOutput < Struct.new(
      :id,
      :name,
      :type_identifier,
      :type_revision,
      :external_identifier,
      :revision,
      :description,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      :glossary_terms,
      :owning_project_id,
      :domain_id,
      :listing,
      :forms_output,
      :read_only_forms_output,
      :latest_time_series_data_point_forms_output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the asset type exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the asset type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset type.</p>
    #   @return [String]
    class GetAssetTypeInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the asset type exists.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset type.</p>
    #   @return [String]
    # @!attribute forms_output
    #   <p>The metadata forms attached to the asset type.</p>
    #   @return [Hash<String, Types::FormEntryOutput>]
    # @!attribute owning_project_id
    #   <p>The ID of the Amazon DataZone project that owns the asset type.</p>
    #   @return [String]
    # @!attribute origin_domain_id
    #   <p>The ID of the Amazon DataZone domain in which the asset type was originally created.</p>
    #   @return [String]
    # @!attribute origin_project_id
    #   <p>The ID of the Amazon DataZone project in which the asset type was originally created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the asset type was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the asset type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the asset type was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user that updated the asset type.</p>
    #   @return [String]
    class GetAssetTypeOutput < Struct.new(
      :domain_id,
      :name,
      :revision,
      :description,
      :forms_output,
      :owning_project_id,
      :origin_domain_id,
      :origin_project_id,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where we get the connection.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The connection ID.</p>
    #   @return [String]
    # @!attribute with_secret
    #   <p>Specifies whether a connection has a secret.</p>
    #   @return [Boolean]
    class GetConnectionInput < Struct.new(
      :domain_identifier,
      :identifier,
      :with_secret,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_credentials
    #   <p>Connection credentials.</p>
    #   @return [Types::ConnectionCredentials]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Connection description.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The domain ID of the connection.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The domain unit ID of the connection.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute environment_user_role
    #   <p>The environment user role.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute physical_endpoints
    #   <p>The physical endpoints of the connection.</p>
    #   @return [Array<Types::PhysicalEndpoint>]
    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute props
    #   <p>Connection props.</p>
    #   @return [Types::ConnectionPropertiesOutput]
    # @!attribute type
    #   <p>The type of the connection.</p>
    #   @return [String]
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
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the data product lives.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data product.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the data product.</p>
    #   @return [String]
    class GetDataProductInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where the data product lives.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data product.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the data product.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the data product.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data product.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data product.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product.</p>
    #   @return [Array<String>]
    # @!attribute items
    #   <p>The data assets of the data product.</p>
    #   @return [Array<Types::DataProductItem>]
    # @!attribute forms_output
    #   <p>The metadata forms of the data product.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute created_at
    #   <p>The timestamp at which the data product is created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data product.</p>
    #   @return [String]
    # @!attribute first_revision_created_at
    #   <p>The timestamp at which the first revision of the data product is created.</p>
    #   @return [Time]
    # @!attribute first_revision_created_by
    #   <p>The user who created the first revision of the data product.</p>
    #   @return [String]
    class GetDataProductOutput < Struct.new(
      :domain_id,
      :id,
      :revision,
      :owning_project_id,
      :name,
      :status,
      :description,
      :glossary_terms,
      :items,
      :forms_output,
      :created_at,
      :created_by,
      :first_revision_created_at,
      :first_revision_created_by,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:status] = 'CREATED' unless options.key?(:status)
        super
      end
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the data source exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the Amazon DataZone data source.</p>
    #   @return [String]
    class GetDataSourceInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the data source exists.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the project where the data source creates and publishes assets.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment where this data source creates and publishes assets,</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the data source.</p>
    #   @return [Types::DataSourceConfigurationOutput]
    # @!attribute recommendation
    #   <p>The recommendation configuration of the data source.</p>
    #   @return [Types::RecommendationConfiguration]
    # @!attribute enable_setting
    #   <p>Specifies whether this data source is enabled or not.</p>
    #   @return [String]
    # @!attribute publish_on_import
    #   <p>Specifies whether the assets that this data source creates in the inventory are to be
    #            also automatically published to the catalog.</p>
    #   @return [Boolean]
    # @!attribute asset_forms_output
    #   <p>The metadata forms attached to the assets created by this data source.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute schedule
    #   <p>The schedule of the data source runs.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute last_run_status
    #   <p>The status of the last run of the data source.</p>
    #   @return [String]
    # @!attribute last_run_at
    #   <p>The timestamp of the last run of the data source.</p>
    #   @return [Time]
    # @!attribute last_run_error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute last_run_asset_count
    #   <p>The number of assets created by the data source during its last run.</p>
    #   @return [Integer]
    # @!attribute error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when the data source was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data source was updated.</p>
    #   @return [Time]
    # @!attribute self_grant_status
    #   <p>Specifies the status of the self-granting functionality.</p>
    #   @return [Types::SelfGrantStatusOutput]
    class GetDataSourceOutput < Struct.new(
      :id,
      :status,
      :type,
      :name,
      :description,
      :domain_id,
      :project_id,
      :environment_id,
      :connection_id,
      :configuration,
      :recommendation,
      :enable_setting,
      :publish_on_import,
      :asset_forms_output,
      :schedule,
      :last_run_status,
      :last_run_at,
      :last_run_error_message,
      :last_run_asset_count,
      :error_message,
      :created_at,
      :updated_at,
      :self_grant_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which this data source run was performed.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data source run.</p>
    #   @return [String]
    class GetDataSourceRunInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain in which this data source run was performed.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The ID of the data source for this data source run.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data source run.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the project in which this data source run occured.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this data source run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this data source run.</p>
    #   @return [String]
    # @!attribute data_source_configuration_snapshot
    #   <p>The configuration snapshot of the data source run.</p>
    #   @return [String]
    # @!attribute run_statistics_for_assets
    #   <p>The asset statistics from this data source run.</p>
    #   @return [Types::RunStatisticsForAssets]
    # @!attribute lineage_summary
    #   <p>The summary of the data lineage.</p>
    #   @return [Types::DataSourceRunLineageSummary]
    # @!attribute error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when the data source run was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this data source run was updated.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The timestamp of when this data source run started.</p>
    #   @return [Time]
    # @!attribute stopped_at
    #   <p>The timestamp of when this data source run stopped.</p>
    #   @return [Time]
    class GetDataSourceRunOutput < Struct.new(
      :domain_id,
      :data_source_id,
      :id,
      :project_id,
      :status,
      :type,
      :data_source_configuration_snapshot,
      :run_statistics_for_assets,
      :lineage_summary,
      :error_message,
      :created_at,
      :updated_at,
      :started_at,
      :stopped_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the specified Amazon DataZone domain.</p>
    #   @return [String]
    class GetDomainInput < Struct.new(
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the specified Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute root_domain_unit_id
    #   <p>The ID of the root domain in Amazon Datazone.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute single_sign_on
    #   <p>The single sing-on option of the specified Amazon DataZone domain.</p>
    #   @return [Types::SingleSignOn]
    # @!attribute domain_execution_role
    #   <p>The domain execution role with which the Amazon DataZone domain is created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the specified Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The identifier of the Amazon Web Services Key Management Service (KMS) key that is used
    #            to encrypt the Amazon DataZone domain, metadata, and reporting data. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the specified Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The URL of the data portal for this Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the Amazon DataZone domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the Amazon DataZone domain was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags specified for the Amazon DataZone domain.</p>
    #   @return [Hash<String, String>]
    # @!attribute domain_version
    #   <p>The version of the domain.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The service role of the domain.</p>
    #   @return [String]
    class GetDomainOutput < Struct.new(
      :id,
      :root_domain_unit_id,
      :name,
      :description,
      :single_sign_on,
      :domain_execution_role,
      :arn,
      :kms_key_identifier,
      :status,
      :portal_url,
      :created_at,
      :last_updated_at,
      :tags,
      :domain_version,
      :service_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to get a domain unit.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the domain unit that you want to get.</p>
    #   @return [String]
    class GetDomainUnitInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain in which the domain unit lives.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain unit.</p>
    #   @return [String]
    # @!attribute parent_domain_unit_id
    #   <p>The ID of the parent domain unit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain unit.</p>
    #   @return [String]
    # @!attribute owners
    #   <p>The owners of the domain unit.</p>
    #   @return [Array<Types::DomainUnitOwnerProperties>]
    # @!attribute created_at
    #   <p>The time stamp at which the domain unit was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which the domain unit was last updated.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the domain unit.</p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p>The user who last updated the domain unit.</p>
    #   @return [String]
    class GetDomainUnitOutput < Struct.new(
      :id,
      :domain_id,
      :name,
      :parent_domain_unit_id,
      :description,
      :owners,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the <code>GetEnvironmentAction</code> API is
    #            invoked. </p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The environment ID of the environment action.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the environment action</p>
    #   @return [String]
    class GetEnvironmentActionInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the environment action lives.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID of the environment action.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the environment action.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the environment action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute description
    #   <p>The description of the environment action.</p>
    #   @return [String]
    class GetEnvironmentActionOutput < Struct.new(
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where this blueprint exists.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>He ID of the blueprint.</p>
    #   @return [String]
    class GetEnvironmentBlueprintConfigurationInput < Struct.new(
      :domain_identifier,
      :environment_blueprint_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain where this blueprint exists.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The ID of the blueprint.</p>
    #   @return [String]
    # @!attribute provisioning_role_arn
    #   <p>The ARN of the provisioning role with which this blueprint is created.</p>
    #   @return [String]
    # @!attribute environment_role_permission_boundary
    #   <p>The environment role permissions boundary.</p>
    #   @return [String]
    # @!attribute manage_access_role_arn
    #   <p>The ARN of the manage access role with which this blueprint is created.</p>
    #   @return [String]
    # @!attribute enabled_regions
    #   <p>The Amazon Web Services regions in which this blueprint is enabled.</p>
    #   @return [Array<String>]
    # @!attribute regional_parameters
    #   <p>The regional parameters of the blueprint.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute created_at
    #   <p>The timestamp of when this blueprint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this blueprint was upated.</p>
    #   @return [Time]
    # @!attribute provisioning_configurations
    #   <p>The provisioning configuration of a blueprint.</p>
    #   @return [Array<Types::ProvisioningConfiguration>]
    class GetEnvironmentBlueprintConfigurationOutput < Struct.new(
      :domain_id,
      :environment_blueprint_id,
      :provisioning_role_arn,
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :enabled_regions,
      :regional_parameters,
      :created_at,
      :updated_at,
      :provisioning_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the domain in which this blueprint exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of this Amazon DataZone blueprint.</p>
    #   @return [String]
    class GetEnvironmentBlueprintInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of this Amazon DataZone blueprint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this Amazon DataZone blueprint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this Amazon DataZone blueprint.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of this Amazon DataZone blueprint.</p>
    #   @return [String]
    # @!attribute provisioning_properties
    #   <p>The provisioning properties of this Amazon DataZone blueprint.</p>
    #   @return [Types::ProvisioningProperties]
    # @!attribute deployment_properties
    #   <p>The deployment properties of this Amazon DataZone blueprint.</p>
    #   @return [Types::DeploymentProperties]
    # @!attribute user_parameters
    #   <p>The user parameters of this blueprint.</p>
    #   @return [Array<Types::CustomParameter>]
    # @!attribute glossary_terms
    #   <p>The glossary terms attached to this Amazon DataZone blueprint.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>A timestamp of when this blueprint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this blueprint was updated.</p>
    #   @return [Time]
    class GetEnvironmentBlueprintOutput < Struct.new(
      :id,
      :name,
      :description,
      :provider,
      :provisioning_properties,
      :deployment_properties,
      :user_parameters,
      :glossary_terms,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this environment and its credentials
    #            exist.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment whose credentials this operation gets.</p>
    #   @return [String]
    class GetEnvironmentCredentialsInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   <p>The access key ID of the environment.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key of the environment credentials.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The session token of the environment credentials.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The expiration timestamp of the environment credentials.</p>
    #   @return [Time]
    class GetEnvironmentCredentialsOutput < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where the environment exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the Amazon DataZone environment.</p>
    #   @return [String]
    class GetEnvironmentInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the Amazon DataZone project in which this environment is created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain where the environment exists.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this environment was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute environment_profile_id
    #   <p>The ID of the environment profile with which the environment is created.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where the environment exists.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region where the environment exists.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>The provisioned resources of this Amazon DataZone environment.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute status
    #   <p>The status of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute environment_actions
    #   <p>The actions of the environment.</p>
    #   @return [Array<Types::ConfigurableEnvironmentAction>]
    # @!attribute glossary_terms
    #   <p>The business glossary terms that can be used in this environment.</p>
    #   @return [Array<String>]
    # @!attribute user_parameters
    #   <p>The user parameters of this Amazon DataZone environment.</p>
    #   @return [Array<Types::CustomParameter>]
    # @!attribute last_deployment
    #   <p>The details of the last deployment of the environment.</p>
    #   @return [Types::Deployment]
    # @!attribute provisioning_properties
    #   <p>The provisioning properties of this Amazon DataZone environment.</p>
    #   @return [Types::ProvisioningProperties]
    # @!attribute deployment_properties
    #   <p>The deployment properties of the environment.</p>
    #   @return [Types::DeploymentProperties]
    # @!attribute environment_blueprint_id
    #   <p>The blueprint with which the environment is created.</p>
    #   @return [String]
    # @!attribute environment_configuration_id
    #   <p>The configuration ID that is used to create the environment.</p>
    #   @return [String]
    class GetEnvironmentOutput < Struct.new(
      :project_id,
      :id,
      :domain_id,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_profile_id,
      :aws_account_id,
      :aws_account_region,
      :provider,
      :provisioned_resources,
      :status,
      :environment_actions,
      :glossary_terms,
      :user_parameters,
      :last_deployment,
      :provisioning_properties,
      :deployment_properties,
      :environment_blueprint_id,
      :environment_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:environment_profile_id] = '' unless options.key?(:environment_profile_id)
        super
      end
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this environment profile exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the environment profile.</p>
    #   @return [String]
    class GetEnvironmentProfileInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment profile.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this environment profile exists.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where this environment profile exists.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region where this environment profile exists.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created this environment profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when this environment profile was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when this environment profile was upated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the environment profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment profile.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The ID of the blueprint with which this environment profile is created.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the Amazon DataZone project in which this environment profile is created.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of the environment profile.</p>
    #   @return [Array<Types::CustomParameter>]
    class GetEnvironmentProfileOutput < Struct.new(
      :id,
      :domain_id,
      :aws_account_id,
      :aws_account_region,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_blueprint_id,
      :project_id,
      :user_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type exists.</p>
    #   @return [String]
    # @!attribute form_type_identifier
    #   <p>The ID of the metadata form type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of this metadata form type.</p>
    #   @return [String]
    class GetFormTypeInput < Struct.new(
      :domain_identifier,
      :form_type_identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type exists.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the metadata form type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the metadata form type.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the metadata form type.</p>
    #   @return [Types::Model]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns this metadata form type.</p>
    #   @return [String]
    # @!attribute origin_domain_id
    #   <p>The ID of the Amazon DataZone domain in which the metadata form type was originally
    #            created.</p>
    #   @return [String]
    # @!attribute origin_project_id
    #   <p>The ID of the project in which this metadata form type was originally created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the metadata form type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when this metadata form type was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created this metadata form type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the metadata form type.</p>
    #   @return [String]
    # @!attribute imports
    #   <p>The imports of the metadata form type.</p>
    #   @return [Array<Types::Import>]
    class GetFormTypeOutput < Struct.new(
      :domain_id,
      :name,
      :revision,
      :model,
      :owning_project_id,
      :origin_domain_id,
      :origin_project_id,
      :status,
      :created_at,
      :created_by,
      :description,
      :imports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the business glossary.</p>
    #   @return [String]
    class GetGlossaryInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this business glossary exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the business glossary.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns this business glossary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the business glossary.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the business glossary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the business glossary.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when this business glossary was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created this business glossary.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the business glossary was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the business glossary.</p>
    #   @return [String]
    class GetGlossaryOutput < Struct.new(
      :domain_id,
      :id,
      :owning_project_id,
      :name,
      :description,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary term exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the business glossary term.</p>
    #   @return [String]
    class GetGlossaryTermInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which this business glossary term exists.</p>
    #   @return [String]
    # @!attribute glossary_id
    #   <p>The ID of the business glossary to which this term belongs.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the business glossary term.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the business glossary term.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The short decription of the business glossary term.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>The long description of the business glossary term.</p>
    #   @return [String]
    # @!attribute term_relations
    #   <p>The relations of the business glossary term.</p>
    #   @return [Types::TermRelations]
    # @!attribute status
    #   <p>The status of the business glossary term.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the business glossary term was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the business glossary.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the business glossary term was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the business glossary term.</p>
    #   @return [String]
    class GetGlossaryTermOutput < Struct.new(
      :domain_id,
      :glossary_id,
      :id,
      :name,
      :short_description,
      :long_description,
      :term_relations,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the group profile exists.</p>
    #   @return [String]
    # @!attribute group_identifier
    #   <p>The identifier of the group profile.</p>
    #   @return [String]
    class GetGroupProfileInput < Struct.new(
      :domain_identifier,
      :group_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the group profile exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the group profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The identifier of the group profile.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group for which the specified group profile exists.</p>
    #   @return [String]
    class GetGroupProfileOutput < Struct.new(
      :domain_id,
      :id,
      :status,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>the ID of the Amazon DataZone domain the data portal of which you want to get.</p>
    #   @return [String]
    class GetIamPortalLoginUrlInput < Struct.new(
      :domain_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute auth_code_url
    #   <p>The data portal URL of the specified Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute user_profile_id
    #   <p>The ID of the user profile.</p>
    #   @return [String]
    class GetIamPortalLoginUrlOutput < Struct.new(
      :auth_code_url,
      :user_profile_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the job run.</p>
    #   @return [String]
    class GetJobRunInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of the job run.</p>
    #   @return [String]
    # @!attribute run_mode
    #   <p>The mode of the job run.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the job run.</p>
    #   @return [Types::JobRunDetails]
    # @!attribute status
    #   <p>The status of the job run.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error generated if the action is not completed successfully.</p>
    #   @return [Types::JobRunError]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the job run was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The timestamp of when the job run started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp of when the job run ended.</p>
    #   @return [Time]
    class GetJobRunOutput < Struct.new(
      :domain_id,
      :id,
      :job_id,
      :job_type,
      :run_mode,
      :details,
      :status,
      :error,
      :created_by,
      :created_at,
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the lineage event.</p>
    #   @return [String]
    class GetLineageEventInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the lineage event.</p>
    #   @return [String]
    # @!attribute event
    #   <p>The lineage event details.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The user who created the lineage event.</p>
    #   @return [String]
    # @!attribute processing_status
    #   <p>The progressing status of the lineage event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The time of the lineage event.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The timestamp of when the lineage event was created.</p>
    #   @return [Time]
    class GetLineageEventOutput < Struct.new(
      :domain_id,
      :id,
      :event,
      :created_by,
      :processing_status,
      :event_time,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which you want to get the data lineage node.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data lineage node that you want to get.</p>
    #            <p>Both, a lineage node identifier generated by Amazon DataZone and a
    #               <code>sourceIdentifier</code> of the lineage node are supported. If
    #               <code>sourceIdentifier</code> is greater than 1800 characters, you can use lineage node
    #            identifier generated by Amazon DataZone to get the node details.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The event time stamp for which you want to get the data lineage node.</p>
    #   @return [Time]
    class GetLineageNodeInput < Struct.new(
      :domain_identifier,
      :identifier,
      :event_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where you're getting the data lineage node.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data lineage node.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data lineage node.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the data lineage node was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data lineage node.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the data lineage node was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who updated the data lineage node.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data lineage node.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the type of the specified data lineage node.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision type of the specified data lineage node.</p>
    #   @return [String]
    # @!attribute source_identifier
    #   <p>The source identifier of the data lineage node.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The timestamp of the event described in the data lineage node.</p>
    #   @return [Time]
    # @!attribute forms_output
    #   <p>The metadata of the specified data lineage node.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute upstream_nodes
    #   <p>The upstream nodes of the specified data lineage node.</p>
    #   @return [Array<Types::LineageNodeReference>]
    # @!attribute downstream_nodes
    #   <p>The downsteam nodes of the specified data lineage node.</p>
    #   @return [Array<Types::LineageNodeReference>]
    class GetLineageNodeOutput < Struct.new(
      :domain_id,
      :name,
      :description,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :id,
      :type_name,
      :type_revision,
      :source_identifier,
      :event_timestamp,
      :forms_output,
      :upstream_nodes,
      :downstream_nodes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the listing.</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of the listing.</p>
    #   @return [String]
    class GetListingInput < Struct.new(
      :domain_identifier,
      :identifier,
      :listing_revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the listing.</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of a listing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the listing was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the listing was updated.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the listing.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the listing.</p>
    #   @return [String]
    # @!attribute item
    #   <p>The details of a listing.</p>
    #   @return [Types::ListingItem]
    # @!attribute name
    #   <p>The name of the listing.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the listing.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the listing.</p>
    #   @return [String]
    class GetListingOutput < Struct.new(
      :domain_id,
      :id,
      :listing_revision,
      :created_at,
      :updated_at,
      :created_by,
      :updated_by,
      :item,
      :name,
      :description,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain the metadata generation run of which you want to
    #            get.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the metadata generation run.</p>
    #   @return [String]
    class GetMetadataGenerationRunInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain the metadata generation run of which you want to
    #            get.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the metadata generation run.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The asset for which you're generating metadata.</p>
    #   @return [Types::MetadataGenerationRunTarget]
    # @!attribute status
    #   <p>The status of the metadata generation run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of metadata generation run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the metadata generation run was start.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who started the metadata generation run.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns the assets for which you're running metadata
    #            generation.</p>
    #   @return [String]
    class GetMetadataGenerationRunOutput < Struct.new(
      :domain_id,
      :id,
      :target,
      :status,
      :type,
      :created_at,
      :created_by,
      :owning_project_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the project exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the project.</p>
    #   @return [String]
    class GetProjectInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the project exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>&gt;The ID of the project.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    # @!attribute project_status
    #   <p>The status of the project.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Array<Types::ProjectDeletionError>]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the project.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the project was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the project was last updated.</p>
    #   @return [Time]
    # @!attribute glossary_terms
    #   <p>The business glossary terms that can be used in the project.</p>
    #   @return [Array<String>]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute project_profile_id
    #   <p>The ID of the project profile of a project.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of a project.</p>
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    # @!attribute environment_deployment_details
    #   <p>The environment deployment status of a project.</p>
    #   @return [Types::EnvironmentDeploymentDetails]
    class GetProjectOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :project_status,
      :failure_reasons,
      :created_by,
      :created_at,
      :last_updated_at,
      :glossary_terms,
      :domain_unit_id,
      :project_profile_id,
      :user_parameters,
      :environment_deployment_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the project profile.</p>
    #   @return [String]
    class GetProjectProfileInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain of the project profile.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the project profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the project profile.</p>
    #   @return [String]
    # @!attribute environment_configurations
    #   <p>The environment configurations of the project profile.</p>
    #   @return [Array<Types::EnvironmentConfiguration>]
    # @!attribute created_by
    #   <p>The user who created the project profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the project profile was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when project profile was last updated.</p>
    #   @return [Time]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit of the project profile.</p>
    #   @return [String]
    class GetProjectProfileOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :status,
      :environment_configurations,
      :created_by,
      :created_at,
      :last_updated_at,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where the <code>GetRule</code> action is to be invoked.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the rule.</p>
    #   @return [String]
    class GetRuleInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of the rule.</p>
    #   @return [Types::RuleTarget]
    # @!attribute action
    #   <p>The action of the rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scope of the rule.</p>
    #   @return [Types::RuleScope]
    # @!attribute detail
    #   <p>The detail of the rule.</p>
    #   @return [Types::RuleDetail]
    # @!attribute target_type
    #   <p>The target type of the rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the rule was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp at which the rule was last updated.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the rule.</p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p>The timestamp at which the rule was last updated.</p>
    #   @return [String]
    class GetRuleOutput < Struct.new(
      :identifier,
      :revision,
      :name,
      :rule_type,
      :target,
      :action,
      :scope,
      :detail,
      :target_type,
      :description,
      :created_at,
      :updated_at,
      :created_by,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the subscription grant.</p>
    #   @return [String]
    class GetSubscriptionGrantInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription grant.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription grant.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription grant.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant exists.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription grant is created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription grant was upated.</p>
    #   @return [Time]
    # @!attribute subscription_target_id
    #   <p>The subscription target ID associated with the subscription grant.</p>
    #   @return [String]
    # @!attribute granted_entity
    #   <p>The entity to which the subscription is granted.</p>
    #   @return [Types::GrantedEntity]
    # @!attribute status
    #   <p>The status of the subscription grant.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets for which the subscription grant is created.</p>
    #   @return [Array<Types::SubscribedAsset>]
    # @!attribute subscription_id
    #   <p>The identifier of the subscription.</p>
    #   @deprecated
    #     Multiple subscriptions can exist for a single grant
    #   @return [String]
    class GetSubscriptionGrantOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :created_at,
      :updated_at,
      :subscription_target_id,
      :granted_entity,
      :status,
      :assets,
      :subscription_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    class GetSubscriptionInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the subscription exists.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription was updated.</p>
    #   @return [Time]
    # @!attribute subscribed_principal
    #   <p>The principal that owns the subscription.</p>
    #   @return [Types::SubscribedPrincipal]
    # @!attribute subscribed_listing
    #   <p>The details of the published asset for which the subscription grant is created.</p>
    #   @return [Types::SubscribedListing]
    # @!attribute subscription_request_id
    #   <p>The ID of the subscription request.</p>
    #   @return [String]
    # @!attribute retain_permissions
    #   <p>The retain permissions of the subscription.</p>
    #   @return [Boolean]
    class GetSubscriptionOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :subscribed_principal,
      :subscribed_listing,
      :subscription_request_id,
      :retain_permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to get the subscription request
    #            details.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the subscription request the details of which to get.</p>
    #   @return [String]
    class GetSubscriptionRequestDetailsInput < Struct.new(
      :domain_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the subscription request.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription request.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription request.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The Amazon DataZone domain of the subscription request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the specified subscription request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription request was updated.</p>
    #   @return [Time]
    # @!attribute request_reason
    #   <p>The reason for the subscription request.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>The subscribed principals in the subscription request.</p>
    #   @return [Array<Types::SubscribedPrincipal>]
    # @!attribute subscribed_listings
    #   <p>The subscribed listings in the subscription request.</p>
    #   @return [Array<Types::SubscribedListing>]
    # @!attribute reviewer_id
    #   <p>The identifier of the Amazon DataZone user who reviewed the subscription request.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>The decision comment of the subscription request.</p>
    #   @return [String]
    # @!attribute existing_subscription_id
    #   <p>The ID of the existing subscription.</p>
    #   @return [String]
    # @!attribute metadata_forms
    #   <p>The metadata forms included in the subscription request.</p>
    #   @return [Array<Types::FormOutput>]
    class GetSubscriptionRequestDetailsOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :request_reason,
      :subscribed_principals,
      :subscribed_listings,
      :reviewer_id,
      :decision_comment,
      :existing_subscription_id,
      :metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription target exists.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment associated with the subscription target.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the subscription target.</p>
    #   @return [String]
    class GetSubscriptionTargetInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription target.</p>
    #   @return [String]
    # @!attribute authorized_principals
    #   <p>The authorized principals of the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the subscription target exists.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the project associated with the subscription target.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment associated with the subscription target.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the subscription target.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the subscription target.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription target.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription target was updated.</p>
    #   @return [Time]
    # @!attribute manage_access_role
    #   <p>The manage access role with which the subscription target was created.</p>
    #   @return [String]
    # @!attribute applicable_asset_types
    #   <p>The asset types associated with the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute subscription_target_config
    #   <p>The configuration of teh subscription target.</p>
    #   @return [Array<Types::SubscriptionTargetForm>]
    # @!attribute provider
    #   <p>The provider of the subscription target.</p>
    #   @return [String]
    class GetSubscriptionTargetOutput < Struct.new(
      :id,
      :authorized_principals,
      :domain_id,
      :project_id,
      :environment_id,
      :name,
      :type,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at,
      :manage_access_role,
      :applicable_asset_types,
      :subscription_target_config,
      :provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain that houses the asset for which you want to get the
    #            data point.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the asset for which you want to get the data point.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the asset for which you want to get the data point.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data point that you want to get.</p>
    #   @return [String]
    # @!attribute form_name
    #   <p>The name of the time series form that houses the data point that you want to get.</p>
    #   @return [String]
    class GetTimeSeriesDataPointInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :identifier,
      :form_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain that houses the asset data point that you want to
    #            get.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the asset for which you want to get the data point.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the asset for which you want to get the data point.</p>
    #   @return [String]
    # @!attribute form_name
    #   <p>The name of the time series form that houses the data point that you want to get.</p>
    #   @return [String]
    # @!attribute form
    #   <p>The time series form that houses the data point that you want to get.</p>
    #   @return [Types::TimeSeriesDataPointFormOutput]
    class GetTimeSeriesDataPointOutput < Struct.new(
      :domain_id,
      :entity_id,
      :entity_type,
      :form_name,
      :form,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>the ID of the Amazon DataZone domain the data portal of which you want to get.</p>
    #   @return [String]
    # @!attribute user_identifier
    #   <p>The identifier of the user for which you want to get the user profile.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user profile.</p>
    #   @return [String]
    class GetUserProfileInput < Struct.new(
      :domain_identifier,
      :user_identifier,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>the identifier of the Amazon DataZone domain of which you want to get the user
    #            profile.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the user profile.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the user profile.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the user profile in Amazon DataZone.</p>
    #   @return [Types::UserProfileDetails]
    class GetUserProfileOutput < Struct.new(
      :domain_id,
      :id,
      :type,
      :status,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a business glossary.</p>
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the business glossary exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the glossary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the glossary.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The identifier of the project that owns the business glosary.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The business glossary description.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The business glossary status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the glossary was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the glossary.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the business glossary was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the business glossary.</p>
    #   @return [String]
    # @!attribute additional_attributes
    #   <p>The additional attributes of an Amazon DataZone glossary.</p>
    #   @return [Types::GlossaryItemAdditionalAttributes]
    class GlossaryItem < Struct.new(
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :description,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The additional attributes of an Amazon DataZone glossary.</p>
    # @!attribute match_rationale
    #   <p>List of rationales indicating why this item was matched by search.</p>
    #   @return [Array<Types::MatchRationaleItem>]
    class GlossaryItemAdditionalAttributes < Struct.new(
      :match_rationale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GlossaryStatus
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # <p>The details of a business glossary term.</p>
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the business glossary exists.</p>
    #   @return [String]
    # @!attribute glossary_id
    #   <p>The identifier of the business glossary to which the term belongs.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the business glossary term.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the business glossary term.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The short description of the business glossary term.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>The long description of the business glossary term.</p>
    #   @return [String]
    # @!attribute term_relations
    #   <p>The relations of the business glossary term.</p>
    #   @return [Types::TermRelations]
    # @!attribute status
    #   <p>The status of the business glossary term.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when a business glossary term was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the business glossary.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when a business glossary term was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the business glossary term.</p>
    #   @return [String]
    # @!attribute additional_attributes
    #   <p>The additional attributes of an Amazon DataZone glossary term.</p>
    #   @return [Types::GlossaryTermItemAdditionalAttributes]
    class GlossaryTermItem < Struct.new(
      :domain_id,
      :glossary_id,
      :id,
      :name,
      :short_description,
      :long_description,
      :term_relations,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The additional attributes of an Amazon DataZone glossary term.</p>
    # @!attribute match_rationale
    #   <p>List of rationales indicating why this item was matched by search.</p>
    #   @return [Array<Types::MatchRationaleItem>]
    class GlossaryTermItemAdditionalAttributes < Struct.new(
      :match_rationale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GlossaryTermStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>The Amazon Web Services Glue connection.</p>
    # @!attribute name
    #   <p>The name of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute match_criteria
    #   <p>The match criteria of the Amazon Web Services Glue connection.</p>
    #   @return [Array<String>]
    # @!attribute connection_properties
    #   <p>The properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute spark_properties
    #   <p>The Spark properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute athena_properties
    #   <p>The Amazon Athena properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute python_properties
    #   <p>The Python properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute physical_connection_requirements
    #   <p>The physical connection requirements of the Amazon Web Services Glue connection.</p>
    #   @return [Types::PhysicalConnectionRequirements]
    # @!attribute creation_time
    #   <p>The creation time of the Amazon Web Services Glue connection.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp at which the Amazon Web Services Glue connection was last updated.</p>
    #   @return [Time]
    # @!attribute last_updated_by
    #   <p>The user who last updated the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute last_connection_validation_time
    #   <p>The last validation time of the Amazon Web Services Glue connection.</p>
    #   @return [Time]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration of the Amazon Web Services Glue connection.</p>
    #   @return [Types::AuthenticationConfiguration]
    # @!attribute connection_schema_version
    #   <p>The connection schema version of the Amazon Web Services Glue connection.</p>
    #   @return [Integer]
    # @!attribute compatible_compute_environments
    #   <p>The compatible compute environments of the Amazon Web Services Glue connection.</p>
    #   @return [Array<String>]
    class GlueConnection < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :spark_properties,
      :athena_properties,
      :python_properties,
      :physical_connection_requirements,
      :creation_time,
      :last_updated_time,
      :last_updated_by,
      :status,
      :status_reason,
      :last_connection_validation_time,
      :authentication_configuration,
      :connection_schema_version,
      :compatible_compute_environments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Glue connecton input.</p>
    # @!attribute connection_properties
    #   <p>The connection properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute physical_connection_requirements
    #   <p>The physical connection requirements for the Amazon Web Services Glue connection.</p>
    #   @return [Types::PhysicalConnectionRequirements]
    # @!attribute name
    #   <p>The name of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The connection type of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute match_criteria
    #   <p>The match criteria of the Amazon Web Services Glue connection.</p>
    #   @return [String]
    # @!attribute validate_credentials
    #   <p>Speciefies whether to validate credentials of the Amazon Web Services Glue
    #            connection.</p>
    #   @return [Boolean]
    # @!attribute validate_for_compute_environments
    #   <p>Speciefies whether to validate for compute environments of the Amazon Web Services Glue
    #            connection.</p>
    #   @return [Array<String>]
    # @!attribute spark_properties
    #   <p>The Spark properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute athena_properties
    #   <p>The Amazon Athena properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute python_properties
    #   <p>The Python properties of the Amazon Web Services Glue connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration of the Amazon Web Services Glue connection.</p>
    #   @return [Types::AuthenticationConfigurationInput]
    class GlueConnectionInput < Struct.new(
      :connection_properties,
      :physical_connection_requirements,
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :validate_credentials,
      :validate_for_compute_environments,
      :spark_properties,
      :athena_properties,
      :python_properties,
      :authentication_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Glue connection patch.</p>
    # @!attribute description
    #   <p>The description of the Amazon Web Services Glue connection patch.</p>
    #   @return [String]
    # @!attribute connection_properties
    #   <p>The properties of the Amazon Web Services Glue connection patch.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration of the Amazon Web Services Glue connection patch.</p>
    #   @return [Types::AuthenticationConfigurationPatch]
    class GlueConnectionPatch < Struct.new(
      :description,
      :connection_properties,
      :authentication_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GlueConnectionType
      SNOWFLAKE = 'SNOWFLAKE'
      BIGQUERY = 'BIGQUERY'
      DOCUMENTDB = 'DOCUMENTDB'
      DYNAMODB = 'DYNAMODB'
      MYSQL = 'MYSQL'
      OPENSEARCH = 'OPENSEARCH'
      ORACLE = 'ORACLE'
      POSTGRESQL = 'POSTGRESQL'
      REDSHIFT = 'REDSHIFT'
      SAPHANA = 'SAPHANA'
      SQLSERVER = 'SQLSERVER'
      TERADATA = 'TERADATA'
      VERTICA = 'VERTICA'
    end

    # <p>The GlueOAuth2 credentials of a connection.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute user_managed_client_application_client_secret
    #   <p>The user managed client application client secret of the connection. </p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The access token of a connection.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>The refresh token of the connection.</p>
    #   @return [String]
    # @!attribute jwt_token
    #   <p>The jwt token of the connection.</p>
    #   @return [String]
    class GlueOAuth2Credentials < Struct.new(
      :user_managed_client_application_client_secret,
      :access_token,
      :refresh_token,
      :jwt_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Glue properties of a connection.</p>
    # @!attribute glue_connection_input
    #   <p>The Amazon Web Services Glue connection.</p>
    #   @return [Types::GlueConnectionInput]
    class GluePropertiesInput < Struct.new(
      :glue_connection_input,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the Amazon Web Services Glue connection.</p>
    # @!attribute status
    #   <p>The status of a connection.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message generated if the action is not completed successfully.</p>
    #   @return [String]
    class GluePropertiesOutput < Struct.new(
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Glue properties patch of a connection.</p>
    # @!attribute glue_connection_input
    #   <p>The Amazon Web Services Glue properties patch of a connection.</p>
    #   @return [Types::GlueConnectionPatch]
    class GluePropertiesPatch < Struct.new(
      :glue_connection_input,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of the Amazon Web Services Glue data source.</p>
    # @!attribute data_access_role
    #   <p>The data access role included in the configuration details of the Amazon Web Services Glue data
    #            source.</p>
    #   @return [String]
    # @!attribute relational_filter_configurations
    #   <p>The relational filter configurations included in the configuration details of the Amazon Web Services
    #            Glue data source.</p>
    #   @return [Array<Types::RelationalFilterConfiguration>]
    # @!attribute auto_import_data_quality_result
    #   <p>Specifies whether to automatically import data quality metrics as part of the data
    #            source run.</p>
    #   @return [Boolean]
    # @!attribute catalog_name
    #   <p>The catalog name in the Amazon Web Services Glue run configuration.</p>
    #   @return [String]
    class GlueRunConfigurationInput < Struct.new(
      :data_access_role,
      :relational_filter_configurations,
      :auto_import_data_quality_result,
      :catalog_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of the Amazon Web Services Glue data source.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID included in the configuration details of the Amazon Web Services Glue data
    #            source. </p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services region included in the configuration details of the Amazon Web Services Glue data source.
    #         </p>
    #   @return [String]
    # @!attribute data_access_role
    #   <p>The data access role included in the configuration details of the Amazon Web Services Glue data
    #            source. </p>
    #   @return [String]
    # @!attribute relational_filter_configurations
    #   <p>The relational filter configurations included in the configuration details of the Amazon Web Services
    #            Glue data source.</p>
    #   @return [Array<Types::RelationalFilterConfiguration>]
    # @!attribute auto_import_data_quality_result
    #   <p>Specifies whether to automatically import data quality metrics as part of the data
    #            source run.</p>
    #   @return [Boolean]
    # @!attribute catalog_name
    #   <p>The catalog name in the Amazon Web Services Glue run configuration.</p>
    #   @return [String]
    class GlueRunConfigurationOutput < Struct.new(
      :account_id,
      :region,
      :data_access_role,
      :relational_filter_configurations,
      :auto_import_data_quality_result,
      :catalog_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the self granting status.</p>
    # @!attribute self_grant_status_details
    #   <p>The details for the self granting status for a Glue data source.</p>
    #   @return [Array<Types::SelfGrantStatusDetail>]
    class GlueSelfGrantStatusOutput < Struct.new(
      :self_grant_status_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GovernanceType
      AWS_MANAGED = 'AWS_MANAGED'
      USER_MANAGED = 'USER_MANAGED'
    end

    # <p>The details of a listing for which a subscription is granted.</p>
    # @!attribute listing
    #   <p>The listing for which a subscription is granted.</p>
    #   @return [Types::ListingRevision]
    class GrantedEntity < Struct.new(
      :listing,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Listing < GrantedEntity; end
      class Unknown < GrantedEntity; end
    end

    # <p>The details of a listing for which a subscription is to be granted.</p>
    # @!attribute listing
    #   <p>The listing for which a subscription is to be granted.</p>
    #   @return [Types::ListingRevisionInput]
    class GrantedEntityInput < Struct.new(
      :listing,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Listing < GrantedEntityInput; end
      class Unknown < GrantedEntityInput; end
    end

    # <p>Specifies whether the value is greater than an expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might be greater than an expression.</p>
    #   @return [String]
    class GreaterThanExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies whether the value is greater than or equal to an expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might be greater than or equal to an expression.</p>
    #   @return [String]
    class GreaterThanOrEqualToExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a group in Amazon DataZone.</p>
    # @!attribute group_id
    #   <p>The identifier of the group in Amazon DataZone.</p>
    #   @return [String]
    class GroupDetails < Struct.new(
      :group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The group principal to whom the policy is granted.</p>
    # @!attribute group_identifier
    #   <p>The ID Of the group of the group principal.</p>
    #   @return [String]
    class GroupPolicyGrantPrincipal < Struct.new(
      :group_identifier,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class GroupIdentifier < GroupPolicyGrantPrincipal; end
      class Unknown < GroupPolicyGrantPrincipal; end
    end

    module GroupProfileStatus
      ASSIGNED = 'ASSIGNED'
      NOT_ASSIGNED = 'NOT_ASSIGNED'
    end

    # <p>The details of a group profile.</p>
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain of a group profile.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of a group profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a group profile.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The group name of a group profile.</p>
    #   @return [String]
    class GroupProfileSummary < Struct.new(
      :domain_id,
      :id,
      :status,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupSearchType
      SSO_GROUP = 'SSO_GROUP'
      DATAZONE_SSO_GROUP = 'DATAZONE_SSO_GROUP'
    end

    module HyperPodOrchestrator
      EKS = 'EKS'
      SLURM = 'SLURM'
    end

    # <p>The hyper pod properties of a Amazon Web Services Glue properties patch.</p>
    # @!attribute cluster_name
    #   <p>The cluster name the hyper pod properties.</p>
    #   @return [String]
    class HyperPodPropertiesInput < Struct.new(
      :cluster_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The hyper pod properties of a Amazon Web Services Glue properties patch.</p>
    # @!attribute cluster_name
    #   <p>The cluster name the hyper pod properties.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The cluster ARN of the hyper pod properties.</p>
    #   @return [String]
    # @!attribute orchestrator
    #   <p>The orchestrator of the hyper pod properties.</p>
    #   @return [String]
    class HyperPodPropertiesOutput < Struct.new(
      :cluster_name,
      :cluster_arn,
      :orchestrator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The IAM properties of a connection.</p>
    # @!attribute glue_lineage_sync_enabled
    #   <p>Specifies whether Amazon Web Services Glue lineage sync is enabled for a
    #            connection.</p>
    #   @return [Boolean]
    class IamPropertiesInput < Struct.new(
      :glue_lineage_sync_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The IAM properties of a connection.</p>
    # @!attribute environment_id
    #   <p>The environment ID of the connection.</p>
    #   @return [String]
    # @!attribute glue_lineage_sync_enabled
    #   <p>Specifies whether Amazon Web Services Glue lineage sync is enabled for a
    #            connection.</p>
    #   @return [Boolean]
    class IamPropertiesOutput < Struct.new(
      :environment_id,
      :glue_lineage_sync_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The IAM properties patch of a connection.</p>
    # @!attribute glue_lineage_sync_enabled
    #   <p>Specifies whether Amazon Web Services Glue lineage sync is enabled for a
    #            connection.</p>
    #   @return [Boolean]
    class IamPropertiesPatch < Struct.new(
      :glue_lineage_sync_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an IAM user profile in Amazon DataZone.</p>
    # @!attribute arn
    #   <p>The ARN of an IAM user profile in Amazon DataZone.</p>
    #   @return [String]
    class IamUserProfileDetails < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the import of the metadata form type.</p>
    # @!attribute name
    #   <p>The name of the import.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the import.</p>
    #   @return [String]
    class Import < Struct.new(
      :name,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies whether values are in the expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values that might be in the expression.</p>
    #   @return [Array<String>]
    class InExpression < Struct.new(
      :column_name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InventorySearchScope
      ASSET = 'ASSET'
      GLOSSARY = 'GLOSSARY'
      GLOSSARY_TERM = 'GLOSSARY_TERM'
      DATA_PRODUCT = 'DATA_PRODUCT'
    end

    # <p>Specifies that the expression is not null.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    class IsNotNullExpression < Struct.new(
      :column_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that the expression is null.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    class IsNullExpression < Struct.new(
      :column_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a job run.</p>
    # @!attribute lineage_run_details
    #   <p>The data lineage details of a job run.</p>
    #   @return [Types::LineageRunDetails]
    class JobRunDetails < Struct.new(
      :lineage_run_details,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class LineageRunDetails < JobRunDetails; end
      class Unknown < JobRunDetails; end
    end

    # <p>The job run error.</p>
    # @!attribute message
    #   <p>The job run error message.</p>
    #   @return [String]
    class JobRunError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module JobRunMode
      SCHEDULED = 'SCHEDULED'
      ON_DEMAND = 'ON_DEMAND'
    end

    module JobRunStatus
      SCHEDULED = 'SCHEDULED'
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESS = 'SUCCESS'
      PARTIALLY_SUCCEEDED = 'PARTIALLY_SUCCEEDED'
      FAILED = 'FAILED'
      ABORTED = 'ABORTED'
      TIMED_OUT = 'TIMED_OUT'
      CANCELED = 'CANCELED'
    end

    # <p>The job run summary.</p>
    # @!attribute domain_id
    #   <p>The domain ID of the job run.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of a job run.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The job type of a job run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The run ID of a job run.</p>
    #   @return [String]
    # @!attribute run_mode
    #   <p>The run mode of a job run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a job run.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error of a job run.</p>
    #   @return [Types::JobRunError]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which job run was created.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The start time of a job run.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of a job run.</p>
    #   @return [Time]
    class JobRunSummary < Struct.new(
      :domain_id,
      :job_id,
      :job_type,
      :run_id,
      :run_mode,
      :status,
      :error,
      :created_by,
      :created_at,
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module JobType
      LINEAGE = 'LINEAGE'
    end

    # <p>The Lake Formation configuration of the Data Lake blueprint.</p>
    # @!attribute location_registration_role
    #   <p>The role that is used to manage read/write access to the chosen Amazon S3 bucket(s) for
    #            Data Lake using Amazon Web Services Lake Formation hybrid access mode.</p>
    #   @return [String]
    # @!attribute location_registration_exclude_s3_locations
    #   <p>Specifies certain Amazon S3 locations if you do not want Amazon DataZone to
    #            automatically register them in hybrid mode. </p>
    #   @return [Array<String>]
    class LakeFormationConfiguration < Struct.new(
      :location_registration_role,
      :location_registration_exclude_s3_locations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that a value is less than an expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might be less than the expression.</p>
    #   @return [String]
    class LessThanExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that a value is less than or equal to an expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might be less than or equal to an expression.</p>
    #   @return [String]
    class LessThanOrEqualToExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that a value is like the expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might be like the expression.</p>
    #   @return [String]
    class LikeExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LineageEventProcessingStatus
      REQUESTED = 'REQUESTED'
      PROCESSING = 'PROCESSING'
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
    end

    # <p>The data lineage event summary.</p>
    # @!attribute id
    #   <p>The ID of the data lineage event.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The domain ID of the lineage event.</p>
    #   @return [String]
    # @!attribute processing_status
    #   <p>The processing status of the data lineage event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The time of the data lineage event.</p>
    #   @return [Time]
    # @!attribute event_summary
    #   <p>The summary of the data lineate event.</p>
    #   @return [Types::EventSummary]
    # @!attribute created_by
    #   <p>The user who created the data lineage event.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which data lineage event was created.</p>
    #   @return [Time]
    class LineageEventSummary < Struct.new(
      :id,
      :domain_id,
      :processing_status,
      :event_time,
      :event_summary,
      :created_by,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LineageImportStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
      PARTIALLY_SUCCEEDED = 'PARTIALLY_SUCCEEDED'
    end

    # <p>The data lineage information.</p>
    # @!attribute event_id
    #   <p>The data lineage event ID.</p>
    #   @return [String]
    # @!attribute event_status
    #   <p>The data lineage event status.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The data lineage error message.</p>
    #   @return [String]
    class LineageInfo < Struct.new(
      :event_id,
      :event_status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The reference details for the data lineage node.</p>
    # @!attribute id
    #   <p>The ID of the data lineage node.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The event timestamp of the data lineage node.</p>
    #   @return [Time]
    class LineageNodeReference < Struct.new(
      :id,
      :event_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the data lineage node.</p>
    # @!attribute domain_id
    #   <p>The ID of the domain of the data lineage node.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data lineage node.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data lineage node.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the data lineage node was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data lineage node.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the data lineage node was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who updated the data lineage node.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data lineage node.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the type of the data lineage node.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The type of the revision of the data lineage node.</p>
    #   @return [String]
    # @!attribute source_identifier
    #   <p>The alternate ID of the data lineage node.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The event timestamp of the data lineage node.</p>
    #   @return [Time]
    class LineageNodeSummary < Struct.new(
      :domain_id,
      :name,
      :description,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :id,
      :type_name,
      :type_revision,
      :source_identifier,
      :event_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a data lineage node type.</p>
    # @!attribute domain_id
    #   <p>The ID of the domain where the data lineage node type lives.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data lineage node type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data lineage node type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the data lineage node type was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the data lineage node type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp at which the data lineage node type was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who updated the data lineage node type.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the data lineage node type.</p>
    #   @return [String]
    # @!attribute forms_output
    #   <p>The forms output of the data lineage node type.</p>
    #   @return [Hash<String, Types::FormEntryOutput>]
    class LineageNodeTypeItem < Struct.new(
      :domain_id,
      :name,
      :description,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :revision,
      :forms_output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data lineage run details.</p>
    # @!attribute sql_query_run_details
    #   <p>The SQL query run details of a data lineage run.</p>
    #   @return [Types::LineageSqlQueryRunDetails]
    class LineageRunDetails < Struct.new(
      :sql_query_run_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The SQL query run details of a data lineage run.</p>
    # @!attribute query_start_time
    #   <p>The query start time in the SQL query run details of a data lineage run.</p>
    #   @return [Time]
    # @!attribute query_end_time
    #   <p>The query end time in the SQL query run details of a data lineage run.</p>
    #   @return [Time]
    # @!attribute total_queries_processed
    #   <p>The total queries processed in the SQL query run details of a data lineage run.</p>
    #   @return [Integer]
    # @!attribute num_queries_failed
    #   <p>The number of queries that failed in the SQL query run details of a data lineage
    #            run.</p>
    #   @return [Integer]
    # @!attribute error_messages
    #   <p>The error message of the SQL query run details of a data lineage run.</p>
    #   @return [Array<String>]
    class LineageSqlQueryRunDetails < Struct.new(
      :query_start_time,
      :query_end_time,
      :total_queries_processed,
      :num_queries_failed,
      :error_messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The lineage sync schedule.</p>
    # @!attribute schedule
    #   <p>The lineage sync schedule.</p>
    #   @return [String]
    class LineageSyncSchedule < Struct.new(
      :schedule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where exsting account pools are to be listed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool to be listed.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The sort by mechanism in which the existing account pools are to be listed.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order in which the existing account pools are to be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of account pools is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of account pools, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListAccountPools to list the next set of
    #            account pools.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of account pools to return in a single call to ListAccountPools. When
    #            the number of account pools to be listed is greater than the value of MaxResults, the
    #            response contains a NextToken value that you can use in a subsequent call to
    #            ListAccountPools to list the next set of account pools.</p>
    #   @return [Integer]
    class ListAccountPoolsInput < Struct.new(
      :domain_identifier,
      :name,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListAccountPools operation.</p>
    #   @return [Array<Types::AccountPoolSummary>]
    # @!attribute next_token
    #   <p>When the number of account pools is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of account pools, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListAccountPools to list the next set of
    #            account pools.</p>
    #   @return [String]
    class ListAccountPoolsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which the accounts in the specified account pool are to be
    #            listed.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the account pool whose accounts are to be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of accounts is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of accounts, the response includes a pagination token named NextToken. You can specify this
    #            NextToken value in a subsequent call to ListAccountsInAccountPool to list the next set of
    #            accounts.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of accounts to return in a single call to ListAccountsInAccountPool.
    #            When the number of accounts to be listed is greater than the value of MaxResults, the
    #            response contains a NextToken value that you can use in a subsequent call to
    #            ListAccountsInAccountPool to list the next set of accounts.</p>
    #   @return [Integer]
    class ListAccountsInAccountPoolInput < Struct.new(
      :domain_identifier,
      :identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListAccountsInAccountPool operation.</p>
    #   @return [Array<Types::AccountInfo>]
    # @!attribute next_token
    #   <p>When the number of accounts is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of accounts, the response includes a pagination token named NextToken. You can specify this
    #            NextToken value in a subsequent call to ListAccountsInAccountPool to list the next set of
    #            accounts.</p>
    #   @return [String]
    class ListAccountsInAccountPoolOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list asset filters.</p>
    #   @return [String]
    # @!attribute asset_identifier
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asset filter.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of asset filters is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of asset filters, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListAssetFilters</code> to
    #            list the next set of asset filters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of asset filters to return in a single call to
    #               <code>ListAssetFilters</code>. When the number of asset filters to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>ListAssetFilters</code> to list the
    #            next set of asset filters.</p>
    #   @return [Integer]
    class ListAssetFiltersInput < Struct.new(
      :domain_identifier,
      :asset_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListAssetFilters</code> action.</p>
    #   @return [Array<Types::AssetFilterSummary>]
    # @!attribute next_token
    #   <p>When the number of asset filters is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of asset filters, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListAssetFilters</code> to
    #            list the next set of asset filters.</p>
    #   @return [String]
    class ListAssetFiltersOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the asset.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of revisions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of revisions, the response includes
    #            a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListAssetRevisions</code> to
    #            list the next set of revisions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of revisions to return in a single call to
    #               <code>ListAssetRevisions</code>. When the number of revisions to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>ListAssetRevisions</code> to list the
    #            next set of revisions.</p>
    #   @return [Integer]
    class ListAssetRevisionsInput < Struct.new(
      :domain_identifier,
      :identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListAssetRevisions</code> action.</p>
    #   @return [Array<Types::AssetRevision>]
    # @!attribute next_token
    #   <p>When the number of revisions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of revisions, the response includes
    #            a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListAssetRevisions</code> to
    #            list the next set of revisions.</p>
    #   @return [String]
    class ListAssetRevisionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list connections.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of connections to return in a single call to ListConnections. When
    #            the number of connections to be listed is greater than the value of MaxResults, the
    #            response contains a NextToken value that you can use in a subsequent call to
    #            ListConnections to list the next set of connections.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of connections is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of connections, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListConnections to list the next set of
    #            connections.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies how you want to sort the listed connections.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the sort order for the listed connections.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the environment where you want to list connections.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The ID of the project where you want to list connections.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of connection.</p>
    #   @return [String]
    class ListConnectionsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :name,
      :environment_identifier,
      :project_identifier,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListConnections action.</p>
    #   @return [Array<Types::ConnectionSummary>]
    # @!attribute next_token
    #   <p>When the number of connections is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of connections, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListConnections to list the next set of
    #            connections.</p>
    #   @return [String]
    class ListConnectionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain of the data product revisions that you want to list.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data product revision.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of asset filters to return in a single call to
    #               <code>ListDataProductRevisions</code>. When the number of data product revisions to be
    #            listed is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListDataProductRevisions</code> to list the next set of data product
    #            revisions.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of data product revisions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of data product revisions, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListDataProductRevisions</code> to list the next set of data product
    #            revisions.</p>
    #   @return [String]
    class ListDataProductRevisionsInput < Struct.new(
      :domain_identifier,
      :identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListDataProductRevisions</code> action.</p>
    #   @return [Array<Types::DataProductRevision>]
    # @!attribute next_token
    #   <p>When the number of data product revisions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of data product revisions, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListDataProductRevisions</code> to list the next set of data product
    #            revisions.</p>
    #   @return [String]
    class ListDataProductRevisionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to list data source run
    #            activities.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the data source run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source run.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of activities is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of activities, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListDataSourceRunActivities</code> to list the next set of activities.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of activities to return in a single call to
    #               <code>ListDataSourceRunActivities</code>. When the number of activities to be listed is
    #            greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListDataSourceRunActivities</code> to list the next set of activities.</p>
    #   @return [Integer]
    class ListDataSourceRunActivitiesInput < Struct.new(
      :domain_identifier,
      :identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListDataSourceRunActivities</code> action.</p>
    #   @return [Array<Types::DataSourceRunActivity>]
    # @!attribute next_token
    #   <p>When the number of activities is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of activities, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListDataSourceRunActivities</code> to list the next set of activities.</p>
    #   @return [String]
    class ListDataSourceRunActivitiesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to invoke the
    #               <code>ListDataSourceRuns</code> action.</p>
    #   @return [String]
    # @!attribute data_source_identifier
    #   <p>The identifier of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of runs is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of runs, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of
    #            runs.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of runs to return in a single call to
    #            <code>ListDataSourceRuns</code>. When the number of runs to be listed is greater than the
    #            value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
    #            you can use in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of
    #            runs.</p>
    #   @return [Integer]
    class ListDataSourceRunsInput < Struct.new(
      :domain_identifier,
      :data_source_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListDataSourceRuns</code> action.</p>
    #   @return [Array<Types::DataSourceRunSummary>]
    # @!attribute next_token
    #   <p>When the number of runs is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of runs, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of
    #            runs.</p>
    #   @return [String]
    class ListDataSourceRunsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to list the data sources.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The identifier of the project in which to list data sources.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The identifier of the environment in which to list the data sources.</p>
    #   @return [String]
    # @!attribute connection_identifier
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of data sources is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of data sources, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListDataSources</code> to
    #            list the next set of data sources.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data sources to return in a single call to
    #               <code>ListDataSources</code>. When the number of data sources to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>ListDataSources</code> to list the
    #            next set of data sources.</p>
    #   @return [Integer]
    class ListDataSourcesInput < Struct.new(
      :domain_identifier,
      :project_identifier,
      :environment_identifier,
      :connection_identifier,
      :type,
      :status,
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListDataSources</code> action.</p>
    #   @return [Array<Types::DataSourceSummary>]
    # @!attribute next_token
    #   <p>When the number of data sources is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of data sources, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListDataSources</code> to
    #            list the next set of data sources.</p>
    #   @return [String]
    class ListDataSourcesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which you want to list domain units for a parent domain
    #            unit.</p>
    #   @return [String]
    # @!attribute parent_domain_unit_identifier
    #   <p>The ID of the parent domain unit.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of domain units to return in a single call to
    #            ListDomainUnitsForParent. When the number of domain units to be listed is greater than the
    #            value of MaxResults, the response contains a NextToken value that you can use in a
    #            subsequent call to ListDomainUnitsForParent to list the next set of domain units.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of domain units is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of domain units, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListDomainUnitsForParent to list the next set
    #            of domain units.</p>
    #   @return [String]
    class ListDomainUnitsForParentInput < Struct.new(
      :domain_identifier,
      :parent_domain_unit_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results returned by this action.</p>
    #   @return [Array<Types::DomainUnitSummary>]
    # @!attribute next_token
    #   <p>When the number of domain units is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of domain units, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListDomainUnitsForParent to list the next set
    #            of domain units.</p>
    #   @return [String]
    class ListDomainUnitsForParentOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of domains to return in a single call to <code>ListDomains</code>.
    #            When the number of domains to be listed is greater than the value of
    #               <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you
    #            can use in a subsequent call to <code>ListDomains</code> to list the next set of
    #            domains.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of domains is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of domains, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListDomains</code> to list the next set of
    #            domains.</p>
    #   @return [String]
    class ListDomainsInput < Struct.new(
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListDomains</code> action.</p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   <p>When the number of domains is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of domains, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListDomains</code> to list the next set of
    #            domains.</p>
    #   @return [String]
    class ListDomainsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list entity owners.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the entity that you want to list.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity that you want to list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of entities to return in a single call to
    #               <code>ListEntityOwners</code>. When the number of entities to be listed is greater than
    #            the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value
    #            that you can use in a subsequent call to <code>ListEntityOwners</code> to list the next set
    #            of entities.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of entities is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of entities, the response includes
    #            a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListEntityOwners</code> to
    #            list the next set of entities.</p>
    #   @return [String]
    class ListEntityOwnersInput < Struct.new(
      :domain_identifier,
      :entity_type,
      :entity_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute owners
    #   <p>The owners of the entity.</p>
    #   @return [Array<Types::OwnerPropertiesOutput>]
    # @!attribute next_token
    #   <p>When the number of entities is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of entities, the response includes
    #            a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListEntityOwners</code> to
    #            list the next set of entities.</p>
    #   @return [String]
    class ListEntityOwnersOutput < Struct.new(
      :owners,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment actions are listed.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The ID of the envrironment whose environment actions are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of environment actions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of environment actions, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListEnvironmentActions</code>
    #            to list the next set of environment actions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environment actions to return in a single call to
    #               <code>ListEnvironmentActions</code>. When the number of environment actions to be listed
    #            is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListEnvironmentActions</code> to list the next set of environment actions.</p>
    #   @return [Integer]
    class ListEnvironmentActionsInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of <code>ListEnvironmentActions</code>.</p>
    #   @return [Array<Types::EnvironmentActionSummary>]
    # @!attribute next_token
    #   <p>When the number of environment actions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of environment actions, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListEnvironmentActions</code>
    #            to list the next set of environment actions.</p>
    #   @return [String]
    class ListEnvironmentActionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of blueprint configurations to return in a single call to
    #               <code>ListEnvironmentBlueprintConfigurations</code>. When the number of configurations
    #            to be listed is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of
    #            configurations.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of blueprint configurations is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of configurations, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of
    #            configurations.</p>
    #   @return [String]
    class ListEnvironmentBlueprintConfigurationsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListEnvironmentBlueprintConfigurations</code> action.</p>
    #   @return [Array<Types::EnvironmentBlueprintConfigurationItem>]
    # @!attribute next_token
    #   <p>When the number of blueprint configurations is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of configurations, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of
    #            configurations.</p>
    #   @return [String]
    class ListEnvironmentBlueprintConfigurationsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of blueprints to return in a single call to
    #               <code>ListEnvironmentBlueprints</code>. When the number of blueprints to be listed is
    #            greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListEnvironmentBlueprints</code> to list the next set of blueprints.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of blueprints in the environment is greater than the default value for
    #            the <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of blueprints in the environment,
    #            the response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListEnvironmentBlueprints</code>to list the next set of blueprints.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute managed
    #   <p>Specifies whether the environment blueprint is managed by Amazon DataZone.</p>
    #   @return [Boolean]
    class ListEnvironmentBlueprintsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :name,
      :managed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListEnvironmentBlueprints</code> action.</p>
    #   @return [Array<Types::EnvironmentBlueprintSummary>]
    # @!attribute next_token
    #   <p>When the number of blueprints in the environment is greater than the default value for
    #            the <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of blueprints in the environment,
    #            the response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListEnvironmentBlueprints</code>to list the next set of blueprints.</p>
    #   @return [String]
    class ListEnvironmentBlueprintsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The identifier of the Amazon Web Services account where you want to list environment
    #            profiles.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region where you want to list environment profiles.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>The identifier of the blueprint that was used to create the environment profiles that
    #            you want to list.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The identifier of the Amazon DataZone project.</p>
    #   @return [String]
    # @!attribute name
    #   <p/>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of environment profiles is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of environment profiles, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListEnvironmentProfiles</code> to list the next set of environment
    #            profiles.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environment profiles to return in a single call to
    #               <code>ListEnvironmentProfiles</code>. When the number of environment profiles to be
    #            listed is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListEnvironmentProfiles</code> to list the next set of environment
    #            profiles.</p>
    #   @return [Integer]
    class ListEnvironmentProfilesInput < Struct.new(
      :domain_identifier,
      :aws_account_id,
      :aws_account_region,
      :environment_blueprint_identifier,
      :project_identifier,
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListEnvironmentProfiles</code> action. </p>
    #   @return [Array<Types::EnvironmentProfileSummary>]
    # @!attribute next_token
    #   <p>When the number of environment profiles is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of environment profiles, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListEnvironmentProfiles</code> to list the next set of environment
    #            profiles.</p>
    #   @return [String]
    class ListEnvironmentProfilesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The identifier of the Amazon Web Services account where you want to list
    #            environments.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the environments that you want to list.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services region where you want to list environments.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The identifier of the Amazon DataZone project.</p>
    #   @return [String]
    # @!attribute environment_profile_identifier
    #   <p>The identifier of the environment profile.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>The identifier of the Amazon DataZone blueprint.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environments to return in a single call to
    #               <code>ListEnvironments</code>. When the number of environments to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>ListEnvironments</code> to list the
    #            next set of environments.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of environments is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of environments, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListEnvironments</code> to
    #            list the next set of environments.</p>
    #   @return [String]
    class ListEnvironmentsInput < Struct.new(
      :domain_identifier,
      :aws_account_id,
      :status,
      :aws_account_region,
      :project_identifier,
      :environment_profile_identifier,
      :environment_blueprint_identifier,
      :provider,
      :name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListEnvironments</code> action.</p>
    #   @return [Array<Types::EnvironmentSummary>]
    # @!attribute next_token
    #   <p>When the number of environments is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of environments, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListEnvironments</code> to
    #            list the next set of environments.</p>
    #   @return [String]
    class ListEnvironmentsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list job runs.</p>
    #   @return [String]
    # @!attribute job_identifier
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a job run.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the order in which job runs are to be sorted.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of job runs is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of job runs, the response includes a pagination token named NextToken. You can specify this
    #            NextToken value in a subsequent call to ListJobRuns to list the next set of job
    #            runs.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of job runs to return in a single call to ListJobRuns. When the
    #            number of job runs to be listed is greater than the value of MaxResults, the response
    #            contains a NextToken value that you can use in a subsequent call to ListJobRuns to list the
    #            next set of job runs.</p>
    #   @return [Integer]
    class ListJobRunsInput < Struct.new(
      :domain_identifier,
      :job_identifier,
      :status,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListJobRuns action.</p>
    #   @return [Array<Types::JobRunSummary>]
    # @!attribute next_token
    #   <p>When the number of job runs is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of job runs, the response includes a pagination token named NextToken. You can specify this
    #            NextToken value in a subsequent call to ListJobRuns to list the next set of job
    #            runs.</p>
    #   @return [String]
    class ListJobRunsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list lineage events.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of lineage events to return in a single call to ListLineageEvents.
    #            When the number of lineage events to be listed is greater than the value of MaxResults, the
    #            response contains a NextToken value that you can use in a subsequent call to
    #            ListLineageEvents to list the next set of lineage events.</p>
    #   @return [Integer]
    # @!attribute timestamp_after
    #   <p>The after timestamp of a lineage event.</p>
    #   @return [Time]
    # @!attribute timestamp_before
    #   <p>The before timestamp of a lineage event.</p>
    #   @return [Time]
    # @!attribute processing_status
    #   <p>The processing status of a lineage event.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order of the lineage events.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of lineage events is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of lineage events, the response includes a pagination token named NextToken. You can
    #            specify this NextToken value in a subsequent call to ListLineageEvents to list the next set
    #            of lineage events.</p>
    #   @return [String]
    class ListLineageEventsInput < Struct.new(
      :domain_identifier,
      :max_results,
      :timestamp_after,
      :timestamp_before,
      :processing_status,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListLineageEvents action.</p>
    #   @return [Array<Types::LineageEventSummary>]
    # @!attribute next_token
    #   <p>When the number of lineage events is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of lineage events, the response includes a pagination token named NextToken. You can
    #            specify this NextToken value in a subsequent call to ListLineageEvents to list the next set
    #            of lineage events.</p>
    #   @return [String]
    class ListLineageEventsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list the history of the specified data lineage
    #            node.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of history items to return in a single call to
    #            ListLineageNodeHistory. When the number of memberships to be listed is greater than the
    #            value of MaxResults, the response contains a NextToken value that you can use in a
    #            subsequent call to ListLineageNodeHistory to list the next set of items.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of history items is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of items, the response includes a pagination token named NextToken. You can specify this
    #            NextToken value in a subsequent call to ListLineageNodeHistory to list the next set of
    #            items.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the data lineage node whose history you want to list.</p>
    #   @return [String]
    # @!attribute direction
    #   <p>The direction of the data lineage node refers to the lineage node having neighbors in
    #            that direction. For example, if direction is <code>UPSTREAM</code>, the
    #               <code>ListLineageNodeHistory</code> API responds with historical versions with upstream
    #            neighbors only.</p>
    #   @return [String]
    # @!attribute event_timestamp_gte
    #   <p>Specifies whether the action is to return data lineage node history from the time after
    #            the event timestamp.</p>
    #   @return [Time]
    # @!attribute event_timestamp_lte
    #   <p>Specifies whether the action is to return data lineage node history from the time prior
    #            of the event timestamp.</p>
    #   @return [Time]
    # @!attribute sort_order
    #   <p>The order by which you want data lineage node history to be sorted.</p>
    #   @return [String]
    class ListLineageNodeHistoryInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :identifier,
      :direction,
      :event_timestamp_gte,
      :event_timestamp_lte,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nodes
    #   <p>The nodes returned by the ListLineageNodeHistory action.</p>
    #   @return [Array<Types::LineageNodeSummary>]
    # @!attribute next_token
    #   <p>When the number of history items is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of items, the response includes a pagination token named NextToken. You can specify this
    #            NextToken value in a subsequent call to ListLineageNodeHistory to list the next set of
    #            items.</p>
    #   @return [String]
    class ListLineageNodeHistoryOutput < Struct.new(
      :nodes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where you want to list metadata generation
    #            runs.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the metadata generation runs.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the metadata generation runs.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of metadata generation runs is greater than the default value for the
    #            MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than
    #            the number of metadata generation runs, the response includes a pagination token named
    #            NextToken. You can specify this NextToken value in a subsequent call to
    #            ListMetadataGenerationRuns to list the next set of revisions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of metadata generation runs to return in a single call to
    #            ListMetadataGenerationRuns. When the number of metadata generation runs to be listed is
    #            greater than the value of MaxResults, the response contains a NextToken value that you can
    #            use in a subsequent call to ListMetadataGenerationRuns to list the next set of
    #            revisions.</p>
    #   @return [Integer]
    class ListMetadataGenerationRunsInput < Struct.new(
      :domain_identifier,
      :status,
      :type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListMetadataGenerationRuns action.</p>
    #   @return [Array<Types::MetadataGenerationRunItem>]
    # @!attribute next_token
    #   <p>When the number of metadata generation runs is greater than the default value for the
    #            MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than
    #            the number of metadata generation runs, the response includes a pagination token named
    #            NextToken. You can specify this NextToken value in a subsequent call to
    #            ListMetadataGenerationRuns to list the next set of revisions.</p>
    #   @return [String]
    class ListMetadataGenerationRunsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of notifications.</p>
    #   @return [String]
    # @!attribute after_timestamp
    #   <p>The time after which you want to list notifications.</p>
    #   @return [Time]
    # @!attribute before_timestamp
    #   <p>The time before which you want to list notifications.</p>
    #   @return [Time]
    # @!attribute subjects
    #   <p>The subjects of notifications.</p>
    #   @return [Array<String>]
    # @!attribute task_status
    #   <p>The task status of notifications.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of notifications to return in a single call to
    #               <code>ListNotifications</code>. When the number of notifications to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>ListNotifications</code> to list the
    #            next set of notifications.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of notifications is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of notifications, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListNotifications</code> to
    #            list the next set of notifications.</p>
    #   @return [String]
    class ListNotificationsInput < Struct.new(
      :domain_identifier,
      :type,
      :after_timestamp,
      :before_timestamp,
      :subjects,
      :task_status,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute notifications
    #   <p>The results of the <code>ListNotifications</code> action.</p>
    #   @return [Array<Types::NotificationOutput>]
    # @!attribute next_token
    #   <p>When the number of notifications is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of notifications, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListNotifications</code> to
    #            list the next set of notifications.</p>
    #   @return [String]
    class ListNotificationsOutput < Struct.new(
      :notifications,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list policy grants.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of entity for which you want to list policy grants.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity for which you want to list policy grants.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy that you want to list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of grants to return in a single call to
    #            <code>ListPolicyGrants</code>. When the number of grants to be listed is greater than the
    #            value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
    #            you can use in a subsequent call to <code>ListPolicyGrants</code> to list the next set of
    #            grants.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of grants is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of grants, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListPolicyGrants</code> to list the next set of
    #            grants.</p>
    #   @return [String]
    class ListPolicyGrantsInput < Struct.new(
      :domain_identifier,
      :entity_type,
      :entity_identifier,
      :policy_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute grant_list
    #   <p>The results of this action - the listed grants.</p>
    #   @return [Array<Types::PolicyGrantMember>]
    # @!attribute next_token
    #   <p>When the number of grants is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of grants, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListPolicyGrants</code> to list the next set of
    #            grants.</p>
    #   @return [String]
    class ListPolicyGrantsOutput < Struct.new(
      :grant_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which you want to list project
    #            memberships.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The identifier of the project whose memberships you want to list.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The method by which you want to sort the project memberships.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order of the project memberships.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of memberships is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of memberships, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListProjectMemberships</code>
    #            to list the next set of memberships.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of memberships to return in a single call to
    #               <code>ListProjectMemberships</code>. When the number of memberships to be listed is
    #            greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListProjectMemberships</code> to list the next set of memberships.</p>
    #   @return [Integer]
    class ListProjectMembershipsInput < Struct.new(
      :domain_identifier,
      :project_identifier,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>The members of the project.</p>
    #   @return [Array<Types::ProjectMember>]
    # @!attribute next_token
    #   <p>When the number of memberships is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of memberships, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListProjectMemberships</code>
    #            to list the next set of memberships.</p>
    #   @return [String]
    class ListProjectMembershipsOutput < Struct.new(
      :members,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to list project profiles.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a project profile.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies by what to sort project profiles.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the sort order of the project profiles.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of project profiles is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of project profiles, the response includes a pagination token named NextToken. You can
    #            specify this NextToken value in a subsequent call to ListProjectProfiles to list the next
    #            set of project profiles.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of project profiles to return in a single call to
    #            ListProjectProfiles. When the number of project profiles to be listed is greater than the
    #            value of MaxResults, the response contains a NextToken value that you can use in a
    #            subsequent call to ListProjectProfiles to list the next set of project profiles.</p>
    #   @return [Integer]
    class ListProjectProfilesInput < Struct.new(
      :domain_identifier,
      :name,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListProjectProfiles action.</p>
    #   @return [Array<Types::ProjectProfileSummary>]
    # @!attribute next_token
    #   <p>When the number of project profiles is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of project profiles, the response includes a pagination token named NextToken. You can
    #            specify this NextToken value in a subsequent call to ListProjectProfiles to list the next
    #            set of project profiles.</p>
    #   @return [String]
    class ListProjectProfilesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute user_identifier
    #   <p>The identifier of the Amazon DataZone user.</p>
    #   @return [String]
    # @!attribute group_identifier
    #   <p>The identifier of a group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of projects is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of projects, the response includes
    #            a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListProjects</code> to list
    #            the next set of projects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of projects to return in a single call to <code>ListProjects</code>.
    #            When the number of projects to be listed is greater than the value of
    #               <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you
    #            can use in a subsequent call to <code>ListProjects</code> to list the next set of
    #            projects.</p>
    #   @return [Integer]
    class ListProjectsInput < Struct.new(
      :domain_identifier,
      :user_identifier,
      :group_identifier,
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListProjects</code> action.</p>
    #   @return [Array<Types::ProjectSummary>]
    # @!attribute next_token
    #   <p>When the number of projects is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of projects, the response includes
    #            a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListProjects</code> to list
    #            the next set of projects.</p>
    #   @return [String]
    class ListProjectsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which the rules are to be listed.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The target type of the rule.</p>
    #   @return [String]
    # @!attribute target_identifier
    #   <p>The target ID of the rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action of the rule.</p>
    #   @return [String]
    # @!attribute project_ids
    #   <p>The IDs of projects in which rules are to be listed.</p>
    #   @return [Array<String>]
    # @!attribute asset_types
    #   <p>The asset types of the rule.</p>
    #   @return [Array<String>]
    # @!attribute data_product
    #   <p>The data product of the rule.</p>
    #   @return [Boolean]
    # @!attribute include_cascaded
    #   <p>Specifies whether to include cascading rules in the results.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of rules to return in a single call to <code>ListRules</code>. When
    #            the number of rules to be listed is greater than the value of <code>MaxResults</code>, the
    #            response contains a <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListRules</code> to list the next set of rules.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of rules is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of rules, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListRules</code> to list the next set of rules.</p>
    #   @return [String]
    class ListRulesInput < Struct.new(
      :domain_identifier,
      :target_type,
      :target_identifier,
      :rule_type,
      :action,
      :project_ids,
      :asset_types,
      :data_product,
      :include_cascaded,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListRules</code> action.</p>
    #   @return [Array<Types::RuleSummary>]
    # @!attribute next_token
    #   <p>When the number of rules is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of rules, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>ListRules</code> to list the next set of rules.</p>
    #   @return [String]
    class ListRulesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of the Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute subscription_target_id
    #   <p>The identifier of the subscription target.</p>
    #   @return [String]
    # @!attribute subscribed_listing_id
    #   <p>The identifier of the subscribed listing.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The identifier of the subscription.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the owning project of the subscription grants.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the way of sorting the results of this action.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the sort order of this action.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of subscription grants to return in a single call to
    #               <code>ListSubscriptionGrants</code>. When the number of subscription grants to be listed
    #            is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListSubscriptionGrants</code> to list the next set of subscription grants.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of subscription grants is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscription grants, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListSubscriptionGrants</code>
    #            to list the next set of subscription grants.</p>
    #   @return [String]
    class ListSubscriptionGrantsInput < Struct.new(
      :domain_identifier,
      :environment_id,
      :subscription_target_id,
      :subscribed_listing_id,
      :subscription_id,
      :owning_project_id,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListSubscriptionGrants</code> action. </p>
    #   @return [Array<Types::SubscriptionGrantSummary>]
    # @!attribute next_token
    #   <p>When the number of subscription grants is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscription grants, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListSubscriptionGrants</code>
    #            to list the next set of subscription grants.</p>
    #   @return [String]
    class ListSubscriptionGrantsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the status of the subscription requests.</p>
    #            <note>
    #               <p>This is not a required parameter, but if not specified, by default, Amazon DataZone
    #               returns only <code>PENDING</code> subscription requests. </p>
    #            </note>
    #   @return [String]
    # @!attribute subscribed_listing_id
    #   <p>The identifier of the subscribed listing.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The identifier of the project for the subscription requests.</p>
    #   @return [String]
    # @!attribute approver_project_id
    #   <p>The identifier of the subscription request approver's project.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the way to sort the results of this action.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the sort order for the results of this action.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of subscription requests to return in a single call to
    #               <code>ListSubscriptionRequests</code>. When the number of subscription requests to be
    #            listed is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListSubscriptionRequests</code> to list the next set of subscription
    #            requests.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of subscription requests is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscription requests, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListSubscriptionRequests</code> to list the next set of subscription
    #            requests.</p>
    #   @return [String]
    class ListSubscriptionRequestsInput < Struct.new(
      :domain_identifier,
      :status,
      :subscribed_listing_id,
      :owning_project_id,
      :approver_project_id,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListSubscriptionRequests</code> action. </p>
    #   @return [Array<Types::SubscriptionRequestSummary>]
    # @!attribute next_token
    #   <p>When the number of subscription requests is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscription requests, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListSubscriptionRequests</code> to list the next set of subscription
    #            requests.</p>
    #   @return [String]
    class ListSubscriptionRequestsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain where you want to list subscription
    #            targets.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The identifier of the environment where you want to list subscription targets.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the way in which the results of this action are to be sorted.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the sort order for the results of this action.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of subscription targets to return in a single call to
    #               <code>ListSubscriptionTargets</code>. When the number of subscription targets to be
    #            listed is greater than the value of <code>MaxResults</code>, the response contains a
    #               <code>NextToken</code> value that you can use in a subsequent call to
    #               <code>ListSubscriptionTargets</code> to list the next set of subscription targets.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of subscription targets is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscription targets, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListSubscriptionTargets</code> to list the next set of subscription
    #            targets.</p>
    #   @return [String]
    class ListSubscriptionTargetsInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListSubscriptionTargets</code> action.</p>
    #   @return [Array<Types::SubscriptionTargetSummary>]
    # @!attribute next_token
    #   <p>When the number of subscription targets is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscription targets, the
    #            response includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to
    #               <code>ListSubscriptionTargets</code> to list the next set of subscription
    #            targets.</p>
    #   @return [String]
    class ListSubscriptionTargetsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute subscription_request_identifier
    #   <p>The identifier of the subscription request for the subscriptions that you want to
    #            list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscriptions that you want to list.</p>
    #            <note>
    #               <p>This is not a required parameter, but if not provided, by default, Amazon DataZone
    #               returns only <code>APPROVED</code> subscriptions. </p>
    #            </note>
    #   @return [String]
    # @!attribute subscribed_listing_id
    #   <p>The identifier of the subscribed listing for the subscriptions that you want to
    #            list.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The identifier of the owning project.</p>
    #   @return [String]
    # @!attribute approver_project_id
    #   <p>The identifier of the project for the subscription's approver.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the way in which the results of this action are to be sorted.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the sort order for the results of this action.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of subscriptions to return in a single call to
    #               <code>ListSubscriptions</code>. When the number of subscriptions to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>ListSubscriptions</code> to list the
    #            next set of Subscriptions. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of subscriptions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscriptions, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListSubscriptions</code> to
    #            list the next set of subscriptions.</p>
    #   @return [String]
    class ListSubscriptionsInput < Struct.new(
      :domain_identifier,
      :subscription_request_identifier,
      :status,
      :subscribed_listing_id,
      :owning_project_id,
      :approver_project_id,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>ListSubscriptions</code> action.</p>
    #   @return [Array<Types::SubscriptionSummary>]
    # @!attribute next_token
    #   <p>When the number of subscriptions is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of subscriptions, the response
    #            includes a pagination token named <code>NextToken</code>. You can specify this
    #               <code>NextToken</code> value in a subsequent call to <code>ListSubscriptions</code> to
    #            list the next set of subscriptions.</p>
    #   @return [String]
    class ListSubscriptionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags of the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain that houses the assets for which you want to list
    #            time series data points.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the asset for which you want to list data points.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the asset for which you want to list data points.</p>
    #   @return [String]
    # @!attribute form_name
    #   <p>The name of the time series data points form.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp at which the data points that you want to list started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp at which the data points that you wanted to list ended.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>When the number of data points is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of data points, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListTimeSeriesDataPoints to list the next set
    #            of data points.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data points to return in a single call to
    #            ListTimeSeriesDataPoints. When the number of data points to be listed is greater than the
    #            value of MaxResults, the response contains a NextToken value that you can use in a
    #            subsequent call to ListTimeSeriesDataPoints to list the next set of data points.</p>
    #   @return [Integer]
    class ListTimeSeriesDataPointsInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :form_name,
      :started_at,
      :ended_at,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the ListTimeSeriesDataPoints action. </p>
    #   @return [Array<Types::TimeSeriesDataPointSummaryFormOutput>]
    # @!attribute next_token
    #   <p>When the number of data points is greater than the default value for the MaxResults
    #            parameter, or if you explicitly specify a value for MaxResults that is less than the number
    #            of data points, the response includes a pagination token named NextToken. You can specify
    #            this NextToken value in a subsequent call to ListTimeSeriesDataPoints to list the next set
    #            of data points.</p>
    #   @return [String]
    class ListTimeSeriesDataPointsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a listing (aka asset published in a Amazon DataZone catalog).</p>
    # @!attribute asset_listing
    #   <p>An asset published in an Amazon DataZone catalog.</p>
    #   @return [Types::AssetListing]
    # @!attribute data_product_listing
    #   <p>The data product listing.</p>
    #   @return [Types::DataProductListing]
    class ListingItem < Struct.new(
      :asset_listing,
      :data_product_listing,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AssetListing < ListingItem; end
      class DataProductListing < ListingItem; end
      class Unknown < ListingItem; end
    end

    # <p>A revision of an asset published in a Amazon DataZone catalog.</p>
    # @!attribute id
    #   <p>An identifier of a revision of an asset published in a Amazon DataZone catalog.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The details of a revision of an asset published in a Amazon DataZone catalog.</p>
    #   @return [String]
    class ListingRevision < Struct.new(
      :id,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A revision to be made to an asset published in a Amazon DataZone catalog.</p>
    # @!attribute identifier
    #   <p>An identifier of revision to be made to an asset published in a Amazon DataZone
    #            catalog.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The details of a revision to be made to an asset published in a Amazon DataZone
    #            catalog.</p>
    #   @return [String]
    class ListingRevisionInput < Struct.new(
      :identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ListingStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    # <p>The summary of the listing of the data product.</p>
    # @!attribute listing_id
    #   <p>The ID of the data product listing.</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of the data product listing.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product.</p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    class ListingSummary < Struct.new(
      :listing_id,
      :listing_revision,
      :glossary_terms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The results of the data product summary.</p>
    # @!attribute listing_id
    #   <p>The ID of the data product listing.</p>
    #   @return [String]
    # @!attribute listing_revision
    #   <p>The revision of the data product listing.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product listing.</p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    class ListingSummaryItem < Struct.new(
      :listing_id,
      :listing_revision,
      :glossary_terms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ManagedPolicyType
      CREATE_DOMAIN_UNIT = 'CREATE_DOMAIN_UNIT'
      OVERRIDE_DOMAIN_UNIT_OWNERS = 'OVERRIDE_DOMAIN_UNIT_OWNERS'
      ADD_TO_PROJECT_MEMBER_POOL = 'ADD_TO_PROJECT_MEMBER_POOL'
      OVERRIDE_PROJECT_OWNERS = 'OVERRIDE_PROJECT_OWNERS'
      CREATE_GLOSSARY = 'CREATE_GLOSSARY'
      CREATE_FORM_TYPE = 'CREATE_FORM_TYPE'
      CREATE_ASSET_TYPE = 'CREATE_ASSET_TYPE'
      CREATE_PROJECT = 'CREATE_PROJECT'
      CREATE_ENVIRONMENT_PROFILE = 'CREATE_ENVIRONMENT_PROFILE'
      DELEGATE_CREATE_ENVIRONMENT_PROFILE = 'DELEGATE_CREATE_ENVIRONMENT_PROFILE'
      CREATE_ENVIRONMENT = 'CREATE_ENVIRONMENT'
      CREATE_ENVIRONMENT_FROM_BLUEPRINT = 'CREATE_ENVIRONMENT_FROM_BLUEPRINT'
      CREATE_PROJECT_FROM_PROJECT_PROFILE = 'CREATE_PROJECT_FROM_PROJECT_PROFILE'
      USE_ASSET_TYPE = 'USE_ASSET_TYPE'
    end

    # <p>The offset of a matched term.</p>
    # @!attribute start_offset
    #   <p>The 0-indexed number indicating the start position (inclusive) of a matched term.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The 0-indexed number indicating the end position (exclusive) of a matched term.</p>
    #   @return [Integer]
    class MatchOffset < Struct.new(
      :start_offset,
      :end_offset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A rationale indicating why this item was matched by search. </p>
    # @!attribute text_matches
    #   <p>A list of TextMatchItems.</p>
    #   @return [Array<Types::TextMatchItem>]
    class MatchRationaleItem < Struct.new(
      :text_matches,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class TextMatches < MatchRationaleItem; end
      class Unknown < MatchRationaleItem; end
    end

    # <p>The details about a project member.</p>
    # @!attribute user_identifier
    #   <p>The user ID of a project member.</p>
    #   @return [String]
    # @!attribute group_identifier
    #   <p>The ID of the group of a project member.</p>
    #   @return [String]
    class Member < Struct.new(
      :user_identifier,
      :group_identifier,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class UserIdentifier < Member; end
      class GroupIdentifier < Member; end
      class Unknown < Member; end
    end

    # <p>The details about a project member.</p>
    # @!attribute user
    #   <p>The user details of a project member.</p>
    #   @return [Types::UserDetails]
    # @!attribute group
    #   <p>The group details of a project member.</p>
    #   @return [Types::GroupDetails]
    class MemberDetails < Struct.new(
      :user,
      :group,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < MemberDetails; end
      class Group < MemberDetails; end
      class Unknown < MemberDetails; end
    end

    # <p>The enforcement details of a metadata form.</p>
    # @!attribute required_metadata_forms
    #   <p>The required metadata forms.</p>
    #   @return [Array<Types::MetadataFormReference>]
    class MetadataFormEnforcementDetail < Struct.new(
      :required_metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The reference of a metadata form.</p>
    # @!attribute type_identifier
    #   <p>The type ID of the metadata form reference.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The type revision of the metadata form reference.</p>
    #   @return [String]
    class MetadataFormReference < Struct.new(
      :type_identifier,
      :type_revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the metadata form.</p>
    # @!attribute form_name
    #   <p>The form name of the metadata form.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The type name of the metadata form.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The type revision of the metadata form.</p>
    #   @return [String]
    class MetadataFormSummary < Struct.new(
      :form_name,
      :type_name,
      :type_revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The metadata generation run.</p>
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the metadata generation run was
    #            created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the metadata generation run.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The asset for which metadata was generated.</p>
    #   @return [Types::MetadataGenerationRunTarget]
    # @!attribute status
    #   <p>The status of the metadata generation run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the metadata generation run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the metadata generation run was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the metadata generation run.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns the asset for which the metadata generation was
    #            ran.</p>
    #   @return [String]
    class MetadataGenerationRunItem < Struct.new(
      :domain_id,
      :id,
      :target,
      :status,
      :type,
      :created_at,
      :created_by,
      :owning_project_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MetadataGenerationRunStatus
      SUBMITTED = 'SUBMITTED'
      IN_PROGRESS = 'IN_PROGRESS'
      CANCELED = 'CANCELED'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
    end

    # <p>The asset for which metadata was generated.</p>
    # @!attribute type
    #   <p>The type of the asset for which metadata was generated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the metadata generation run's target.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the asset for which metadata was generated.</p>
    #   @return [String]
    class MetadataGenerationRunTarget < Struct.new(
      :type,
      :identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MetadataGenerationRunType
      BUSINESS_DESCRIPTIONS = 'BUSINESS_DESCRIPTIONS'
    end

    module MetadataGenerationTargetType
      ASSET = 'ASSET'
    end

    # <p>The model of the API.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute smithy
    #   <p>Indicates the smithy model of the API.</p>
    #   @return [String]
    class Model < Struct.new(
      :smithy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Smithy < Model; end
      class Unknown < Model; end
    end

    # <p>The name identifier.</p>
    # @!attribute name
    #   <p>The name in the name identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace in the name identifier.</p>
    #   @return [String]
    class NameIdentifier < Struct.new(
      :name,
      :namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that a value is not equal to the expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might not be equal to the expression.</p>
    #   @return [String]
    class NotEqualToExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that a value is not in the expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value that might not be in the expression.</p>
    #   @return [Array<String>]
    class NotInExpression < Struct.new(
      :column_name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies that a value might be not like the expression.</p>
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that might not be like the expression.</p>
    #   @return [String]
    class NotLikeExpression < Struct.new(
      :column_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a notification generated in Amazon DataZone.</p>
    # @!attribute identifier
    #   <p>The identifier of the notification.</p>
    #   @return [String]
    # @!attribute domain_identifier
    #   <p>The identifier of a Amazon DataZone domain in which the notification exists.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the notification.</p>
    #   @return [String]
    # @!attribute topic
    #   <p>The topic of the notification.</p>
    #   @return [Types::Topic]
    # @!attribute title
    #   <p>The title of the notification.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message included in the notification.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status included in the notification.</p>
    #   @return [String]
    # @!attribute action_link
    #   <p>The action link included in the notification.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The timestamp of when a notification was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the notification was last updated.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata included in the notification.</p>
    #   @return [Hash<String, String>]
    class NotificationOutput < Struct.new(
      :identifier,
      :domain_identifier,
      :type,
      :topic,
      :title,
      :message,
      :status,
      :action_link,
      :creation_timestamp,
      :last_updated_timestamp,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the resource mentioned in a notification.</p>
    # @!attribute type
    #   <p>The type of the resource mentioned in a notification.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource mentioned in a notification.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource mentioned in a notification.</p>
    #   @return [String]
    class NotificationResource < Struct.new(
      :type,
      :id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NotificationResourceType
      PROJECT = 'PROJECT'
    end

    module NotificationRole
      PROJECT_OWNER = 'PROJECT_OWNER'
      PROJECT_CONTRIBUTOR = 'PROJECT_CONTRIBUTOR'
      PROJECT_VIEWER = 'PROJECT_VIEWER'
      DOMAIN_OWNER = 'DOMAIN_OWNER'
      PROJECT_SUBSCRIBER = 'PROJECT_SUBSCRIBER'
    end

    module NotificationType
      TASK = 'TASK'
      EVENT = 'EVENT'
    end

    # <p>The OAuth2Client application.</p>
    # @!attribute user_managed_client_application_client_id
    #   <p>The user managed client application client ID in the OAuth2Client application.</p>
    #   @return [String]
    # @!attribute a_ws_managed_client_application_reference
    #   <p>The Amazon Web Services managed client application reference in the OAuth2Client
    #            application.</p>
    #   @return [String]
    class OAuth2ClientApplication < Struct.new(
      :user_managed_client_application_client_id,
      :a_ws_managed_client_application_reference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OAuth2GrantType
      AUTHORIZATION_CODE = 'AUTHORIZATION_CODE'
      CLIENT_CREDENTIALS = 'CLIENT_CREDENTIALS'
      JWT_BEARER = 'JWT_BEARER'
    end

    # <p>The OAuth2 properties.</p>
    # @!attribute o_auth2_grant_type
    #   <p>The OAuth2 grant type of the OAuth2 properties.</p>
    #   @return [String]
    # @!attribute o_auth2_client_application
    #   <p>The OAuth2 client application of the OAuth2 properties.</p>
    #   @return [Types::OAuth2ClientApplication]
    # @!attribute token_url
    #   <p>The OAuth2 token URL of the OAuth2 properties.</p>
    #   @return [String]
    # @!attribute token_url_parameters_map
    #   <p>The OAuth2 token URL parameter map of the OAuth2 properties.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorization_code_properties
    #   <p>The authorization code properties of the OAuth2 properties.</p>
    #   @return [Types::AuthorizationCodeProperties]
    # @!attribute o_auth2_credentials
    #   <p>The OAuth2 credentials of the OAuth2 properties.</p>
    #   @return [Types::GlueOAuth2Credentials]
    class OAuth2Properties < Struct.new(
      :o_auth2_grant_type,
      :o_auth2_client_application,
      :token_url,
      :token_url_parameters_map,
      :authorization_code_properties,
      :o_auth2_credentials,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The open lineage run event summary.</p>
    # @!attribute event_type
    #   <p>The event type of the open lineage run event summary.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The runID of the open lineage run event summary.</p>
    #   @return [String]
    # @!attribute job
    #   <p>The job of the open lineage run event summary.</p>
    #   @return [Types::NameIdentifier]
    # @!attribute inputs
    #   <p>The inputs of the open lineage run event summary.</p>
    #   @return [Array<Types::NameIdentifier>]
    # @!attribute outputs
    #   <p>The outputs of the open lineage run event summary.</p>
    #   @return [Array<Types::NameIdentifier>]
    class OpenLineageRunEventSummary < Struct.new(
      :event_type,
      :run_id,
      :job,
      :inputs,
      :outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OpenLineageRunState
      START = 'START'
      RUNNING = 'RUNNING'
      COMPLETE = 'COMPLETE'
      ABORT = 'ABORT'
      FAIL = 'FAIL'
      OTHER = 'OTHER'
    end

    module OverallDeploymentStatus
      PENDING_DEPLOYMENT = 'PENDING_DEPLOYMENT'
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESSFUL = 'SUCCESSFUL'
      FAILED_VALIDATION = 'FAILED_VALIDATION'
      FAILED_DEPLOYMENT = 'FAILED_DEPLOYMENT'
    end

    # <p>The grant details of the override domain unit owners policy.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy is inherited by child domain units.</p>
    #   @return [Boolean]
    class OverrideDomainUnitOwnersPolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the override project owners policy grant.</p>
    # @!attribute include_child_domain_units
    #   <p>Specifies whether the policy is inherited by child domain units.</p>
    #   @return [Boolean]
    class OverrideProjectOwnersPolicyGrantDetail < Struct.new(
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the domain unit owners group.</p>
    # @!attribute group_identifier
    #   <p>The ID of the domain unit owners group.</p>
    #   @return [String]
    class OwnerGroupProperties < Struct.new(
      :group_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the domain unit owners group.</p>
    # @!attribute group_id
    #   <p>The ID of the domain unit owners group.</p>
    #   @return [String]
    class OwnerGroupPropertiesOutput < Struct.new(
      :group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of a domain unit's owner.</p>
    # @!attribute user
    #   <p>Specifies that the domain unit owner is a user.</p>
    #   @return [Types::OwnerUserProperties]
    # @!attribute group
    #   <p>Specifies that the domain unit owner is a group.</p>
    #   @return [Types::OwnerGroupProperties]
    class OwnerProperties < Struct.new(
      :user,
      :group,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < OwnerProperties; end
      class Group < OwnerProperties; end
      class Unknown < OwnerProperties; end
    end

    # <p>The ID of the domain unit owners group.</p>
    # @!attribute user
    #   <p>Specifies that the domain unit owner is a user.</p>
    #   @return [Types::OwnerUserPropertiesOutput]
    # @!attribute group
    #   <p>Specifies that the domain unit owner is a group.</p>
    #   @return [Types::OwnerGroupPropertiesOutput]
    class OwnerPropertiesOutput < Struct.new(
      :user,
      :group,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < OwnerPropertiesOutput; end
      class Group < OwnerPropertiesOutput; end
      class Unknown < OwnerPropertiesOutput; end
    end

    # <p>The properties of the owner user.</p>
    # @!attribute user_identifier
    #   <p>The ID of the owner user.</p>
    #   @return [String]
    class OwnerUserProperties < Struct.new(
      :user_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the owner user.</p>
    # @!attribute user_id
    #   <p>The ID of the owner user.</p>
    #   @return [String]
    class OwnerUserPropertiesOutput < Struct.new(
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Physical connection requirements of a connection.</p>
    # @!attribute subnet_id
    #   <p>The subnet ID of the physical connection requirements of a connection. </p>
    #   @return [String]
    # @!attribute subnet_id_list
    #   <p>The subnet ID list of the physical connection requirements of a connection. </p>
    #   @return [Array<String>]
    # @!attribute security_group_id_list
    #   <p>The group ID list of the physical connection requirements of a connection. </p>
    #   @return [Array<String>]
    # @!attribute availability_zone
    #   <p>The availability zone of the physical connection requirements of a connection. </p>
    #   @return [String]
    class PhysicalConnectionRequirements < Struct.new(
      :subnet_id,
      :subnet_id_list,
      :security_group_id_list,
      :availability_zone,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The physical endpoints of a connection.</p>
    # @!attribute aws_location
    #   <p>The location of a connection.</p>
    #   @return [Types::AwsLocation]
    # @!attribute glue_connection_name
    #   <p>The Amazon Web Services Glue connection name.</p>
    #   @return [String]
    # @!attribute glue_connection
    #   <p>The Amazon Web Services Glue connection.</p>
    #   @return [Types::GlueConnection]
    # @!attribute host
    #   <p>The host in the physical endpoints of a connection.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port in the physical endpoints of a connection.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol in the physical endpoints of a connection.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The stage in the physical endpoints of a connection.</p>
    #   @return [String]
    class PhysicalEndpoint < Struct.new(
      :aws_location,
      :glue_connection_name,
      :glue_connection,
      :host,
      :port,
      :protocol,
      :stage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy grant.</p>
    # @!attribute create_domain_unit
    #   <p>Specifies that this is a create domain unit policy.</p>
    #   @return [Types::CreateDomainUnitPolicyGrantDetail]
    # @!attribute override_domain_unit_owners
    #   <p>Specifies whether to override domain unit owners.</p>
    #   @return [Types::OverrideDomainUnitOwnersPolicyGrantDetail]
    # @!attribute add_to_project_member_pool
    #   <p>Specifies that the policy grant is to be added to the members of the project.</p>
    #   @return [Types::AddToProjectMemberPoolPolicyGrantDetail]
    # @!attribute override_project_owners
    #   <p>Specifies whether to override project owners.</p>
    #   @return [Types::OverrideProjectOwnersPolicyGrantDetail]
    # @!attribute create_glossary
    #   <p>Specifies that this is a create glossary policy.</p>
    #   @return [Types::CreateGlossaryPolicyGrantDetail]
    # @!attribute create_form_type
    #   <p>Specifies that this is a create form type policy.</p>
    #   @return [Types::CreateFormTypePolicyGrantDetail]
    # @!attribute create_asset_type
    #   <p>Specifies that this is a create asset type policy.</p>
    #   @return [Types::CreateAssetTypePolicyGrantDetail]
    # @!attribute create_project
    #   <p>Specifies that this is a create project policy.</p>
    #   @return [Types::CreateProjectPolicyGrantDetail]
    # @!attribute create_environment_profile
    #   <p>Specifies that this is a create environment profile policy.</p>
    #   @return [Types::CreateEnvironmentProfilePolicyGrantDetail]
    # @!attribute delegate_create_environment_profile
    #   <p>Specifies that this is the delegation of the create environment profile policy.</p>
    #   @return [Types::Unit]
    # @!attribute create_environment
    #   <p>Specifies that this is a create environment policy.</p>
    #   @return [Types::Unit]
    # @!attribute create_environment_from_blueprint
    #   <p>The details of the policy of creating an environment.</p>
    #   @return [Types::Unit]
    # @!attribute create_project_from_project_profile
    #   <p>Specifies whether to create a project from project profile.</p>
    #   @return [Types::CreateProjectFromProjectProfilePolicyGrantDetail]
    # @!attribute use_asset_type
    #   <p> Specifies the domain unit(s) whose projects can use this asset type while creating
    #            asset or asset revisions.</p>
    #   @return [Types::UseAssetTypePolicyGrantDetail]
    class PolicyGrantDetail < Struct.new(
      :create_domain_unit,
      :override_domain_unit_owners,
      :add_to_project_member_pool,
      :override_project_owners,
      :create_glossary,
      :create_form_type,
      :create_asset_type,
      :create_project,
      :create_environment_profile,
      :delegate_create_environment_profile,
      :create_environment,
      :create_environment_from_blueprint,
      :create_project_from_project_profile,
      :use_asset_type,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class CreateDomainUnit < PolicyGrantDetail; end
      class OverrideDomainUnitOwners < PolicyGrantDetail; end
      class AddToProjectMemberPool < PolicyGrantDetail; end
      class OverrideProjectOwners < PolicyGrantDetail; end
      class CreateGlossary < PolicyGrantDetail; end
      class CreateFormType < PolicyGrantDetail; end
      class CreateAssetType < PolicyGrantDetail; end
      class CreateProject < PolicyGrantDetail; end
      class CreateEnvironmentProfile < PolicyGrantDetail; end
      class DelegateCreateEnvironmentProfile < PolicyGrantDetail; end
      class CreateEnvironment < PolicyGrantDetail; end
      class CreateEnvironmentFromBlueprint < PolicyGrantDetail; end
      class CreateProjectFromProjectProfile < PolicyGrantDetail; end
      class UseAssetType < PolicyGrantDetail; end
      class Unknown < PolicyGrantDetail; end
    end

    # <p>A member of the policy grant list.</p>
    # @!attribute principal
    #   <p>The principal of the policy grant member.</p>
    #   @return [Types::PolicyGrantPrincipal]
    # @!attribute detail
    #   <p>The details of the policy grant member.</p>
    #   @return [Types::PolicyGrantDetail]
    # @!attribute created_at
    #   <p>Specifies the timestamp at which policy grant member was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>Specifies the user who created the policy grant member.</p>
    #   @return [String]
    class PolicyGrantMember < Struct.new(
      :principal,
      :detail,
      :created_at,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The policy grant principal.</p>
    # @!attribute user
    #   <p>The user of the policy grant principal.</p>
    #   @return [Types::UserPolicyGrantPrincipal]
    # @!attribute group
    #   <p>The group of the policy grant principal.</p>
    #   @return [Types::GroupPolicyGrantPrincipal]
    # @!attribute project
    #   <p>The project of the policy grant principal.</p>
    #   @return [Types::ProjectPolicyGrantPrincipal]
    # @!attribute domain_unit
    #   <p>The domain unit of the policy grant principal.</p>
    #   @return [Types::DomainUnitPolicyGrantPrincipal]
    class PolicyGrantPrincipal < Struct.new(
      :user,
      :group,
      :project,
      :domain_unit,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < PolicyGrantPrincipal; end
      class Group < PolicyGrantPrincipal; end
      class Project < PolicyGrantPrincipal; end
      class DomainUnit < PolicyGrantPrincipal; end
      class Unknown < PolicyGrantPrincipal; end
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to post a data lineage event.</p>
    #   @return [String]
    # @!attribute event
    #   <p>The data lineage event that you want to post. Only open-lineage run event are supported
    #            as events. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class PostLineageEventInput < Struct.new(
      :domain_identifier,
      :event,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the lineage event.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain.</p>
    #   @return [String]
    class PostLineageEventOutput < Struct.new(
      :id,
      :domain_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which you want to post time series data
    #            points.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the asset for which you want to post time series data points.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the asset for which you want to post data points.</p>
    #   @return [String]
    # @!attribute forms
    #   <p>The forms that contain the data points that you want to post.</p>
    #   @return [Array<Types::TimeSeriesDataPointFormInput>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class PostTimeSeriesDataPointsInput < Struct.new(
      :domain_identifier,
      :entity_identifier,
      :entity_type,
      :forms,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which you want to post time series data
    #            points.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the asset for which you want to post time series data points.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the asset for which you want to post data points.</p>
    #   @return [String]
    # @!attribute forms
    #   <p>The forms that contain the data points that you have posted.</p>
    #   @return [Array<Types::TimeSeriesDataPointFormOutput>]
    class PostTimeSeriesDataPointsOutput < Struct.new(
      :domain_id,
      :entity_id,
      :entity_type,
      :forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of the prediction.</p>
    # @!attribute business_name_generation
    #   <p>The business name generation mechanism.</p>
    #   @return [Types::BusinessNameGenerationConfiguration]
    class PredictionConfiguration < Struct.new(
      :business_name_generation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the error message that is returned if the operation cannot be successfully
    #          completed.</p>
    # @!attribute code
    #   <p>The code of the project deletion error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message of the project deletion error.</p>
    #   @return [String]
    class ProjectDeletionError < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProjectDesignation
      OWNER = 'OWNER'
      CONTRIBUTOR = 'CONTRIBUTOR'
      PROJECT_CATALOG_STEWARD = 'PROJECT_CATALOG_STEWARD'
    end

    # <p>The project grant filter.</p>
    # @!attribute domain_unit_filter
    #   <p>The domain unit filter of the project grant filter.</p>
    #   @return [Types::DomainUnitFilterForProject]
    class ProjectGrantFilter < Struct.new(
      :domain_unit_filter,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DomainUnitFilter < ProjectGrantFilter; end
      class Unknown < ProjectGrantFilter; end
    end

    # <p>The details of a project member.</p>
    # @!attribute member_details
    #   <p>The membership details of a project member.</p>
    #   @return [Types::MemberDetails]
    # @!attribute designation
    #   <p>The designated role of a project member.</p>
    #   @return [String]
    class ProjectMember < Struct.new(
      :member_details,
      :designation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The project policy grant principal.</p>
    # @!attribute project_designation
    #   <p>The project designation of the project policy grant principal.</p>
    #   @return [String]
    # @!attribute project_identifier
    #   <p>The project ID of the project policy grant principal.</p>
    #   @return [String]
    # @!attribute project_grant_filter
    #   <p>The project grant filter of the project policy grant principal.</p>
    #   @return [Types::ProjectGrantFilter]
    class ProjectPolicyGrantPrincipal < Struct.new(
      :project_designation,
      :project_identifier,
      :project_grant_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of a project profile.</p>
    # @!attribute domain_id
    #   <p>The domain ID of the project profile.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the project profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a project profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a project profile.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The user who created the project profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the project profile was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which a project profile was last updated.</p>
    #   @return [Time]
    # @!attribute domain_unit_id
    #   <p>The domain unit ID of the project profile.</p>
    #   @return [String]
    class ProjectProfileSummary < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :status,
      :created_by,
      :created_at,
      :last_updated_at,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProjectStatus
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      DELETE_FAILED = 'DELETE_FAILED'
      UPDATING = 'UPDATING'
      UPDATE_FAILED = 'UPDATE_FAILED'
    end

    # <p>The details of a Amazon DataZone project.</p>
    # @!attribute domain_id
    #   <p>The identifier of a Amazon DataZone domain where the project exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of a project.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a project.</p>
    #   @return [String]
    # @!attribute project_status
    #   <p>The status of the project.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Array<Types::ProjectDeletionError>]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the project.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when a project was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the project was updated.</p>
    #   @return [Time]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    class ProjectSummary < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :project_status,
      :failure_reasons,
      :created_by,
      :created_at,
      :updated_at,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies projects in which the rule is created.</p>
    # @!attribute selection_mode
    #   <p>The selection mode of the rule.</p>
    #   @return [String]
    # @!attribute specific_projects
    #   <p>The specific projects in which the rule is created.</p>
    #   @return [Array<String>]
    class ProjectsForRule < Struct.new(
      :selection_mode,
      :specific_projects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Protocol
      ATHENA = 'ATHENA'
      GLUE_INTERACTIVE_SESSION = 'GLUE_INTERACTIVE_SESSION'
      HTTPS = 'HTTPS'
      JDBC = 'JDBC'
      LIVY = 'LIVY'
      ODBC = 'ODBC'
      PRISM = 'PRISM'
    end

    # <p>The provisioning configuration of the blueprint.</p>
    # @!attribute lake_formation_configuration
    #   <p>The Lake Formation configuration of the Data Lake blueprint.</p>
    #   @return [Types::LakeFormationConfiguration]
    class ProvisioningConfiguration < Struct.new(
      :lake_formation_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class LakeFormationConfiguration < ProvisioningConfiguration; end
      class Unknown < ProvisioningConfiguration; end
    end

    # <p>The provisioning properties of an environment blueprint.</p>
    # @!attribute cloud_formation
    #   <p>The cloud formation properties included as part of the provisioning properties of an
    #            environment blueprint.</p>
    #   @return [Types::CloudFormationProperties]
    class ProvisioningProperties < Struct.new(
      :cloud_formation,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class CloudFormation < ProvisioningProperties; end
      class Unknown < ProvisioningProperties; end
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute environment_blueprint_identifier
    #   <p>The identifier of the environment blueprint.</p>
    #   @return [String]
    # @!attribute provisioning_role_arn
    #   <p>The ARN of the provisioning role.</p>
    #   @return [String]
    # @!attribute manage_access_role_arn
    #   <p>The ARN of the manage access role.</p>
    #   @return [String]
    # @!attribute environment_role_permission_boundary
    #   <p>The environment role permissions boundary.</p>
    #   @return [String]
    # @!attribute enabled_regions
    #   <p>Specifies the enabled Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute regional_parameters
    #   <p>The regional parameters in the environment blueprint.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute provisioning_configurations
    #   <p>The provisioning configuration of a blueprint.</p>
    #   @return [Array<Types::ProvisioningConfiguration>]
    class PutEnvironmentBlueprintConfigurationInput < Struct.new(
      :domain_identifier,
      :environment_blueprint_identifier,
      :provisioning_role_arn,
      :manage_access_role_arn,
      :environment_role_permission_boundary,
      :enabled_regions,
      :regional_parameters,
      :provisioning_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The identifier of the environment blueprint.</p>
    #   @return [String]
    # @!attribute provisioning_role_arn
    #   <p>The ARN of the provisioning role.</p>
    #   @return [String]
    # @!attribute environment_role_permission_boundary
    #   <p>The environment role permissions boundary.</p>
    #   @return [String]
    # @!attribute manage_access_role_arn
    #   <p>The ARN of the manage access role.</p>
    #   @return [String]
    # @!attribute enabled_regions
    #   <p>Specifies the enabled Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute regional_parameters
    #   <p>The regional parameters in the environment blueprint.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute created_at
    #   <p>The timestamp of when the environment blueprint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the environment blueprint was updated.</p>
    #   @return [Time]
    # @!attribute provisioning_configurations
    #   <p>The provisioning configuration of a blueprint.</p>
    #   @return [Array<Types::ProvisioningConfiguration>]
    class PutEnvironmentBlueprintConfigurationOutput < Struct.new(
      :domain_id,
      :environment_blueprint_id,
      :provisioning_role_arn,
      :environment_role_permission_boundary,
      :manage_access_role_arn,
      :enabled_regions,
      :regional_parameters,
      :created_at,
      :updated_at,
      :provisioning_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The recommendation to be updated as part of the <code>UpdateDataSource</code>
    #          action.</p>
    # @!attribute enable_business_name_generation
    #   <p>Specifies whether automatic business name generation is to be enabled or not as part of
    #            the recommendation configuration.</p>
    #   @return [Boolean]
    class RecommendationConfiguration < Struct.new(
      :enable_business_name_generation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the Amazon Redshift cluster storage.</p>
    # @!attribute cluster_name
    #   <p>The name of an Amazon Redshift cluster.</p>
    #   @return [String]
    class RedshiftClusterStorage < Struct.new(
      :cluster_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the credentials required to access an Amazon Redshift cluster.</p>
    # @!attribute secret_manager_arn
    #   <p>The ARN of a secret manager for an Amazon Redshift cluster.</p>
    #   @return [String]
    class RedshiftCredentialConfiguration < Struct.new(
      :secret_manager_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Redshift credentials of a connection.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute secret_arn
    #   <p>The secret ARN of the Amazon Redshift credentials of a connection.</p>
    #   @return [String]
    # @!attribute username_password
    #   <p>The username and password of the Amazon Redshift credentials of a connection.</p>
    #   @return [Types::UsernamePassword]
    class RedshiftCredentials < Struct.new(
      :secret_arn,
      :username_password,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class SecretArn < RedshiftCredentials; end
      class UsernamePassword < RedshiftCredentials; end
      class Unknown < RedshiftCredentials; end
    end

    # <p>The Amaon Redshift lineage sync configuration.</p>
    # @!attribute enabled
    #   <p>Specifies whether the Amaon Redshift lineage sync configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute schedule
    #   <p>The schedule of the Amaon Redshift lineage sync configuration.</p>
    #   @return [Types::LineageSyncSchedule]
    class RedshiftLineageSyncConfigurationInput < Struct.new(
      :enabled,
      :schedule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amaon Redshift lineage sync configuration.</p>
    # @!attribute lineage_job_id
    #   <p>The lineage job ID of the Amaon Redshift lineage sync configuration.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the Amaon Redshift lineage sync configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute schedule
    #   <p>The schedule of teh Amaon Redshift lineage sync configuration.</p>
    #   @return [Types::LineageSyncSchedule]
    class RedshiftLineageSyncConfigurationOutput < Struct.new(
      :lineage_job_id,
      :enabled,
      :schedule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Redshift properties.</p>
    # @!attribute storage
    #   <p>The Amazon Redshift storage.</p>
    #   @return [Types::RedshiftStorageProperties]
    # @!attribute database_name
    #   <p>The Amazon Redshift database name.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The Amazon Redshift host.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The Amaon Redshift port.</p>
    #   @return [Integer]
    # @!attribute credentials
    #   <p>The Amaon Redshift credentials.</p>
    #   @return [Types::RedshiftCredentials]
    # @!attribute lineage_sync
    #   <p>The lineage sync of the Amazon Redshift.</p>
    #   @return [Types::RedshiftLineageSyncConfigurationInput]
    class RedshiftPropertiesInput < Struct.new(
      :storage,
      :database_name,
      :host,
      :port,
      :credentials,
      :lineage_sync,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Redshift properties.</p>
    # @!attribute storage
    #   <p>The storage in the Amazon Redshift properties.</p>
    #   @return [Types::RedshiftStorageProperties]
    # @!attribute credentials
    #   <p>The Amazon Redshift credentials.</p>
    #   @return [Types::RedshiftCredentials]
    # @!attribute is_provisioned_secret
    #   <p>Specifies whether Amaon Redshift properties has a provisioned secret.</p>
    #   @return [Boolean]
    # @!attribute jdbc_iam_url
    #   <p>The jdbcIam URL of the Amazon Redshift properties.</p>
    #   @return [String]
    # @!attribute jdbc_url
    #   <p>The jdbcURL of the Amazon Redshift properties. </p>
    #   @return [String]
    # @!attribute redshift_temp_dir
    #   <p>The redshiftTempDir of the Amazon Redshift properties.</p>
    #   @return [String]
    # @!attribute lineage_sync
    #   <p>The lineage syn of the Amazon Redshift properties.</p>
    #   @return [Types::RedshiftLineageSyncConfigurationOutput]
    # @!attribute status
    #   <p>The status in the Amazon Redshift properties.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The Amazon Redshift database name.</p>
    #   @return [String]
    class RedshiftPropertiesOutput < Struct.new(
      :storage,
      :credentials,
      :is_provisioned_secret,
      :jdbc_iam_url,
      :jdbc_url,
      :redshift_temp_dir,
      :lineage_sync,
      :status,
      :database_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Redshift properties patch.</p>
    # @!attribute storage
    #   <p>The storage in the Amazon Redshift properties patch.</p>
    #   @return [Types::RedshiftStorageProperties]
    # @!attribute database_name
    #   <p>The name in the Amazon Redshift properties patch.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The host in the Amazon Redshift properties patch.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port in the Amazon Redshift properties patch.</p>
    #   @return [Integer]
    # @!attribute credentials
    #   <p>The credentials in the Amazon Redshift properties patch.</p>
    #   @return [Types::RedshiftCredentials]
    # @!attribute lineage_sync
    #   <p>The lineage sync in the Amazon Redshift properties patch.</p>
    #   @return [Types::RedshiftLineageSyncConfigurationInput]
    class RedshiftPropertiesPatch < Struct.new(
      :storage,
      :database_name,
      :host,
      :port,
      :credentials,
      :lineage_sync,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of the Amazon Redshift data source.</p>
    # @!attribute data_access_role
    #   <p>The data access role included in the configuration details of the Amazon Redshift data
    #            source.</p>
    #   @return [String]
    # @!attribute relational_filter_configurations
    #   <p>The relational filger configurations included in the configuration details of the Amazon
    #            Redshift data source.</p>
    #   @return [Array<Types::RelationalFilterConfiguration>]
    # @!attribute redshift_credential_configuration
    #   <p>The details of the credentials required to access an Amazon Redshift cluster.</p>
    #   @return [Types::RedshiftCredentialConfiguration]
    # @!attribute redshift_storage
    #   <p>The details of the Amazon Redshift storage as part of the configuration of an Amazon
    #            Redshift data source run.</p>
    #   @return [Types::RedshiftStorage]
    class RedshiftRunConfigurationInput < Struct.new(
      :data_access_role,
      :relational_filter_configurations,
      :redshift_credential_configuration,
      :redshift_storage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of the Amazon Redshift data source.</p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account included in the configuration details of the Amazon Redshift
    #            data source.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services region included in the configuration details of the Amazon Redshift data
    #            source.</p>
    #   @return [String]
    # @!attribute data_access_role
    #   <p>The data access role included in the configuration details of the Amazon Redshift data
    #            source.</p>
    #   @return [String]
    # @!attribute relational_filter_configurations
    #   <p>The relational filger configurations included in the configuration details of the Amazon
    #            Redshift data source.</p>
    #   @return [Array<Types::RelationalFilterConfiguration>]
    # @!attribute redshift_credential_configuration
    #   <p>The details of the credentials required to access an Amazon Redshift cluster.</p>
    #   @return [Types::RedshiftCredentialConfiguration]
    # @!attribute redshift_storage
    #   <p>The details of the Amazon Redshift storage as part of the configuration of an Amazon
    #            Redshift data source run.</p>
    #   @return [Types::RedshiftStorage]
    class RedshiftRunConfigurationOutput < Struct.new(
      :account_id,
      :region,
      :data_access_role,
      :relational_filter_configurations,
      :redshift_credential_configuration,
      :redshift_storage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details for the self granting status for an Amazon Redshift data source.</p>
    # @!attribute self_grant_status_details
    #   <p>The details for the self granting status for an Amazon Redshift data source.</p>
    #   @return [Array<Types::SelfGrantStatusDetail>]
    class RedshiftSelfGrantStatusOutput < Struct.new(
      :self_grant_status_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the Amazon Redshift Serverless workgroup storage.</p>
    # @!attribute workgroup_name
    #   <p>The name of the Amazon Redshift Serverless workgroup.</p>
    #   @return [String]
    class RedshiftServerlessStorage < Struct.new(
      :workgroup_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the Amazon Redshift storage as part of the configuration of an Amazon
    #          Redshift data source run.</p>
    # @!attribute redshift_cluster_source
    #   <p>The details of the Amazon Redshift cluster source.</p>
    #   @return [Types::RedshiftClusterStorage]
    # @!attribute redshift_serverless_source
    #   <p>The details of the Amazon Redshift Serverless workgroup source.</p>
    #   @return [Types::RedshiftServerlessStorage]
    class RedshiftStorage < Struct.new(
      :redshift_cluster_source,
      :redshift_serverless_source,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RedshiftClusterSource < RedshiftStorage; end
      class RedshiftServerlessSource < RedshiftStorage; end
      class Unknown < RedshiftStorage; end
    end

    # <p>The Amazon Redshift storage properties.</p>
    # @!attribute cluster_name
    #   <p>The cluster name in the Amazon Redshift storage properties.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The workgroup name in the Amazon Redshift storage properties.</p>
    #   @return [String]
    class RedshiftStorageProperties < Struct.new(
      :cluster_name,
      :workgroup_name,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ClusterName < RedshiftStorageProperties; end
      class WorkgroupName < RedshiftStorageProperties; end
      class Unknown < RedshiftStorageProperties; end
    end

    # <p>The Amazon Web Services Region.</p>
    # @!attribute region_name
    #   <p>The Amazon Web Services Region name.</p>
    #   @return [String]
    # @!attribute region_name_path
    #   <p>The region name path.</p>
    #   @return [String]
    class Region < Struct.new(
      :region_name,
      :region_name_path,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RegionName < Region; end
      class RegionNamePath < Region; end
      class Unknown < Region; end
    end

    # <p>The details of the automatically generated business metadata that is rejected.</p>
    # @!attribute prediction_target
    #   <p>Specifies the target (for example, a column name) where a prediction can be
    #            rejected.</p>
    #   @return [String]
    # @!attribute prediction_choices
    #   <p>Specifies the the automatically generated business metadata that can be rejected.</p>
    #   @return [Array<Integer>]
    class RejectChoice < Struct.new(
      :prediction_target,
      :prediction_choices,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the prediction.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision that is to be made to the asset.</p>
    #   @return [String]
    # @!attribute reject_rule
    #   <p>Specifies the rule (or the conditions) under which a prediction can be rejected.</p>
    #   @return [Types::RejectRule]
    # @!attribute reject_choices
    #   <p>Specifies the prediction (aka, the automatically generated piece of metadata) and the
    #            target (for example, a column name) that can be rejected.</p>
    #   @return [Array<Types::RejectChoice>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class RejectPredictionsInput < Struct.new(
      :domain_identifier,
      :identifier,
      :revision,
      :reject_rule,
      :reject_choices,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute asset_revision
    #   <p>The revision that is to be made to the asset.</p>
    #   @return [String]
    class RejectPredictionsOutput < Struct.new(
      :domain_id,
      :asset_id,
      :asset_revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the rule and the threshold under which a prediction can be rejected.</p>
    # @!attribute rule
    #   <p>Specifies whether you want to reject the top prediction for all targets or none.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The confidence score that specifies the condition at which a prediction can be
    #            rejected.</p>
    #   @return [Float]
    class RejectRule < Struct.new(
      :rule,
      :threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RejectRuleBehavior
      ALL = 'ALL'
      NONE = 'NONE'
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the subscription request was
    #            rejected.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the subscription request that was rejected.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>The decision comment of the rejected subscription request.</p>
    #   @return [String]
    class RejectSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :identifier,
      :decision_comment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the subscription request that was rejected.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The timestamp of when the subscription request was rejected.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription request.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the subscription request was
    #            rejected.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription request was rejected.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription request was updated.</p>
    #   @return [Time]
    # @!attribute request_reason
    #   <p>The reason for the subscription request.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>The subscribed principals of the subscription request.</p>
    #   @return [Array<Types::SubscribedPrincipal>]
    # @!attribute subscribed_listings
    #   <p>The subscribed listings of the subscription request.</p>
    #   @return [Array<Types::SubscribedListing>]
    # @!attribute reviewer_id
    #   <p>The identifier of the subscription request reviewer.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>The decision comment of the rejected subscription request.</p>
    #   @return [String]
    # @!attribute existing_subscription_id
    #   <p>The ID of the existing subscription.</p>
    #   @return [String]
    # @!attribute metadata_forms
    #   <p>Metadata forms included in the subscription request.</p>
    #   @return [Array<Types::FormOutput>]
    class RejectSubscriptionRequestOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :request_reason,
      :subscribed_principals,
      :subscribed_listings,
      :reviewer_id,
      :decision_comment,
      :existing_subscription_id,
      :metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The relational filter configuration for the data source.</p>
    # @!attribute database_name
    #   <p>The database name specified in the relational filter configuration for the data
    #            source.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The schema name specified in the relational filter configuration for the data
    #            source.</p>
    #   @return [String]
    # @!attribute filter_expressions
    #   <p>The filter expressions specified in the relational filter configuration for the data
    #            source.</p>
    #   @return [Array<Types::FilterExpression>]
    class RelationalFilterConfiguration < Struct.new(
      :database_name,
      :schema_name,
      :filter_expressions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to remove an owner from an entity.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the entity from which you want to remove an owner.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity from which you want to remove an owner.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner that you want to remove from an entity.</p>
    #   @return [Types::OwnerProperties]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class RemoveEntityOwnerInput < Struct.new(
      :domain_identifier,
      :entity_type,
      :entity_identifier,
      :owner,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RemoveEntityOwnerOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to remove a policy grant.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the entity from which you want to remove a policy grant.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity from which you want to remove a policy grant.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of the policy that you want to remove.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal from which you want to remove a policy grant.</p>
    #   @return [Types::PolicyGrantPrincipal]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class RemovePolicyGrantInput < Struct.new(
      :domain_identifier,
      :entity_type,
      :entity_identifier,
      :policy_type,
      :principal,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RemovePolicyGrantOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResolutionStrategy
      MANUAL = 'MANUAL'
    end

    # <p>The details of a provisioned resource of this Amazon DataZone environment.</p>
    # @!attribute provider
    #   <p>The provider of a provisioned resource of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a provisioned resource of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a provisioned resource of this Amazon DataZone environment.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a provisioned resource of this Amazon DataZone environment.</p>
    #   @return [String]
    class Resource < Struct.new(
      :provider,
      :name,
      :value,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource cannot be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain where you want to revoke a subscription.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the revoked subscription.</p>
    #   @return [String]
    # @!attribute retain_permissions
    #   <p>Specifies whether permissions are retained when the subscription is revoked.</p>
    #   @return [Boolean]
    class RevokeSubscriptionInput < Struct.new(
      :domain_identifier,
      :identifier,
      :retain_permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the revoked subscription.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The identifier of the user who revoked the subscription.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who revoked the subscription.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain where you want to revoke a subscription.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the revoked subscription.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription was revoked.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription was revoked.</p>
    #   @return [Time]
    # @!attribute subscribed_principal
    #   <p>The subscribed principal of the revoked subscription.</p>
    #   @return [Types::SubscribedPrincipal]
    # @!attribute subscribed_listing
    #   <p>The subscribed listing of the revoked subscription.</p>
    #   @return [Types::SubscribedListing]
    # @!attribute subscription_request_id
    #   <p>The identifier of the subscription request for the revoked subscription.</p>
    #   @return [String]
    # @!attribute retain_permissions
    #   <p>Specifies whether permissions are retained when the subscription is revoked.</p>
    #   @return [Boolean]
    class RevokeSubscriptionOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :subscribed_principal,
      :subscribed_listing,
      :subscription_request_id,
      :retain_permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The row filter.</p>
    # @!attribute expression
    #   <p>The expression of the row filter.</p>
    #   @return [Types::RowFilterExpression]
    # @!attribute and
    #   <p>The 'and' clause of the row filter.</p>
    #   @return [Array<Types::RowFilter>]
    # @!attribute or
    #   <p>The 'or' clause of the row filter.</p>
    #   @return [Array<Types::RowFilter>]
    class RowFilter < Struct.new(
      :expression,
      :and,
      :or,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Expression < RowFilter; end
      class And < RowFilter; end
      class Or < RowFilter; end
      class Unknown < RowFilter; end
    end

    # <p>The row filter configuration details.</p>
    # @!attribute row_filter
    #   <p>The row filter.</p>
    #   @return [Types::RowFilter]
    # @!attribute sensitive
    #   <p>Specifies whether the row filter is sensitive.</p>
    #   @return [Boolean]
    class RowFilterConfiguration < Struct.new(
      :row_filter,
      :sensitive,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:sensitive] = true unless options.key?(:sensitive)
        super
      end
    end

    # <p>The row filter expression.</p>
    # @!attribute equal_to
    #   <p>The 'equal to' clause of the row filter expression.</p>
    #   @return [Types::EqualToExpression]
    # @!attribute not_equal_to
    #   <p>The 'no equal to' clause of the row filter expression.</p>
    #   @return [Types::NotEqualToExpression]
    # @!attribute greater_than
    #   <p>The 'greater than' clause of the row filter expression.</p>
    #   @return [Types::GreaterThanExpression]
    # @!attribute less_than
    #   <p>The 'less than' clause of the row filter expression.</p>
    #   @return [Types::LessThanExpression]
    # @!attribute greater_than_or_equal_to
    #   <p>The 'greater than or equal to' clause of the filter expression.</p>
    #   @return [Types::GreaterThanOrEqualToExpression]
    # @!attribute less_than_or_equal_to
    #   <p>The 'less than or equal to' clause of the row filter expression.</p>
    #   @return [Types::LessThanOrEqualToExpression]
    # @!attribute is_null
    #   <p>The 'is null' clause of the row filter expression.</p>
    #   @return [Types::IsNullExpression]
    # @!attribute is_not_null
    #   <p>The 'is not null' clause of the row filter expression.</p>
    #   @return [Types::IsNotNullExpression]
    # @!attribute in
    #   <p>The 'in' clause of the row filter expression.</p>
    #   @return [Types::InExpression]
    # @!attribute not_in
    #   <p>The 'not in' clause of the row filter expression.</p>
    #   @return [Types::NotInExpression]
    # @!attribute like
    #   <p>The 'like' clause of the row filter expression.</p>
    #   @return [Types::LikeExpression]
    # @!attribute not_like
    #   <p>The 'not like' clause of the row filter expression.</p>
    #   @return [Types::NotLikeExpression]
    class RowFilterExpression < Struct.new(
      :equal_to,
      :not_equal_to,
      :greater_than,
      :less_than,
      :greater_than_or_equal_to,
      :less_than_or_equal_to,
      :is_null,
      :is_not_null,
      :in,
      :not_in,
      :like,
      :not_like,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class EqualTo < RowFilterExpression; end
      class NotEqualTo < RowFilterExpression; end
      class GreaterThan < RowFilterExpression; end
      class LessThan < RowFilterExpression; end
      class GreaterThanOrEqualTo < RowFilterExpression; end
      class LessThanOrEqualTo < RowFilterExpression; end
      class IsNull < RowFilterExpression; end
      class IsNotNull < RowFilterExpression; end
      class In < RowFilterExpression; end
      class NotIn < RowFilterExpression; end
      class Like < RowFilterExpression; end
      class NotLike < RowFilterExpression; end
      class Unknown < RowFilterExpression; end
    end

    module RuleAction
      CREATE_LISTING_CHANGE_SET = 'CREATE_LISTING_CHANGE_SET'
      CREATE_SUBSCRIPTION_REQUEST = 'CREATE_SUBSCRIPTION_REQUEST'
    end

    # <p>The details of a rule.</p>
    # @!attribute metadata_form_enforcement_detail
    #   <p>The enforcement detail of the metadata form.</p>
    #   @return [Types::MetadataFormEnforcementDetail]
    class RuleDetail < Struct.new(
      :metadata_form_enforcement_detail,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class MetadataFormEnforcementDetail < RuleDetail; end
      class Unknown < RuleDetail; end
    end

    # <p>The scope of a rule.</p>
    # @!attribute asset_type
    #   <p>The asset type included in the rule scope.</p>
    #   @return [Types::AssetTypesForRule]
    # @!attribute data_product
    #   <p>The data product included in the rule scope.</p>
    #   @return [Boolean]
    # @!attribute project
    #   <p>The project included in the rule scope.</p>
    #   @return [Types::ProjectsForRule]
    class RuleScope < Struct.new(
      :asset_type,
      :data_product,
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RuleScopeSelectionMode
      ALL = 'ALL'
      SPECIFIC = 'SPECIFIC'
    end

    # <p>The summary of the rule.</p>
    # @!attribute identifier
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The target type of the rule.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of the rule.</p>
    #   @return [Types::RuleTarget]
    # @!attribute action
    #   <p>The action of the rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scope of the rule.</p>
    #   @return [Types::RuleScope]
    # @!attribute updated_at
    #   <p>The timestamp at which the rule was last updated.</p>
    #   @return [Time]
    # @!attribute last_updated_by
    #   <p>The timestamp at which the rule was last updated.</p>
    #   @return [String]
    class RuleSummary < Struct.new(
      :identifier,
      :revision,
      :rule_type,
      :name,
      :target_type,
      :target,
      :action,
      :scope,
      :updated_at,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The target of the rule.</p>
    # @!attribute domain_unit_target
    #   <p>The ID of the domain unit.</p>
    #   @return [Types::DomainUnitTarget]
    class RuleTarget < Struct.new(
      :domain_unit_target,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DomainUnitTarget < RuleTarget; end
      class Unknown < RuleTarget; end
    end

    module RuleTargetType
      DOMAIN_UNIT = 'DOMAIN_UNIT'
    end

    module RuleType
      METADATA_FORM_ENFORCEMENT = 'METADATA_FORM_ENFORCEMENT'
    end

    # <p>The asset statistics from the data source run.</p>
    # @!attribute added
    #   <p>The <code>added</code> statistic for the data source run.</p>
    #   @return [Integer]
    # @!attribute updated
    #   <p>The <code>updated</code> statistic for the data source run.</p>
    #   @return [Integer]
    # @!attribute unchanged
    #   <p>The <code>unchanged</code> statistic for the data source run.</p>
    #   @return [Integer]
    # @!attribute skipped
    #   <p>The <code>skipped</code> statistic for the data source run.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The <code>failed</code> statistic for the data source run.</p>
    #   @return [Integer]
    class RunStatisticsForAssets < Struct.new(
      :added,
      :updated,
      :unchanged,
      :skipped,
      :failed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 properties of a connection.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI that's part of the Amazon S3 properties of a connection.</p>
    #   @return [String]
    # @!attribute s3_access_grant_location_id
    #   <p>The Amazon S3 Access Grant location ID that's part of the Amazon S3 properties of a
    #            connection.</p>
    #   @return [String]
    class S3PropertiesInput < Struct.new(
      :s3_uri,
      :s3_access_grant_location_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 properties of a connection.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI that's part of the Amazon S3 properties of a connection.</p>
    #   @return [String]
    # @!attribute s3_access_grant_location_id
    #   <p>The Amazon S3 Access Grant location ID that's part of the Amazon S3 properties of a
    #            connection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon S3 connection.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message that gets displayed.</p>
    #   @return [String]
    class S3PropertiesOutput < Struct.new(
      :s3_uri,
      :s3_access_grant_location_id,
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 properties patch of a connection.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI that's part of the Amazon S3 properties patch of a connection.</p>
    #   @return [String]
    # @!attribute s3_access_grant_location_id
    #   <p>The Amazon S3 Access Grant location ID that's part of the Amazon S3 properties patch of
    #            a connection.</p>
    #   @return [String]
    class S3PropertiesPatch < Struct.new(
      :s3_uri,
      :s3_access_grant_location_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon SageMaker run configuration.</p>
    # @!attribute tracking_assets
    #   <p>The tracking assets of the Amazon SageMaker run.</p>
    #   @return [Hash<String, Array<String>>]
    class SageMakerRunConfigurationInput < Struct.new(
      :tracking_assets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon SageMaker run configuration.</p>
    # @!attribute account_id
    #   <p>The Amazon SageMaker account ID.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon SageMaker Region.</p>
    #   @return [String]
    # @!attribute tracking_assets
    #   <p>The tracking assets of the Amazon SageMaker.</p>
    #   @return [Hash<String, Array<String>>]
    class SageMakerRunConfigurationOutput < Struct.new(
      :account_id,
      :region,
      :tracking_assets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the schedule of the data source runs.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute timezone
    #   <p>The timezone of the data source run. </p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule of the data source runs.</p>
    #   @return [String]
    class ScheduleConfiguration < Struct.new(
      :timezone,
      :schedule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which you want to search group
    #            profiles.</p>
    #   @return [String]
    # @!attribute group_type
    #   <p>The group type for which to search.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>Specifies the text for which to search.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call to
    #               <code>SearchGroupProfiles</code>. When the number of results to be listed is greater
    #            than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code>
    #            value that you can use in a subsequent call to <code>SearchGroupProfiles</code> to list the
    #            next set of results. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchGroupProfiles</code> to list the next set of
    #            results.</p>
    #   @return [String]
    class SearchGroupProfilesInput < Struct.new(
      :domain_identifier,
      :group_type,
      :search_text,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>SearchGroupProfiles</code> action.</p>
    #   @return [Array<Types::GroupProfileSummary>]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchGroupProfiles</code> to list the next set of
    #            results.</p>
    #   @return [String]
    class SearchGroupProfilesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the search.</p>
    # @!attribute attribute
    #   <p>The search attribute.</p>
    #   @return [String]
    class SearchInItem < Struct.new(
      :attribute,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute owning_project_identifier
    #   <p>The identifier of the owning project specified for the search.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call to <code>Search</code>. When
    #            the number of results to be listed is greater than the value of <code>MaxResults</code>,
    #            the response contains a <code>NextToken</code> value that you can use in a subsequent call
    #            to <code>Search</code> to list the next set of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>Search</code> to list the next set of results.</p>
    #   @return [String]
    # @!attribute search_scope
    #   <p>The scope of the search.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>Specifies the text for which to search.</p>
    #   @return [String]
    # @!attribute search_in
    #   <p>The details of the search.</p>
    #   @return [Array<Types::SearchInItem>]
    # @!attribute filters
    #   <p>Specifies the search filters.</p>
    #   @return [Types::FilterClause]
    # @!attribute sort
    #   <p>Specifies the way in which the search results are to be sorted.</p>
    #   @return [Types::SearchSort]
    # @!attribute additional_attributes
    #   <p>Specifies additional attributes for the <code>Search</code> action.</p>
    #   @return [Array<String>]
    class SearchInput < Struct.new(
      :domain_identifier,
      :owning_project_identifier,
      :max_results,
      :next_token,
      :search_scope,
      :search_text,
      :search_in,
      :filters,
      :sort,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the search results.</p>
    # @!attribute glossary_item
    #   <p>The glossary item included in the search results.</p>
    #   @return [Types::GlossaryItem]
    # @!attribute glossary_term_item
    #   <p>The glossary term item included in the search results.</p>
    #   @return [Types::GlossaryTermItem]
    # @!attribute asset_item
    #   <p>The asset item included in the search results.</p>
    #   @return [Types::AssetItem]
    # @!attribute data_product_item
    #   <p>The data product.</p>
    #   @return [Types::DataProductResultItem]
    class SearchInventoryResultItem < Struct.new(
      :glossary_item,
      :glossary_term_item,
      :asset_item,
      :data_product_item,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class GlossaryItem < SearchInventoryResultItem; end
      class GlossaryTermItem < SearchInventoryResultItem; end
      class AssetItem < SearchInventoryResultItem; end
      class DataProductItem < SearchInventoryResultItem; end
      class Unknown < SearchInventoryResultItem; end
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the domain in which to search listings.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>Specifies the text for which to search.</p>
    #   @return [String]
    # @!attribute search_in
    #   <p>The details of the search.</p>
    #   @return [Array<Types::SearchInItem>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call to <code>SearchListings</code>.
    #            When the number of results to be listed is greater than the value of
    #               <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you
    #            can use in a subsequent call to <code>SearchListings</code> to list the next set of
    #            results. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchListings</code> to list the next set of
    #            results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Specifies the filters for the search of listings.</p>
    #   @return [Types::FilterClause]
    # @!attribute aggregations
    #   <p>Enables you to specify one or more attributes to compute and return counts grouped by
    #            field values.</p>
    #   @return [Array<Types::AggregationListItem>]
    # @!attribute sort
    #   <p>Specifies the way for sorting the search results.</p>
    #   @return [Types::SearchSort]
    # @!attribute additional_attributes
    #   <p>Specifies additional attributes for the search.</p>
    #   @return [Array<String>]
    class SearchListingsInput < Struct.new(
      :domain_identifier,
      :search_text,
      :search_in,
      :max_results,
      :next_token,
      :filters,
      :aggregations,
      :sort,
      :additional_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>SearchListings</code> action.</p>
    #   @return [Array<Types::SearchResultItem>]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchListings</code> to list the next set of
    #            results.</p>
    #   @return [String]
    # @!attribute total_match_count
    #   <p>Total number of search results.</p>
    #   @return [Integer]
    # @!attribute aggregates
    #   <p>Contains computed counts grouped by field values based on the requested aggregation
    #            attributes for the matching listings.</p>
    #   @return [Array<Types::AggregationOutput>]
    class SearchListingsOutput < Struct.new(
      :items,
      :next_token,
      :total_match_count,
      :aggregates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>Search</code> action.</p>
    #   @return [Array<Types::SearchInventoryResultItem>]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>Search</code> to list the next set of results.</p>
    #   @return [String]
    # @!attribute total_match_count
    #   <p>Total number of search results.</p>
    #   @return [Integer]
    class SearchOutput < Struct.new(
      :items,
      :next_token,
      :total_match_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SearchOutputAdditionalAttribute
      FORMS = 'FORMS'
      TIME_SERIES_DATA_POINT_FORMS = 'TIME_SERIES_DATA_POINT_FORMS'
      TEXT_MATCH_RATIONALE = 'TEXT_MATCH_RATIONALE'
    end

    # <p>The details of the results of the <code>SearchListings</code> action.</p>
    # @!attribute asset_listing
    #   <p>The asset listing included in the results of the <code>SearchListings</code>
    #            action.</p>
    #   @return [Types::AssetListingItem]
    # @!attribute data_product_listing
    #   <p>The data product listing.</p>
    #   @return [Types::DataProductListingItem]
    class SearchResultItem < Struct.new(
      :asset_listing,
      :data_product_listing,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AssetListing < SearchResultItem; end
      class DataProductListing < SearchResultItem; end
      class Unknown < SearchResultItem; end
    end

    # <p>The details of the way to sort search results.</p>
    # @!attribute attribute
    #   <p>The attribute detail of the way to sort search results.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order detail of the wya to sort search results.</p>
    #   @return [String]
    class SearchSort < Struct.new(
      :attribute,
      :order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to invoke the <code>SearchTypes</code>
    #            action.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call to <code>SearchTypes</code>.
    #            When the number of results to be listed is greater than the value of
    #               <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you
    #            can use in a subsequent call to <code>SearchTypes</code> to list the next set of results.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchTypes</code> to list the next set of
    #            results.</p>
    #   @return [String]
    # @!attribute search_scope
    #   <p>Specifies the scope of the search for types.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>Specifies the text for which to search.</p>
    #   @return [String]
    # @!attribute search_in
    #   <p>The details of the search.</p>
    #   @return [Array<Types::SearchInItem>]
    # @!attribute filters
    #   <p>The filters for the <code>SearchTypes</code> action.</p>
    #   @return [Types::FilterClause]
    # @!attribute sort
    #   <p>The specifies the way to sort the <code>SearchTypes</code> results.</p>
    #   @return [Types::SearchSort]
    # @!attribute managed
    #   <p>Specifies whether the search is managed.</p>
    #   @return [Boolean]
    class SearchTypesInput < Struct.new(
      :domain_identifier,
      :max_results,
      :next_token,
      :search_scope,
      :search_text,
      :search_in,
      :filters,
      :sort,
      :managed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>SearchTypes</code> action.</p>
    #   @return [Array<Types::SearchTypesResultItem>]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchTypes</code> to list the next set of
    #            results.</p>
    #   @return [String]
    # @!attribute total_match_count
    #   <p>Total number of search results.</p>
    #   @return [Integer]
    class SearchTypesOutput < Struct.new(
      :items,
      :next_token,
      :total_match_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the results of the <code>SearchTypes</code> action.</p>
    # @!attribute asset_type_item
    #   <p>The asset type included in the results of the <code>SearchTypes</code> action.</p>
    #   @return [Types::AssetTypeItem]
    # @!attribute form_type_item
    #   <p>The form type included in the results of the <code>SearchTypes</code> action.</p>
    #   @return [Types::FormTypeData]
    # @!attribute lineage_node_type_item
    #   <p>The details of a data lineage node type.</p>
    #   @return [Types::LineageNodeTypeItem]
    class SearchTypesResultItem < Struct.new(
      :asset_type_item,
      :form_type_item,
      :lineage_node_type_item,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AssetTypeItem < SearchTypesResultItem; end
      class FormTypeItem < SearchTypesResultItem; end
      class LineageNodeTypeItem < SearchTypesResultItem; end
      class Unknown < SearchTypesResultItem; end
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which you want to search user
    #            profiles.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>Specifies the user type for the <code>SearchUserProfiles</code> action.</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>Specifies the text for which to search.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call to
    #               <code>SearchUserProfiles</code>. When the number of results to be listed is greater than
    #            the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value
    #            that you can use in a subsequent call to <code>SearchUserProfiles</code> to list the next
    #            set of results. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchUserProfiles</code> to list the next set of
    #            results.</p>
    #   @return [String]
    class SearchUserProfilesInput < Struct.new(
      :domain_identifier,
      :user_type,
      :search_text,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The results of the <code>SearchUserProfiles</code> action.</p>
    #   @return [Array<Types::UserProfileSummary>]
    # @!attribute next_token
    #   <p>When the number of results is greater than the default value for the
    #               <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #               <code>MaxResults</code> that is less than the number of results, the response includes a
    #            pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code>
    #            value in a subsequent call to <code>SearchUserProfiles</code> to list the next set of
    #            results.</p>
    #   @return [String]
    class SearchUserProfilesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SelfGrantStatus
      GRANT_PENDING = 'GRANT_PENDING'
      REVOKE_PENDING = 'REVOKE_PENDING'
      GRANT_IN_PROGRESS = 'GRANT_IN_PROGRESS'
      REVOKE_IN_PROGRESS = 'REVOKE_IN_PROGRESS'
      GRANTED = 'GRANTED'
      GRANT_FAILED = 'GRANT_FAILED'
      REVOKE_FAILED = 'REVOKE_FAILED'
    end

    # <p>The details for the self granting status.</p>
    # @!attribute database_name
    #   <p>The name of the database used for the data source.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema used in the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The self granting status of the data source.</p>
    #   @return [String]
    # @!attribute failure_cause
    #   <p>The reason for why the operation failed.</p>
    #   @return [String]
    class SelfGrantStatusDetail < Struct.new(
      :database_name,
      :schema_name,
      :status,
      :failure_cause,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details for the self granting status for a data source.</p>
    # @!attribute glue_self_grant_status
    #   <p>The details for the self granting status for a Glue data source.</p>
    #   @return [Types::GlueSelfGrantStatusOutput]
    # @!attribute redshift_self_grant_status
    #   <p>The details for the self granting status for an Amazon Redshift data source.</p>
    #   @return [Types::RedshiftSelfGrantStatusOutput]
    class SelfGrantStatusOutput < Struct.new(
      :glue_self_grant_status,
      :redshift_self_grant_status,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class GlueSelfGrantStatus < SelfGrantStatusOutput; end
      class RedshiftSelfGrantStatus < SelfGrantStatusOutput; end
      class Unknown < SelfGrantStatusOutput; end
    end

    # <p>The request has exceeded the specified service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The single sign-on details in Amazon DataZone.</p>
    # @!attribute type
    #   <p>The type of single sign-on in Amazon DataZone.</p>
    #   @return [String]
    # @!attribute user_assignment
    #   <p>The single sign-on user assignment in Amazon DataZone.</p>
    #   @return [String]
    # @!attribute idc_instance_arn
    #   <p>The ARN of the IDC instance.</p>
    #   @return [String]
    class SingleSignOn < Struct.new(
      :type,
      :user_assignment,
      :idc_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SortFieldAccountPool
      NAME = 'NAME'
    end

    module SortFieldConnection
      NAME = 'NAME'
    end

    module SortFieldProject
      NAME = 'NAME'
    end

    module SortKey
      CREATED_AT = 'CREATED_AT'
      UPDATED_AT = 'UPDATED_AT'
    end

    module SortOrder
      ASCENDING = 'ASCENDING'
      DESCENDING = 'DESCENDING'
    end

    # <p>The Spark EMR properties.</p>
    # @!attribute compute_arn
    #   <p>The compute ARN of Spark EMR.</p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>The instance profile ARN of Spark EMR.</p>
    #   @return [String]
    # @!attribute java_virtual_env
    #   <p>The java virtual env of the Spark EMR.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>The log URI of the Spark EMR.</p>
    #   @return [String]
    # @!attribute python_virtual_env
    #   <p>The Python virtual env of the Spark EMR.</p>
    #   @return [String]
    # @!attribute runtime_role
    #   <p>The runtime role of the Spark EMR.</p>
    #   @return [String]
    # @!attribute trusted_certificates_s3_uri
    #   <p>The certificates S3 URI of the Spark EMR.</p>
    #   @return [String]
    class SparkEmrPropertiesInput < Struct.new(
      :compute_arn,
      :instance_profile_arn,
      :java_virtual_env,
      :log_uri,
      :python_virtual_env,
      :runtime_role,
      :trusted_certificates_s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Spark EMR properties.</p>
    # @!attribute compute_arn
    #   <p>The compute ARN of the Spark EMR.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>The credentials of the Spark EMR.</p>
    #   @return [Types::UsernamePassword]
    # @!attribute credentials_expiration
    #   <p>The credential expiration of the Spark EMR.</p>
    #   @return [Time]
    # @!attribute governance_type
    #   <p>The governance type of the Spark EMR.</p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>The instance profile ARN of the Spark EMR.</p>
    #   @return [String]
    # @!attribute java_virtual_env
    #   <p>The Java virtual env of the Spark EMR.</p>
    #   @return [String]
    # @!attribute livy_endpoint
    #   <p>The livy endpoint of the Spark EMR.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>The log URI of the Spark EMR.</p>
    #   @return [String]
    # @!attribute python_virtual_env
    #   <p>The Python virtual env of the Spark EMR.</p>
    #   @return [String]
    # @!attribute runtime_role
    #   <p>The runtime role of the Spark EMR.</p>
    #   @return [String]
    # @!attribute trusted_certificates_s3_uri
    #   <p>The trusted certificate S3 URL of the Spark EMR.</p>
    #   @return [String]
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
      :trusted_certificates_s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Spark EMR properties patch.</p>
    # @!attribute compute_arn
    #   <p>The compute ARN in the Spark EMR properties patch.</p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>The instance profile ARN in the Spark EMR properties patch.</p>
    #   @return [String]
    # @!attribute java_virtual_env
    #   <p>The Java virtual evn in the Spark EMR properties patch.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>The log URI in the Spark EMR properties patch.</p>
    #   @return [String]
    # @!attribute python_virtual_env
    #   <p>The Python virtual env in the Spark EMR properties patch.</p>
    #   @return [String]
    # @!attribute runtime_role
    #   <p>The runtime role in the Spark EMR properties patch.</p>
    #   @return [String]
    # @!attribute trusted_certificates_s3_uri
    #   <p>The trusted certificates S3 URI in the Spark EMR properties patch.</p>
    #   @return [String]
    class SparkEmrPropertiesPatch < Struct.new(
      :compute_arn,
      :instance_profile_arn,
      :java_virtual_env,
      :log_uri,
      :python_virtual_env,
      :runtime_role,
      :trusted_certificates_s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Spark Amazon Web Services Glue args.</p>
    # @!attribute connection
    #   <p>The connection in the Spark Amazon Web Services Glue args.</p>
    #   @return [String]
    class SparkGlueArgs < Struct.new(
      :connection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Spark Amazon Web Services Glue properties. </p>
    # @!attribute additional_args
    #   <p>The additional args in the Spark Amazon Web Services Glue properties.</p>
    #   @return [Types::SparkGlueArgs]
    # @!attribute glue_connection_name
    #   <p>The Amazon Web Services Glue connection name in the Spark Amazon Web Services Glue
    #            properties.</p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>The Amazon Web Services Glue version in the Spark Amazon Web Services Glue
    #            properties.</p>
    #   @return [String]
    # @!attribute idle_timeout
    #   <p>The idle timeout in the Spark Amazon Web Services Glue properties.</p>
    #   @return [Integer]
    # @!attribute java_virtual_env
    #   <p>The Java virtual env in the Spark Amazon Web Services Glue properties. </p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers in the Spark Amazon Web Services Glue properties. </p>
    #   @return [Integer]
    # @!attribute python_virtual_env
    #   <p>The Python virtual env in the Spark Amazon Web Services Glue properties. </p>
    #   @return [String]
    # @!attribute worker_type
    #   <p>The worker type in the Spark Amazon Web Services Glue properties. </p>
    #   @return [String]
    class SparkGluePropertiesInput < Struct.new(
      :additional_args,
      :glue_connection_name,
      :glue_version,
      :idle_timeout,
      :java_virtual_env,
      :number_of_workers,
      :python_virtual_env,
      :worker_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Spark Amazon Web Services Glue properties. </p>
    # @!attribute additional_args
    #   <p>The additional args in the Spark Amazon Web Services Glue properties. </p>
    #   @return [Types::SparkGlueArgs]
    # @!attribute glue_connection_name
    #   <p>The Amazon Web Services Glue connection name in the Spark Amazon Web Services Glue
    #            properties. </p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>The Amazon Web Services Glue version in the Spark Amazon Web Services Glue properties.
    #         </p>
    #   @return [String]
    # @!attribute idle_timeout
    #   <p>The idle timeout in the Spark Amazon Web Services Glue properties. </p>
    #   @return [Integer]
    # @!attribute java_virtual_env
    #   <p>The Java virtual env in the Spark Amazon Web Services Glue properties. </p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers in the Spark Amazon Web Services Glue properties. </p>
    #   @return [Integer]
    # @!attribute python_virtual_env
    #   <p>The Python virtual env in the Spark Amazon Web Services Glue properties. </p>
    #   @return [String]
    # @!attribute worker_type
    #   <p>The worker type in the Spark Amazon Web Services Glue properties. </p>
    #   @return [String]
    class SparkGluePropertiesOutput < Struct.new(
      :additional_args,
      :glue_connection_name,
      :glue_version,
      :idle_timeout,
      :java_virtual_env,
      :number_of_workers,
      :python_virtual_env,
      :worker_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The single sign-on details of the user profile.</p>
    # @!attribute username
    #   <p>The username included in the single sign-on details of the user profile.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name included in the single sign-on details of the user profile.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name included in the single sign-on details of the user profile.</p>
    #   @return [String]
    class SsoUserProfileDetails < Struct.new(
      :username,
      :first_name,
      :last_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to start a data source run.</p>
    #   @return [String]
    # @!attribute data_source_identifier
    #   <p>The identifier of the data source.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class StartDataSourceRunInput < Struct.new(
      :domain_identifier,
      :data_source_identifier,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which to start a data source run.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the data source run.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The identifier of the project.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source run.</p>
    #   @return [String]
    # @!attribute data_source_configuration_snapshot
    #   <p>The configuration snapshot of the data source that is being run.</p>
    #   @return [String]
    # @!attribute run_statistics_for_assets
    #   <p>Specifies run statistics for assets.</p>
    #   @return [Types::RunStatisticsForAssets]
    # @!attribute error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when data source run was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data source run was updated.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The timestamp of when the data source run was started.</p>
    #   @return [Time]
    # @!attribute stopped_at
    #   <p>The timestamp of when the data source run was stopped.</p>
    #   @return [Time]
    class StartDataSourceRunOutput < Struct.new(
      :domain_id,
      :data_source_id,
      :id,
      :project_id,
      :status,
      :type,
      :data_source_configuration_snapshot,
      :run_statistics_for_assets,
      :error_message,
      :created_at,
      :updated_at,
      :started_at,
      :stopped_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where you want to start a metadata generation
    #            run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the metadata generation run.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The asset for which you want to start a metadata generation run.</p>
    #   @return [Types::MetadataGenerationRunTarget]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This field is
    #            automatically populated if not provided.</p>
    #   @return [String]
    # @!attribute owning_project_identifier
    #   <p>The ID of the project that owns the asset for which you want to start a metadata
    #            generation run.</p>
    #   @return [String]
    class StartMetadataGenerationRunInput < Struct.new(
      :domain_identifier,
      :type,
      :target,
      :client_token,
      :owning_project_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain in which the metadata generation run was
    #            started.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the metadata generation run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the metadata generation run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the metadata generation run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the metadata generation run was started.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The ID of the user who started the metadata generation run.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The ID of the project that owns the asset for which the metadata generation run was
    #            started.</p>
    #   @return [String]
    class StartMetadataGenerationRunOutput < Struct.new(
      :domain_id,
      :id,
      :status,
      :type,
      :created_at,
      :created_by,
      :owning_project_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Status
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>The details of the asset for which the subscription grant is created.</p>
    # @!attribute asset_id
    #   <p>The identifier of the asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute asset_revision
    #   <p>The revision of the asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The target name of the asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute failure_cause
    #   <p>The failure cause included in the details of the asset for which the subscription grant
    #            is created.</p>
    #   @return [Types::FailureCause]
    # @!attribute granted_timestamp
    #   <p>The timestamp of when the subscription grant to the asset is created.</p>
    #   @return [Time]
    # @!attribute failure_timestamp
    #   <p>The failure timestamp included in the details of the asset for which the subscription
    #            grant is created.</p>
    #   @return [Time]
    # @!attribute asset_scope
    #   <p>The asset scope of the subscribed asset.</p>
    #   @return [Types::AssetScope]
    class SubscribedAsset < Struct.new(
      :asset_id,
      :asset_revision,
      :status,
      :target_name,
      :failure_cause,
      :granted_timestamp,
      :failure_timestamp,
      :asset_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the published asset for which the subscription grant is created.</p>
    # @!attribute entity_id
    #   <p>The identifier of the published asset for which the subscription grant is
    #            created.</p>
    #   @return [String]
    # @!attribute entity_revision
    #   <p>The revision of the published asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the published asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute forms
    #   <p>The forms attached to the published asset for which the subscription grant is
    #            created.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms attached to the published asset for which the subscription grant is
    #            created.</p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    # @!attribute asset_scope
    #   <p>The asset scope of the subscribed asset listing.</p>
    #   @return [Types::AssetScope]
    class SubscribedAssetListing < Struct.new(
      :entity_id,
      :entity_revision,
      :entity_type,
      :forms,
      :glossary_terms,
      :asset_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the published asset for which the subscription grant is created.</p>
    # @!attribute id
    #   <p>The identifier of the published asset for which the subscription grant is
    #            created.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the published asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the published asset for which the subscription grant is created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the published asset for which the subscription grant is
    #            created.</p>
    #   @return [String]
    # @!attribute item
    #   <p>The published asset for which the subscription grant is created.</p>
    #   @return [Types::SubscribedListingItem]
    # @!attribute owner_project_id
    #   <p>The identifier of the project of the published asset for which the subscription grant is
    #            created.</p>
    #   @return [String]
    # @!attribute owner_project_name
    #   <p>The name of the project that owns the published asset for which the subscription grant
    #            is created.</p>
    #   @return [String]
    class SubscribedListing < Struct.new(
      :id,
      :revision,
      :name,
      :description,
      :item,
      :owner_project_id,
      :owner_project_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The published asset for which the subscription grant is to be created.</p>
    # @!attribute identifier
    #   <p>The identifier of the published asset for which the subscription grant is to be
    #            created.</p>
    #   @return [String]
    class SubscribedListingInput < Struct.new(
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The published asset for which the subscription grant is created.</p>
    # @!attribute asset_listing
    #   <p>The asset for which the subscription grant is created.</p>
    #   @return [Types::SubscribedAssetListing]
    # @!attribute product_listing
    #   <p>The data product listing.</p>
    #   @return [Types::SubscribedProductListing]
    class SubscribedListingItem < Struct.new(
      :asset_listing,
      :product_listing,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AssetListing < SubscribedListingItem; end
      class ProductListing < SubscribedListingItem; end
      class Unknown < SubscribedListingItem; end
    end

    # <p>The principal that has the subscription grant for the asset.</p>
    # @!attribute project
    #   <p>The project that has the subscription grant.</p>
    #   @return [Types::SubscribedProject]
    class SubscribedPrincipal < Struct.new(
      :project,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Project < SubscribedPrincipal; end
      class Unknown < SubscribedPrincipal; end
    end

    # <p>The principal that is to be given a subscriptiong grant.</p>
    # @!attribute project
    #   <p>The project that is to be given a subscription grant.</p>
    #   @return [Types::SubscribedProjectInput]
    class SubscribedPrincipalInput < Struct.new(
      :project,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Project < SubscribedPrincipalInput; end
      class Unknown < SubscribedPrincipalInput; end
    end

    # <p>The data product listing.</p>
    # @!attribute entity_id
    #   <p>The ID of the data product listing.</p>
    #   @return [String]
    # @!attribute entity_revision
    #   <p>The revision of the data product listing.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the data product listing.</p>
    #   @return [Array<Types::DetailedGlossaryTerm>]
    # @!attribute name
    #   <p>The name of the data product listing.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data product listing.</p>
    #   @return [String]
    # @!attribute asset_listings
    #   <p>The data assets of the data product listing.</p>
    #   @return [Array<Types::AssetInDataProductListingItem>]
    class SubscribedProductListing < Struct.new(
      :entity_id,
      :entity_revision,
      :glossary_terms,
      :name,
      :description,
      :asset_listings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The project that has the subscription grant.</p>
    # @!attribute id
    #   <p>The identifier of the project that has the subscription grant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project that has the subscription grant.</p>
    #   @return [String]
    class SubscribedProject < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The project that is to be given a subscription grant.</p>
    # @!attribute identifier
    #   <p>The identifier of the project that is to be given a subscription grant.</p>
    #   @return [String]
    class SubscribedProjectInput < Struct.new(
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SubscriptionGrantOverallStatus
      PENDING = 'PENDING'
      IN_PROGRESS = 'IN_PROGRESS'
      GRANT_FAILED = 'GRANT_FAILED'
      REVOKE_FAILED = 'REVOKE_FAILED'
      GRANT_AND_REVOKE_FAILED = 'GRANT_AND_REVOKE_FAILED'
      COMPLETED = 'COMPLETED'
      INACCESSIBLE = 'INACCESSIBLE'
    end

    module SubscriptionGrantStatus
      GRANT_PENDING = 'GRANT_PENDING'
      REVOKE_PENDING = 'REVOKE_PENDING'
      GRANT_IN_PROGRESS = 'GRANT_IN_PROGRESS'
      REVOKE_IN_PROGRESS = 'REVOKE_IN_PROGRESS'
      GRANTED = 'GRANTED'
      REVOKED = 'REVOKED'
      GRANT_FAILED = 'GRANT_FAILED'
      REVOKE_FAILED = 'REVOKE_FAILED'
    end

    # <p>The details of the subscription grant.</p>
    # @!attribute id
    #   <p>The identifier of the subscription grant.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The datazone user who created the subscription grant.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription grant.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a subscription grant exists.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when a subscription grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestampf of when the subscription grant was updated.</p>
    #   @return [Time]
    # @!attribute subscription_target_id
    #   <p>The identifier of the target of the subscription grant.</p>
    #   @return [String]
    # @!attribute granted_entity
    #   <p>The entity to which the subscription is granted.</p>
    #   @return [Types::GrantedEntity]
    # @!attribute status
    #   <p>The status of the subscription grant.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets included in the subscription grant.</p>
    #   @return [Array<Types::SubscribedAsset>]
    # @!attribute subscription_id
    #   <p>The ID of the subscription.</p>
    #   @deprecated
    #     Multiple subscriptions can exist for a single grant
    #   @return [String]
    class SubscriptionGrantSummary < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :created_at,
      :updated_at,
      :subscription_target_id,
      :granted_entity,
      :status,
      :assets,
      :subscription_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SubscriptionRequestStatus
      PENDING = 'PENDING'
      ACCEPTED = 'ACCEPTED'
      REJECTED = 'REJECTED'
    end

    # <p>The details of the subscription request.</p>
    # @!attribute id
    #   <p>The identifier of the subscription request.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription request.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The identifier of the Amazon DataZone user who updated the subscription request.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a subscription request exists.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when a subscription request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription request was updated.</p>
    #   @return [Time]
    # @!attribute request_reason
    #   <p>The reason for the subscription request.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>The principals included in the subscription request. </p>
    #   @return [Array<Types::SubscribedPrincipal>]
    # @!attribute subscribed_listings
    #   <p>The listings included in the subscription request.</p>
    #   @return [Array<Types::SubscribedListing>]
    # @!attribute reviewer_id
    #   <p>The identifier of the subscription request reviewer.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>The decision comment of the subscription request.</p>
    #   @return [String]
    # @!attribute existing_subscription_id
    #   <p>The ID of the existing subscription.</p>
    #   @return [String]
    # @!attribute metadata_forms_summary
    #   <p>The summary of the metadata forms.</p>
    #   @return [Array<Types::MetadataFormSummary>]
    class SubscriptionRequestSummary < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :request_reason,
      :subscribed_principals,
      :subscribed_listings,
      :reviewer_id,
      :decision_comment,
      :existing_subscription_id,
      :metadata_forms_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SubscriptionStatus
      APPROVED = 'APPROVED'
      REVOKED = 'REVOKED'
      CANCELLED = 'CANCELLED'
    end

    # <p>The details of the subscription.</p>
    # @!attribute id
    #   <p>The identifier of the subscription.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a subscription exists.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription was updated.</p>
    #   @return [Time]
    # @!attribute subscribed_principal
    #   <p>The principal included in the subscription.</p>
    #   @return [Types::SubscribedPrincipal]
    # @!attribute subscribed_listing
    #   <p>The listing included in the subscription.</p>
    #   @return [Types::SubscribedListing]
    # @!attribute subscription_request_id
    #   <p>The identifier of the subscription request for the subscription.</p>
    #   @return [String]
    # @!attribute retain_permissions
    #   <p>The retain permissions included in the subscription.</p>
    #   @return [Boolean]
    class SubscriptionSummary < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :subscribed_principal,
      :subscribed_listing,
      :subscription_request_id,
      :retain_permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the subscription target configuration.</p>
    # @!attribute form_name
    #   <p>The form name included in the subscription target configuration.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the subscription target configuration.</p>
    #   @return [String]
    class SubscriptionTargetForm < Struct.new(
      :form_name,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the subscription target.</p>
    # @!attribute id
    #   <p>The identifier of the subscription target.</p>
    #   @return [String]
    # @!attribute authorized_principals
    #   <p>The authorized principals included in the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the subscription target exists.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The identifier of the project specified in the subscription target.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of the environment of the subscription target.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the subscription target.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the subscription target.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription target.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription target was updated.</p>
    #   @return [Time]
    # @!attribute manage_access_role
    #   <p>The manage access role specified in the subscription target.</p>
    #   @return [String]
    # @!attribute applicable_asset_types
    #   <p>The asset types included in the subscription target.</p>
    #   @return [Array<String>]
    # @!attribute subscription_target_config
    #   <p>The configuration of the subscription target.</p>
    #   @return [Array<Types::SubscriptionTargetForm>]
    # @!attribute provider
    #   <p>The provider of the subscription target.</p>
    #   @return [String]
    class SubscriptionTargetSummary < Struct.new(
      :id,
      :authorized_principals,
      :domain_id,
      :project_id,
      :environment_id,
      :name,
      :type,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at,
      :manage_access_role,
      :applicable_asset_types,
      :subscription_target_config,
      :provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be tagged in Amazon DataZone.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the tags for the <code>TagResource</code> action.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetEntityType
      DOMAIN_UNIT = 'DOMAIN_UNIT'
      ENVIRONMENT_BLUEPRINT_CONFIGURATION = 'ENVIRONMENT_BLUEPRINT_CONFIGURATION'
      ENVIRONMENT_PROFILE = 'ENVIRONMENT_PROFILE'
      ASSET_TYPE = 'ASSET_TYPE'
    end

    module TaskStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    # <p>The details of the term relations.</p>
    # @!attribute is_a
    #   <p>The <code>isA</code> property of the term relations.</p>
    #   @return [Array<String>]
    # @!attribute classifies
    #   <p>The classifies of the term relations.</p>
    #   @return [Array<String>]
    class TermRelations < Struct.new(
      :is_a,
      :classifies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure indicating matched terms for an attribute.</p>
    # @!attribute attribute
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute text
    #   <p>Snippet of attribute text containing highlighted content.</p>
    #   @return [String]
    # @!attribute match_offsets
    #   <p>List of offsets indicating matching terms in the TextMatchItem text.</p>
    #   @return [Array<Types::MatchOffset>]
    class TextMatchItem < Struct.new(
      :attribute,
      :text,
      :match_offsets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The time series data points form.</p>
    # @!attribute form_name
    #   <p>The name of the time series data points form.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The ID of the type of the time series data points form.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision type of the time series data points form.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the time series data points form.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>The content of the time series data points form.</p>
    #   @return [String]
    class TimeSeriesDataPointFormInput < Struct.new(
      :form_name,
      :type_identifier,
      :type_revision,
      :timestamp,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The time series data points form.</p>
    # @!attribute form_name
    #   <p>The name of the time series data points form.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The ID of the type of the time series data points form.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The revision type of the time series data points form.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the time series data points form.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>The content of the time series data points form.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the time series data points form.</p>
    #   @return [String]
    class TimeSeriesDataPointFormOutput < Struct.new(
      :form_name,
      :type_identifier,
      :type_revision,
      :timestamp,
      :content,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summary of the time series data points form.</p>
    # @!attribute form_name
    #   <p>The name of the time series data points summary form.</p>
    #   @return [String]
    # @!attribute type_identifier
    #   <p>The type ID of the time series data points summary form.</p>
    #   @return [String]
    # @!attribute type_revision
    #   <p>The type revision of the time series data points summary form.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the time series data points summary form.</p>
    #   @return [Time]
    # @!attribute content_summary
    #   <p>The content of the summary of the time series data points form.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the time series data points summary form.</p>
    #   @return [String]
    class TimeSeriesDataPointSummaryFormOutput < Struct.new(
      :form_name,
      :type_identifier,
      :type_revision,
      :timestamp,
      :content_summary,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TimeSeriesEntityType
      ASSET = 'ASSET'
      LISTING = 'LISTING'
    end

    module Timezone
      UTC = 'UTC'
      AFRICA_JOHANNESBURG = 'AFRICA_JOHANNESBURG'
      AMERICA_MONTREAL = 'AMERICA_MONTREAL'
      AMERICA_SAO_PAULO = 'AMERICA_SAO_PAULO'
      ASIA_BAHRAIN = 'ASIA_BAHRAIN'
      ASIA_BANGKOK = 'ASIA_BANGKOK'
      ASIA_CALCUTTA = 'ASIA_CALCUTTA'
      ASIA_DUBAI = 'ASIA_DUBAI'
      ASIA_HONG_KONG = 'ASIA_HONG_KONG'
      ASIA_JAKARTA = 'ASIA_JAKARTA'
      ASIA_KUALA_LUMPUR = 'ASIA_KUALA_LUMPUR'
      ASIA_SEOUL = 'ASIA_SEOUL'
      ASIA_SHANGHAI = 'ASIA_SHANGHAI'
      ASIA_SINGAPORE = 'ASIA_SINGAPORE'
      ASIA_TAIPEI = 'ASIA_TAIPEI'
      ASIA_TOKYO = 'ASIA_TOKYO'
      AUSTRALIA_MELBOURNE = 'AUSTRALIA_MELBOURNE'
      AUSTRALIA_SYDNEY = 'AUSTRALIA_SYDNEY'
      CANADA_CENTRAL = 'CANADA_CENTRAL'
      CET = 'CET'
      CST6CDT = 'CST6CDT'
      ETC_GMT = 'ETC_GMT'
      ETC_GMT0 = 'ETC_GMT0'
      ETC_GMT_ADD_0 = 'ETC_GMT_ADD_0'
      ETC_GMT_ADD_1 = 'ETC_GMT_ADD_1'
      ETC_GMT_ADD_10 = 'ETC_GMT_ADD_10'
      ETC_GMT_ADD_11 = 'ETC_GMT_ADD_11'
      ETC_GMT_ADD_12 = 'ETC_GMT_ADD_12'
      ETC_GMT_ADD_2 = 'ETC_GMT_ADD_2'
      ETC_GMT_ADD_3 = 'ETC_GMT_ADD_3'
      ETC_GMT_ADD_4 = 'ETC_GMT_ADD_4'
      ETC_GMT_ADD_5 = 'ETC_GMT_ADD_5'
      ETC_GMT_ADD_6 = 'ETC_GMT_ADD_6'
      ETC_GMT_ADD_7 = 'ETC_GMT_ADD_7'
      ETC_GMT_ADD_8 = 'ETC_GMT_ADD_8'
      ETC_GMT_ADD_9 = 'ETC_GMT_ADD_9'
      ETC_GMT_NEG_0 = 'ETC_GMT_NEG_0'
      ETC_GMT_NEG_1 = 'ETC_GMT_NEG_1'
      ETC_GMT_NEG_10 = 'ETC_GMT_NEG_10'
      ETC_GMT_NEG_11 = 'ETC_GMT_NEG_11'
      ETC_GMT_NEG_12 = 'ETC_GMT_NEG_12'
      ETC_GMT_NEG_13 = 'ETC_GMT_NEG_13'
      ETC_GMT_NEG_14 = 'ETC_GMT_NEG_14'
      ETC_GMT_NEG_2 = 'ETC_GMT_NEG_2'
      ETC_GMT_NEG_3 = 'ETC_GMT_NEG_3'
      ETC_GMT_NEG_4 = 'ETC_GMT_NEG_4'
      ETC_GMT_NEG_5 = 'ETC_GMT_NEG_5'
      ETC_GMT_NEG_6 = 'ETC_GMT_NEG_6'
      ETC_GMT_NEG_7 = 'ETC_GMT_NEG_7'
      ETC_GMT_NEG_8 = 'ETC_GMT_NEG_8'
      ETC_GMT_NEG_9 = 'ETC_GMT_NEG_9'
      EUROPE_DUBLIN = 'EUROPE_DUBLIN'
      EUROPE_LONDON = 'EUROPE_LONDON'
      EUROPE_PARIS = 'EUROPE_PARIS'
      EUROPE_STOCKHOLM = 'EUROPE_STOCKHOLM'
      EUROPE_ZURICH = 'EUROPE_ZURICH'
      ISRAEL = 'ISRAEL'
      MEXICO_GENERAL = 'MEXICO_GENERAL'
      MST7MDT = 'MST7MDT'
      PACIFIC_AUCKLAND = 'PACIFIC_AUCKLAND'
      US_CENTRAL = 'US_CENTRAL'
      US_EASTERN = 'US_EASTERN'
      US_MOUNTAIN = 'US_MOUNTAIN'
      US_PACIFIC = 'US_PACIFIC'
    end

    # <p>The topic of the notification.</p>
    # @!attribute subject
    #   <p>The subject of the resource mentioned in a notification.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The details of the resource mentioned in a notification.</p>
    #   @return [Types::NotificationResource]
    # @!attribute role
    #   <p>The role of the resource mentioned in a notification.</p>
    #   @return [String]
    class Topic < Struct.new(
      :subject,
      :resource,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TypesSearchScope
      ASSET_TYPE = 'ASSET_TYPE'
      FORM_TYPE = 'FORM_TYPE'
      LINEAGE_NODE_TYPE = 'LINEAGE_NODE_TYPE'
    end

    # <p>You do not have permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the policy of creating an environment.</p>
    class Unit < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be untagged in Amazon DataZone.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies the tag keys for the <code>UntagResource</code> action.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The domain ID where the account pool that is to be updated lives.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the account pool that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool that is to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the account pool that is to be udpated.</p>
    #   @return [String]
    # @!attribute resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    #   @return [String]
    # @!attribute account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a
    #            static list of accounts provided by the customer or a custom Amazon Web Services Lambda
    #            handler. </p>
    #   @return [Types::AccountSource]
    class UpdateAccountPoolInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :resolution_strategy,
      :account_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The domain ID where the account pool that is to be updated lives.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the account pool that is to be updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the account pool that is to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the account pool that is to be udpated.</p>
    #   @return [String]
    # @!attribute resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    #   @return [String]
    # @!attribute account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a
    #            static list of accounts provided by the customer or a custom Amazon Web Services Lambda
    #            handler. </p>
    #   @return [Types::AccountSource]
    # @!attribute created_by
    #   <p>The user who created the account pool.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the account pool was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which the account pool was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the account pool.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The domain ID in which the account pool that is to be updated lives.</p>
    #   @return [String]
    class UpdateAccountPoolOutput < Struct.new(
      :domain_id,
      :name,
      :id,
      :description,
      :resolution_strategy,
      :account_source,
      :created_by,
      :created_at,
      :last_updated_at,
      :updated_by,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to update an asset filter.</p>
    #   @return [String]
    # @!attribute asset_identifier
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the asset filter.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset filter.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the asset filter.</p>
    #   @return [Types::AssetFilterConfiguration]
    class UpdateAssetFilterInput < Struct.new(
      :domain_identifier,
      :asset_identifier,
      :identifier,
      :name,
      :description,
      :configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the asset filter.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where the asset filter was created.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the data asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the asset filter.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asset filter.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the asset filter.</p>
    #   @return [Types::AssetFilterConfiguration]
    # @!attribute created_at
    #   <p>The timestamp at which the asset filter was created.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message that is displayed if the action is not completed successfully.</p>
    #   @return [String]
    # @!attribute effective_column_names
    #   <p>The column names of the asset filter.</p>
    #   @return [Array<String>]
    # @!attribute effective_row_filter
    #   <p>The row filter of the asset filter.</p>
    #   @return [String]
    class UpdateAssetFilterOutput < Struct.new(
      :id,
      :domain_id,
      :asset_id,
      :name,
      :description,
      :status,
      :configuration,
      :created_at,
      :error_message,
      :effective_column_names,
      :effective_row_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where a connection is to be updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the connection to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a connection.</p>
    #   @return [String]
    # @!attribute aws_location
    #   <p>The location where a connection is to be updated.</p>
    #   @return [Types::AwsLocation]
    # @!attribute props
    #   <p>The connection props.</p>
    #   @return [Types::ConnectionPropertiesPatch]
    class UpdateConnectionInput < Struct.new(
      :domain_identifier,
      :identifier,
      :description,
      :aws_location,
      :props,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The connection description.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where a connection is to be updated.</p>
    #   @return [String]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit where a connection is to be updated.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment where a connection is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute physical_endpoints
    #   <p>The physical endpoints of the connection.</p>
    #   @return [Array<Types::PhysicalEndpoint>]
    # @!attribute project_id
    #   <p>The project ID of the connection.</p>
    #   @return [String]
    # @!attribute props
    #   <p>The connection props.</p>
    #   @return [Types::ConnectionPropertiesOutput]
    # @!attribute type
    #   <p>The connection type.</p>
    #   @return [String]
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
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the domain in which to update a data source.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the data source to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateDataSource</code> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [String]
    # @!attribute enable_setting
    #   <p>The enable setting to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [String]
    # @!attribute publish_on_import
    #   <p>The publish on import setting to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Boolean]
    # @!attribute asset_forms_input
    #   <p>The asset forms to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Array<Types::FormInput>]
    # @!attribute schedule
    #   <p>The schedule to be updated as part of the <code>UpdateDataSource</code> action.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute configuration
    #   <p>The configuration to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Types::DataSourceConfigurationInput]
    # @!attribute recommendation
    #   <p>The recommendation to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Types::RecommendationConfiguration]
    # @!attribute retain_permissions_on_revoke_failure
    #   <p>Specifies that the granted permissions are retained in case of a self-subscribe
    #            functionality failure for a data source.</p>
    #   @return [Boolean]
    class UpdateDataSourceInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :enable_setting,
      :publish_on_import,
      :asset_forms_input,
      :schedule,
      :configuration,
      :recommendation,
      :retain_permissions_on_revoke_failure,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the data source to be updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateDataSource</code> action.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type to be updated as part of the <code>UpdateDataSource</code> action.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateDataSource</code> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a data source is to be updated.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The identifier of the project where data source is to be updated.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of the environment in which a data source is to be updated.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The connection ID.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Types::DataSourceConfigurationOutput]
    # @!attribute recommendation
    #   <p>The recommendation to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Types::RecommendationConfiguration]
    # @!attribute enable_setting
    #   <p>The enable setting to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [String]
    # @!attribute publish_on_import
    #   <p>The publish on import setting to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Boolean]
    # @!attribute asset_forms_output
    #   <p>The asset forms to be updated as part of the <code>UpdateDataSource</code>
    #            action.</p>
    #   @return [Array<Types::FormOutput>]
    # @!attribute schedule
    #   <p>The schedule to be updated as part of the <code>UpdateDataSource</code> action.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute last_run_status
    #   <p>The last run status of the data source.</p>
    #   @return [String]
    # @!attribute last_run_at
    #   <p>The timestamp of when the data source was last run.</p>
    #   @return [Time]
    # @!attribute last_run_error_message
    #   <p>The last run error message of the data source.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute error_message
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::DataSourceErrorMessage]
    # @!attribute created_at
    #   <p>The timestamp of when the data source was updated.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data source was updated.</p>
    #   @return [Time]
    # @!attribute self_grant_status
    #   <p>Specifies the status of the self-granting functionality.</p>
    #   @return [Types::SelfGrantStatusOutput]
    # @!attribute retain_permissions_on_revoke_failure
    #   <p>Specifies that the granted permissions are retained in case of a self-subscribe
    #            functionality failure for a data source.</p>
    #   @return [Boolean]
    class UpdateDataSourceOutput < Struct.new(
      :id,
      :status,
      :type,
      :name,
      :description,
      :domain_id,
      :project_id,
      :environment_id,
      :connection_id,
      :configuration,
      :recommendation,
      :enable_setting,
      :publish_on_import,
      :asset_forms_output,
      :schedule,
      :last_run_status,
      :last_run_at,
      :last_run_error_message,
      :error_message,
      :created_at,
      :updated_at,
      :self_grant_status,
      :retain_permissions_on_revoke_failure,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the Amazon Web Services domain that is to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateDomain</code> action.</p>
    #   @return [String]
    # @!attribute single_sign_on
    #   <p>The single sign-on option to be updated as part of the <code>UpdateDomain</code>
    #            action.</p>
    #   @return [Types::SingleSignOn]
    # @!attribute domain_execution_role
    #   <p>The domain execution role to be updated as part of the <code>UpdateDomain</code>
    #            action.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The service role of the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateDomain</code> action.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class UpdateDomainInput < Struct.new(
      :identifier,
      :description,
      :single_sign_on,
      :domain_execution_role,
      :service_role,
      :name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the Amazon DataZone domain.</p>
    #   @return [String]
    # @!attribute root_domain_unit_id
    #   <p>The ID of the root domain unit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateDomain</code> action.</p>
    #   @return [String]
    # @!attribute single_sign_on
    #   <p>The single sign-on option of the Amazon DataZone domain.</p>
    #   @return [Types::SingleSignOn]
    # @!attribute domain_execution_role
    #   <p>The domain execution role to be updated as part of the <code>UpdateDomain</code>
    #            action.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The service role of the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateDomain</code> action.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>Specifies the timestamp of when the domain was last updated.</p>
    #   @return [Time]
    class UpdateDomainOutput < Struct.new(
      :id,
      :root_domain_unit_id,
      :description,
      :single_sign_on,
      :domain_execution_role,
      :service_role,
      :name,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where you want to update a domain unit.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the domain unit that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain unit that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain unit that you want to update.</p>
    #   @return [String]
    class UpdateDomainUnitInput < Struct.new(
      :domain_identifier,
      :identifier,
      :description,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the domain unit that you want to update.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The ID of the domain where you want to update the domain unit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain unit that you want to update.</p>
    #   @return [String]
    # @!attribute owners
    #   <p>The owners of the domain unit that you want to update.</p>
    #   @return [Array<Types::DomainUnitOwnerProperties>]
    # @!attribute description
    #   <p>The description of the domain unit that you want to update.</p>
    #   @return [String]
    # @!attribute parent_domain_unit_id
    #   <p>The ID of the parent domain unit.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time stamp at which the domain unit that you want to update was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which the domain unit was last updated.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the domain unit that you want to update.</p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p>The user who last updated the domain unit.</p>
    #   @return [String]
    class UpdateDomainUnitOutput < Struct.new(
      :id,
      :domain_id,
      :name,
      :owners,
      :description,
      :parent_domain_unit_id,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The domain ID of the environment action.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The environment ID of the environment action.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the environment action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the environment action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute name
    #   <p>The name of the environment action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment action.</p>
    #   @return [String]
    class UpdateEnvironmentActionInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier,
      :parameters,
      :name,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The domain ID of the environment action.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID of the environment action.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the environment action.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the environment action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute description
    #   <p>The description of the environment action.</p>
    #   @return [String]
    class UpdateEnvironmentActionOutput < Struct.new(
      :domain_id,
      :environment_id,
      :id,
      :name,
      :parameters,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the domain in which the environment is to be updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the environment that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateEnvironment</code> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Array<String>]
    # @!attribute blueprint_version
    #   <p>The blueprint version to which the environment should be updated. You can only specify
    #            the following string for this parameter: <code>latest</code>.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of the environment.</p>
    #   @return [Array<Types::EnvironmentParameter>]
    class UpdateEnvironmentInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :glossary_terms,
      :blueprint_version,
      :user_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The project identifier of the environment.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the environment that is to be updated.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain in which the environment is to be updated.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the environment was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateEnvironment</code> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [String]
    # @!attribute environment_profile_id
    #   <p>The profile identifier of the environment.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The identifier of the Amazon Web Services account in which the environment is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services Region in which the environment is updated.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider identifier of the environment.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>The provisioned resources to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateEnvironment</code> action.</p>
    #   @return [String]
    # @!attribute environment_actions
    #   <p>The environment actions to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Array<Types::ConfigurableEnvironmentAction>]
    # @!attribute glossary_terms
    #   <p>The glossary terms to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Array<String>]
    # @!attribute user_parameters
    #   <p>The user parameters to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Array<Types::CustomParameter>]
    # @!attribute last_deployment
    #   <p>The last deployment of the environment.</p>
    #   @return [Types::Deployment]
    # @!attribute provisioning_properties
    #   <p>The provisioning properties to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Types::ProvisioningProperties]
    # @!attribute deployment_properties
    #   <p>The deployment properties to be updated as part of the <code>UpdateEnvironment</code>
    #            action.</p>
    #   @return [Types::DeploymentProperties]
    # @!attribute environment_blueprint_id
    #   <p>The blueprint identifier of the environment.</p>
    #   @return [String]
    # @!attribute environment_configuration_id
    #   <p>The configuration ID of the environment.</p>
    #   @return [String]
    class UpdateEnvironmentOutput < Struct.new(
      :project_id,
      :id,
      :domain_id,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_profile_id,
      :aws_account_id,
      :aws_account_region,
      :provider,
      :provisioned_resources,
      :status,
      :environment_actions,
      :glossary_terms,
      :user_parameters,
      :last_deployment,
      :provisioning_properties,
      :deployment_properties,
      :environment_blueprint_id,
      :environment_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:environment_profile_id] = '' unless options.key?(:environment_profile_id)
        super
      end
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which an environment profile is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the environment profile that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateEnvironmentProfile</code>
    #            action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateEnvironmentProfile</code>
    #            action.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters to be updated as part of the <code>UpdateEnvironmentProfile</code>
    #            action.</p>
    #   @return [Array<Types::EnvironmentParameter>]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account in which a specified environment profile is to be
    #            udpated.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services Region in which a specified environment profile is to be
    #            updated.</p>
    #   @return [String]
    class UpdateEnvironmentProfileInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :user_parameters,
      :aws_account_id,
      :aws_account_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the environment profile that is to be udpated.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which the environment profile is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account in which a specified environment profile is to be
    #            udpated.</p>
    #   @return [String]
    # @!attribute aws_account_region
    #   <p>The Amazon Web Services Region in which a specified environment profile is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the environment profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment profile was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the environment profile was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateEnvironmentProfile</code>
    #            action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateEnvironmentProfile</code>
    #            action.</p>
    #   @return [String]
    # @!attribute environment_blueprint_id
    #   <p>The identifier of the blueprint of the environment profile that is to be updated.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The identifier of the project of the environment profile that is to be updated.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters to be updated as part of the <code>UpdateEnvironmentProfile</code>
    #            action.</p>
    #   @return [Array<Types::CustomParameter>]
    class UpdateEnvironmentProfileOutput < Struct.new(
      :id,
      :domain_id,
      :aws_account_id,
      :aws_account_region,
      :created_by,
      :created_at,
      :updated_at,
      :name,
      :description,
      :environment_blueprint_id,
      :project_id,
      :user_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a business glossary is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the business glossary to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateGlossary</code> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateGlossary</code> action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateGlossary</code> action.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    class UpdateGlossaryInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :status,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a business glossary is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the business glossary that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateGlossary</code> action.</p>
    #   @return [String]
    # @!attribute owning_project_id
    #   <p>The identifier of the project in which to update a business glossary.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateGlossary</code> action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateGlossary</code> action.</p>
    #   @return [String]
    class UpdateGlossaryOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :owning_project_id,
      :description,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a business glossary term is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute glossary_identifier
    #   <p>The identifier of the business glossary in which a term is to be updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the business glossary term that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The short description to be updated as part of the <code>UpdateGlossaryTerm</code>
    #            action.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>The long description to be updated as part of the <code>UpdateGlossaryTerm</code>
    #            action.</p>
    #   @return [String]
    # @!attribute term_relations
    #   <p>The term relations to be updated as part of the <code>UpdateGlossaryTerm</code>
    #            action.</p>
    #   @return [Types::TermRelations]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    #   @return [String]
    class UpdateGlossaryTermInput < Struct.new(
      :domain_identifier,
      :glossary_identifier,
      :identifier,
      :name,
      :short_description,
      :long_description,
      :term_relations,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the business glossary term that is to be updated.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a business glossary term is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute glossary_id
    #   <p>The identifier of the business glossary in which a term is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>The short description to be updated as part of the <code>UpdateGlossaryTerm</code>
    #            action.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>The long description to be updated as part of the <code>UpdateGlossaryTerm</code>
    #            action.</p>
    #   @return [String]
    # @!attribute term_relations
    #   <p>The term relations to be updated as part of the <code>UpdateGlossaryTerm</code>
    #            action.</p>
    #   @return [Types::TermRelations]
    class UpdateGlossaryTermOutput < Struct.new(
      :id,
      :domain_id,
      :glossary_id,
      :name,
      :status,
      :short_description,
      :long_description,
      :term_relations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a group profile is updated.</p>
    #   @return [String]
    # @!attribute group_identifier
    #   <p>The identifier of the group profile that is updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the group profile that is updated.</p>
    #   @return [String]
    class UpdateGroupProfileInput < Struct.new(
      :domain_identifier,
      :group_identifier,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a group profile is updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the group profile that is updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the group profile that is updated.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group profile that is updated.</p>
    #   @return [String]
    class UpdateGroupProfileOutput < Struct.new(
      :domain_id,
      :id,
      :status,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the Amazon DataZone domain where a project is being updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the project that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateProject</code> action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to be updated as part of the <code>UpdateProject</code> action.</p>
    #   @return [String]
    # @!attribute glossary_terms
    #   <p>The glossary terms to be updated as part of the <code>UpdateProject</code>
    #            action.</p>
    #   @return [Array<String>]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute environment_deployment_details
    #   <p>The environment deployment details of the project.</p>
    #   @return [Types::EnvironmentDeploymentDetails]
    # @!attribute user_parameters
    #   <p>The user parameters of the project.</p>
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    # @!attribute project_profile_version
    #   <p>The project profile version to which the project should be updated. You can only specify
    #            the following string for this parameter: <code>latest</code>.</p>
    #   @return [String]
    class UpdateProjectInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :glossary_terms,
      :domain_unit_id,
      :environment_deployment_details,
      :user_parameters,
      :project_profile_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a project is updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the project that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project that is to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project that is to be updated.</p>
    #   @return [String]
    # @!attribute project_status
    #   <p>The status of the project.</p>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Array<Types::ProjectDeletionError>]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the project.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the project was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the project was last updated.</p>
    #   @return [Time]
    # @!attribute glossary_terms
    #   <p>The glossary terms of the project that are to be updated.</p>
    #   @return [Array<String>]
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    # @!attribute project_profile_id
    #   <p>The ID of the project profile.</p>
    #   @return [String]
    # @!attribute user_parameters
    #   <p>The user parameters of the project.</p>
    #   @return [Array<Types::EnvironmentConfigurationUserParameter>]
    # @!attribute environment_deployment_details
    #   <p>The environment deployment details of the project.</p>
    #   @return [Types::EnvironmentDeploymentDetails]
    class UpdateProjectOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :project_status,
      :failure_reasons,
      :created_by,
      :created_at,
      :last_updated_at,
      :glossary_terms,
      :domain_unit_id,
      :project_profile_id,
      :user_parameters,
      :environment_deployment_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain where a project profile is to be updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of a project profile that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a project profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a project profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a project profile.</p>
    #   @return [String]
    # @!attribute environment_configurations
    #   <p>The environment configurations of a project profile.</p>
    #   @return [Array<Types::EnvironmentConfiguration>]
    # @!attribute domain_unit_identifier
    #   <p>The ID of the domain unit where a project profile is to be updated.</p>
    #   @return [String]
    class UpdateProjectProfileInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :status,
      :environment_configurations,
      :domain_unit_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The ID of the domain where project profile is to be updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the project profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a project profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the project profile.</p>
    #   @return [String]
    # @!attribute environment_configurations
    #   <p>The environment configurations of a project profile.</p>
    #   @return [Array<Types::EnvironmentConfiguration>]
    # @!attribute created_by
    #   <p>The user who created a project profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which a project profile is created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp at which a project profile was last updated.</p>
    #   @return [Time]
    # @!attribute domain_unit_id
    #   <p>The domain unit ID of the project profile to be updated.</p>
    #   @return [String]
    class UpdateProjectProfileOutput < Struct.new(
      :domain_id,
      :id,
      :name,
      :description,
      :status,
      :environment_configurations,
      :created_by,
      :created_at,
      :last_updated_at,
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The ID of the domain in which a rule is to be updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The ID of the rule that is to be updated</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scrope of the rule.</p>
    #   @return [Types::RuleScope]
    # @!attribute detail
    #   <p>The detail of the rule.</p>
    #   @return [Types::RuleDetail]
    # @!attribute include_child_domain_units
    #   <p>Specifies whether to update this rule in the child domain units.</p>
    #   @return [Boolean]
    class UpdateRuleInput < Struct.new(
      :domain_identifier,
      :identifier,
      :name,
      :description,
      :scope,
      :detail,
      :include_child_domain_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of the rule.</p>
    #   @return [Types::RuleTarget]
    # @!attribute action
    #   <p>The action of the rule.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The scope of the rule.</p>
    #   @return [Types::RuleScope]
    # @!attribute detail
    #   <p>The detail of the rule.</p>
    #   @return [Types::RuleDetail]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp at which the rule was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp at which the rule was last updated.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the rule.</p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p>The timestamp at which the rule was last updated.</p>
    #   @return [String]
    class UpdateRuleOutput < Struct.new(
      :identifier,
      :revision,
      :name,
      :rule_type,
      :target,
      :action,
      :scope,
      :detail,
      :description,
      :created_at,
      :updated_at,
      :created_by,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a subscription grant status is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the subscription grant the status of which is to be updated.</p>
    #   @return [String]
    # @!attribute asset_identifier
    #   <p>The identifier of the asset the subscription grant status of which is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateSubscriptionGrantStatus</code>
    #            action.</p>
    #   @return [String]
    # @!attribute failure_cause
    #   <p>Specifies the error message that is returned if the operation cannot be successfully
    #            completed.</p>
    #   @return [Types::FailureCause]
    # @!attribute target_name
    #   <p>The target name to be updated as part of the <code>UpdateSubscriptionGrantStatus</code>
    #            action.</p>
    #   @return [String]
    class UpdateSubscriptionGrantStatusInput < Struct.new(
      :domain_identifier,
      :identifier,
      :asset_identifier,
      :status,
      :failure_cause,
      :target_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the subscription grant.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone domain user who created the subscription grant status.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription grant status.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a subscription grant status is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription grant status was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription grant status is to be updated.</p>
    #   @return [Time]
    # @!attribute subscription_target_id
    #   <p>The identifier of the subscription target whose subscription grant status is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute granted_entity
    #   <p>The granted entity to be updated as part of the
    #               <code>UpdateSubscriptionGrantStatus</code> action.</p>
    #   @return [Types::GrantedEntity]
    # @!attribute status
    #   <p>The status to be updated as part of the <code>UpdateSubscriptionGrantStatus</code>
    #            action.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The details of the asset for which the subscription grant is created.</p>
    #   @return [Array<Types::SubscribedAsset>]
    # @!attribute subscription_id
    #   <p>The identifier of the subscription.</p>
    #   @deprecated
    #     Multiple subscriptions can exist for a single grant
    #   @return [String]
    class UpdateSubscriptionGrantStatusOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :created_at,
      :updated_at,
      :subscription_target_id,
      :granted_entity,
      :status,
      :assets,
      :subscription_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a subscription request is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the subscription request that is to be updated.</p>
    #   @return [String]
    # @!attribute request_reason
    #   <p>The reason for the <code>UpdateSubscriptionRequest</code> action.</p>
    #   @return [String]
    class UpdateSubscriptionRequestInput < Struct.new(
      :domain_identifier,
      :identifier,
      :request_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the subscription request that is to be updated.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription request.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription request.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a subscription request is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the subscription request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the subscription request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription request was updated.</p>
    #   @return [Time]
    # @!attribute request_reason
    #   <p>The reason for the <code>UpdateSubscriptionRequest</code> action.</p>
    #   @return [String]
    # @!attribute subscribed_principals
    #   <p>The subscribed principals of the subscription request.</p>
    #   @return [Array<Types::SubscribedPrincipal>]
    # @!attribute subscribed_listings
    #   <p>The subscribed listings of the subscription request.</p>
    #   @return [Array<Types::SubscribedListing>]
    # @!attribute reviewer_id
    #   <p>The identifier of the Amazon DataZone user who reviews the subscription request.</p>
    #   @return [String]
    # @!attribute decision_comment
    #   <p>The decision comment of the <code>UpdateSubscriptionRequest</code> action.</p>
    #   @return [String]
    # @!attribute existing_subscription_id
    #   <p>The ID of the existing subscription.</p>
    #   @return [String]
    # @!attribute metadata_forms
    #   <p>Metadata forms included in the subscription request.</p>
    #   @return [Array<Types::FormOutput>]
    class UpdateSubscriptionRequestOutput < Struct.new(
      :id,
      :created_by,
      :updated_by,
      :domain_id,
      :status,
      :created_at,
      :updated_at,
      :request_reason,
      :subscribed_principals,
      :subscribed_listings,
      :reviewer_id,
      :decision_comment,
      :existing_subscription_id,
      :metadata_forms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a subscription target is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The identifier of the environment in which a subscription target is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Identifier of the subscription target that is to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [String]
    # @!attribute authorized_principals
    #   <p>The authorized principals to be updated as part of the
    #               <code>UpdateSubscriptionTarget</code> action.</p>
    #   @return [Array<String>]
    # @!attribute applicable_asset_types
    #   <p>The applicable asset types to be updated as part of the
    #               <code>UpdateSubscriptionTarget</code> action.</p>
    #   @return [Array<String>]
    # @!attribute subscription_target_config
    #   <p>The configuration to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [Array<Types::SubscriptionTargetForm>]
    # @!attribute manage_access_role
    #   <p>The manage access role to be updated as part of the
    #               <code>UpdateSubscriptionTarget</code> action.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [String]
    class UpdateSubscriptionTargetInput < Struct.new(
      :domain_identifier,
      :environment_identifier,
      :identifier,
      :name,
      :authorized_principals,
      :applicable_asset_types,
      :subscription_target_config,
      :manage_access_role,
      :provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Identifier of the subscription target that is to be updated.</p>
    #   @return [String]
    # @!attribute authorized_principals
    #   <p>The authorized principals to be updated as part of the
    #               <code>UpdateSubscriptionTarget</code> action. Updates are supported in batches of 5 at a
    #            time.</p>
    #   @return [Array<String>]
    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a subscription target is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The identifier of the project in which a subscription target is to be updated.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of the environment in which a subscription target is to be
    #            updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The Amazon DataZone user who created the subscription target.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The Amazon DataZone user who updated the subscription target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when a subscription target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the subscription target was updated.</p>
    #   @return [Time]
    # @!attribute manage_access_role
    #   <p>The manage access role to be updated as part of the
    #               <code>UpdateSubscriptionTarget</code> action.</p>
    #   @return [String]
    # @!attribute applicable_asset_types
    #   <p>The applicable asset types to be updated as part of the
    #               <code>UpdateSubscriptionTarget</code> action.</p>
    #   @return [Array<String>]
    # @!attribute subscription_target_config
    #   <p>The configuration to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [Array<Types::SubscriptionTargetForm>]
    # @!attribute provider
    #   <p>The provider to be updated as part of the <code>UpdateSubscriptionTarget</code>
    #            action.</p>
    #   @return [String]
    class UpdateSubscriptionTargetOutput < Struct.new(
      :id,
      :authorized_principals,
      :domain_id,
      :project_id,
      :environment_id,
      :name,
      :type,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at,
      :manage_access_role,
      :applicable_asset_types,
      :subscription_target_config,
      :provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a user profile is updated.</p>
    #   @return [String]
    # @!attribute user_identifier
    #   <p>The identifier of the user whose user profile is to be updated.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user profile that are to be updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the user profile that are to be updated.</p>
    #   @return [String]
    class UpdateUserProfileInput < Struct.new(
      :domain_identifier,
      :user_identifier,
      :type,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the Amazon DataZone domain in which a user profile is updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the user profile.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the user profile.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the user profile in Amazon DataZone.</p>
    #   @return [Types::UserProfileDetails]
    class UpdateUserProfileOutput < Struct.new(
      :domain_id,
      :id,
      :type,
      :status,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the domain unit(s) whose projects can use this asset type while creating asset
    #          or asset revisions.</p>
    # @!attribute domain_unit_id
    #   <p>The ID of the domain unit.</p>
    #   @return [String]
    class UseAssetTypePolicyGrantDetail < Struct.new(
      :domain_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UserAssignment
      AUTOMATIC = 'AUTOMATIC'
      MANUAL = 'MANUAL'
    end

    module UserDesignation
      PROJECT_OWNER = 'PROJECT_OWNER'
      PROJECT_CONTRIBUTOR = 'PROJECT_CONTRIBUTOR'
      PROJECT_CATALOG_VIEWER = 'PROJECT_CATALOG_VIEWER'
      PROJECT_CATALOG_CONSUMER = 'PROJECT_CATALOG_CONSUMER'
      PROJECT_CATALOG_STEWARD = 'PROJECT_CATALOG_STEWARD'
    end

    # <p>The user details of a project member.</p>
    # @!attribute user_id
    #   <p>The identifier of the Amazon DataZone user.</p>
    #   @return [String]
    class UserDetails < Struct.new(
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user policy grant principal.</p>
    # @!attribute user_identifier
    #   <p>The user ID of the user policy grant principal.</p>
    #   @return [String]
    # @!attribute all_users_grant_filter
    #   <p>The all users grant filter of the user policy grant principal.</p>
    #   @return [Types::AllUsersGrantFilter]
    class UserPolicyGrantPrincipal < Struct.new(
      :user_identifier,
      :all_users_grant_filter,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class UserIdentifier < UserPolicyGrantPrincipal; end
      class AllUsersGrantFilter < UserPolicyGrantPrincipal; end
      class Unknown < UserPolicyGrantPrincipal; end
    end

    # <p>The details of the user profile in Amazon DataZone.</p>
    # @!attribute iam
    #   <p>The IAM details included in the user profile details.</p>
    #   @return [Types::IamUserProfileDetails]
    # @!attribute sso
    #   <p>The single sign-on details included in the user profile details.</p>
    #   @return [Types::SsoUserProfileDetails]
    class UserProfileDetails < Struct.new(
      :iam,
      :sso,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Iam < UserProfileDetails; end
      class Sso < UserProfileDetails; end
      class Unknown < UserProfileDetails; end
    end

    module UserProfileStatus
      ASSIGNED = 'ASSIGNED'
      NOT_ASSIGNED = 'NOT_ASSIGNED'
      ACTIVATED = 'ACTIVATED'
      DEACTIVATED = 'DEACTIVATED'
    end

    # <p>The details of the user profile.</p>
    # @!attribute domain_id
    #   <p>The ID of the Amazon DataZone domain of the user profile.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the user profile.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the user profile.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the user profile.</p>
    #   @return [Types::UserProfileDetails]
    class UserProfileSummary < Struct.new(
      :domain_id,
      :id,
      :type,
      :status,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UserProfileType
      IAM = 'IAM'
      SSO = 'SSO'
    end

    module UserSearchType
      SSO_USER = 'SSO_USER'
      DATAZONE_USER = 'DATAZONE_USER'
      DATAZONE_SSO_USER = 'DATAZONE_SSO_USER'
      DATAZONE_IAM_USER = 'DATAZONE_IAM_USER'
    end

    module UserType
      IAM_USER = 'IAM_USER'
      IAM_ROLE = 'IAM_ROLE'
      SSO_USER = 'SSO_USER'
    end

    # <p>The username and password of a connection.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute password
    #   <p>The password of a connection.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of a connection.</p>
    #   @return [String]
    class UsernamePassword < Struct.new(
      :password,
      :username,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
