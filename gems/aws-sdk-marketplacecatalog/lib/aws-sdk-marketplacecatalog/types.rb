# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceCatalog
  # This module contains the types returned by client operations.
  module Types

    # <p>Filters that apply to assessments performed against the AMI Security framework.</p>
    # @!attribute delivery_option_id
    #   <p>The unique ID of the delivery option whose AMI Security assessments you want to
    #               list.</p>
    #   @return [String]
    class AMISecurityFilters < Struct.new(
      nil,
      :delivery_option_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the resource assessed under the AMI Security framework.</p>
    # @!attribute delivery_option_id
    #   <p>The unique ID of the delivery option that was evaluated.</p>
    #   @return [String]
    class AMISecuritySummary < Struct.new(
      nil,
      :delivery_option_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access is denied.</p>
    #          <p>HTTP status code: 403</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on entity id of an AMI product.</p>
    # @!attribute value_list
    #   <p>A string array of unique entity id values to be filtered on.</p>
    #   @return [Array<String>]
    class AmiProductEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for AMI products. Client can add only one wildcard filter and a maximum of 8
    #             filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Unique identifier for the AMI product.</p>
    #   @return [Types::AmiProductEntityIdFilter]
    # @!attribute last_modified_date
    #   <p>The last date on which the AMI product was modified.</p>
    #   @return [Types::AmiProductLastModifiedDateFilter]
    # @!attribute product_title
    #   <p>The title of the AMI product.</p>
    #   @return [Types::AmiProductTitleFilter]
    # @!attribute visibility
    #   <p>The visibility of the AMI product.</p>
    #   @return [Types::AmiProductVisibilityFilter]
    class AmiProductFilters < Struct.new(
      nil,
      :entity_id,
      :last_modified_date,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering based on the last modified date of AMI products.</p>
    # @!attribute date_range
    #   <p>Dates between which the AMI product was last modified.</p>
    #   @return [Types::AmiProductLastModifiedDateFilterDateRange]
    class AmiProductLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains date range of the last modified date to be filtered on. You can optionally provide a <code>BeforeValue</code> and/or <code>AfterValue</code>. Both are inclusive.</p>
    # @!attribute after_value
    #   <p>Date after which the AMI product was last modified.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Date before which the AMI product was last modified.</p>
    #   @return [String]
    class AmiProductLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Objects that allows sorting on AMI products based on certain fields and sorting order.</p>
    # @!attribute sort_by
    #   <p>Field to sort the AMI products by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The default value is <code>DESCENDING</code>.</p>
    #   @return [String]
    class AmiProductSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains summarized information about an AMI product.</p>
    # @!attribute product_title
    #   <p>The title of the AMI product.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The lifecycle of the AMI product.</p>
    #   @return [String]
    class AmiProductSummary < Struct.new(
      nil,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on product title.</p>
    # @!attribute value_list
    #   <p>A string array of unique product title values to be filtered on.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>A string that will be the <code>wildCard</code> input for product tile filter. It matches the provided value as a substring in the actual value.</p>
    #   @return [String]
    class AmiProductTitleFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on the visibility of the product in the AWS Marketplace.</p>
    # @!attribute value_list
    #   <p>A string array of unique visibility values to be filtered on.</p>
    #   @return [Array<String>]
    class AmiProductVisibilityFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information about an assessment.</p>
    # @!attribute assessment_arn
    #   <p>The ARN associated with the assessment.</p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p>The unique ID of the assessment.</p>
    #   @return [String]
    # @!attribute framework_id
    #   <p>The identifier of the framework that was evaluated by this assessment, in the format
    #               <code>frameworkId@version</code> (for example,
    #               <code>AMISecurity@1.0</code>).</p>
    #   @return [String]
    # @!attribute assessment_target_summary
    #   <p>Identifies the entity or change set that was assessed.</p>
    #   @return [Types::AssessmentTargetSummary]
    # @!attribute framework_summary
    #   <p>The framework-specific details of the assessed resource. The set member corresponds
    #               to the framework identified by <code>FrameworkId</code>.</p>
    #   @return [Types::FrameworkSummary]
    # @!attribute assessment_result
    #   <p>The overall result of the assessment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the assessment was created, in ISO 8601 format
    #               (<code>2018-02-27T13:45:22Z</code>).</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time the assessment expires, in ISO 8601 format
    #               (<code>2018-02-27T13:45:22Z</code>).</p>
    #   @return [String]
    class AssessmentSummary < Struct.new(
      nil,
      :assessment_arn,
      :assessment_id,
      :framework_id,
      :assessment_target_summary,
      :framework_summary,
      :assessment_result,
      :created_at,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters assessment list results by the resource that was assessed. Provide an entity
    #             identifier, a change set identifier, or both.</p>
    # @!attribute entity_id
    #   <p>The unique ID of the entity whose assessments you want to list.</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>The unique ID of the change set that triggered the assessments you want to
    #               list.</p>
    #   @return [String]
    class AssessmentTargetFilter < Struct.new(
      nil,
      :entity_id,
      :change_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the entity or change set that was assessed.</p>
    # @!attribute entity_id
    #   <p>The unique ID of the entity that was assessed.</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>The unique ID of the change set that was assessed.</p>
    #   @return [String]
    class AssessmentTargetSummary < Struct.new(
      nil,
      :entity_id,
      :change_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_request_list
    #   <p>List of entity IDs and the catalogs the entities are present in.</p>
    #   @return [Array<Types::EntityRequest>]
    class BatchDescribeEntitiesRequest < Struct.new(
      nil,
      :entity_request_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_details
    #   <p>Details about each entity.</p>
    #   @return [Hash<String, Types::EntityDetail>]
    # @!attribute errors
    #   <p>A map of errors returned, with <code>EntityId</code> as the key and
    #                   <code>errorDetail</code> as the value.</p>
    #   @return [Hash<String, Types::BatchDescribeErrorDetail>]
    class BatchDescribeEntitiesResponse < Struct.new(
      nil,
      :entity_details,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains an error code and error message.</p>
    # @!attribute error_code
    #   <p>The error code returned.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message returned.</p>
    #   @return [String]
    class BatchDescribeErrorDetail < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>.</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>Required. The unique identifier of the <code>StartChangeSet</code> request that you
    #               want to cancel.</p>
    #   @return [String]
    class CancelChangeSetRequest < Struct.new(
      nil,
      :catalog,
      :change_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_set_id
    #   <p>The unique identifier for the change set referenced in this request.</p>
    #   @return [String]
    # @!attribute change_set_arn
    #   <p>The ARN associated with the change set referenced in this request.</p>
    #   @return [String]
    class CancelChangeSetResponse < Struct.new(
      nil,
      :change_set_id,
      :change_set_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the <code>ChangeType</code>, <code>Details</code>, and
    #                 <code>Entity</code>.</p>
    # @!attribute change_type
    #   <p>Change types are single string values that describe your intention for the change.
    #               Each change type is unique for each <code>EntityType</code> provided in the change's
    #               scope. For more information about change types available for single-AMI products, see
    #                   <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products">Working with single-AMI products</a>. Also, for more information about change
    #               types available for container-based products, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products">Working with container products</a>.</p>
    #   @return [String]
    # @!attribute entity
    #   <p>The entity to be changed.</p>
    #   @return [Types::Entity]
    # @!attribute entity_tags
    #   <p>The tags associated with the change.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute details
    #   <p>This object contains details specific to the change type of the requested change. For
    #               more information about change types available for single-AMI products, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products">Working with single-AMI products</a>. Also, for more information about change
    #               types available for container-based products, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products">Working with container products</a>.</p>
    #   @return [String]
    # @!attribute details_document
    #   <p>Alternative field that accepts a JSON value instead of a string for
    #                   <code>ChangeType</code> details. You can use either <code>Details</code> or
    #                   <code>DetailsDocument</code>, but not both.</p>
    #            <p>To download the "DetailsDocument" shapes, see the <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python">Python</a>
    #               and <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main">Java</a> shapes on GitHub.</p>
    #   @return [JSON]
    # @!attribute change_name
    #   <p>Optional name for the change.</p>
    #   @return [String]
    class Change < Struct.new(
      nil,
      :change_type,
      :entity,
      :entity_tags,
      :details,
      :details_document,
      :change_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a change set returned in a list of change sets when the
    #                 <code>ListChangeSets</code> action is called.</p>
    # @!attribute change_set_id
    #   <p>The unique identifier for a change set.</p>
    #   @return [String]
    # @!attribute change_set_arn
    #   <p>The ARN associated with the unique identifier for the change set referenced in this
    #               request.</p>
    #   @return [String]
    # @!attribute change_set_name
    #   <p>The non-unique name for the change set.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was
    #               started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was
    #               finished.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the change set.</p>
    #   @return [String]
    # @!attribute entity_id_list
    #   <p>This object is a list of entity IDs (string) that are a part of a change set. The
    #               entity ID list is a maximum of 20 entities. It must contain at least one entity.</p>
    #   @return [Array<String>]
    # @!attribute failure_code
    #   <p>Returned if the change set is in <code>FAILED</code> status. Can be either
    #                   <code>CLIENT_ERROR</code>, which means that there are issues with the request (see
    #               the <code>ErrorDetailList</code> of <code>DescribeChangeSet</code>), or
    #                   <code>SERVER_FAULT</code>, which means that there is a problem in the system, and
    #               you should retry your request.</p>
    #   @return [String]
    class ChangeSetSummaryListItem < Struct.new(
      nil,
      :change_set_id,
      :change_set_arn,
      :change_set_name,
      :start_time,
      :end_time,
      :status,
      :entity_id_list,
      :failure_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This object is a container for common summary information about the change. The
    #             summary doesn't contain the whole change structure.</p>
    # @!attribute change_type
    #   <p>The type of the change.</p>
    #   @return [String]
    # @!attribute entity
    #   <p>The entity to be changed.</p>
    #   @return [Types::Entity]
    # @!attribute details
    #   <p>This object contains details specific to the change type of the requested
    #               change.</p>
    #   @return [String]
    # @!attribute details_document
    #   <p>The JSON value of the details specific to the change type of the requested change.</p>
    #            <p>To download the "DetailsDocument" shapes, see the <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python">Python</a>
    #               and <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main">Java</a> shapes on GitHub.</p>
    #   @return [JSON]
    # @!attribute error_detail_list
    #   <p>An array of <code>ErrorDetail</code> objects associated with the change.</p>
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute change_name
    #   <p>Optional name for the change.</p>
    #   @return [String]
    class ChangeSummary < Struct.new(
      nil,
      :change_type,
      :entity,
      :details,
      :details_document,
      :error_detail_list,
      :change_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on entity id of a container product.</p>
    # @!attribute value_list
    #   <p>A string array of unique entity id values to be filtered on.</p>
    #   @return [Array<String>]
    class ContainerProductEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for container products. Client can add only one wildcard filter and a maximum of 8 filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Unique identifier for the container product.</p>
    #   @return [Types::ContainerProductEntityIdFilter]
    # @!attribute last_modified_date
    #   <p>The last date on which the container product was modified.</p>
    #   @return [Types::ContainerProductLastModifiedDateFilter]
    # @!attribute product_title
    #   <p>The title of the container product.</p>
    #   @return [Types::ContainerProductTitleFilter]
    # @!attribute visibility
    #   <p>The visibility of the container product.</p>
    #   @return [Types::ContainerProductVisibilityFilter]
    class ContainerProductFilters < Struct.new(
      nil,
      :entity_id,
      :last_modified_date,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering based on the last modified date of container products.</p>
    # @!attribute date_range
    #   <p>Dates between which the container product was last modified.</p>
    #   @return [Types::ContainerProductLastModifiedDateFilterDateRange]
    class ContainerProductLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains date range of the last modified date to be filtered on. You can optionally provide a <code>BeforeValue</code> and/or <code>AfterValue</code>. Both are inclusive.</p>
    # @!attribute after_value
    #   <p>Date after which the container product was last modified.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Date before which the container product was last modified.</p>
    #   @return [String]
    class ContainerProductLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Objects that allows sorting on container products based on certain fields and sorting order.</p>
    # @!attribute sort_by
    #   <p>Field to sort the container products by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The default value is <code>DESCENDING</code>.</p>
    #   @return [String]
    class ContainerProductSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains summarized information about a container product.</p>
    # @!attribute product_title
    #   <p>The title of the container product.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The lifecycle of the product.</p>
    #   @return [String]
    class ContainerProductSummary < Struct.new(
      nil,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on product title.</p>
    # @!attribute value_list
    #   <p>A string array of unique product title values to be filtered on.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>A string that will be the <code>wildCard</code> input for product tile filter. It matches the provided value as a substring in the actual value.</p>
    #   @return [String]
    class ContainerProductTitleFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on the visibility of the product in the AWS Marketplace.</p>
    # @!attribute value_list
    #   <p>A string array of unique visibility values to be filtered on.</p>
    #   @return [Array<String>]
    class ContainerProductVisibilityFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters that apply to assessments performed against the Container Security
    #             framework.</p>
    # @!attribute delivery_option_id
    #   <p>The unique ID of the delivery option whose Container Security assessments you want
    #               to list.</p>
    #   @return [String]
    class ContainerSecurityFilters < Struct.new(
      nil,
      :delivery_option_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the resource assessed under the Container Security framework.</p>
    # @!attribute delivery_option_id
    #   <p>The unique ID of the delivery option that was evaluated.</p>
    #   @return [String]
    class ContainerSecuritySummary < Struct.new(
      nil,
      :delivery_option_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of evaluating a single control as part of an assessment.</p>
    # @!attribute control_id
    #   <p>The unique ID of the control that was evaluated.</p>
    #   @return [String]
    # @!attribute control_assessment_result
    #   <p>The result of the control evaluation.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>An array of <code>ControlError</code> objects associated with the control
    #               evaluation.</p>
    #   @return [Array<Types::ControlError>]
    class ControlAssessment < Struct.new(
      nil,
      :control_id,
      :control_assessment_result,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error reported during the evaluation of a single control.</p>
    # @!attribute code
    #   <p>The error code that identifies the type of error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message for the error.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The list of name-value pairs that identify the resource or attribute that the error
    #               applies to.</p>
    #   @return [Array<Types::ErrorScope>]
    class ControlError < Struct.new(
      nil,
      :code,
      :message,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on entity id of a data product.</p>
    # @!attribute value_list
    #   <p>A string array of unique entity id values to be filtered on.</p>
    #   @return [Array<String>]
    class DataProductEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for data products. Client can add only one wildcard filter and a maximum of 8 filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Unique identifier for the data product.</p>
    #   @return [Types::DataProductEntityIdFilter]
    # @!attribute product_title
    #   <p>The title of the data product.</p>
    #   @return [Types::DataProductTitleFilter]
    # @!attribute visibility
    #   <p>The visibility of the data product.</p>
    #   @return [Types::DataProductVisibilityFilter]
    # @!attribute last_modified_date
    #   <p>The last date on which the data product was modified.</p>
    #   @return [Types::DataProductLastModifiedDateFilter]
    class DataProductFilters < Struct.new(
      nil,
      :entity_id,
      :product_title,
      :visibility,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering based on the last modified date of data products.</p>
    # @!attribute date_range
    #   <p>Dates between which the data product was last modified.</p>
    #   @return [Types::DataProductLastModifiedDateFilterDateRange]
    class DataProductLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains date range of the last modified date to be filtered on. You can optionally provide a <code>BeforeValue</code> and/or <code>AfterValue</code>. Both are inclusive.</p>
    # @!attribute after_value
    #   <p>Date after which the data product was last modified.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Date before which the data product was last modified.</p>
    #   @return [String]
    class DataProductLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Objects that allows sorting on data products based on certain fields and sorting order.</p>
    # @!attribute sort_by
    #   <p>Field to sort the data products by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The default value is <code>DESCENDING</code>.</p>
    #   @return [String]
    class DataProductSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains summarized information about a data product.</p>
    # @!attribute product_title
    #   <p>The title of the data product.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The lifecycle of the data product.</p>
    #   @return [String]
    class DataProductSummary < Struct.new(
      nil,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on product title.</p>
    # @!attribute value_list
    #   <p>A string array of unique product title values to be filtered on.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>A string that will be the <code>wildCard</code> input for product tile filter. It matches the provided value as a substring in the actual value.</p>
    #   @return [String]
    class DataProductTitleFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on the visibility of the product in the AWS Marketplace.</p>
    # @!attribute value_list
    #   <p>A string array of unique visibility values to be filtered on.</p>
    #   @return [Array<String>]
    class DataProductVisibilityFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the entity resource that is associated with the
    #               resource policy.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute assessment_identifier
    #   <p>The unique identifier of the assessment to describe. You can provide either
    #               the assessment ID (for example, <code>assessment-12345</code>) or the full
    #               assessment ARN (for example,
    #               <code>arn:aws:aws-marketplace:us-east-1::AWSMarketplace/Assessment/assessment-12345</code>).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the upper limit of <code>ControlAssessment</code> elements returned on a
    #               single page. If a value isn't provided, the default value is 50. Valid values range
    #               from 1 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. <code>null</code> if there are no more
    #               results.</p>
    #   @return [String]
    class DescribeAssessmentRequest < Struct.new(
      nil,
      :catalog,
      :assessment_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>The ARN associated with the assessment.</p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p>The unique ID of the assessment.</p>
    #   @return [String]
    # @!attribute framework_id
    #   <p>The identifier of the framework that was evaluated by this assessment, in the format
    #               <code>frameworkId@version</code> (for example,
    #               <code>AMISecurity@1.0</code>).</p>
    #   @return [String]
    # @!attribute assessment_target_summary
    #   <p>Identifies the entity or change set that was assessed.</p>
    #   @return [Types::AssessmentTargetSummary]
    # @!attribute framework_summary
    #   <p>The framework-specific details of the assessed resource. The set member corresponds
    #               to the framework identified by <code>FrameworkId</code>.</p>
    #   @return [Types::FrameworkSummary]
    # @!attribute assessment_result
    #   <p>The overall result of the assessment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the assessment was created, in ISO 8601 format
    #               (<code>2018-02-27T13:45:22Z</code>).</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time the assessment expires, in ISO 8601 format
    #               (<code>2018-02-27T13:45:22Z</code>).</p>
    #   @return [String]
    # @!attribute control_assessments
    #   <p>An array of <code>ControlAssessment</code> objects, each containing the result of an
    #               individual control evaluated as part of the assessment.</p>
    #   @return [Array<Types::ControlAssessment>]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. <code>null</code> if there are no more
    #               results.</p>
    #   @return [String]
    class DescribeAssessmentResponse < Struct.new(
      nil,
      :assessment_arn,
      :assessment_id,
      :framework_id,
      :assessment_target_summary,
      :framework_summary,
      :assessment_result,
      :created_at,
      :expires_at,
      :control_assessments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>Required. The unique identifier for the <code>StartChangeSet</code> request that you
    #               want to describe the details for.</p>
    #   @return [String]
    class DescribeChangeSetRequest < Struct.new(
      nil,
      :catalog,
      :change_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_set_id
    #   <p>Required. The unique identifier for the change set referenced in this request.</p>
    #   @return [String]
    # @!attribute change_set_arn
    #   <p>The ARN associated with the unique identifier for the change set referenced in this
    #               request.</p>
    #   @return [String]
    # @!attribute change_set_name
    #   <p>The optional name provided in the <code>StartChangeSet</code> request. If you do not
    #               provide a name, one is set by default.</p>
    #   @return [String]
    # @!attribute intent
    #   <p>The optional intent provided in the <code>StartChangeSet</code> request. If you do not
    #               provide an intent, <code>APPLY</code> is set by default.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request started.
    #           </p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request transitioned
    #               to a terminal state. The change cannot transition to a different state. Null if the
    #               request is not in a terminal state. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the change request.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>Returned if the change set is in <code>FAILED</code> status. Can be either
    #                   <code>CLIENT_ERROR</code>, which means that there are issues with the request (see
    #               the <code>ErrorDetailList</code>), or <code>SERVER_FAULT</code>, which means that there
    #               is a problem in the system, and you should retry your request.</p>
    #   @return [String]
    # @!attribute failure_description
    #   <p>Returned if there is a failure on the change set, but that failure is not related to
    #               any of the changes in the request.</p>
    #   @return [String]
    # @!attribute change_set
    #   <p>An array of <code>ChangeSummary</code> objects.</p>
    #   @return [Array<Types::ChangeSummary>]
    class DescribeChangeSetResponse < Struct.new(
      nil,
      :change_set_id,
      :change_set_arn,
      :change_set_name,
      :intent,
      :start_time,
      :end_time,
      :status,
      :failure_code,
      :failure_description,
      :change_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>Required. The unique ID of the entity to describe.</p>
    #   @return [String]
    class DescribeEntityRequest < Struct.new(
      nil,
      :catalog,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_type
    #   <p>The named type of the entity, in the format of <code>EntityType@Version</code>.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The identifier of the entity, in the format of
    #               <code>EntityId@RevisionId</code>.</p>
    #   @return [String]
    # @!attribute entity_arn
    #   <p>The ARN associated to the unique identifier for the entity referenced in this
    #               request.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The last modified date of the entity, in ISO 8601 format
    #               (2018-02-27T13:45:22Z).</p>
    #   @return [String]
    # @!attribute details
    #   <p>This stringified JSON object includes the details of the entity.</p>
    #   @return [String]
    # @!attribute details_document
    #   <p>The JSON value of the details specific to the entity.</p>
    #            <p>To download "DetailsDocument" shapes, see the <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python">Python</a>
    #               and <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main">Java</a> shapes on GitHub.</p>
    #   @return [JSON]
    class DescribeEntityResponse < Struct.new(
      nil,
      :entity_type,
      :entity_identifier,
      :entity_arn,
      :last_modified_date,
      :details,
      :details_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entity contains data that describes your product, its supported features, and how
    #             it can be used or launched by your customer. </p>
    # @!attribute type
    #   <p>The type of entity.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier for the entity.</p>
    #   @return [String]
    class Entity < Struct.new(
      nil,
      :type,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains metadata and details about the entity.</p>
    # @!attribute entity_type
    #   <p>The entity type of the entity, in the format of
    #               <code>EntityType@Version</code>.</p>
    #   @return [String]
    # @!attribute entity_arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The ID of the entity, in the format of <code>EntityId@RevisionId</code>.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The last time the entity was modified.</p>
    #   @return [String]
    # @!attribute details_document
    #   <p>An object that contains all the details of the entity.</p>
    #   @return [JSON]
    class EntityDetail < Struct.new(
      nil,
      :entity_type,
      :entity_arn,
      :entity_identifier,
      :last_modified_date,
      :details_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains entity ID and the catalog in which the entity is present.</p>
    # @!attribute catalog
    #   <p>The name of the catalog the entity is present in. The only value at this time is
    #                   <code>AWSMarketplace</code>.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    class EntityRequest < Struct.new(
      nil,
      :catalog,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This object is a container for common summary information about the entity. The
    #             summary doesn't contain the whole entity structure, but it does contain information
    #             common across all entities.</p>
    # @!attribute name
    #   <p>The name for the entity. This value is not unique. It is defined by the seller.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the entity.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The unique identifier for the entity.</p>
    #   @return [String]
    # @!attribute entity_arn
    #   <p>The ARN associated with the unique identifier for the entity.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The last time the entity was published, using ISO 8601 format
    #               (2018-02-27T13:45:22Z).</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility status of the entity to buyers. This value can be <code>Public</code>
    #               (everyone can view the entity), <code>Limited</code> (the entity is visible to limited
    #               accounts only), or <code>Restricted</code> (the entity was published and then
    #               unpublished and only existing buyers can view it). </p>
    #   @return [String]
    # @!attribute ami_product_summary
    #   <p>An object that contains summary information about the AMI product.</p>
    #   @return [Types::AmiProductSummary]
    # @!attribute container_product_summary
    #   <p>An object that contains summary information about the container product.</p>
    #   @return [Types::ContainerProductSummary]
    # @!attribute data_product_summary
    #   <p>An object that contains summary information about the data product.</p>
    #   @return [Types::DataProductSummary]
    # @!attribute saa_s_product_summary
    #   <p>An object that contains summary information about the SaaS product.</p>
    #   @return [Types::SaaSProductSummary]
    # @!attribute offer_summary
    #   <p>An object that contains summary information about the offer.</p>
    #   @return [Types::OfferSummary]
    # @!attribute resale_authorization_summary
    #   <p>An object that contains summary information about the Resale Authorization.</p>
    #   @return [Types::ResaleAuthorizationSummary]
    # @!attribute machine_learning_product_summary
    #   <p>A summary of a machine learning product.</p>
    #   @return [Types::MachineLearningProductSummary]
    # @!attribute offer_set_summary
    #   <p>An object that contains summary information about the offer set.</p>
    #   @return [Types::OfferSetSummary]
    class EntitySummary < Struct.new(
      nil,
      :name,
      :entity_type,
      :entity_id,
      :entity_arn,
      :last_modified_date,
      :visibility,
      :ami_product_summary,
      :container_product_summary,
      :data_product_summary,
      :saa_s_product_summary,
      :offer_summary,
      :resale_authorization_summary,
      :machine_learning_product_summary,
      :offer_set_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields per entity type.</p>
    # @!attribute data_product_filters
    #   <p>A filter for data products.</p>
    #   @return [Types::DataProductFilters]
    # @!attribute saa_s_product_filters
    #   <p>A filter for SaaS products.</p>
    #   @return [Types::SaaSProductFilters]
    # @!attribute ami_product_filters
    #   <p>A filter for AMI products.</p>
    #   @return [Types::AmiProductFilters]
    # @!attribute offer_filters
    #   <p>A filter for offers.</p>
    #   @return [Types::OfferFilters]
    # @!attribute container_product_filters
    #   <p>A filter for container products.</p>
    #   @return [Types::ContainerProductFilters]
    # @!attribute resale_authorization_filters
    #   <p>A filter for Resale Authorizations.</p>
    #   @return [Types::ResaleAuthorizationFilters]
    # @!attribute machine_learning_product_filters
    #   <p>The filters that you can use with the ListEntities operation to filter machine learning products.
    #               You can filter by <code>EntityId</code>, <code>astModifiedDate</code>, <code>ProductTitle</code>, and <code>Visibility</code>.</p>
    #   @return [Types::MachineLearningProductFilters]
    # @!attribute offer_set_filters
    #   <p>A filter for offer sets.</p>
    #   @return [Types::OfferSetFilters]
    class EntityTypeFilters < Struct.new(
      :data_product_filters,
      :saa_s_product_filters,
      :ami_product_filters,
      :offer_filters,
      :container_product_filters,
      :resale_authorization_filters,
      :machine_learning_product_filters,
      :offer_set_filters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DataProductFilters < EntityTypeFilters; end
      class SaaSProductFilters < EntityTypeFilters; end
      class AmiProductFilters < EntityTypeFilters; end
      class OfferFilters < EntityTypeFilters; end
      class ContainerProductFilters < EntityTypeFilters; end
      class ResaleAuthorizationFilters < EntityTypeFilters; end
      class MachineLearningProductFilters < EntityTypeFilters; end
      class OfferSetFilters < EntityTypeFilters; end
      class Unknown < EntityTypeFilters; end
    end

    # <p>Object containing all the sort fields per entity type.</p>
    # @!attribute data_product_sort
    #   <p>A sort for data products.</p>
    #   @return [Types::DataProductSort]
    # @!attribute saa_s_product_sort
    #   <p>A sort for SaaS products.</p>
    #   @return [Types::SaaSProductSort]
    # @!attribute ami_product_sort
    #   <p>A sort for AMI products.</p>
    #   @return [Types::AmiProductSort]
    # @!attribute offer_sort
    #   <p>A sort for offers.</p>
    #   @return [Types::OfferSort]
    # @!attribute container_product_sort
    #   <p>A sort for container products.</p>
    #   @return [Types::ContainerProductSort]
    # @!attribute resale_authorization_sort
    #   <p>A sort for Resale Authorizations.</p>
    #   @return [Types::ResaleAuthorizationSort]
    # @!attribute machine_learning_product_sort
    #   <p>The sort options for machine learning products.</p>
    #   @return [Types::MachineLearningProductSort]
    # @!attribute offer_set_sort
    #   <p>A sort for offer sets.</p>
    #   @return [Types::OfferSetSort]
    class EntityTypeSort < Struct.new(
      :data_product_sort,
      :saa_s_product_sort,
      :ami_product_sort,
      :offer_sort,
      :container_product_sort,
      :resale_authorization_sort,
      :machine_learning_product_sort,
      :offer_set_sort,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DataProductSort < EntityTypeSort; end
      class SaaSProductSort < EntityTypeSort; end
      class AmiProductSort < EntityTypeSort; end
      class OfferSort < EntityTypeSort; end
      class ContainerProductSort < EntityTypeSort; end
      class ResaleAuthorizationSort < EntityTypeSort; end
      class MachineLearningProductSort < EntityTypeSort; end
      class OfferSetSort < EntityTypeSort; end
      class Unknown < EntityTypeSort; end
    end

    # <p>Details about the error.</p>
    # @!attribute error_code
    #   <p>The error code that identifies the type of error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message for the error.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A name-value pair that identifies the resource or attribute that a
    #             <code>ControlError</code> applies to.</p>
    # @!attribute name
    #   <p>The name of the resource field the error applies to (for example,
    #               <code>AMI_ID</code>, <code>FILE_PATH</code>, or <code>PACKAGE_NAME</code>).</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the resource field the error applies to.</p>
    #   @return [String]
    class ErrorScope < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter object, used to optionally filter results from calls to the
    #                 <code>ListEntities</code> and <code>ListChangeSets</code> actions.</p>
    # @!attribute name
    #   <p>For <code>ListEntities</code>, the supported value for this is an
    #                   <code>EntityId</code>.</p>
    #            <p>For <code>ListChangeSets</code>, the supported values are as follows:</p>
    #   @return [String]
    # @!attribute value_list
    #   <p>
    #               <code>ListEntities</code> - This is a list of unique <code>EntityId</code>s.</p>
    #            <p>
    #               <code>ListChangeSets</code> - The supported filter names and associated
    #                   <code>ValueList</code>s is as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ChangeSetName</code> - The supported <code>ValueList</code> is a list of
    #                       non-unique <code>ChangeSetName</code>s. These are defined when you call the
    #                           <code>StartChangeSet</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - The supported <code>ValueList</code> is a list of
    #                       statuses for all change set requests.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EntityId</code> - The supported <code>ValueList</code> is a list of
    #                       unique <code>EntityId</code>s.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BeforeStartTime</code> - The supported <code>ValueList</code> is a list
    #                       of all change sets that started before the filter value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AfterStartTime</code> - The supported <code>ValueList</code> is a list
    #                       of all change sets that started after the filter value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BeforeEndTime</code> - The supported <code>ValueList</code> is a list of
    #                       all change sets that ended before the filter value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AfterEndTime</code> - The supported <code>ValueList</code> is a list of
    #                       all change sets that ended after the filter value.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Framework-specific filters used to scope <code>ListAssessments</code> results. Set
    #             exactly one member, corresponding to the framework you want to filter by.</p>
    # @!attribute ami_security_filters
    #   <p>Filters that apply to assessments performed against the AMI Security framework.</p>
    #   @return [Types::AMISecurityFilters]
    # @!attribute container_security_filters
    #   <p>Filters that apply to assessments performed against the Container Security
    #               framework.</p>
    #   @return [Types::ContainerSecurityFilters]
    class FrameworkFilters < Struct.new(
      :ami_security_filters,
      :container_security_filters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AMISecurityFilters < FrameworkFilters; end
      class ContainerSecurityFilters < FrameworkFilters; end
      class Unknown < FrameworkFilters; end
    end

    # <p>The framework-specific details of the assessed resource. Exactly one member is set,
    #             corresponding to the framework that was assessed.</p>
    # @!attribute ami_security_summary
    #   <p>The details of the resource assessed under the AMI Security framework.</p>
    #   @return [Types::AMISecuritySummary]
    # @!attribute container_security_summary
    #   <p>The details of the resource assessed under the Container Security framework.</p>
    #   @return [Types::ContainerSecuritySummary]
    class FrameworkSummary < Struct.new(
      :ami_security_summary,
      :container_security_summary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AMISecuritySummary < FrameworkSummary; end
      class ContainerSecuritySummary < FrameworkSummary; end
      class Unknown < FrameworkSummary; end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the entity resource that is associated with the
    #               resource policy.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy document to set; formatted in JSON.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an internal service exception.</p>
    #          <p>HTTP status code: 500</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute framework_id
    #   <p>The unique identifier of a framework. When specified, only assessments performed
    #               against this framework are returned. For example, <code>AMISecurity</code>.</p>
    #   @return [String]
    # @!attribute assessment_target_filter
    #   <p>Filters the list of assessments to those performed against a specific entity or
    #               change set.</p>
    #   @return [Types::AssessmentTargetFilter]
    # @!attribute framework_filters
    #   <p>Framework-specific filters. Set exactly one member to filter results to assessments
    #               performed against that framework.</p>
    #   @return [Types::FrameworkFilters]
    # @!attribute max_results
    #   <p>Specifies the upper limit of the elements on a single page. If a value isn't provided,
    #               the default value is 20. Valid values range from 1 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. <code>null</code> if there are no more
    #               results.</p>
    #   @return [String]
    class ListAssessmentsRequest < Struct.new(
      nil,
      :catalog,
      :framework_id,
      :assessment_target_filter,
      :framework_filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_summary_list
    #   <p>An array of <code>AssessmentSummary</code> objects.</p>
    #   @return [Array<Types::AssessmentSummary>]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. <code>null</code> if there are no more
    #               results.</p>
    #   @return [String]
    class ListAssessmentsResponse < Struct.new(
      nil,
      :assessment_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute filter_list
    #   <p>An array of filter objects.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    #   @return [Types::Sort]
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call. This value must be provided
    #               in the next call to retrieve the next set of results. By default, this value is
    #               20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #               results.</p>
    #   @return [String]
    class ListChangeSetsRequest < Struct.new(
      nil,
      :catalog,
      :filter_list,
      :sort,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_set_summary_list
    #   <p> Array of <code>ChangeSetSummaryListItem</code> objects.</p>
    #   @return [Array<Types::ChangeSetSummaryListItem>]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #   @return [String]
    class ListChangeSetsResponse < Struct.new(
      nil,
      :change_set_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of entities to
    #               retrieve. Valid
    #               values are: <code>AmiProduct</code>, <code>ContainerProduct</code>,
    #                   <code>DataProduct</code>, <code>SaaSProduct</code>, <code>ProcurementPolicy</code>,
    #                   <code>Experience</code>, <code>Audience</code>, <code>BrandingSettings</code>,
    #                   <code>Offer</code>, <code>OfferSet</code>, <code>Seller</code>,
    #               <code>ResaleAuthorization</code>, <code>Solution</code>.</p>
    #   @return [String]
    # @!attribute filter_list
    #   <p>An array of filter objects. Each filter object contains two attributes,
    #                   <code>filterName</code> and <code>filterValues</code>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    #   @return [Types::Sort]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the upper limit of the elements on a single page. If a value isn't provided,
    #               the default value is 20.</p>
    #   @return [Integer]
    # @!attribute ownership_type
    #   <p>Filters the returned set of entities based on their owner. The default is
    #                   <code>SELF</code>. To list entities shared with you
    #               through AWS Resource Access Manager (AWS RAM), set to <code>SHARED</code>. Entities shared through the AWS Marketplace
    #               Catalog API <code>PutResourcePolicy</code> operation can't be discovered through the
    #                   <code>SHARED</code> parameter.</p>
    #   @return [String]
    # @!attribute entity_type_filters
    #   <p>A Union object containing filter shapes for all <code>EntityType</code>s. Each
    #                   <code>EntityTypeFilter</code> shape will have filters applicable for that
    #                   <code>EntityType</code> that can be used to search or filter entities.</p>
    #   @return [Types::EntityTypeFilters]
    # @!attribute entity_type_sort
    #   <p>A Union object containing <code>Sort</code> shapes for all <code>EntityType</code>s.
    #               Each <code>EntityTypeSort</code> shape will have <code>SortBy</code> and
    #                   <code>SortOrder</code> applicable for fields on that <code>EntityType</code>. This
    #               can be used to sort the results of the filter query.</p>
    #   @return [Types::EntityTypeSort]
    class ListEntitiesRequest < Struct.new(
      nil,
      :catalog,
      :entity_type,
      :filter_list,
      :sort,
      :next_token,
      :max_results,
      :ownership_type,
      :entity_type_filters,
      :entity_type_sort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_summary_list
    #   <p>Array of <code>EntitySummary</code> objects.</p>
    #   @return [Array<Types::EntitySummary>]
    # @!attribute next_token
    #   <p>The value of the next token if it exists. Null if there is no more result.</p>
    #   @return [String]
    class ListEntitiesResponse < Struct.new(
      nil,
      :entity_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required. The Amazon Resource Name (ARN) associated with the resource you want to list
    #               tags on.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required. The ARN associated with the resource you want to list tags on.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Required. A list of objects specifying each key name and value. Number of objects
    #               allowed: 1-50.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter for machine learning product entity IDs.</p>
    # @!attribute value_list
    #   <p>A list of entity IDs to filter by. The operation returns machine learning products with entity IDs that match the values in this list.</p>
    #   @return [Array<String>]
    class MachineLearningProductEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filters that you can use with the ListEntities operation to filter machine learning products.
    #             You can filter by <code>EntityId</code>, <code>astModifiedDate</code>, <code>ProductTitle</code>, and <code>Visibility</code>.</p>
    # @!attribute entity_id
    #   <p>Filter machine learning products by their entity IDs.</p>
    #   @return [Types::MachineLearningProductEntityIdFilter]
    # @!attribute last_modified_date
    #   <p>Filter machine learning products by their last modified date.</p>
    #   @return [Types::MachineLearningProductLastModifiedDateFilter]
    # @!attribute product_title
    #   <p>Filter machine learning products by their product titles.</p>
    #   @return [Types::MachineLearningProductTitleFilter]
    # @!attribute visibility
    #   <p>Filter machine learning products by their visibility status.</p>
    #   @return [Types::MachineLearningProductVisibilityFilter]
    class MachineLearningProductFilters < Struct.new(
      nil,
      :entity_id,
      :last_modified_date,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter for machine learning product last modified date.</p>
    # @!attribute date_range
    #   <p>A date range to filter by. The operation returns machine learning products with last modified dates that fall within this range.</p>
    #   @return [Types::MachineLearningProductLastModifiedDateFilterDateRange]
    class MachineLearningProductLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A date range for filtering machine learning products by their last modified date.</p>
    # @!attribute after_value
    #   <p>The start date (inclusive) of the date range. The operation returns machine learning products with last modified dates on or after this date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>The end date (inclusive) of the date range. The operation returns machine learning products with last modified dates on or before this date.</p>
    #   @return [String]
    class MachineLearningProductLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sort options for machine learning products.</p>
    # @!attribute sort_by
    #   <p>The field to sort by. Valid values: <code>EntityId</code>, <code>LastModifiedDate</code>, <code>ProductTitle</code>, and <code>Visibility</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order. Valid values are <code>ASC</code> (ascending) and <code>DESC</code> (descending).</p>
    #   @return [String]
    class MachineLearningProductSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a machine learning product.</p>
    # @!attribute product_title
    #   <p>The title of the machine learning product.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility status of the machine learning product. Valid values are <code>Limited</code>, <code>Public</code>, <code>Restricted</code>, and <code>Draft</code>.</p>
    #   @return [String]
    class MachineLearningProductSummary < Struct.new(
      nil,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter for machine learning product titles.</p>
    # @!attribute value_list
    #   <p>A list of product titles to filter by. The operation returns machine learning products with titles that exactly match the values in this list.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>A wildcard value to filter product titles. The operation returns machine learning products with titles that match this wildcard pattern.</p>
    #   @return [String]
    class MachineLearningProductTitleFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter for machine learning product visibility status.</p>
    # @!attribute value_list
    #   <p>A list of visibility values to filter by. The operation returns machine learning products with visibility status that match the values in this list.</p>
    #   @return [Array<String>]
    class MachineLearningProductVisibilityFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>AvailabilityEndDate</code> of an offer.</p>
    # @!attribute date_range
    #   <p>Allows filtering on the <code>AvailabilityEndDate</code> of an offer with date range as input.</p>
    #   @return [Types::OfferAvailabilityEndDateFilterDateRange]
    class OfferAvailabilityEndDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>AvailabilityEndDate</code> of an offer with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on the <code>AvailabilityEndDate</code> of an offer after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on the <code>AvailabilityEndDate</code> of an offer before a date.</p>
    #   @return [String]
    class OfferAvailabilityEndDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>BuyerAccounts</code> of an offer.</p>
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>BuyerAccounts</code> of an offer with wild card input.</p>
    #   @return [String]
    class OfferBuyerAccountsFilter < Struct.new(
      nil,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>CreatedBySource</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>CreatedBySource</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferCreatedBySourceFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the entity id of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on entity id of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for offers entity. Client can add only one wildcard filter and a maximum of 8 filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Allows filtering on <code>EntityId</code> of an offer.</p>
    #   @return [Types::OfferEntityIdFilter]
    # @!attribute name
    #   <p>Allows filtering on the <code>Name</code> of an offer.</p>
    #   @return [Types::OfferNameFilter]
    # @!attribute product_id
    #   <p>Allows filtering on the <code>ProductId</code> of an offer.</p>
    #   @return [Types::OfferProductIdFilter]
    # @!attribute resale_authorization_id
    #   <p>Allows filtering on the <code>ResaleAuthorizationId</code> of an offer.</p>
    #            <note>
    #               <p>Not all offers have a <code>ResaleAuthorizationId</code>. The response will only
    #                   include offers for which you have permissions.</p>
    #            </note>
    #   @return [Types::OfferResaleAuthorizationIdFilter]
    # @!attribute release_date
    #   <p>Allows filtering on the <code>ReleaseDate</code> of an offer.</p>
    #   @return [Types::OfferReleaseDateFilter]
    # @!attribute availability_end_date
    #   <p>Allows filtering on the <code>AvailabilityEndDate</code> of an offer.</p>
    #   @return [Types::OfferAvailabilityEndDateFilter]
    # @!attribute buyer_accounts
    #   <p>Allows filtering on the <code>BuyerAccounts</code> of an offer.</p>
    #   @return [Types::OfferBuyerAccountsFilter]
    # @!attribute state
    #   <p>Allows filtering on the <code>State</code> of an offer.</p>
    #   @return [Types::OfferStateFilter]
    # @!attribute targeting
    #   <p>Allows filtering on the <code>Targeting</code> of an offer.</p>
    #   @return [Types::OfferTargetingFilter]
    # @!attribute last_modified_date
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer.</p>
    #   @return [Types::OfferLastModifiedDateFilter]
    # @!attribute offer_set_id
    #   <p>Allows filtering on the <code>OfferSetId</code> of an offer.</p>
    #   @return [Types::OfferSetIdFilter]
    # @!attribute target_agreement_id
    #   <p>Allows filtering on the <code>TargetAgreementId</code> of an offer.</p>
    #   @return [Types::OfferTargetAgreementIdFilter]
    # @!attribute target_agreement_intent
    #   <p>Allows filtering on the <code>TargetAgreementIntent</code> of an offer.</p>
    #   @return [Types::OfferTargetAgreementIntentFilter]
    # @!attribute created_by_source
    #   <p>Allows filtering on the <code>CreatedBySource</code> of an offer.</p>
    #   @return [Types::OfferCreatedBySourceFilter]
    class OfferFilters < Struct.new(
      nil,
      :entity_id,
      :name,
      :product_id,
      :resale_authorization_id,
      :release_date,
      :availability_end_date,
      :buyer_accounts,
      :state,
      :targeting,
      :last_modified_date,
      :offer_set_id,
      :target_agreement_id,
      :target_agreement_intent,
      :created_by_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>LastModifiedDate</code> of an offer.</p>
    # @!attribute date_range
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer with date range as input.</p>
    #   @return [Types::OfferLastModifiedDateFilterDateRange]
    class OfferLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>LastModifiedDate</code> of an offer with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer before a date.</p>
    #   @return [String]
    class OfferLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>Name</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>Name</code> of an offer with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>Name</code> of an offer with wild card input.</p>
    #   @return [String]
    class OfferNameFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ProductId</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ProductId</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferProductIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ReleaseDate</code> of an offer.</p>
    # @!attribute date_range
    #   <p>Allows filtering on the <code>ReleaseDate</code> of an offer with date range as input.</p>
    #   @return [Types::OfferReleaseDateFilterDateRange]
    class OfferReleaseDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ReleaseDate</code> of an offer with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on the <code>ReleaseDate</code> of offers after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on the <code>ReleaseDate</code> of offers before a date.</p>
    #   @return [String]
    class OfferReleaseDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ResaleAuthorizationId</code> of an offer.</p>
    #          <note>
    #             <p>Not all offers have a <code>ResaleAuthorizationId</code>. The response will only
    #                 include offers for which you have permissions.</p>
    #          </note>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ResaleAuthorizationId</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferResaleAuthorizationIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>AssociatedOfferIds</code> of an offer set.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>AssociatedOfferIds</code> of an offer set with list input.</p>
    #   @return [Array<String>]
    class OfferSetAssociatedOfferIdsFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the entity id of an offer set.</p>
    # @!attribute value_list
    #   <p>Allows filtering on entity id of an offer set with list input.</p>
    #   @return [Array<String>]
    class OfferSetEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for offer sets entity. Client can add a maximum of 8 filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Allows filtering on <code>EntityId</code> of an offer set.</p>
    #   @return [Types::OfferSetEntityIdFilter]
    # @!attribute name
    #   <p>Allows filtering on the <code>Name</code> of an offer set.</p>
    #   @return [Types::OfferSetNameFilter]
    # @!attribute state
    #   <p>Allows filtering on the <code>State</code> of an offer set.</p>
    #   @return [Types::OfferSetStateFilter]
    # @!attribute release_date
    #   <p>Allows filtering on the <code>ReleaseDate</code> of an offer set.</p>
    #   @return [Types::OfferSetReleaseDateFilter]
    # @!attribute associated_offer_ids
    #   <p>Allows filtering on the <code>AssociatedOfferIds</code> of an offer set.</p>
    #   @return [Types::OfferSetAssociatedOfferIdsFilter]
    # @!attribute solution_id
    #   <p>Allows filtering on the <code>SolutionId</code> of an offer set.</p>
    #   @return [Types::OfferSetSolutionIdFilter]
    # @!attribute last_modified_date
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer set.</p>
    #   @return [Types::OfferSetLastModifiedDateFilter]
    class OfferSetFilters < Struct.new(
      nil,
      :entity_id,
      :name,
      :state,
      :release_date,
      :associated_offer_ids,
      :solution_id,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>OfferSetId</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>OfferSetId</code> of an offer.</p>
    #   @return [Array<String>]
    class OfferSetIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>LastModifiedDate</code> of an offer set.</p>
    # @!attribute date_range
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer set with date range as input.</p>
    #   @return [Types::OfferSetLastModifiedDateFilterDateRange]
    class OfferSetLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>LastModifiedDate</code> of an offer set with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer set after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of an offer set before a date.</p>
    #   @return [String]
    class OfferSetLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>Name</code> of an offer set.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>Name</code> of an offer set with list input.</p>
    #   @return [Array<String>]
    class OfferSetNameFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ReleaseDate</code> of an offer set.</p>
    # @!attribute date_range
    #   <p>Allows filtering on the <code>ReleaseDate</code> of an offer set with date range as input.</p>
    #   @return [Types::OfferSetReleaseDateFilterDateRange]
    class OfferSetReleaseDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ReleaseDate</code> of an offer set with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on the <code>ReleaseDate</code> of offer set after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on the <code>ReleaseDate</code> of offer set before a date.</p>
    #   @return [String]
    class OfferSetReleaseDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>SolutionId</code> of an offer set.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>SolutionId</code> of an offer set with list input.</p>
    #   @return [Array<String>]
    class OfferSetSolutionIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows to sort offer sets.</p>
    # @!attribute sort_by
    #   <p>Allows to sort offer sets.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Allows to sort offer sets.</p>
    #   @return [String]
    class OfferSetSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>State</code> of an offer set.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>State</code> of an offer set with list input.</p>
    #   @return [Array<String>]
    class OfferSetStateFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information about an offer set.</p>
    # @!attribute name
    #   <p>The name of the offer set.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the offer set.</p>
    #   @return [String]
    # @!attribute release_date
    #   <p>The release date of the offer set.</p>
    #   @return [String]
    # @!attribute associated_offer_ids
    #   <p>The list of offer IDs associated with the offer set.</p>
    #   @return [Array<String>]
    # @!attribute solution_id
    #   <p>The solution ID associated with the offer set.</p>
    #   @return [String]
    class OfferSetSummary < Struct.new(
      nil,
      :name,
      :state,
      :release_date,
      :associated_offer_ids,
      :solution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows to sort offers.</p>
    # @!attribute sort_by
    #   <p>Allows to sort offers.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Allows to sort offers.</p>
    #   @return [String]
    class OfferSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>State</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>State</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferStateFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information about an offer.</p>
    # @!attribute name
    #   <p>The name of the offer.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product ID of the offer.</p>
    #   @return [String]
    # @!attribute resale_authorization_id
    #   <p>The ResaleAuthorizationId of the offer.</p>
    #   @return [String]
    # @!attribute release_date
    #   <p>The release date of the offer.</p>
    #   @return [String]
    # @!attribute availability_end_date
    #   <p>The availability end date of the offer.</p>
    #   @return [String]
    # @!attribute buyer_accounts
    #   <p>The buyer accounts in the offer.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>The status of the offer.</p>
    #   @return [String]
    # @!attribute targeting
    #   <p>The targeting in the offer.</p>
    #   @return [Array<String>]
    # @!attribute offer_set_id
    #   <p>The offer set ID of the offer.</p>
    #   @return [String]
    # @!attribute target_agreement_id
    #   <p>The target agreement ID of the offer.</p>
    #   @return [String]
    # @!attribute target_agreement_intent
    #   <p>The target agreement intent of the offer.</p>
    #   @return [String]
    # @!attribute created_by_source
    #   <p>The creation source of the offer.</p>
    #   @return [String]
    class OfferSummary < Struct.new(
      nil,
      :name,
      :product_id,
      :resale_authorization_id,
      :release_date,
      :availability_end_date,
      :buyer_accounts,
      :state,
      :targeting,
      :offer_set_id,
      :target_agreement_id,
      :target_agreement_intent,
      :created_by_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>TargetAgreementId</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>TargetAgreementId</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferTargetAgreementIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>TargetAgreementIntent</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>TargetAgreementIntent</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferTargetAgreementIntentFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>Targeting</code> of an offer.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>Targeting</code> of an offer with list input.</p>
    #   @return [Array<String>]
    class OfferTargetingFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the entity resource you want to associate with a
    #               resource policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy document to set; formatted in JSON.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutResourcePolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on <code>AvailabilityEndDate</code> of a ResaleAuthorization.</p>
    # @!attribute date_range
    #   <p>Allows filtering on <code>AvailabilityEndDate</code> of a ResaleAuthorization with date range as input</p>
    #   @return [Types::ResaleAuthorizationAvailabilityEndDateFilterDateRange]
    # @!attribute value_list
    #   <p>Allows filtering on <code>AvailabilityEndDate</code> of a ResaleAuthorization with date value as input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationAvailabilityEndDateFilter < Struct.new(
      nil,
      :date_range,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on <code>AvailabilityEndDate</code> of a ResaleAuthorization with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on <code>AvailabilityEndDate</code> of a ResaleAuthorization after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on <code>AvailabilityEndDate</code> of a ResaleAuthorization before a date.</p>
    #   @return [String]
    class ResaleAuthorizationAvailabilityEndDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on <code>CreatedDate</code> of a ResaleAuthorization.</p>
    # @!attribute date_range
    #   <p>Allows filtering on <code>CreatedDate</code> of a ResaleAuthorization with date range as input.</p>
    #   @return [Types::ResaleAuthorizationCreatedDateFilterDateRange]
    # @!attribute value_list
    #   <p>Allows filtering on <code>CreatedDate</code> of a ResaleAuthorization with date value as input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationCreatedDateFilter < Struct.new(
      nil,
      :date_range,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on <code>CreatedDate</code> of a ResaleAuthorization with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on <code>CreatedDate</code> of a ResaleAuthorization after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on <code>CreatedDate</code> of a ResaleAuthorization before a date.</p>
    #   @return [String]
    class ResaleAuthorizationCreatedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on <code>EntityId</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on <code>EntityId</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for resale authorization entity. Client can add only one wildcard filter and a maximum of 8 filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Allows filtering on the <code>EntityId</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationEntityIdFilter]
    # @!attribute name
    #   <p>Allows filtering on the <code>Name</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationNameFilter]
    # @!attribute product_id
    #   <p>Allows filtering on the <code>ProductId</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationProductIdFilter]
    # @!attribute created_date
    #   <p>Allows filtering on the <code>CreatedDate</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationCreatedDateFilter]
    # @!attribute availability_end_date
    #   <p>Allows filtering on the <code>AvailabilityEndDate</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationAvailabilityEndDateFilter]
    # @!attribute manufacturer_account_id
    #   <p>Allows filtering on the <code>ManufacturerAccountId</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationManufacturerAccountIdFilter]
    # @!attribute product_name
    #   <p>Allows filtering on the <code>ProductName</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationProductNameFilter]
    # @!attribute manufacturer_legal_name
    #   <p>Allows filtering on the <code>ManufacturerLegalName</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationManufacturerLegalNameFilter]
    # @!attribute reseller_account_id
    #   <p>Allows filtering on the <code>ResellerAccountID</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationResellerAccountIDFilter]
    # @!attribute reseller_legal_name
    #   <p>Allows filtering on the <code>ResellerLegalName</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationResellerLegalNameFilter]
    # @!attribute status
    #   <p>Allows filtering on the <code>Status</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationStatusFilter]
    # @!attribute offer_extended_status
    #   <p>Allows filtering on the <code>OfferExtendedStatus</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationOfferExtendedStatusFilter]
    # @!attribute last_modified_date
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationLastModifiedDateFilter]
    # @!attribute reseller_role
    #   <p>Allows filtering on the <code>ResellerRole</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationResellerRoleFilter]
    # @!attribute source_authorization
    #   <p>Allows filtering on the <code>SourceAuthorization</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationSourceAuthorizationFilter]
    # @!attribute issuer_account_id
    #   <p>Allows filtering on the <code>IssuerAccountId</code> of a ResaleAuthorization.</p>
    #   @return [Types::ResaleAuthorizationIssuerAccountIdFilter]
    class ResaleAuthorizationFilters < Struct.new(
      nil,
      :entity_id,
      :name,
      :product_id,
      :created_date,
      :availability_end_date,
      :manufacturer_account_id,
      :product_name,
      :manufacturer_legal_name,
      :reseller_account_id,
      :reseller_legal_name,
      :status,
      :offer_extended_status,
      :last_modified_date,
      :reseller_role,
      :source_authorization,
      :issuer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>IssuerAccountId</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>IssuerAccountId</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationIssuerAccountIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>LastModifiedDate</code> of a ResaleAuthorization.</p>
    # @!attribute date_range
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of a ResaleAuthorization with date range as input.</p>
    #   @return [Types::ResaleAuthorizationLastModifiedDateFilterDateRange]
    class ResaleAuthorizationLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>LastModifiedDate</code> of a ResaleAuthorization with date range as input.</p>
    # @!attribute after_value
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of a ResaleAuthorization after a date.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Allows filtering on the <code>LastModifiedDate</code> of a ResaleAuthorization before a date.</p>
    #   @return [String]
    class ResaleAuthorizationLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ManufacturerAccountId</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ManufacturerAccountId</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>ManufacturerAccountId</code> of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationManufacturerAccountIdFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ManufacturerLegalName</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ManufacturerLegalName</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>ManufacturerLegalName</code> of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationManufacturerLegalNameFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>Name</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>Name</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>Name</code> of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationNameFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>OfferExtendedStatus</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>OfferExtendedStatus</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationOfferExtendedStatusFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ProductId</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ProductId</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>ProductId</code> of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationProductIdFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ProductName</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ProductName</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>ProductName</code> of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationProductNameFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ResellerAccountID</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ResellerAccountID</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the <code>ResellerAccountID</code> of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationResellerAccountIDFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the ResellerLegalName of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the ResellerLegalNameProductName of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>Allows filtering on the ResellerLegalName of a ResaleAuthorization with wild card input.</p>
    #   @return [String]
    class ResaleAuthorizationResellerLegalNameFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>ResellerRole</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>ResellerRole</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationResellerRoleFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows to sort ResaleAuthorization.</p>
    # @!attribute sort_by
    #   <p>Allows to sort ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Allows to sort ResaleAuthorization.</p>
    #   @return [String]
    class ResaleAuthorizationSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>SourceAuthorization</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>SourceAuthorization</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationSourceAuthorizationFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows filtering on the <code>Status</code> of a ResaleAuthorization.</p>
    # @!attribute value_list
    #   <p>Allows filtering on the <code>Status</code> of a ResaleAuthorization with list input.</p>
    #   @return [Array<String>]
    class ResaleAuthorizationStatusFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information about a Resale Authorization.</p>
    # @!attribute name
    #   <p>The name of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product ID of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The product name of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute manufacturer_account_id
    #   <p>The manufacturer account ID of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute manufacturer_legal_name
    #   <p>The manufacturer legal name of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute reseller_account_id
    #   <p>The reseller account ID of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute reseller_legal_name
    #   <p>The reseller legal name of the ResaleAuthorization</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute offer_extended_status
    #   <p>The offer extended status of the ResaleAuthorization</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The created date of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute availability_end_date
    #   <p>The availability end date of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute reseller_role
    #   <p>The reseller role of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute source_authorization
    #   <p>The source authorization of the ResaleAuthorization.</p>
    #   @return [String]
    # @!attribute issuer_account_id
    #   <p>The issuer account ID of the ResaleAuthorization.</p>
    #   @return [String]
    class ResaleAuthorizationSummary < Struct.new(
      nil,
      :name,
      :product_id,
      :product_name,
      :manufacturer_account_id,
      :manufacturer_legal_name,
      :reseller_account_id,
      :reseller_legal_name,
      :status,
      :offer_extended_status,
      :created_date,
      :availability_end_date,
      :reseller_role,
      :source_authorization,
      :issuer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is currently in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource wasn't found.</p>
    #          <p>HTTP status code: 404</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Currently, the specified resource is not supported.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on entity id of a SaaS product.</p>
    # @!attribute value_list
    #   <p>A string array of unique entity id values to be filtered on.</p>
    #   @return [Array<String>]
    class SaaSProductEntityIdFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing all the filter fields for SaaS products. Client can add only one wildcard filter and a maximum of 8 filters in a single <code>ListEntities</code> request.</p>
    # @!attribute entity_id
    #   <p>Unique identifier for the SaaS product.</p>
    #   @return [Types::SaaSProductEntityIdFilter]
    # @!attribute product_title
    #   <p>The title of the SaaS product.</p>
    #   @return [Types::SaaSProductTitleFilter]
    # @!attribute visibility
    #   <p>The visibility of the SaaS product.</p>
    #   @return [Types::SaaSProductVisibilityFilter]
    # @!attribute last_modified_date
    #   <p>The last date on which the SaaS product was modified.</p>
    #   @return [Types::SaaSProductLastModifiedDateFilter]
    class SaaSProductFilters < Struct.new(
      nil,
      :entity_id,
      :product_title,
      :visibility,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering based on the last modified date of SaaS products</p>
    # @!attribute date_range
    #   <p>Dates between which the SaaS product was last modified.</p>
    #   @return [Types::SaaSProductLastModifiedDateFilterDateRange]
    class SaaSProductLastModifiedDateFilter < Struct.new(
      nil,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains date range of the last modified date to be filtered on. You can optionally provide a <code>BeforeValue</code> and/or <code>AfterValue</code>. Both are inclusive.</p>
    # @!attribute after_value
    #   <p>Date after which the SaaS product was last modified.</p>
    #   @return [String]
    # @!attribute before_value
    #   <p>Date before which the SaaS product was last modified.</p>
    #   @return [String]
    class SaaSProductLastModifiedDateFilterDateRange < Struct.new(
      nil,
      :after_value,
      :before_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Objects that allows sorting on SaaS products based on certain fields and sorting order.</p>
    # @!attribute sort_by
    #   <p>Field to sort the SaaS products by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The default value is <code>DESCENDING</code>.</p>
    #   @return [String]
    class SaaSProductSort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that contains summarized information about a SaaS product.</p>
    # @!attribute product_title
    #   <p>The title of the SaaS product.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The lifecycle of the SaaS product.</p>
    #   @return [String]
    class SaaSProductSummary < Struct.new(
      nil,
      :product_title,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on product title.</p>
    # @!attribute value_list
    #   <p>A string array of unique product title values to be filtered on.</p>
    #   @return [Array<String>]
    # @!attribute wild_card_value
    #   <p>A string that will be the <code>wildCard</code> input for product tile filter. It matches the provided value as a substring in the actual value.</p>
    #   @return [String]
    class SaaSProductTitleFilter < Struct.new(
      nil,
      :value_list,
      :wild_card_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that allows filtering on the visibility of the product in the AWS Marketplace.</p>
    # @!attribute value_list
    #   <p>A string array of unique visibility values to be filtered on.</p>
    #   @return [Array<String>]
    class SaaSProductVisibilityFilter < Struct.new(
      nil,
      :value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of open requests per account has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains two attributes, <code>SortBy</code> and
    #             <code>SortOrder</code>.</p>
    # @!attribute sort_by
    #   <p>For <code>ListEntities</code>, supported attributes include
    #                   <code>LastModifiedDate</code> (default) and <code>EntityId</code>. In addition to
    #                   <code>LastModifiedDate</code> and <code>EntityId</code>, each
    #                   <code>EntityType</code> might support additional fields.</p>
    #            <p>For <code>ListChangeSets</code>, supported attributes include <code>StartTime</code>
    #               and <code>EndTime</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The
    #               default value is <code>DESCENDING</code>.</p>
    #   @return [String]
    class Sort < Struct.new(
      nil,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute change_set
    #   <p>Array of <code>change</code> object.</p>
    #   @return [Array<Types::Change>]
    # @!attribute change_set_name
    #   <p>Optional case sensitive string of up to 100 ASCII characters. The change set name can
    #               be used to filter the list of change sets. </p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique token to identify the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute change_set_tags
    #   <p>A list of objects specifying each key name and value for the
    #                   <code>ChangeSetTags</code> property.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute intent
    #   <p>The intent related to the request. The default is <code>APPLY</code>.
    #               To test your request before applying changes to your entities, use <code>VALIDATE</code>.
    #               This feature is currently available for adding versions to single-AMI products. For more information, see
    #               <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#ami-add-version">Add a new version</a>.</p>
    #   @return [String]
    class StartChangeSetRequest < Struct.new(
      nil,
      :catalog,
      :change_set,
      :change_set_name,
      :client_request_token,
      :change_set_tags,
      :intent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_set_id
    #   <p>Unique identifier generated for the request.</p>
    #   @return [String]
    # @!attribute change_set_arn
    #   <p>The ARN associated to the unique identifier generated for the request.</p>
    #   @return [String]
    class StartChangeSetResponse < Struct.new(
      nil,
      :change_set_id,
      :change_set_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of objects specifying each key name and value.</p>
    # @!attribute key
    #   <p>The key associated with the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required. The Amazon Resource Name (ARN) associated with the resource you want to
    #               tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Required. A list of objects specifying each key name and value. Number of objects
    #               allowed: 1-50.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many requests.</p>
    #          <p>HTTP status code: 429</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required. The Amazon Resource Name (ARN) associated with the resource you want to
    #               remove the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Required. A list of key names of tags to be removed. Number of strings allowed:
    #               0-256.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred during validation.</p>
    #          <p>HTTP status code: 422</p>
    # @!attribute message
    #   @return [String]
    # @!attribute validation_exception_field_list
    #   <p>A list of detailed entries describing the request fields that failed
    #               validation. Present when the failure can be attributed to one or more specific
    #               fields.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :validation_exception_field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about a single request field that failed
    #             validation, including the field's location, the reason it failed, and a
    #             human-readable message.</p>
    # @!attribute reason
    #   <p>The reason the field failed validation.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The entity type the failing field applies to, if the field is on a
    #               specific entity. For example, <code>AmiProduct@1.0</code>.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The entity identifier the failing field applies to, if the field is on a
    #               specific entity.</p>
    #   @return [String]
    # @!attribute change_type
    #   <p>The change type the failing field applies to, if the field is part of a
    #               change request. For example, <code>AddDeliveryOptions</code>.</p>
    #   @return [String]
    # @!attribute field
    #   <p>The name of the request field that failed validation, expressed as a
    #               JSON path (for example, <code>Details.DeliveryOptions[0].Type</code>).</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable message describing why the field failed
    #               validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :reason,
      :entity_type,
      :entity_id,
      :change_type,
      :field,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
