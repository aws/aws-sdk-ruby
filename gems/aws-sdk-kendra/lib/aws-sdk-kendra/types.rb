# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kendra
  module Types

    # Access Control List files for the documents in a data source.
    #
    # @note When making an API call, you may pass AccessControlListConfiguration
    #   data as a hash:
    #
    #       {
    #         key_path: "S3ObjectKey",
    #       }
    #
    # @!attribute [rw] key_path
    #   Path to the AWS S3 bucket that contains the ACL files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AccessControlListConfiguration AWS API Documentation
    #
    class AccessControlListConfiguration < Struct.new(
      :key_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the column that should be used for
    # filtering the query response by groups.
    #
    # @note When making an API call, you may pass AclConfiguration
    #   data as a hash:
    #
    #       {
    #         allowed_groups_column_name: "ColumnName", # required
    #       }
    #
    # @!attribute [rw] allowed_groups_column_name
    #   A list of groups, separated by semi-colons, that filters a query
    #   response based on user context. The document is only returned to
    #   users that are in one of the groups specified in the `UserContext`
    #   field of the Query operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AclConfiguration AWS API Documentation
    #
    class AclConfiguration < Struct.new(
      :allowed_groups_column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute returned from an index query.
    #
    # @!attribute [rw] key
    #   The key that identifies the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value_type
    #   The data type of the `Value` property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An object that contains the attribute value.
    #   @return [Types::AdditionalResultAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AdditionalResultAttribute AWS API Documentation
    #
    class AdditionalResultAttribute < Struct.new(
      :key,
      :value_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute returned with a document from a search.
    #
    # @!attribute [rw] text_with_highlights_value
    #   The text associated with the attribute and information about the
    #   highlight to apply to the text.
    #   @return [Types::TextWithHighlights]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AdditionalResultAttributeValue AWS API Documentation
    #
    class AdditionalResultAttributeValue < Struct.new(
      :text_with_highlights_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides filtering the query results based on document attributes.
    #
    # When you use the `AndAllFilters` or `OrAllFilters`, filters you can
    # use 2 layers under the first attribute filter. For example, you can
    # use:
    #
    # `<AndAllFilters>`
    #
    # 1.  ` <OrAllFilters>`
    #
    # 2.  ` <EqualTo>`
    #
    # If you use more than 2 layers, you receive a `ValidationException`
    # exception with the message "`AttributeFilter` cannot have a depth of
    # more than 2."
    #
    # @note When making an API call, you may pass AttributeFilter
    #   data as a hash:
    #
    #       {
    #         and_all_filters: [
    #           {
    #             and_all_filters: {
    #               # recursive AttributeFilterList
    #             },
    #             or_all_filters: {
    #               # recursive AttributeFilterList
    #             },
    #             not_filter: {
    #               # recursive AttributeFilter
    #             },
    #             equals_to: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             contains_all: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             contains_any: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             greater_than: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             greater_than_or_equals: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             less_than: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             less_than_or_equals: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         or_all_filters: [
    #           {
    #             and_all_filters: {
    #               # recursive AttributeFilterList
    #             },
    #             or_all_filters: {
    #               # recursive AttributeFilterList
    #             },
    #             not_filter: {
    #               # recursive AttributeFilter
    #             },
    #             equals_to: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             contains_all: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             contains_any: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             greater_than: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             greater_than_or_equals: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             less_than: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             less_than_or_equals: {
    #               key: "DocumentAttributeKey", # required
    #               value: { # required
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         not_filter: {
    #           and_all_filters: [
    #             {
    #               # recursive AttributeFilter
    #             },
    #           ],
    #           or_all_filters: [
    #             {
    #               # recursive AttributeFilter
    #             },
    #           ],
    #           not_filter: {
    #             # recursive AttributeFilter
    #           },
    #           equals_to: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           contains_all: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           contains_any: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           greater_than: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           greater_than_or_equals: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           less_than: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           less_than_or_equals: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         },
    #         equals_to: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         contains_all: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         contains_any: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         greater_than: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         greater_than_or_equals: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         less_than: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         less_than_or_equals: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] and_all_filters
    #   Performs a logical `AND` operation on all supplied filters.
    #   @return [Array<Types::AttributeFilter>]
    #
    # @!attribute [rw] or_all_filters
    #   Performs a logical `OR` operation on all supplied filters.
    #   @return [Array<Types::AttributeFilter>]
    #
    # @!attribute [rw] not_filter
    #   Performs a logical `NOT` operation on all supplied filters.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] equals_to
    #   Performs an equals operation on two document attributes.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] contains_all
    #   Returns true when a document contains all of the specified document
    #   attributes. This filter is only applicable to `StringListValue`
    #   metadata.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] contains_any
    #   Returns true when a document contains any of the specified document
    #   attributes. This filter is only applicable to `StringListValue`
    #   metadata.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than
    #   Performs a greater than operation on two document attributes. Use
    #   with a document attribute of type `Integer` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Performs a greater or equals than operation on two document
    #   attributes. Use with a document attribute of type `Integer` or
    #   `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than
    #   Performs a less than operation on two document attributes. Use with
    #   a document attribute of type `Integer` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Performs a less than or equals operation on two document attributes.
    #   Use with a document attribute of type `Integer` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AttributeFilter AWS API Documentation
    #
    class AttributeFilter < Struct.new(
      :and_all_filters,
      :or_all_filters,
      :not_filter,
      :equals_to,
      :contains_all,
      :contains_any,
      :greater_than,
      :greater_than_or_equals,
      :less_than,
      :less_than_or_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteDocumentRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         document_id_list: ["DocumentId"], # required
    #         data_source_sync_job_metric_target: {
    #           data_source_id: "DataSourceId", # required
    #           data_source_sync_job_id: "DataSourceSyncJobId", # required
    #         },
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the documents to delete.
    #   @return [String]
    #
    # @!attribute [rw] document_id_list
    #   One or more identifiers for documents to delete from the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_source_sync_job_metric_target
    #   Maps a particular data source sync job to a particular data source.
    #   @return [Types::DataSourceSyncJobMetricTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchDeleteDocumentRequest AWS API Documentation
    #
    class BatchDeleteDocumentRequest < Struct.new(
      :index_id,
      :document_id_list,
      :data_source_sync_job_metric_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_documents
    #   A list of documents that could not be removed from the index. Each
    #   entry contains an error message that indicates why the document
    #   couldn't be removed from the index.
    #   @return [Array<Types::BatchDeleteDocumentResponseFailedDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchDeleteDocumentResponse AWS API Documentation
    #
    class BatchDeleteDocumentResponse < Struct.new(
      :failed_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about documents that could not be removed from an
    # index by the BatchDeleteDocument operation.
    #
    # @!attribute [rw] id
    #   The identifier of the document that couldn't be removed from the
    #   index.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for why the document couldn't be removed from the
    #   index.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An explanation for why the document couldn't be removed from the
    #   index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchDeleteDocumentResponseFailedDocument AWS API Documentation
    #
    class BatchDeleteDocumentResponseFailedDocument < Struct.new(
      :id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutDocumentRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         role_arn: "RoleArn",
    #         documents: [ # required
    #           {
    #             id: "DocumentId", # required
    #             title: "Title",
    #             blob: "data",
    #             s3_path: {
    #               bucket: "S3BucketName", # required
    #               key: "S3ObjectKey", # required
    #             },
    #             attributes: [
    #               {
    #                 key: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #             ],
    #             access_control_list: [
    #               {
    #                 name: "PrincipalName", # required
    #                 type: "USER", # required, accepts USER, GROUP
    #                 access: "ALLOW", # required, accepts ALLOW, DENY
    #               },
    #             ],
    #             content_type: "PDF", # accepts PDF, HTML, MS_WORD, PLAIN_TEXT, PPT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index to add the documents to. You need to
    #   create the index first using the CreateIndex operation.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role that is allowed to run the
    #   `BatchPutDocument` operation. For more information, see [IAM Roles
    #   for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   One or more documents to add to the index.
    #
    #   Documents have the following file size limits.
    #
    #   * 5 MB total size for inline documents
    #
    #   * 50 MB total size for files from an S3 bucket
    #
    #   * 5 MB extracted text for any file
    #
    #   For more information about file size and transaction per second
    #   quotas, see [Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #   @return [Array<Types::Document>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchPutDocumentRequest AWS API Documentation
    #
    class BatchPutDocumentRequest < Struct.new(
      :index_id,
      :role_arn,
      :documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_documents
    #   A list of documents that were not added to the index because the
    #   document failed a validation check. Each document contains an error
    #   message that indicates why the document couldn't be added to the
    #   index.
    #
    #   If there was an error adding a document to an index the error is
    #   reported in your AWS CloudWatch log. For more information, see
    #   [Monitoring Amazon Kendra with Amazon CloudWatch Logs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/cloudwatch-logs.html
    #   @return [Array<Types::BatchPutDocumentResponseFailedDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchPutDocumentResponse AWS API Documentation
    #
    class BatchPutDocumentResponse < Struct.new(
      :failed_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a document that could not be indexed.
    #
    # @!attribute [rw] id
    #   The unique identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The type of error that caused the document to fail to be indexed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A description of the reason why the document could not be indexed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchPutDocumentResponseFailedDocument AWS API Documentation
    #
    class BatchPutDocumentResponseFailedDocument < Struct.new(
      :id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies capacity units configured for your index. You can add and
    # remove capacity units to tune an index to your requirements.
    #
    # @note When making an API call, you may pass CapacityUnitsConfiguration
    #   data as a hash:
    #
    #       {
    #         storage_capacity_units: 1, # required
    #         query_capacity_units: 1, # required
    #       }
    #
    # @!attribute [rw] storage_capacity_units
    #   The amount of extra storage capacity for an index. Each capacity
    #   unit provides 150 Gb of storage space or 500,000 documents,
    #   whichever is reached first.
    #   @return [Integer]
    #
    # @!attribute [rw] query_capacity_units
    #   The amount of extra query capacity for an index. Each capacity unit
    #   provides 0.5 queries per second and 40,000 queries per day.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CapacityUnitsConfiguration AWS API Documentation
    #
    class CapacityUnitsConfiguration < Struct.new(
      :storage_capacity_units,
      :query_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gathers information about when a particular result was clicked by a
    # user. Your application uses the SubmitFeedback operation to provide
    # click information.
    #
    # @note When making an API call, you may pass ClickFeedback
    #   data as a hash:
    #
    #       {
    #         result_id: "ResultId", # required
    #         click_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] result_id
    #   The unique identifier of the search result that was clicked.
    #   @return [String]
    #
    # @!attribute [rw] click_time
    #   The Unix timestamp of the date and time that the result was clicked.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ClickFeedback AWS API Documentation
    #
    class ClickFeedback < Struct.new(
      :result_id,
      :click_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about how Amazon Kendra should use the columns of
    # a database in an index.
    #
    # @note When making an API call, you may pass ColumnConfiguration
    #   data as a hash:
    #
    #       {
    #         document_id_column_name: "ColumnName", # required
    #         document_data_column_name: "ColumnName", # required
    #         document_title_column_name: "ColumnName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         change_detecting_columns: ["ColumnName"], # required
    #       }
    #
    # @!attribute [rw] document_id_column_name
    #   The column that provides the document's unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] document_data_column_name
    #   The column that contains the contents of the document.
    #   @return [String]
    #
    # @!attribute [rw] document_title_column_name
    #   The column that contains the title of the document.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   An array of objects that map database column names to the
    #   corresponding fields in an index. You must first create the fields
    #   in the index using the UpdateIndex operation.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @!attribute [rw] change_detecting_columns
    #   One to five columns that indicate when a document in the database
    #   has changed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ColumnConfiguration AWS API Documentation
    #
    class ColumnConfiguration < Struct.new(
      :document_id_column_name,
      :document_data_column_name,
      :document_title_column_name,
      :field_mappings,
      :change_detecting_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the information necessary to connect to a database.
    #
    # @note When making an API call, you may pass ConnectionConfiguration
    #   data as a hash:
    #
    #       {
    #         database_host: "DatabaseHost", # required
    #         database_port: 1, # required
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         secret_arn: "SecretArn", # required
    #       }
    #
    # @!attribute [rw] database_host
    #   The name of the host for the database. Can be either a string
    #   (host.subdomain.domain.tld) or an IPv4 or IPv6 address.
    #   @return [String]
    #
    # @!attribute [rw] database_port
    #   The port that the database uses for connections.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the database containing the document data.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that contains the document data.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of credentials stored in AWS Secrets
    #   Manager. The credentials should be a user/password pair. For more
    #   information, see [Using a Database Data Source][1]. For more
    #   information about AWS Secrets Manager, see [ What Is AWS Secrets
    #   Manager ][2] in the *AWS Secrets Manager* user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html
    #   [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConnectionConfiguration AWS API Documentation
    #
    class ConnectionConfiguration < Struct.new(
      :database_host,
      :database_port,
      :database_name,
      :table_name,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "DataSourceName", # required
    #         index_id: "IndexId", # required
    #         type: "S3", # required, accepts S3, SHAREPOINT, DATABASE, SALESFORCE, ONEDRIVE, SERVICENOW
    #         configuration: { # required
    #           s3_configuration: {
    #             bucket_name: "S3BucketName", # required
    #             inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             documents_metadata_configuration: {
    #               s3_prefix: "S3ObjectKey",
    #             },
    #             access_control_list_configuration: {
    #               key_path: "S3ObjectKey",
    #             },
    #           },
    #           share_point_configuration: {
    #             share_point_version: "SHAREPOINT_ONLINE", # required, accepts SHAREPOINT_ONLINE
    #             urls: ["Url"], # required
    #             secret_arn: "SecretArn", # required
    #             crawl_attachments: false,
    #             use_change_log: false,
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             vpc_configuration: {
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #             document_title_field_name: "DataSourceFieldName",
    #           },
    #           database_configuration: {
    #             database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #             connection_configuration: { # required
    #               database_host: "DatabaseHost", # required
    #               database_port: 1, # required
    #               database_name: "DatabaseName", # required
    #               table_name: "TableName", # required
    #               secret_arn: "SecretArn", # required
    #             },
    #             vpc_configuration: {
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             column_configuration: { # required
    #               document_id_column_name: "ColumnName", # required
    #               document_data_column_name: "ColumnName", # required
    #               document_title_column_name: "ColumnName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #               change_detecting_columns: ["ColumnName"], # required
    #             },
    #             acl_configuration: {
    #               allowed_groups_column_name: "ColumnName", # required
    #             },
    #             sql_configuration: {
    #               query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #             },
    #           },
    #           salesforce_configuration: {
    #             server_url: "Url", # required
    #             secret_arn: "SecretArn", # required
    #             standard_object_configurations: [
    #               {
    #                 name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #                 document_data_field_name: "DataSourceFieldName", # required
    #                 document_title_field_name: "DataSourceFieldName",
    #                 field_mappings: [
    #                   {
    #                     data_source_field_name: "DataSourceFieldName", # required
    #                     date_field_format: "DataSourceDateFieldFormat",
    #                     index_field_name: "IndexFieldName", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #             knowledge_article_configuration: {
    #               included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #               standard_knowledge_article_type_configuration: {
    #                 document_data_field_name: "DataSourceFieldName", # required
    #                 document_title_field_name: "DataSourceFieldName",
    #                 field_mappings: [
    #                   {
    #                     data_source_field_name: "DataSourceFieldName", # required
    #                     date_field_format: "DataSourceDateFieldFormat",
    #                     index_field_name: "IndexFieldName", # required
    #                   },
    #                 ],
    #               },
    #               custom_knowledge_article_type_configurations: [
    #                 {
    #                   name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #                   document_data_field_name: "DataSourceFieldName", # required
    #                   document_title_field_name: "DataSourceFieldName",
    #                   field_mappings: [
    #                     {
    #                       data_source_field_name: "DataSourceFieldName", # required
    #                       date_field_format: "DataSourceDateFieldFormat",
    #                       index_field_name: "IndexFieldName", # required
    #                     },
    #                   ],
    #                 },
    #               ],
    #             },
    #             chatter_feed_configuration: {
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #               include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #             },
    #             crawl_attachments: false,
    #             standard_object_attachment_configuration: {
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #             include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           },
    #           one_drive_configuration: {
    #             tenant_domain: "TenantDomain", # required
    #             secret_arn: "SecretArn", # required
    #             one_drive_users: { # required
    #               one_drive_user_list: ["OneDriveUser"],
    #               one_drive_user_s3_path: {
    #                 bucket: "S3BucketName", # required
    #                 key: "S3ObjectKey", # required
    #               },
    #             },
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           service_now_configuration: {
    #             host_url: "ServiceNowHostUrl", # required
    #             secret_arn: "SecretArn", # required
    #             service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #             knowledge_article_configuration: {
    #               crawl_attachments: false,
    #               include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #             service_catalog_configuration: {
    #               crawl_attachments: false,
    #               include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         description: "Description",
    #         schedule: "ScanSchedule",
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   A unique name for the data source. A data source name can't be
    #   changed without deleting and recreating the data source.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that should be associated with this data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of repository that contains the data source.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The data source connector configuration information that is required
    #   to access the repository.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   A description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   Sets the frequency that Amazon Kendra will check the documents in
    #   your repository and update the index. If you don't set a schedule
    #   Amazon Kendra will not periodically update the index. You can call
    #   the `StartDataSourceSyncJob` operation to update the index.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source. For more information, see [IAM Roles for Amazon
    #   Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify the data source. You can use
    #   the tags to identify and organize your resources and to control
    #   access to resources.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :name,
      :index_id,
      :type,
      :configuration,
      :description,
      :schedule,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A unique identifier for the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFaqRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         name: "FaqName", # required
    #         description: "Description",
    #         s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         file_format: "CSV", # accepts CSV, CSV_WITH_HEADER, JSON
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that should be associated with the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The S3 location of the FAQ input data.
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the S3 bucket that contains the FAQs. For more information, see [IAM
    #   Roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify the FAQ. You can use the
    #   tags to identify and organize your resources and to control access
    #   to resources.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_format
    #   The format of the input file. You can choose between a basic CSV
    #   format, a CSV format that includes customs attributes in a header,
    #   and a JSON format that includes custom attributes.
    #
    #   The format must match the format of the file stored in the S3 bucket
    #   identified in the `S3Path` parameter.
    #
    #   For more information, see [Adding questions and answers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateFaqRequest AWS API Documentation
    #
    class CreateFaqRequest < Struct.new(
      :index_id,
      :name,
      :description,
      :s3_path,
      :role_arn,
      :tags,
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the FAQ.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateFaqResponse AWS API Documentation
    #
    class CreateFaqResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIndexRequest
    #   data as a hash:
    #
    #       {
    #         name: "IndexName", # required
    #         edition: "DEVELOPER_EDITION", # accepts DEVELOPER_EDITION, ENTERPRISE_EDITION
    #         role_arn: "RoleArn", # required
    #         server_side_encryption_configuration: {
    #           kms_key_id: "KmsKeyId",
    #         },
    #         description: "Description",
    #         client_token: "ClientTokenName",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name for the new index.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The Amazon Kendra edition to use for the index. Choose
    #   `DEVELOPER_EDITION` for indexes intended for development, testing,
    #   or proof of concept. Use `ENTERPRISE_EDITION` for your production
    #   databases. Once you set the edition for an index, it can't be
    #   changed.
    #
    #   The `Edition` parameter is optional. If you don't supply a value,
    #   the default is `ENTERPRISE_EDITION`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An IAM role that gives Amazon Kendra permissions to access your
    #   Amazon CloudWatch logs and metrics. This is also the role used when
    #   you use the `BatchPutDocument` operation to index documents from an
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The identifier of the AWS KMS customer managed key (CMK) to use to
    #   encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't
    #   support asymmetric CMKs.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] description
    #   A description for the index.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create an index.
    #   Multiple calls to the `CreateIndex` operation with the same client
    #   token will create only one index.”
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify the index. You can use the
    #   tags to identify and organize your resources and to control access
    #   to resources.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateIndexRequest AWS API Documentation
    #
    class CreateIndexRequest < Struct.new(
      :name,
      :edition,
      :role_arn,
      :server_side_encryption_configuration,
      :description,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the index. Use this identifier when you
    #   query an index, set up a data source, or index a document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateIndexResponse AWS API Documentation
    #
    class CreateIndexResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a Amazon Kendra data source.
    #
    # @note When making an API call, you may pass DataSourceConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName", # required
    #           inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           documents_metadata_configuration: {
    #             s3_prefix: "S3ObjectKey",
    #           },
    #           access_control_list_configuration: {
    #             key_path: "S3ObjectKey",
    #           },
    #         },
    #         share_point_configuration: {
    #           share_point_version: "SHAREPOINT_ONLINE", # required, accepts SHAREPOINT_ONLINE
    #           urls: ["Url"], # required
    #           secret_arn: "SecretArn", # required
    #           crawl_attachments: false,
    #           use_change_log: false,
    #           inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           vpc_configuration: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["VpcSecurityGroupId"], # required
    #           },
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           document_title_field_name: "DataSourceFieldName",
    #         },
    #         database_configuration: {
    #           database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #           connection_configuration: { # required
    #             database_host: "DatabaseHost", # required
    #             database_port: 1, # required
    #             database_name: "DatabaseName", # required
    #             table_name: "TableName", # required
    #             secret_arn: "SecretArn", # required
    #           },
    #           vpc_configuration: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["VpcSecurityGroupId"], # required
    #           },
    #           column_configuration: { # required
    #             document_id_column_name: "ColumnName", # required
    #             document_data_column_name: "ColumnName", # required
    #             document_title_column_name: "ColumnName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #             change_detecting_columns: ["ColumnName"], # required
    #           },
    #           acl_configuration: {
    #             allowed_groups_column_name: "ColumnName", # required
    #           },
    #           sql_configuration: {
    #             query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #           },
    #         },
    #         salesforce_configuration: {
    #           server_url: "Url", # required
    #           secret_arn: "SecretArn", # required
    #           standard_object_configurations: [
    #             {
    #               name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           ],
    #           knowledge_article_configuration: {
    #             included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #             standard_knowledge_article_type_configuration: {
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #             custom_knowledge_article_type_configurations: [
    #               {
    #                 name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #                 document_data_field_name: "DataSourceFieldName", # required
    #                 document_title_field_name: "DataSourceFieldName",
    #                 field_mappings: [
    #                   {
    #                     data_source_field_name: "DataSourceFieldName", # required
    #                     date_field_format: "DataSourceDateFieldFormat",
    #                     index_field_name: "IndexFieldName", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           chatter_feed_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #             include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #           },
    #           crawl_attachments: false,
    #           standard_object_attachment_configuration: {
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         },
    #         one_drive_configuration: {
    #           tenant_domain: "TenantDomain", # required
    #           secret_arn: "SecretArn", # required
    #           one_drive_users: { # required
    #             one_drive_user_list: ["OneDriveUser"],
    #             one_drive_user_s3_path: {
    #               bucket: "S3BucketName", # required
    #               key: "S3ObjectKey", # required
    #             },
    #           },
    #           inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         service_now_configuration: {
    #           host_url: "ServiceNowHostUrl", # required
    #           secret_arn: "SecretArn", # required
    #           service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #           knowledge_article_configuration: {
    #             crawl_attachments: false,
    #             include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           service_catalog_configuration: {
    #             crawl_attachments: false,
    #             include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] s3_configuration
    #   Provides information to create a data source connector for a
    #   document repository in an Amazon S3 bucket.
    #   @return [Types::S3DataSourceConfiguration]
    #
    # @!attribute [rw] share_point_configuration
    #   Provides information necessary to create a data source connector for
    #   a Microsoft SharePoint site.
    #   @return [Types::SharePointConfiguration]
    #
    # @!attribute [rw] database_configuration
    #   Provides information necessary to create a data source connector for
    #   a database.
    #   @return [Types::DatabaseConfiguration]
    #
    # @!attribute [rw] salesforce_configuration
    #   Provides configuration information for data sources that connect to
    #   a Salesforce site.
    #   @return [Types::SalesforceConfiguration]
    #
    # @!attribute [rw] one_drive_configuration
    #   Provided configuration for data sources that connect to Microsoft
    #   OneDrive.
    #   @return [Types::OneDriveConfiguration]
    #
    # @!attribute [rw] service_now_configuration
    #   Provides configuration for data sources that connect to ServiceNow
    #   instances.
    #   @return [Types::ServiceNowConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :s3_configuration,
      :share_point_configuration,
      :database_configuration,
      :salesforce_configuration,
      :one_drive_configuration,
      :service_now_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a Amazon Kendra data source. Returned in a
    # call to .
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The UNIX datetime that the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The UNIX datetime that the data source was lasted updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the data source. When the status is `ATIVE` the data
    #   source is ready to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceSummary AWS API Documentation
    #
    class DataSourceSummary < Struct.new(
      :name,
      :id,
      :type,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a synchronization job.
    #
    # @!attribute [rw] execution_id
    #   A unique identifier for the synchronization job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The UNIX datetime that the synchronization job was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The UNIX datetime that the synchronization job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The execution status of the synchronization job. When the `Status`
    #   field is set to `SUCCEEDED`, the synchronization job is done. If the
    #   status code is set to `FAILED`, the `ErrorCode` and `ErrorMessage`
    #   fields give you the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If the `Status` field is set to `ERROR`, the `ErrorMessage` field
    #   contains a description of the error that caused the synchronization
    #   to fail.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   If the `Status` field is set to `FAILED`, the `ErrorCode` field
    #   contains a the reason that the synchronization failed.
    #   @return [String]
    #
    # @!attribute [rw] data_source_error_code
    #   If the reason that the synchronization failed is due to an error
    #   with the underlying data source, this field contains a code that
    #   identifies the error.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Maps a batch delete document request to a specific data source sync
    #   job. This is optional and should only be supplied when documents are
    #   deleted by a data source connector.
    #   @return [Types::DataSourceSyncJobMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceSyncJob AWS API Documentation
    #
    class DataSourceSyncJob < Struct.new(
      :execution_id,
      :start_time,
      :end_time,
      :status,
      :error_message,
      :error_code,
      :data_source_error_code,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a particular data source sync job to a particular data source.
    #
    # @note When making an API call, you may pass DataSourceSyncJobMetricTarget
    #   data as a hash:
    #
    #       {
    #         data_source_id: "DataSourceId", # required
    #         data_source_sync_job_id: "DataSourceSyncJobId", # required
    #       }
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source that is running the sync job.
    #   @return [String]
    #
    # @!attribute [rw] data_source_sync_job_id
    #   The ID of the sync job that is running on the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceSyncJobMetricTarget AWS API Documentation
    #
    class DataSourceSyncJobMetricTarget < Struct.new(
      :data_source_id,
      :data_source_sync_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a batch delete document request to a specific data source sync
    # job. This is optional and should only be supplied when documents are
    # deleted by a data source connector.
    #
    # @!attribute [rw] documents_added
    #   The number of documents added from the data source up to now in the
    #   data source sync.
    #   @return [String]
    #
    # @!attribute [rw] documents_modified
    #   The number of documents modified in the data source up to now in the
    #   data source sync run.
    #   @return [String]
    #
    # @!attribute [rw] documents_deleted
    #   The number of documents deleted from the data source up to now in
    #   the data source sync run.
    #   @return [String]
    #
    # @!attribute [rw] documents_failed
    #   The number of documents that failed to sync from the data source up
    #   to now in the data source sync run.
    #   @return [String]
    #
    # @!attribute [rw] documents_scanned
    #   The current number of documents crawled by the current sync job in
    #   the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceSyncJobMetrics AWS API Documentation
    #
    class DataSourceSyncJobMetrics < Struct.new(
      :documents_added,
      :documents_modified,
      :documents_deleted,
      :documents_failed,
      :documents_scanned)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a column or attribute in the data source to an index field. You
    # must first create the fields in the index using the UpdateIndex
    # operation.
    #
    # @note When making an API call, you may pass DataSourceToIndexFieldMapping
    #   data as a hash:
    #
    #       {
    #         data_source_field_name: "DataSourceFieldName", # required
    #         date_field_format: "DataSourceDateFieldFormat",
    #         index_field_name: "IndexFieldName", # required
    #       }
    #
    # @!attribute [rw] data_source_field_name
    #   The name of the column or attribute in the data source.
    #   @return [String]
    #
    # @!attribute [rw] date_field_format
    #   The type of data stored in the column or attribute.
    #   @return [String]
    #
    # @!attribute [rw] index_field_name
    #   The name of the field in the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceToIndexFieldMapping AWS API Documentation
    #
    class DataSourceToIndexFieldMapping < Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for connecting to an Amazon VPC.
    #
    # @note When making an API call, you may pass DataSourceVpcConfiguration
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["VpcSecurityGroupId"], # required
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   A list of identifiers for subnets within your Amazon VPC. The
    #   subnets should be able to connect to each other in the VPC, and they
    #   should have outgoing access to the Internet through a NAT device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of identifiers of security groups within your Amazon VPC. The
    #   security groups should enable Amazon Kendra to connect to the data
    #   source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceVpcConfiguration AWS API Documentation
    #
    class DataSourceVpcConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the information necessary to connect a database to an index.
    #
    # @note When making an API call, you may pass DatabaseConfiguration
    #   data as a hash:
    #
    #       {
    #         database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #         },
    #       }
    #
    # @!attribute [rw] database_engine_type
    #   The type of database engine that runs the database.
    #   @return [String]
    #
    # @!attribute [rw] connection_configuration
    #   The information necessary to connect to a database.
    #   @return [Types::ConnectionConfiguration]
    #
    # @!attribute [rw] vpc_configuration
    #   Provides information for connecting to an Amazon VPC.
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] column_configuration
    #   Information about where the index should get the document
    #   information from the database.
    #   @return [Types::ColumnConfiguration]
    #
    # @!attribute [rw] acl_configuration
    #   Information about the database column that provides information for
    #   user context filtering.
    #   @return [Types::AclConfiguration]
    #
    # @!attribute [rw] sql_configuration
    #   Provides information about how Amazon Kendra uses quote marks around
    #   SQL identifiers when querying a database data source.
    #   @return [Types::SqlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DatabaseConfiguration AWS API Documentation
    #
    class DatabaseConfiguration < Struct.new(
      :database_engine_type,
      :connection_configuration,
      :vpc_configuration,
      :column_configuration,
      :acl_configuration,
      :sql_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         id: "DataSourceId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier of the data source to delete.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The unique identifier of the index associated with the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFaqRequest
    #   data as a hash:
    #
    #       {
    #         id: "FaqId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the FAQ to remove.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The index to remove the FAQ from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteFaqRequest AWS API Documentation
    #
    class DeleteFaqRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIndexRequest
    #   data as a hash:
    #
    #       {
    #         id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the index to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteIndexRequest AWS API Documentation
    #
    class DeleteIndexRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         id: "DataSourceId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier of the data source to describe.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeDataSourceRequest AWS API Documentation
    #
    class DescribeDataSourceRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you gave the data source when it was created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Information that describes where the data source is located and how
    #   the data source is configured. The specific information in the
    #   description depends on the data source provider.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp of when the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp of when the data source was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the data source. When the status is `ACTIVE`
    #   the data source is ready to use. When the status is `FAILED`, the
    #   `ErrorMessage` field contains the reason that the data source
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule that Amazon Kendra will update the data source.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that enables the data
    #   source to access its resources.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a description of the error that caused the data source to
    #   fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeDataSourceResponse AWS API Documentation
    #
    class DescribeDataSourceResponse < Struct.new(
      :id,
      :index_id,
      :name,
      :type,
      :configuration,
      :created_at,
      :updated_at,
      :description,
      :status,
      :schedule,
      :role_arn,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFaqRequest
    #   data as a hash:
    #
    #       {
    #         id: "FaqId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier of the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the FAQ.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeFaqRequest AWS API Documentation
    #
    class DescribeFaqRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you gave the FAQ when it was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the FAQ that you provided when it was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the FAQ was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the FAQ was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] s3_path
    #   Information required to find a specific file in an Amazon S3 bucket.
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] status
    #   The status of the FAQ. It is ready to use when the status is
    #   `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that provides access to
    #   the S3 bucket containing the input files for the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If the `Status` field is `FAILED`, the `ErrorMessage` field contains
    #   the reason why the FAQ failed.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   The file format used by the input files for the FAQ.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeFaqResponse AWS API Documentation
    #
    class DescribeFaqResponse < Struct.new(
      :id,
      :index_id,
      :name,
      :description,
      :created_at,
      :updated_at,
      :s3_path,
      :status,
      :role_arn,
      :error_message,
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIndexRequest
    #   data as a hash:
    #
    #       {
    #         id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The name of the index to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeIndexRequest AWS API Documentation
    #
    class DescribeIndexRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   the name of the index.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The Amazon Kendra edition used for the index. You decide the edition
    #   when you create the index.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that gives Amazon
    #   Kendra permission to write to your Amazon Cloudwatch logs.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The identifier of the AWS KMS customer master key (CMK) used to
    #   encrypt your data. Amazon Kendra doesn't support asymmetric CMKs.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the index. When the value is `ACTIVE`, the
    #   index is ready for use. If the `Status` field value is `FAILED`, the
    #   `ErrorMessage` field contains a message that explains why.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the index.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix datetime that the index was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix datetime that the index was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] document_metadata_configurations
    #   Configuration settings for any metadata applied to the documents in
    #   the index.
    #   @return [Array<Types::DocumentMetadataConfiguration>]
    #
    # @!attribute [rw] index_statistics
    #   Provides information about the number of FAQ questions and answers
    #   and the number of text documents indexed.
    #   @return [Types::IndexStatistics]
    #
    # @!attribute [rw] error_message
    #   When th e`Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a message that explains why.
    #   @return [String]
    #
    # @!attribute [rw] capacity_units
    #   For enterprise edtion indexes, you can choose to use additional
    #   capacity to meet the needs of your application. This contains the
    #   capacity units used for the index. A 0 for the query capacity or the
    #   storage capacity indicates that the index is using the default
    #   capacity for the index.
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeIndexResponse AWS API Documentation
    #
    class DescribeIndexResponse < Struct.new(
      :name,
      :id,
      :edition,
      :role_arn,
      :server_side_encryption_configuration,
      :status,
      :description,
      :created_at,
      :updated_at,
      :document_metadata_configurations,
      :index_statistics,
      :error_message,
      :capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document in an index.
    #
    # @note When making an API call, you may pass Document
    #   data as a hash:
    #
    #       {
    #         id: "DocumentId", # required
    #         title: "Title",
    #         blob: "data",
    #         s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         ],
    #         access_control_list: [
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER", # required, accepts USER, GROUP
    #             access: "ALLOW", # required, accepts ALLOW, DENY
    #           },
    #         ],
    #         content_type: "PDF", # accepts PDF, HTML, MS_WORD, PLAIN_TEXT, PPT
    #       }
    #
    # @!attribute [rw] id
    #   A unique identifier of the document in the index.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the document.
    #   @return [String]
    #
    # @!attribute [rw] blob
    #   The contents of the document.
    #
    #   Documents passed to the `Blob` parameter must be base64 encoded.
    #   Your code might not need to encode the document file bytes if
    #   you're using an AWS SDK to call Amazon Kendra operations. If you
    #   are calling the Amazon Kendra endpoint directly using REST, you must
    #   base64 encode the contents before sending.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   Information required to find a specific file in an Amazon S3 bucket.
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] attributes
    #   Custom attributes to apply to the document. Use the custom
    #   attributes to provide additional information for searching, to
    #   provide facets for refining searches, and to provide additional
    #   information in the query response.
    #   @return [Array<Types::DocumentAttribute>]
    #
    # @!attribute [rw] access_control_list
    #   Information to use for user context filtering.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] content_type
    #   The file type of the document in the `Blob` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Document AWS API Documentation
    #
    class Document < Struct.new(
      :id,
      :title,
      :blob,
      :s3_path,
      :attributes,
      :access_control_list,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom attribute value assigned to a document.
    #
    # @note When making an API call, you may pass DocumentAttribute
    #   data as a hash:
    #
    #       {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] key
    #   The identifier for the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [Types::DocumentAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentAttribute AWS API Documentation
    #
    class DocumentAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a custom document attribute. You can only provide one
    # value for a custom attribute.
    #
    # @note When making an API call, you may pass DocumentAttributeValue
    #   data as a hash:
    #
    #       {
    #         string_value: "DocumentAttributeStringValue",
    #         string_list_value: ["String"],
    #         long_value: 1,
    #         date_value: Time.now,
    #       }
    #
    # @!attribute [rw] string_value
    #   A string, such as "department".
    #   @return [String]
    #
    # @!attribute [rw] string_list_value
    #   A list of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] long_value
    #   A long integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] date_value
    #   A date expressed as an ISO 8601 string.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentAttributeValue AWS API Documentation
    #
    class DocumentAttributeValue < Struct.new(
      :string_value,
      :string_list_value,
      :long_value,
      :date_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the count of documents that match a particular attribute when
    # doing a faceted search.
    #
    # @!attribute [rw] document_attribute_value
    #   The value of the attribute. For example, "HR."
    #   @return [Types::DocumentAttributeValue]
    #
    # @!attribute [rw] count
    #   The number of documents in the response that have the attribute
    #   value for the key.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentAttributeValueCountPair AWS API Documentation
    #
    class DocumentAttributeValueCountPair < Struct.new(
      :document_attribute_value,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the properties of a custom index field.
    #
    # @note When making an API call, you may pass DocumentMetadataConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         type: "STRING_VALUE", # required, accepts STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1,
    #           },
    #         },
    #         search: {
    #           facetable: false,
    #           searchable: false,
    #           displayable: false,
    #           sortable: false,
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the index field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the index field.
    #   @return [String]
    #
    # @!attribute [rw] relevance
    #   Provides manual tuning parameters to determine how the field affects
    #   the search results.
    #   @return [Types::Relevance]
    #
    # @!attribute [rw] search
    #   Provides information about how the field is used during a search.
    #   @return [Types::Search]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentMetadataConfiguration AWS API Documentation
    #
    class DocumentMetadataConfiguration < Struct.new(
      :name,
      :type,
      :relevance,
      :search)
      SENSITIVE = []
      include Aws::Structure
    end

    # Document metadata files that contain information such as the document
    # access control information, source URI, document author, and custom
    # attributes. Each metadata file contains metadata about a single
    # document.
    #
    # @note When making an API call, you may pass DocumentsMetadataConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_prefix: "S3ObjectKey",
    #       }
    #
    # @!attribute [rw] s3_prefix
    #   A prefix used to filter metadata configuration files in the AWS S3
    #   bucket. The S3 bucket might contain multiple metadata files. Use
    #   `S3Prefix` to include only the desired metadata files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentsMetadataConfiguration AWS API Documentation
    #
    class DocumentsMetadataConfiguration < Struct.new(
      :s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a document attribute
    #
    # @note When making an API call, you may pass Facet
    #   data as a hash:
    #
    #       {
    #         document_attribute_key: "DocumentAttributeKey",
    #       }
    #
    # @!attribute [rw] document_attribute_key
    #   The unique key for the document attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Facet AWS API Documentation
    #
    class Facet < Struct.new(
      :document_attribute_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The facet values for the documents in the response.
    #
    # @!attribute [rw] document_attribute_key
    #   The key for the facet values. This is the same as the
    #   `DocumentAttributeKey` provided in the query.
    #   @return [String]
    #
    # @!attribute [rw] document_attribute_value_type
    #   The data type of the facet value. This is the same as the type
    #   defined for the index field when it was created.
    #   @return [String]
    #
    # @!attribute [rw] document_attribute_value_count_pairs
    #   An array of key/value pairs, where the key is the value of the
    #   attribute and the count is the number of documents that share the
    #   key value.
    #   @return [Array<Types::DocumentAttributeValueCountPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/FacetResult AWS API Documentation
    #
    class FacetResult < Struct.new(
      :document_attribute_key,
      :document_attribute_value_type,
      :document_attribute_value_count_pairs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistical information about the FAQ questions and answers
    # contained in an index.
    #
    # @!attribute [rw] indexed_question_answers_count
    #   The total number of FAQ questions and answers contained in the
    #   index.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/FaqStatistics AWS API Documentation
    #
    class FaqStatistics < Struct.new(
      :indexed_question_answers_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a frequently asked questions and answer
    # contained in an index.
    #
    # @!attribute [rw] id
    #   The unique identifier of the FAQ.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you assigned the FAQ when you created or updated the
    #   FAQ.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the FAQ. When the status is `ACTIVE` the FAQ
    #   is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The UNIX datetime that the FAQ was added to the index.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The UNIX datetime that the FAQ was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] file_format
    #   The file type used to create the FAQ.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/FaqSummary AWS API Documentation
    #
    class FaqSummary < Struct.new(
      :id,
      :name,
      :status,
      :created_at,
      :updated_at,
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that you can use to highlight a search result so
    # that your users can quickly identify terms in the response.
    #
    # @!attribute [rw] begin_offset
    #   The zero-based location in the response string where the highlight
    #   starts.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The zero-based location in the response string where the highlight
    #   ends.
    #   @return [Integer]
    #
    # @!attribute [rw] top_answer
    #   Indicates whether the response is the best response. True if this is
    #   the best response; otherwise, false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Highlight AWS API Documentation
    #
    class Highlight < Struct.new(
      :begin_offset,
      :end_offset,
      :top_answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about an index.
    #
    # @!attribute [rw] name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the index. Use this to identify the index
    #   when you are using operations such as `Query`, `DescribeIndex`,
    #   `UpdateIndex`, and `DeleteIndex`.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   Indicates whether the index is a enterprise edition index or a
    #   developer edition index.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the index was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the index was last updated by the
    #   `UpdateIndex` operation.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the index. When the status is `ACTIVE`, the
    #   index is ready to search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/IndexConfigurationSummary AWS API Documentation
    #
    class IndexConfigurationSummary < Struct.new(
      :name,
      :id,
      :edition,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of documents and the number of
    # questions and answers in an index.
    #
    # @!attribute [rw] faq_statistics
    #   The number of question and answer topics in the index.
    #   @return [Types::FaqStatistics]
    #
    # @!attribute [rw] text_document_statistics
    #   The number of text documents indexed.
    #   @return [Types::TextDocumentStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/IndexStatistics AWS API Documentation
    #
    class IndexStatistics < Struct.new(
      :faq_statistics,
      :text_document_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSourceSyncJobsRequest
    #   data as a hash:
    #
    #       {
    #         id: "DataSourceId", # required
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         start_time_filter: {
    #           start_time: Time.now,
    #           end_time: Time.now,
    #         },
    #         status_filter: "FAILED", # accepts FAILED, SUCCEEDED, SYNCING, INCOMPLETE, STOPPING, ABORTED, SYNCING_INDEXING
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request to
    #   `GetDataSourceSyncJobHistory` was truncated, include the `NextToken`
    #   to fetch the next set of jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of synchronization jobs to return in the
    #   response. If there are fewer results in the list, this response
    #   contains only the actual results.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time_filter
    #   When specified, the synchronization jobs returned in the list are
    #   limited to jobs between the specified dates.
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] status_filter
    #   When specified, only returns synchronization jobs with the `Status`
    #   field equal to the specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSourceSyncJobsRequest AWS API Documentation
    #
    class ListDataSourceSyncJobsRequest < Struct.new(
      :id,
      :index_id,
      :next_token,
      :max_results,
      :start_time_filter,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] history
    #   A history of synchronization jobs for the data source.
    #   @return [Array<Types::DataSourceSyncJob>]
    #
    # @!attribute [rw] next_token
    #   The `GetDataSourceSyncJobHistory` operation returns a page of
    #   vocabularies at a time. The maximum size of the page is set by the
    #   `MaxResults` parameter. If there are more jobs in the list than the
    #   page size, Amazon Kendra returns the NextPage token. Include the
    #   token in the next request to the `GetDataSourceSyncJobHistory`
    #   operation to return in the next page of jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSourceSyncJobsResponse AWS API Documentation
    #
    class ListDataSourceSyncJobsResponse < Struct.new(
      :history,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSourcesRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of data sources (`DataSourceSummaryItems`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data sources to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary_items
    #   An array of summary information for one or more data sources.
    #   @return [Array<Types::DataSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   data sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :summary_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFaqsRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The index that contains the FAQ lists.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request to `ListFaqs` was truncated,
    #   include the `NextToken` to fetch the next set of FAQs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of FAQs to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListFaqsRequest AWS API Documentation
    #
    class ListFaqsRequest < Struct.new(
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `ListFaqs` operation returns a page of FAQs at a time. The
    #   maximum size of the page is set by the `MaxResults` parameter. If
    #   there are more jobs in the list than the page size, Amazon Kendra
    #   returns the `NextPage` token. Include the token in the next request
    #   to the `ListFaqs` operation to return the next page of FAQs.
    #   @return [String]
    #
    # @!attribute [rw] faq_summary_items
    #   information about the FAQs associated with the specified index.
    #   @return [Array<Types::FaqSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListFaqsResponse AWS API Documentation
    #
    class ListFaqsResponse < Struct.new(
      :next_token,
      :faq_summary_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIndicesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of indexes (`DataSourceSummaryItems`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data sources to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListIndicesRequest AWS API Documentation
    #
    class ListIndicesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_configuration_summary_items
    #   An array of summary information for one or more indexes.
    #   @return [Array<Types::IndexConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   indexes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListIndicesResponse AWS API Documentation
    #
    class ListIndicesResponse < Struct.new(
      :index_configuration_summary_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   get a list of tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with the index, FAQ, or data source.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for data sources that connect to
    # OneDrive.
    #
    # @note When making an API call, you may pass OneDriveConfiguration
    #   data as a hash:
    #
    #       {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tenant_domain
    #   Tha Azure Active Directory domain of the organization.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of an AWS Secrets Manager secret that
    #   contains the user name and password to connect to OneDrive. The user
    #   namd should be the application ID for the OneDrive application, and
    #   the password is the application key for the OneDrive application.
    #   @return [String]
    #
    # @!attribute [rw] one_drive_users
    #   A list of user accounts whose documents should be indexed.
    #   @return [Types::OneDriveUsers]
    #
    # @!attribute [rw] inclusion_patterns
    #   A list of regular expression patterns. Documents that match the
    #   pattern are included in the index. Documents that don't match the
    #   pattern are excluded from the index. If a document matches both an
    #   inclusion pattern and an exclusion pattern, the document is not
    #   included in the index.
    #
    #   The exclusion pattern is applied to the file name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   List of regular expressions applied to documents. Items that match
    #   the exclusion pattern are not indexed. If you provide both an
    #   inclusion pattern and an exclusion pattern, any item that matches
    #   the exclusion pattern isn't indexed.
    #
    #   The exclusion pattern is applied to the file name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_mappings
    #   A list of `DataSourceToIndexFieldMapping` objects that map Microsoft
    #   OneDrive fields to custom fields in the Amazon Kendra index. You
    #   must first create the index fields before you map OneDrive fields.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/OneDriveConfiguration AWS API Documentation
    #
    class OneDriveConfiguration < Struct.new(
      :tenant_domain,
      :secret_arn,
      :one_drive_users,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # User accounts whose documents should be indexed.
    #
    # @note When making an API call, you may pass OneDriveUsers
    #   data as a hash:
    #
    #       {
    #         one_drive_user_list: ["OneDriveUser"],
    #         one_drive_user_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #       }
    #
    # @!attribute [rw] one_drive_user_list
    #   A list of users whose documents should be indexed. Specify the user
    #   names in email format, for example, `username@tenantdomain`. If you
    #   need to index the documents of more than 100 users, use the
    #   `OneDriveUserS3Path` field to specify the location of a file
    #   containing a list of users.
    #   @return [Array<String>]
    #
    # @!attribute [rw] one_drive_user_s3_path
    #   The S3 bucket location of a file containing a list of users whose
    #   documents should be indexed.
    #   @return [Types::S3Path]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/OneDriveUsers AWS API Documentation
    #
    class OneDriveUsers < Struct.new(
      :one_drive_user_list,
      :one_drive_user_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides user and group information for document access filtering.
    #
    # @note When making an API call, you may pass Principal
    #   data as a hash:
    #
    #       {
    #         name: "PrincipalName", # required
    #         type: "USER", # required, accepts USER, GROUP
    #         access: "ALLOW", # required, accepts ALLOW, DENY
    #       }
    #
    # @!attribute [rw] name
    #   The name of the user or group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of principal.
    #   @return [String]
    #
    # @!attribute [rw] access
    #   Whether to allow or deny access to the principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :name,
      :type,
      :access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass QueryRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         query_text: "QueryText", # required
    #         attribute_filter: {
    #           and_all_filters: [
    #             {
    #               # recursive AttributeFilter
    #             },
    #           ],
    #           or_all_filters: [
    #             {
    #               # recursive AttributeFilter
    #             },
    #           ],
    #           not_filter: {
    #             # recursive AttributeFilter
    #           },
    #           equals_to: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           contains_all: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           contains_any: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           greater_than: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           greater_than_or_equals: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           less_than: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           less_than_or_equals: {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         },
    #         facets: [
    #           {
    #             document_attribute_key: "DocumentAttributeKey",
    #           },
    #         ],
    #         requested_document_attributes: ["DocumentAttributeKey"],
    #         query_result_type_filter: "DOCUMENT", # accepts DOCUMENT, QUESTION_ANSWER, ANSWER
    #         page_number: 1,
    #         page_size: 1,
    #         sorting_configuration: {
    #           document_attribute_key: "DocumentAttributeKey", # required
    #           sort_order: "DESC", # required, accepts DESC, ASC
    #         },
    #       }
    #
    # @!attribute [rw] index_id
    #   The unique identifier of the index to search. The identifier is
    #   returned in the response from the operation.
    #   @return [String]
    #
    # @!attribute [rw] query_text
    #   The text to search for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_filter
    #   Enables filtered searches based on document attributes. You can only
    #   provide one attribute filter; however, the `AndAllFilters`,
    #   `NotFilter`, and `OrAllFilters` parameters contain a list of other
    #   filters.
    #
    #   The `AttributeFilter` parameter enables you to create a set of
    #   filtering rules that a document must satisfy to be included in the
    #   query results.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] facets
    #   An array of documents attributes. Amazon Kendra returns a count for
    #   each attribute key specified. You can use this information to help
    #   narrow the search for your user.
    #   @return [Array<Types::Facet>]
    #
    # @!attribute [rw] requested_document_attributes
    #   An array of document attributes to include in the response. No other
    #   document attributes are included in the response. By default all
    #   document attributes are included in the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_result_type_filter
    #   Sets the type of query. Only results for the specified query type
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] page_number
    #   Query results are returned in pages the size of the `PageSize`
    #   parameter. By default, Amazon Kendra returns the first page of
    #   results. Use this parameter to get result pages after the first one.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size
    #   Sets the number of results that are returned in each page of
    #   results. The default page size is 10. The maximum number of results
    #   returned is 100. If you ask for more than 100 results, only 100 are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] sorting_configuration
    #   Provides information that determines how the results of the query
    #   are sorted. You can set the field that Amazon Kendra should sort the
    #   results on, and specify whether the results should be sorted in
    #   ascending or descending order. In the case of ties in sorting the
    #   results, the results are sorted by relevance.
    #
    #   If you don't provide sorting configuration, the results are sorted
    #   by the relevance that Amazon Kendra determines for the result.
    #   @return [Types::SortingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/QueryRequest AWS API Documentation
    #
    class QueryRequest < Struct.new(
      :index_id,
      :query_text,
      :attribute_filter,
      :facets,
      :requested_document_attributes,
      :query_result_type_filter,
      :page_number,
      :page_size,
      :sorting_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique identifier for the search. You use `QueryId` to identify
    #   the search when using the feedback API.
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   The results of the search.
    #   @return [Array<Types::QueryResultItem>]
    #
    # @!attribute [rw] facet_results
    #   Contains the facet results. A `FacetResult` contains the counts for
    #   each attribute key that was specified in the `Facets` input
    #   parameter.
    #   @return [Array<Types::FacetResult>]
    #
    # @!attribute [rw] total_number_of_results
    #   The total number of items found by the search; however, you can only
    #   retrieve up to 100 items. For example, if the search found 192
    #   items, you can only retrieve the first 100 of the items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/QueryResult AWS API Documentation
    #
    class QueryResult < Struct.new(
      :query_id,
      :result_items,
      :facet_results,
      :total_number_of_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single query result.
    #
    # A query result contains information about a document returned by the
    # query. This includes the original location of the document, a list of
    # attributes assigned to the document, and relevant text from the
    # document that satisfies the query.
    #
    # @!attribute [rw] id
    #   The unique identifier for the query result.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of document.
    #   @return [String]
    #
    # @!attribute [rw] additional_attributes
    #   One or more additional attributes associated with the query result.
    #   @return [Array<Types::AdditionalResultAttribute>]
    #
    # @!attribute [rw] document_id
    #   The unique identifier for the document.
    #   @return [String]
    #
    # @!attribute [rw] document_title
    #   The title of the document. Contains the text of the title and
    #   information for highlighting the relevant terms in the title.
    #   @return [Types::TextWithHighlights]
    #
    # @!attribute [rw] document_excerpt
    #   An extract of the text in the document. Contains information about
    #   highlighting the relevant terms in the excerpt.
    #   @return [Types::TextWithHighlights]
    #
    # @!attribute [rw] document_uri
    #   The URI of the original location of the document.
    #   @return [String]
    #
    # @!attribute [rw] document_attributes
    #   An array of document attributes for the document that the query
    #   result maps to. For example, the document author (Author) or the
    #   source URI (SourceUri) of the document.
    #   @return [Array<Types::DocumentAttribute>]
    #
    # @!attribute [rw] score_attributes
    #   Indicates the confidence that Amazon Kendra has that a result
    #   matches the query that you provided. Each result is placed into a
    #   bin that indicates the confidence, `VERY_HIGH`, `HIGH`, `MEDIUM` and
    #   `LOW`. You can use the score to determine if a response meets the
    #   confidence needed for your application.
    #
    #   The field is only set to `LOW` when the `Type` field is set to
    #   `DOCUMENT` and Amazon Kendra is not confident that the result
    #   matches the query.
    #   @return [Types::ScoreAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/QueryResultItem AWS API Documentation
    #
    class QueryResultItem < Struct.new(
      :id,
      :type,
      :additional_attributes,
      :document_id,
      :document_title,
      :document_excerpt,
      :document_uri,
      :document_attributes,
      :score_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for manually tuning the relevance of a field in a
    # search. When a query includes terms that match the field, the results
    # are given a boost in the response based on these tuning parameters.
    #
    # @note When making an API call, you may pass Relevance
    #   data as a hash:
    #
    #       {
    #         freshness: false,
    #         importance: 1,
    #         duration: "Duration",
    #         rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         value_importance_map: {
    #           "ValueImportanceMapKey" => 1,
    #         },
    #       }
    #
    # @!attribute [rw] freshness
    #   Indicates that this field determines how "fresh" a document is.
    #   For example, if document 1 was created on November 5, and document 2
    #   was created on October 31, document 1 is "fresher" than document
    #   2. You can only set the `Freshness` field on one `DATE` type field.
    #   Only applies to `DATE` fields.
    #   @return [Boolean]
    #
    # @!attribute [rw] importance
    #   The relative importance of the field in the search. Larger numbers
    #   provide more of a boost than smaller numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Specifies the time period that the boost applies to. For example, to
    #   make the boost apply to documents with the field value within the
    #   last month, you would use "2628000s". Once the field value is
    #   beyond the specified range, the effect of the boost drops off. The
    #   higher the importance, the faster the effect drops off. If you
    #   don't specify a value, the default is 3 months. The value of the
    #   field is a numeric string followed by the character "s", for
    #   example "86400s" for one day, or "604800s" for one week.
    #
    #   Only applies to `DATE` fields.
    #   @return [String]
    #
    # @!attribute [rw] rank_order
    #   Determines how values should be interpreted.
    #
    #   When the `RankOrder` field is `ASCENDING`, higher numbers are
    #   better. For example, a document with a rating score of 10 is higher
    #   ranking than a document with a rating score of 1.
    #
    #   When the `RankOrder` field is `DESCENDING`, lower numbers are
    #   better. For example, in a task tracking application, a priority 1
    #   task is more important than a priority 5 task.
    #
    #   Only applies to `LONG` and `DOUBLE` fields.
    #   @return [String]
    #
    # @!attribute [rw] value_importance_map
    #   A list of values that should be given a different boost when they
    #   appear in the result list. For example, if you are boosting a field
    #   called "department," query terms that match the department field
    #   are boosted in the result. However, you can add entries from the
    #   department field to boost documents with those values higher.
    #
    #   For example, you can add entries to the map with names of
    #   departments. If you add "HR",5 and "Legal",3 those departments
    #   are given special attention when they appear in the metadata of a
    #   document. When those terms appear they are given the specified
    #   importance instead of the regular importance for the boost.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Relevance AWS API Documentation
    #
    class Relevance < Struct.new(
      :freshness,
      :importance,
      :duration,
      :rank_order,
      :value_importance_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides feedback on how relevant a document is to a search. Your
    # application uses the SubmitFeedback operation to provide relevance
    # information.
    #
    # @note When making an API call, you may pass RelevanceFeedback
    #   data as a hash:
    #
    #       {
    #         result_id: "ResultId", # required
    #         relevance_value: "RELEVANT", # required, accepts RELEVANT, NOT_RELEVANT
    #       }
    #
    # @!attribute [rw] result_id
    #   The unique identifier of the search result that the user provided
    #   relevance feedback for.
    #   @return [String]
    #
    # @!attribute [rw] relevance_value
    #   Whether to document was relevant or not relevant to the search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/RelevanceFeedback AWS API Documentation
    #
    class RelevanceFeedback < Struct.new(
      :result_id,
      :relevance_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ResourceAlreadyExistException AWS API Documentation
    #
    class ResourceAlreadyExistException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for a data source to index
    # documents in an Amazon S3 bucket.
    #
    # @note When making an API call, you may pass S3DataSourceConfiguration
    #   data as a hash:
    #
    #       {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey",
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey",
    #         },
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the bucket that contains the documents.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_prefixes
    #   A list of S3 prefixes for the documents that should be included in
    #   the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of glob patterns for documents that should not be indexed. If
    #   a document that matches an inclusion prefix also matches an
    #   exclusion pattern, the document is not indexed.
    #
    #   For more information about glob patterns, see [glob
    #   (programming)][1] in *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Glob_(programming)
    #   @return [Array<String>]
    #
    # @!attribute [rw] documents_metadata_configuration
    #   Document metadata files that contain information such as the
    #   document access control information, source URI, document author,
    #   and custom attributes. Each metadata file contains metadata about a
    #   single document.
    #   @return [Types::DocumentsMetadataConfiguration]
    #
    # @!attribute [rw] access_control_list_configuration
    #   Provides the path to the S3 bucket that contains the user context
    #   filtering files for the data source.
    #   @return [Types::AccessControlListConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/S3DataSourceConfiguration AWS API Documentation
    #
    class S3DataSourceConfiguration < Struct.new(
      :bucket_name,
      :inclusion_prefixes,
      :exclusion_patterns,
      :documents_metadata_configuration,
      :access_control_list_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to find a specific file in an Amazon S3 bucket.
    #
    # @note When making an API call, you may pass S3Path
    #   data as a hash:
    #
    #       {
    #         bucket: "S3BucketName", # required
    #         key: "S3ObjectKey", # required
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that contains the file.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/S3Path AWS API Documentation
    #
    class S3Path < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines configuration for syncing a Salesforce chatter feed. The
    # contents of the object comes from the Salesforce FeedItem table.
    #
    # @note When making an API call, you may pass SalesforceChatterFeedConfiguration
    #   data as a hash:
    #
    #       {
    #         document_data_field_name: "DataSourceFieldName", # required
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #       }
    #
    # @!attribute [rw] document_data_field_name
    #   The name of the column in the Salesforce FeedItem table that
    #   contains the content to index. Typically this is the `Body` column.
    #   @return [String]
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the column in the Salesforce FeedItem table that
    #   contains the title of the document. This is typically the `Title`
    #   collumn.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   Maps fields from a Salesforce chatter feed into Amazon Kendra index
    #   fields.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @!attribute [rw] include_filter_types
    #   Filters the documents in the feed based on status of the user. When
    #   you specify `ACTIVE_USERS` only documents from users who have an
    #   active account are indexed. When you specify `STANDARD_USER` only
    #   documents for Salesforce standard users are documented. You can
    #   specify both.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceChatterFeedConfiguration AWS API Documentation
    #
    class SalesforceChatterFeedConfiguration < Struct.new(
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      :include_filter_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for connecting to a Salesforce data
    # source.
    #
    # @note When making an API call, you may pass SalesforceConfiguration
    #   data as a hash:
    #
    #       {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #       }
    #
    # @!attribute [rw] server_url
    #   The instance URL for the Salesforce site that you want to index.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of an AWS Secrets Manager secret that
    #   contains the key/value pairs required to connect to your Salesforce
    #   instance. The secret must contain a JSON structure with the
    #   following keys:
    #
    #   * authenticationUrl - The OAUTH endpoint that Amazon Kendra connects
    #     to get an OAUTH token.
    #
    #   * consumerKey - The application public key generated when you
    #     created your Salesforce application.
    #
    #   * consumerSecret - The application private key generated when you
    #     created your Salesforce application.
    #
    #   * password - The password associated with the user logging in to the
    #     Salesforce instance.
    #
    #   * securityToken - The token associated with the user account logging
    #     in to the Salesforce instance.
    #
    #   * username - The user name of the user logging in to the Salesforce
    #     instance.
    #   @return [String]
    #
    # @!attribute [rw] standard_object_configurations
    #   Specifies the Salesforce standard objects that Amazon Kendra
    #   indexes.
    #   @return [Array<Types::SalesforceStandardObjectConfiguration>]
    #
    # @!attribute [rw] knowledge_article_configuration
    #   Specifies configuration information for the knowlege article types
    #   that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
    #   articles and the standard fields of knowledge articles, or the
    #   custom fields of custom knowledge articles, but not both.
    #   @return [Types::SalesforceKnowledgeArticleConfiguration]
    #
    # @!attribute [rw] chatter_feed_configuration
    #   Specifies configuration information for Salesforce chatter feeds.
    #   @return [Types::SalesforceChatterFeedConfiguration]
    #
    # @!attribute [rw] crawl_attachments
    #   Indicates whether Amazon Kendra should index attachments to
    #   Salesforce objects.
    #   @return [Boolean]
    #
    # @!attribute [rw] standard_object_attachment_configuration
    #   Provides configuration information for processing attachments to
    #   Salesforce standard objects.
    #   @return [Types::SalesforceStandardObjectAttachmentConfiguration]
    #
    # @!attribute [rw] include_attachment_file_patterns
    #   A list of regular expression patterns. Documents that match the
    #   patterns are included in the index. Documents that don't match the
    #   patterns are excluded from the index. If a document matches both an
    #   inclusion pattern and an exclusion pattern, the document is not
    #   included in the index.
    #
    #   The regex is applied to the name of the attached file.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_attachment_file_patterns
    #   A list of regular expression patterns. Documents that match the
    #   patterns are excluded from the index. Documents that don't match
    #   the patterns are included in the index. If a document matches both
    #   an exclusion pattern and an inclusion pattern, the document is not
    #   included in the index.
    #
    #   The regex is applied to the name of the attached file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceConfiguration AWS API Documentation
    #
    class SalesforceConfiguration < Struct.new(
      :server_url,
      :secret_arn,
      :standard_object_configurations,
      :knowledge_article_configuration,
      :chatter_feed_configuration,
      :crawl_attachments,
      :standard_object_attachment_configuration,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for indexing Salesforce custom
    # articles.
    #
    # @note When making an API call, you may pass SalesforceCustomKnowledgeArticleTypeConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #         document_data_field_name: "DataSourceFieldName", # required
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] document_data_field_name
    #   The name of the field in the custom knowledge article that contains
    #   the document data to index.
    #   @return [String]
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the field in the custom knowledge article that contains
    #   the document title.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   One or more objects that map fields in the custom knowledge article
    #   to fields in the Amazon Kendra index.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceCustomKnowledgeArticleTypeConfiguration AWS API Documentation
    #
    class SalesforceCustomKnowledgeArticleTypeConfiguration < Struct.new(
      :name,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the knowlege article types
    # that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
    # articles and the standard fields of knowledge articles, or the custom
    # fields of custom knowledge articles, but not both
    #
    # @note When making an API call, you may pass SalesforceKnowledgeArticleConfiguration
    #   data as a hash:
    #
    #       {
    #         included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #         standard_knowledge_article_type_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         custom_knowledge_article_type_configurations: [
    #           {
    #             name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] included_states
    #   Specifies the document states that should be included when Amazon
    #   Kendra indexes knowledge articles. You must specify at least one
    #   state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] standard_knowledge_article_type_configuration
    #   Provides configuration information for standard Salesforce knowledge
    #   articles.
    #   @return [Types::SalesforceStandardKnowledgeArticleTypeConfiguration]
    #
    # @!attribute [rw] custom_knowledge_article_type_configurations
    #   Provides configuration information for custom Salesforce knowledge
    #   articles.
    #   @return [Array<Types::SalesforceCustomKnowledgeArticleTypeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceKnowledgeArticleConfiguration AWS API Documentation
    #
    class SalesforceKnowledgeArticleConfiguration < Struct.new(
      :included_states,
      :standard_knowledge_article_type_configuration,
      :custom_knowledge_article_type_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for standard Salesforce knowledge
    # articles.
    #
    # @note When making an API call, you may pass SalesforceStandardKnowledgeArticleTypeConfiguration
    #   data as a hash:
    #
    #       {
    #         document_data_field_name: "DataSourceFieldName", # required
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] document_data_field_name
    #   The name of the field that contains the document data to index.
    #   @return [String]
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the field that contains the document title.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   One or more objects that map fields in the knowledge article to
    #   Amazon Kendra index fields. The index field must exist before you
    #   can map a Salesforce field to it.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceStandardKnowledgeArticleTypeConfiguration AWS API Documentation
    #
    class SalesforceStandardKnowledgeArticleTypeConfiguration < Struct.new(
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for processing attachments to
    # Salesforce standard objects.
    #
    # @note When making an API call, you may pass SalesforceStandardObjectAttachmentConfiguration
    #   data as a hash:
    #
    #       {
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the field used for the document title.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   One or more objects that map fields in attachments to Amazon Kendra
    #   index fields.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceStandardObjectAttachmentConfiguration AWS API Documentation
    #
    class SalesforceStandardObjectAttachmentConfiguration < Struct.new(
      :document_title_field_name,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies confguration information for indexing a single standard
    # object.
    #
    # @note When making an API call, you may pass SalesforceStandardObjectConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #         document_data_field_name: "DataSourceFieldName", # required
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the standard object.
    #   @return [String]
    #
    # @!attribute [rw] document_data_field_name
    #   The name of the field in the standard object table that contains the
    #   document contents.
    #   @return [String]
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the field in the standard object table that contains the
    #   document titleB.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   One or more objects that map fields in the standard object to Amazon
    #   Kendra index fields. The index field must exist before you can map a
    #   Salesforce field to it.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SalesforceStandardObjectConfiguration AWS API Documentation
    #
    class SalesforceStandardObjectConfiguration < Struct.new(
      :name,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a relative ranking that indicates how confident Amazon Kendra
    # is that the response matches the query.
    #
    # @!attribute [rw] score_confidence
    #   A relative ranking for how well the response matches the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ScoreAttributes AWS API Documentation
    #
    class ScoreAttributes < Struct.new(
      :score_confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about how a custom index field is used during a
    # search.
    #
    # @note When making an API call, you may pass Search
    #   data as a hash:
    #
    #       {
    #         facetable: false,
    #         searchable: false,
    #         displayable: false,
    #         sortable: false,
    #       }
    #
    # @!attribute [rw] facetable
    #   Indicates that the field can be used to create search facets, a
    #   count of results for each value in the field. The default is `false`
    #   .
    #   @return [Boolean]
    #
    # @!attribute [rw] searchable
    #   Determines whether the field is used in the search. If the
    #   `Searchable` field is `true`, you can use relevance tuning to
    #   manually tune how Amazon Kendra weights the field in the search. The
    #   default is `true` for string fields and `false` for number and date
    #   fields.
    #   @return [Boolean]
    #
    # @!attribute [rw] displayable
    #   Determines whether the field is returned in the query response. The
    #   default is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] sortable
    #   Determines whether the field can be used to sort the results of a
    #   query. If you specify sorting on a field that does not have
    #   `Sortable` set to `true`, Amazon Kendra returns an exception. The
    #   default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Search AWS API Documentation
    #
    class Search < Struct.new(
      :facetable,
      :searchable,
      :displayable,
      :sortable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the identifier of the AWS KMS customer master key (CMK) used
    # to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't
    # support asymmetric CMKs.
    #
    # @note When making an API call, you may pass ServerSideEncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS customer master key (CMK). Amazon
    #   Kendra doesn't support asymmetric CMKs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = [:kms_key_id]
      include Aws::Structure
    end

    # Provides configuration information required to connect to a ServiceNow
    # data source.
    #
    # @note When making an API call, you may pass ServiceNowConfiguration
    #   data as a hash:
    #
    #       {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] host_url
    #   The ServiceNow instance that the data source connects to. The host
    #   endpoint should look like the following:
    #   `\{instance\}.service-now.com.`
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the AWS Secret Manager secret that
    #   contains the user name and password required to connect to the
    #   ServiceNow instance.
    #   @return [String]
    #
    # @!attribute [rw] service_now_build_version
    #   The identifier of the release that the ServiceNow host is running.
    #   If the host is not running the `LONDON` release, use `OTHERS`.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_article_configuration
    #   Provides configuration information for crawling knowledge articles
    #   in the ServiceNow site.
    #   @return [Types::ServiceNowKnowledgeArticleConfiguration]
    #
    # @!attribute [rw] service_catalog_configuration
    #   Provides configuration information for crawling service catalogs in
    #   the ServiceNow site.
    #   @return [Types::ServiceNowServiceCatalogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServiceNowConfiguration AWS API Documentation
    #
    class ServiceNowConfiguration < Struct.new(
      :host_url,
      :secret_arn,
      :service_now_build_version,
      :knowledge_article_configuration,
      :service_catalog_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for crawling knowledge articles in
    # the ServiceNow site.
    #
    # @note When making an API call, you may pass ServiceNowKnowledgeArticleConfiguration
    #   data as a hash:
    #
    #       {
    #         crawl_attachments: false,
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         document_data_field_name: "DataSourceFieldName", # required
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] crawl_attachments
    #   Indicates whether Amazon Kendra should index attachments to
    #   knowledge articles.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_attachment_file_patterns
    #   List of regular expressions applied to knowledge articles. Items
    #   that don't match the inclusion pattern are not indexed. The regex
    #   is applied to the field specified in the `PatternTargetField`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_attachment_file_patterns
    #   List of regular expressions applied to knowledge articles. Items
    #   that don't match the inclusion pattern are not indexed. The regex
    #   is applied to the field specified in the `PatternTargetField`
    #   @return [Array<String>]
    #
    # @!attribute [rw] document_data_field_name
    #   The name of the ServiceNow field that is mapped to the index
    #   document contents field in the Amazon Kendra index.
    #   @return [String]
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the ServiceNow field that is mapped to the index
    #   document title field.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   Mapping between ServiceNow fields and Amazon Kendra index fields.
    #   You must create the index field before you map the field.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServiceNowKnowledgeArticleConfiguration AWS API Documentation
    #
    class ServiceNowKnowledgeArticleConfiguration < Struct.new(
      :crawl_attachments,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for crawling service catalog items
    # in the ServiceNow site
    #
    # @note When making an API call, you may pass ServiceNowServiceCatalogConfiguration
    #   data as a hash:
    #
    #       {
    #         crawl_attachments: false,
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         document_data_field_name: "DataSourceFieldName", # required
    #         document_title_field_name: "DataSourceFieldName",
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] crawl_attachments
    #   Indicates whether Amazon Kendra should crawl attachments to the
    #   service catalog items.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_attachment_file_patterns
    #   Determines the types of file attachments that are included in the
    #   index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_attachment_file_patterns
    #   Determines the types of file attachments that are excluded from the
    #   index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] document_data_field_name
    #   The name of the ServiceNow field that is mapped to the index
    #   document contents field in the Amazon Kendra index.
    #   @return [String]
    #
    # @!attribute [rw] document_title_field_name
    #   The name of the ServiceNow field that is mapped to the index
    #   document title field.
    #   @return [String]
    #
    # @!attribute [rw] field_mappings
    #   Mapping between ServiceNow fields and Amazon Kendra index fields.
    #   You must create the index field before you map the field.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServiceNowServiceCatalogConfiguration AWS API Documentation
    #
    class ServiceNowServiceCatalogConfiguration < Struct.new(
      :crawl_attachments,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for connecting to a Microsoft
    # SharePoint data source.
    #
    # @note When making an API call, you may pass SharePointConfiguration
    #   data as a hash:
    #
    #       {
    #         share_point_version: "SHAREPOINT_ONLINE", # required, accepts SHAREPOINT_ONLINE
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #       }
    #
    # @!attribute [rw] share_point_version
    #   The version of Microsoft SharePoint that you are using as a data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] urls
    #   The URLs of the Microsoft SharePoint site that contains the
    #   documents that should be indexed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of credentials stored in AWS Secrets
    #   Manager. The credentials should be a user/password pair. For more
    #   information, see [Using a Microsoft SharePoint Data Source][1]. For
    #   more information about AWS Secrets Manager, see [ What Is AWS
    #   Secrets Manager ][2] in the *AWS Secrets Manager* user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html
    #   [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] crawl_attachments
    #   `TRUE` to include attachments to documents stored in your Microsoft
    #   SharePoint site in the index; otherwise, `FALSE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_change_log
    #   Set to `TRUE` to use the Microsoft SharePoint change log to
    #   determine the documents that need to be updated in the index.
    #   Depending on the size of the SharePoint change log, it may take
    #   longer for Amazon Kendra to use the change log than it takes it to
    #   determine the changed documents using the Amazon Kendra document
    #   crawler.
    #   @return [Boolean]
    #
    # @!attribute [rw] inclusion_patterns
    #   A list of regular expression patterns. Documents that match the
    #   patterns are included in the index. Documents that don't match the
    #   patterns are excluded from the index. If a document matches both an
    #   inclusion pattern and an exclusion pattern, the document is not
    #   included in the index.
    #
    #   The regex is applied to the display URL of the SharePoint document.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of regular expression patterns. Documents that match the
    #   patterns are excluded from the index. Documents that don't match
    #   the patterns are included in the index. If a document matches both
    #   an exclusion pattern and an inclusion pattern, the document is not
    #   included in the index.
    #
    #   The regex is applied to the display URL of the SharePoint document.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_configuration
    #   Provides information for connecting to an Amazon VPC.
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] field_mappings
    #   A list of `DataSourceToIndexFieldMapping` objects that map Microsoft
    #   SharePoint attributes to custom fields in the Amazon Kendra index.
    #   You must first create the index fields using the operation before
    #   you map SharePoint attributes. For more information, see [Mapping
    #   Data Source Fields][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @!attribute [rw] document_title_field_name
    #   The Microsoft SharePoint attribute field that contains the title of
    #   the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SharePointConfiguration AWS API Documentation
    #
    class SharePointConfiguration < Struct.new(
      :share_point_version,
      :urls,
      :secret_arn,
      :crawl_attachments,
      :use_change_log,
      :inclusion_patterns,
      :exclusion_patterns,
      :vpc_configuration,
      :field_mappings,
      :document_title_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the document attribute to use to sort the response to a
    # Amazon Kendra query. You can specify a single attribute for sorting.
    # The attribute must have the `Sortable` flag set to `true`, otherwise
    # Amazon Kendra returns an exception.
    #
    # You can sort attributes of the following types.
    #
    # * Date value
    #
    # * Long value
    #
    # * String value
    #
    # You can't sort attributes of the following type.
    #
    # * String list value
    #
    # ^
    #
    # @note When making an API call, you may pass SortingConfiguration
    #   data as a hash:
    #
    #       {
    #         document_attribute_key: "DocumentAttributeKey", # required
    #         sort_order: "DESC", # required, accepts DESC, ASC
    #       }
    #
    # @!attribute [rw] document_attribute_key
    #   The name of the document attribute used to sort the response. You
    #   can use any field that has the `Sortable` flag set to true.
    #
    #   You can also sort by any of the following built-in attributes:
    #
    #   * \_category
    #
    #   * \_created\_at
    #
    #   * \_last\_updated\_at
    #
    #   * \_version
    #
    #   * \_view\_count
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order that the results should be returned in. In case of ties,
    #   the relevance assigned to the result by Amazon Kendra is used as the
    #   tie-breaker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SortingConfiguration AWS API Documentation
    #
    class SortingConfiguration < Struct.new(
      :document_attribute_key,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that configures Amazon Kendra to use a SQL
    # database.
    #
    # @note When making an API call, you may pass SqlConfiguration
    #   data as a hash:
    #
    #       {
    #         query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #       }
    #
    # @!attribute [rw] query_identifiers_enclosing_option
    #   Determines whether Amazon Kendra encloses SQL identifiers for tables
    #   and column names in double quotes (") when making a database query.
    #
    #   By default, Amazon Kendra passes SQL identifiers the way that they
    #   are entered into the data source configuration. It does not change
    #   the case of identifiers or enclose them in quotes.
    #
    #   PostgreSQL internally converts uppercase characters to lower case
    #   characters in identifiers unless they are quoted. Choosing this
    #   option encloses identifiers in quotes so that PostgreSQL does not
    #   convert the character's case.
    #
    #   For MySQL databases, you must enable the `ansi_quotes` option when
    #   you set this field to `DOUBLE_QUOTES`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SqlConfiguration AWS API Documentation
    #
    class SqlConfiguration < Struct.new(
      :query_identifiers_enclosing_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDataSourceSyncJobRequest
    #   data as a hash:
    #
    #       {
    #         id: "DataSourceId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the data source to synchronize.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StartDataSourceSyncJobRequest AWS API Documentation
    #
    class StartDataSourceSyncJobRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   Identifies a particular synchronization job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StartDataSourceSyncJobResponse AWS API Documentation
    #
    class StartDataSourceSyncJobResponse < Struct.new(
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDataSourceSyncJobRequest
    #   data as a hash:
    #
    #       {
    #         id: "DataSourceId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the data source for which to stop the
    #   synchronization jobs.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StopDataSourceSyncJobRequest AWS API Documentation
    #
    class StopDataSourceSyncJobRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SubmitFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         query_id: "QueryId", # required
    #         click_feedback_items: [
    #           {
    #             result_id: "ResultId", # required
    #             click_time: Time.now, # required
    #           },
    #         ],
    #         relevance_feedback_items: [
    #           {
    #             result_id: "ResultId", # required
    #             relevance_value: "RELEVANT", # required, accepts RELEVANT, NOT_RELEVANT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that was queried.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The identifier of the specific query for which you are submitting
    #   feedback. The query ID is returned in the response to the operation.
    #   @return [String]
    #
    # @!attribute [rw] click_feedback_items
    #   Tells Amazon Kendra that a particular search result link was chosen
    #   by the user.
    #   @return [Array<Types::ClickFeedback>]
    #
    # @!attribute [rw] relevance_feedback_items
    #   Provides Amazon Kendra with relevant or not relevant feedback for
    #   whether a particular item was relevant to the search.
    #   @return [Array<Types::RelevanceFeedback>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SubmitFeedbackRequest AWS API Documentation
    #
    class SubmitFeedbackRequest < Struct.new(
      :index_id,
      :query_id,
      :click_feedback_items,
      :relevance_feedback_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of key/value pairs that identify an index, FAQ, or data source.
    # Tag keys and values can consist of Unicode letters, digits, white
    # space, and any of the following symbols: \_ . : / = + - @.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key for the tag. Keys are not case sensitive and must be unique
    #   for the index, FAQ, or data source.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the tag. The value may be an empty string
    #   but it can't be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag keys to add to the index, FAQ, or data source. If a
    #   tag already exists, the existing value is replaced with the new
    #   value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Provides information about text documents indexed in an index.
    #
    # @!attribute [rw] indexed_text_documents_count
    #   The number of text documents indexed.
    #   @return [Integer]
    #
    # @!attribute [rw] indexed_text_bytes
    #   The total size, in bytes, of the indexed documents.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TextDocumentStatistics AWS API Documentation
    #
    class TextDocumentStatistics < Struct.new(
      :indexed_text_documents_count,
      :indexed_text_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides text and information about where to highlight the text.
    #
    # @!attribute [rw] text
    #   The text to display to the user.
    #   @return [String]
    #
    # @!attribute [rw] highlights
    #   The beginning and end of the text that should be highlighted.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TextWithHighlights AWS API Documentation
    #
    class TextWithHighlights < Struct.new(
      :text,
      :highlights)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a range of time.
    #
    # @note When making an API call, you may pass TimeRange
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       }
    #
    # @!attribute [rw] start_time
    #   The UNIX datetime of the beginning of the time range.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The UNIX datetime of the end of the time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the index, FAQ, or data source. If
    #   a tag key does not exist on the resource, it is ignored.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         id: "DataSourceId", # required
    #         name: "DataSourceName",
    #         index_id: "IndexId", # required
    #         configuration: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName", # required
    #             inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             documents_metadata_configuration: {
    #               s3_prefix: "S3ObjectKey",
    #             },
    #             access_control_list_configuration: {
    #               key_path: "S3ObjectKey",
    #             },
    #           },
    #           share_point_configuration: {
    #             share_point_version: "SHAREPOINT_ONLINE", # required, accepts SHAREPOINT_ONLINE
    #             urls: ["Url"], # required
    #             secret_arn: "SecretArn", # required
    #             crawl_attachments: false,
    #             use_change_log: false,
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             vpc_configuration: {
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #             document_title_field_name: "DataSourceFieldName",
    #           },
    #           database_configuration: {
    #             database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #             connection_configuration: { # required
    #               database_host: "DatabaseHost", # required
    #               database_port: 1, # required
    #               database_name: "DatabaseName", # required
    #               table_name: "TableName", # required
    #               secret_arn: "SecretArn", # required
    #             },
    #             vpc_configuration: {
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             column_configuration: { # required
    #               document_id_column_name: "ColumnName", # required
    #               document_data_column_name: "ColumnName", # required
    #               document_title_column_name: "ColumnName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #               change_detecting_columns: ["ColumnName"], # required
    #             },
    #             acl_configuration: {
    #               allowed_groups_column_name: "ColumnName", # required
    #             },
    #             sql_configuration: {
    #               query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #             },
    #           },
    #           salesforce_configuration: {
    #             server_url: "Url", # required
    #             secret_arn: "SecretArn", # required
    #             standard_object_configurations: [
    #               {
    #                 name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #                 document_data_field_name: "DataSourceFieldName", # required
    #                 document_title_field_name: "DataSourceFieldName",
    #                 field_mappings: [
    #                   {
    #                     data_source_field_name: "DataSourceFieldName", # required
    #                     date_field_format: "DataSourceDateFieldFormat",
    #                     index_field_name: "IndexFieldName", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #             knowledge_article_configuration: {
    #               included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #               standard_knowledge_article_type_configuration: {
    #                 document_data_field_name: "DataSourceFieldName", # required
    #                 document_title_field_name: "DataSourceFieldName",
    #                 field_mappings: [
    #                   {
    #                     data_source_field_name: "DataSourceFieldName", # required
    #                     date_field_format: "DataSourceDateFieldFormat",
    #                     index_field_name: "IndexFieldName", # required
    #                   },
    #                 ],
    #               },
    #               custom_knowledge_article_type_configurations: [
    #                 {
    #                   name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #                   document_data_field_name: "DataSourceFieldName", # required
    #                   document_title_field_name: "DataSourceFieldName",
    #                   field_mappings: [
    #                     {
    #                       data_source_field_name: "DataSourceFieldName", # required
    #                       date_field_format: "DataSourceDateFieldFormat",
    #                       index_field_name: "IndexFieldName", # required
    #                     },
    #                   ],
    #                 },
    #               ],
    #             },
    #             chatter_feed_configuration: {
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #               include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #             },
    #             crawl_attachments: false,
    #             standard_object_attachment_configuration: {
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #             include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           },
    #           one_drive_configuration: {
    #             tenant_domain: "TenantDomain", # required
    #             secret_arn: "SecretArn", # required
    #             one_drive_users: { # required
    #               one_drive_user_list: ["OneDriveUser"],
    #               one_drive_user_s3_path: {
    #                 bucket: "S3BucketName", # required
    #                 key: "S3ObjectKey", # required
    #               },
    #             },
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           service_now_configuration: {
    #             host_url: "ServiceNowHostUrl", # required
    #             secret_arn: "SecretArn", # required
    #             service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #             knowledge_article_configuration: {
    #               crawl_attachments: false,
    #               include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #             service_catalog_configuration: {
    #               crawl_attachments: false,
    #               include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         description: "Description",
    #         schedule: "ScanSchedule",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier of the data source to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source to update. The name of the data source
    #   can't be updated. To rename a data source you must delete the data
    #   source and re-create it.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that contains the data source to update.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Configuration information for a Amazon Kendra data source.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   The new description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The new update schedule for the data source.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the new role to use when the data
    #   source is accessing resources on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :id,
      :name,
      :index_id,
      :configuration,
      :description,
      :schedule,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIndexRequest
    #   data as a hash:
    #
    #       {
    #         id: "IndexId", # required
    #         name: "IndexName",
    #         role_arn: "RoleArn",
    #         description: "Description",
    #         document_metadata_configuration_updates: [
    #           {
    #             name: "DocumentMetadataConfigurationName", # required
    #             type: "STRING_VALUE", # required, accepts STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE
    #             relevance: {
    #               freshness: false,
    #               importance: 1,
    #               duration: "Duration",
    #               rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #               value_importance_map: {
    #                 "ValueImportanceMapKey" => 1,
    #               },
    #             },
    #             search: {
    #               facetable: false,
    #               searchable: false,
    #               displayable: false,
    #               sortable: false,
    #             },
    #           },
    #         ],
    #         capacity_units: {
    #           storage_capacity_units: 1, # required
    #           query_capacity_units: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the index to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the index to update.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A new IAM role that gives Amazon Kendra permission to access your
    #   Amazon CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the index.
    #   @return [String]
    #
    # @!attribute [rw] document_metadata_configuration_updates
    #   The document metadata to update.
    #   @return [Array<Types::DocumentMetadataConfiguration>]
    #
    # @!attribute [rw] capacity_units
    #   Sets the number of addtional storage and query capacity units that
    #   should be used by the index. You can change the capacity of the
    #   index up to 5 times per day.
    #
    #   If you are using extra storage units, you can't reduce the storage
    #   capacity below that required to meet the storage needs for your
    #   index.
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateIndexRequest AWS API Documentation
    #
    class UpdateIndexRequest < Struct.new(
      :id,
      :name,
      :role_arn,
      :description,
      :document_metadata_configuration_updates,
      :capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
