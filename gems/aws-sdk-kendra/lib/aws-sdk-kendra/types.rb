# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kendra
  module Types

    # Access Control List files for the documents in a data source. For the
    # format of the file, see [Access control for S3 data sources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html
    #
    # @note When making an API call, you may pass AccessControlListConfiguration
    #   data as a hash:
    #
    #       {
    #         key_path: "S3ObjectKey",
    #       }
    #
    # @!attribute [rw] key_path
    #   Path to the Amazon Web Services S3 bucket that contains the ACL
    #   files.
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
    #   field of the `Query` API.
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

    # @note When making an API call, you may pass AssociateEntitiesToExperienceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #         entity_list: [ # required
    #           {
    #             entity_id: "EntityId", # required
    #             entity_type: "USER", # required, accepts USER, GROUP
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] entity_list
    #   Lists users or groups in your Amazon Web Services SSO identity
    #   source.
    #   @return [Array<Types::EntityConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AssociateEntitiesToExperienceRequest AWS API Documentation
    #
    class AssociateEntitiesToExperienceRequest < Struct.new(
      :id,
      :index_id,
      :entity_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entity_list
    #   Lists the users or groups in your Amazon Web Services SSO identity
    #   source that failed to properly configure with your Amazon Kendra
    #   experience.
    #   @return [Array<Types::FailedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AssociateEntitiesToExperienceResponse AWS API Documentation
    #
    class AssociateEntitiesToExperienceResponse < Struct.new(
      :failed_entity_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociatePersonasToEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #         personas: [ # required
    #           {
    #             entity_id: "EntityId", # required
    #             persona: "OWNER", # required, accepts OWNER, VIEWER
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] personas
    #   The personas that define the specific permissions of users or groups
    #   in your Amazon Web Services SSO identity source. The available
    #   personas or access roles are `Owner` and `Viewer`. For more
    #   information on these personas, see [Providing access to your search
    #   page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience
    #   @return [Array<Types::EntityPersonaConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AssociatePersonasToEntitiesRequest AWS API Documentation
    #
    class AssociatePersonasToEntitiesRequest < Struct.new(
      :id,
      :index_id,
      :personas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entity_list
    #   Lists the users or groups in your Amazon Web Services SSO identity
    #   source that failed to properly configure with your Amazon Kendra
    #   experience.
    #   @return [Array<Types::FailedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AssociatePersonasToEntitiesResponse AWS API Documentation
    #
    class AssociatePersonasToEntitiesResponse < Struct.new(
      :failed_entity_list)
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
    # 2.  ` <EqualsTo>`
    #
    # If you use more than 2 layers, you receive a `ValidationException`
    # exception with the message "`AttributeFilter` cannot have a depth of
    # more than 2."
    #
    # If you use more than 10 attribute filters in a given list for
    # `AndAllFilters` or `OrAllFilters`, you receive a `ValidationException`
    # with the message "`AttributeFilter` cannot have a length of more than
    # 10".
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
    #   with a document attribute of type `Date` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Performs a greater or equals than operation on two document
    #   attributes. Use with a document attribute of type `Date` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than
    #   Performs a less than operation on two document attributes. Use with
    #   a document attribute of type `Date` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Performs a less than or equals operation on two document attributes.
    #   Use with a document attribute of type `Date` or `Long`.
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

    # Provides the configuration information to connect to websites that
    # require user authentication.
    #
    # @note When making an API call, you may pass AuthenticationConfiguration
    #   data as a hash:
    #
    #       {
    #         basic_authentication: [
    #           {
    #             host: "Host", # required
    #             port: 1, # required
    #             credentials: "SecretArn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] basic_authentication
    #   The list of configuration information that's required to connect to
    #   and crawl a website host using basic authentication credentials.
    #
    #   The list includes the name and port number of the website host.
    #   @return [Array<Types::BasicAuthenticationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AuthenticationConfiguration AWS API Documentation
    #
    class AuthenticationConfiguration < Struct.new(
      :basic_authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information to connect to websites that
    # require basic user authentication.
    #
    # @note When making an API call, you may pass BasicAuthenticationConfiguration
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         credentials: "SecretArn", # required
    #       }
    #
    # @!attribute [rw] host
    #   The name of the website host you want to connect to using
    #   authentication credentials.
    #
    #   For example, the host name of https://a.example.com/page1.html is
    #   "a.example.com".
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number of the website host you want to connect to using
    #   authentication credentials.
    #
    #   For example, the port for https://a.example.com/page1.html is 443,
    #   the standard port for HTTPS.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   Your secret ARN, which you can create in [Secrets Manager][1]
    #
    #   You use a secret if basic authentication credentials are required to
    #   connect to a website. The secret stores your credentials of user
    #   name and password.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BasicAuthenticationConfiguration AWS API Documentation
    #
    class BasicAuthenticationConfiguration < Struct.new(
      :host,
      :port,
      :credentials)
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
    #           data_source_sync_job_id: "DataSourceSyncJobId",
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
    # index by the `BatchDeleteDocument` API.
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

    # @note When making an API call, you may pass BatchGetDocumentStatusRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         document_info_list: [ # required
    #           {
    #             document_id: "DocumentId", # required
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
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index to add documents to. The index ID is
    #   returned by the [CreateIndex ][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html
    #   @return [String]
    #
    # @!attribute [rw] document_info_list
    #   A list of `DocumentInfo` objects that identify the documents for
    #   which to get the status. You identify the documents by their
    #   document ID and optional attributes.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchGetDocumentStatusRequest AWS API Documentation
    #
    class BatchGetDocumentStatusRequest < Struct.new(
      :index_id,
      :document_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of documents that Amazon Kendra couldn't get the status for.
    #   The list includes the ID of the document and the reason that the
    #   status couldn't be found.
    #   @return [Array<Types::BatchGetDocumentStatusResponseError>]
    #
    # @!attribute [rw] document_status_list
    #   The status of documents. The status indicates if the document is
    #   waiting to be indexed, is in the process of indexing, has completed
    #   indexing, or failed indexing. If a document failed indexing, the
    #   status provides the reason why.
    #   @return [Array<Types::Status>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchGetDocumentStatusResponse AWS API Documentation
    #
    class BatchGetDocumentStatusResponse < Struct.new(
      :errors,
      :document_status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a response when the status of a document could not be
    # retrieved.
    #
    # @!attribute [rw] document_id
    #   The unique identifier of the document whose status could not be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Indicates the source of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   States that the API could not get the status of a document. This
    #   could be because the request is not valid or there is a system
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchGetDocumentStatusResponseError AWS API Documentation
    #
    class BatchGetDocumentStatusResponseError < Struct.new(
      :document_id,
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
    #                 data_source_id: "DataSourceId",
    #               },
    #             ],
    #             hierarchical_access_control_list: [
    #               {
    #                 principal_list: [ # required
    #                   {
    #                     name: "PrincipalName", # required
    #                     type: "USER", # required, accepts USER, GROUP
    #                     access: "ALLOW", # required, accepts ALLOW, DENY
    #                     data_source_id: "DataSourceId",
    #                   },
    #                 ],
    #               },
    #             ],
    #             content_type: "PDF", # accepts PDF, HTML, MS_WORD, PLAIN_TEXT, PPT
    #           },
    #         ],
    #         custom_document_enrichment_configuration: {
    #           inline_configurations: [
    #             {
    #               condition: {
    #                 condition_document_attribute_key: "DocumentAttributeKey", # required
    #                 operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #                 condition_on_value: {
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               target: {
    #                 target_document_attribute_key: "DocumentAttributeKey",
    #                 target_document_attribute_value_deletion: false,
    #                 target_document_attribute_value: {
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               document_content_deletion: false,
    #             },
    #           ],
    #           pre_extraction_hook_configuration: {
    #             invocation_condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn", # required
    #             s3_bucket: "S3BucketName", # required
    #           },
    #           post_extraction_hook_configuration: {
    #             invocation_condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn", # required
    #             s3_bucket: "S3BucketName", # required
    #           },
    #           role_arn: "RoleArn",
    #         },
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index to add the documents to. You need to
    #   create the index first using the `CreateIndex` API.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role that is allowed to run the
    #   `BatchPutDocument` API. For more information, see [IAM Roles for
    #   Amazon Kendra][1].
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
    # @!attribute [rw] custom_document_enrichment_configuration
    #   Configuration information for altering your document metadata and
    #   content during the document ingestion process when you use the
    #   `BatchPutDocument` API.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest
    #   documents into Amazon Kendra, see [Customizing document metadata
    #   during the ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #   @return [Types::CustomDocumentEnrichmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchPutDocumentRequest AWS API Documentation
    #
    class BatchPutDocumentRequest < Struct.new(
      :index_id,
      :role_arn,
      :documents,
      :custom_document_enrichment_configuration)
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
    #   reported in your Amazon Web Services CloudWatch log. For more
    #   information, see [Monitoring Amazon Kendra with Amazon CloudWatch
    #   Logs][1]
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

    # Specifies capacity units configured for your enterprise edition index.
    # You can add and remove capacity units to tune an index to your
    # requirements.
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
    #   The amount of extra storage capacity for an index. A single capacity
    #   unit provides 30 GB of storage space or 100,000 documents, whichever
    #   is reached first.
    #   @return [Integer]
    #
    # @!attribute [rw] query_capacity_units
    #   The amount of extra query capacity for an index and
    #   [GetQuerySuggestions][1] capacity.
    #
    #   A single extra capacity unit for an index provides 0.1 queries per
    #   second or approximately 8,000 queries per day.
    #
    #   `GetQuerySuggestions` capacity is five times the provisioned query
    #   capacity for an index, or the base capacity of 2.5 calls per second,
    #   whichever is higher. For example, the base capacity for an index is
    #   0.1 queries per second, and `GetQuerySuggestions` capacity has a
    #   base of 2.5 calls per second. If you add another 0.1 queries per
    #   second to total 0.2 queries per second for an index, the
    #   `GetQuerySuggestions` capacity is 2.5 calls per second (higher than
    #   five times 0.2 queries per second).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_GetQuerySuggestions.html
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

    # @note When making an API call, you may pass ClearQuerySuggestionsRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to clear query suggestions
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ClearQuerySuggestionsRequest AWS API Documentation
    #
    class ClearQuerySuggestionsRequest < Struct.new(
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gathers information about when a particular result was clicked by a
    # user. Your application uses the `SubmitFeedback` API to provide click
    # information.
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
    #   in the index using the `UpdateIndex` API.
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

    # Specifies the attachment settings for the Confluence data source.
    # Attachment settings are optional, if you don't specify settings
    # attachments, Amazon Kendra won't index them.
    #
    # @note When making an API call, you may pass ConfluenceAttachmentConfiguration
    #   data as a hash:
    #
    #       {
    #         crawl_attachments: false,
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] crawl_attachments
    #   Indicates whether Amazon Kendra indexes attachments to the pages and
    #   blogs in the Confluence data source.
    #   @return [Boolean]
    #
    # @!attribute [rw] attachment_field_mappings
    #   Defines how attachment metadata fields should be mapped to index
    #   fields. Before you can map a field, you must first create an index
    #   field with a matching type using the console or the `UpdateIndex`
    #   API.
    #
    #   If you specify the `AttachentFieldMappings` parameter, you must
    #   specify at least one field mapping.
    #   @return [Array<Types::ConfluenceAttachmentToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceAttachmentConfiguration AWS API Documentation
    #
    class ConfluenceAttachmentConfiguration < Struct.new(
      :crawl_attachments,
      :attachment_field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the mapping between a field in the Confluence data source to a
    # Amazon Kendra index field.
    #
    # You must first create the index field using the `UpdateIndex` API.
    #
    # @note When making an API call, you may pass ConfluenceAttachmentToIndexFieldMapping
    #   data as a hash:
    #
    #       {
    #         data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #         date_field_format: "DataSourceDateFieldFormat",
    #         index_field_name: "IndexFieldName",
    #       }
    #
    # @!attribute [rw] data_source_field_name
    #   The name of the field in the data source.
    #
    #   You must first create the index field using the `UpdateIndex` API.
    #   @return [String]
    #
    # @!attribute [rw] date_field_format
    #   The format for date fields in the data source. If the field
    #   specified in `DataSourceFieldName` is a date field you must specify
    #   the date format. If the field is not a date field, an exception is
    #   thrown.
    #   @return [String]
    #
    # @!attribute [rw] index_field_name
    #   The name of the index field to map to the Confluence data source
    #   field. The index field type must match the Confluence field type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceAttachmentToIndexFieldMapping AWS API Documentation
    #
    class ConfluenceAttachmentToIndexFieldMapping < Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the blog settings for the Confluence data source. Blogs are
    # always indexed unless filtered from the index by the
    # `ExclusionPatterns` or `InclusionPatterns` fields in the
    # `ConfluenceConfiguration` object.
    #
    # @note When making an API call, you may pass ConfluenceBlogConfiguration
    #   data as a hash:
    #
    #       {
    #         blog_field_mappings: [
    #           {
    #             data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] blog_field_mappings
    #   Defines how blog metadata fields should be mapped to index fields.
    #   Before you can map a field, you must first create an index field
    #   with a matching type using the console or the `UpdateIndex` API.
    #
    #   If you specify the `BlogFieldMappings` parameter, you must specify
    #   at least one field mapping.
    #   @return [Array<Types::ConfluenceBlogToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceBlogConfiguration AWS API Documentation
    #
    class ConfluenceBlogConfiguration < Struct.new(
      :blog_field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the mapping between a blog field in the Confluence data source
    # to a Amazon Kendra index field.
    #
    # You must first create the index field using the `UpdateIndex` API.
    #
    # @note When making an API call, you may pass ConfluenceBlogToIndexFieldMapping
    #   data as a hash:
    #
    #       {
    #         data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #         date_field_format: "DataSourceDateFieldFormat",
    #         index_field_name: "IndexFieldName",
    #       }
    #
    # @!attribute [rw] data_source_field_name
    #   The name of the field in the data source.
    #   @return [String]
    #
    # @!attribute [rw] date_field_format
    #   The format for date fields in the data source. If the field
    #   specified in `DataSourceFieldName` is a date field you must specify
    #   the date format. If the field is not a date field, an exception is
    #   thrown.
    #   @return [String]
    #
    # @!attribute [rw] index_field_name
    #   The name of the index field to map to the Confluence data source
    #   field. The index field type must match the Confluence field type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceBlogToIndexFieldMapping AWS API Documentation
    #
    class ConfluenceBlogToIndexFieldMapping < Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for data sources that connect to
    # Confluence.
    #
    # @note When making an API call, you may pass ConfluenceConfiguration
    #   data as a hash:
    #
    #       {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         version: "CLOUD", # required, accepts CLOUD, SERVER
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: ["ConfluenceSpaceIdentifier"],
    #           exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #       }
    #
    # @!attribute [rw] server_url
    #   The URL of your Confluence instance. Use the full URL of the server.
    #   For example, `https://server.example.com:port/`. You can also use an
    #   IP address, for example, `https://192.168.1.113/`.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of an Secrets Manager secret that
    #   contains the key/value pairs required to connect to your Confluence
    #   server. The secret must contain a JSON structure with the following
    #   keys:
    #
    #   * username - The user name or email address of a user with
    #     administrative privileges for the Confluence server.
    #
    #   * password - The password associated with the user logging in to the
    #     Confluence server.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Specifies the version of the Confluence installation that you are
    #   connecting to.
    #   @return [String]
    #
    # @!attribute [rw] space_configuration
    #   Specifies configuration information for indexing Confluence spaces.
    #   @return [Types::ConfluenceSpaceConfiguration]
    #
    # @!attribute [rw] page_configuration
    #   Specifies configuration information for indexing Confluence pages.
    #   @return [Types::ConfluencePageConfiguration]
    #
    # @!attribute [rw] blog_configuration
    #   Specifies configuration information for indexing Confluence blogs.
    #   @return [Types::ConfluenceBlogConfiguration]
    #
    # @!attribute [rw] attachment_configuration
    #   Specifies configuration information for indexing attachments to
    #   Confluence blogs and pages.
    #   @return [Types::ConfluenceAttachmentConfiguration]
    #
    # @!attribute [rw] vpc_configuration
    #   Specifies the information for connecting to an Amazon VPC.
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] inclusion_patterns
    #   A list of regular expression patterns that apply to a URL on the
    #   Confluence server. An inclusion pattern can apply to a blog post, a
    #   page, a space, or an attachment. Items that match the patterns are
    #   included in the index. Items that don't match the pattern are
    #   excluded from the index. If an item matches both an inclusion
    #   pattern and an exclusion pattern, the item isn't included in the
    #   index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of regular expression patterns that apply to a URL on the
    #   Confluence server. An exclusion pattern can apply to a blog post, a
    #   page, a space, or an attachment. Items that match the pattern are
    #   excluded from the index. Items that don't match the pattern are
    #   included in the index. If a item matches both an exclusion pattern
    #   and an inclusion pattern, the item isn't included in the index.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceConfiguration AWS API Documentation
    #
    class ConfluenceConfiguration < Struct.new(
      :server_url,
      :secret_arn,
      :version,
      :space_configuration,
      :page_configuration,
      :blog_configuration,
      :attachment_configuration,
      :vpc_configuration,
      :inclusion_patterns,
      :exclusion_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the page settings for the Confluence data source.
    #
    # @note When making an API call, you may pass ConfluencePageConfiguration
    #   data as a hash:
    #
    #       {
    #         page_field_mappings: [
    #           {
    #             data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] page_field_mappings
    #   Defines how page metadata fields should be mapped to index fields.
    #   Before you can map a field, you must first create an index field
    #   with a matching type using the console or the `UpdateIndex` API.
    #
    #   If you specify the `PageFieldMappings` parameter, you must specify
    #   at least one field mapping.
    #   @return [Array<Types::ConfluencePageToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluencePageConfiguration AWS API Documentation
    #
    class ConfluencePageConfiguration < Struct.new(
      :page_field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the mapping between a field in the Confluence data source to a
    # Amazon Kendra index field.
    #
    # You must first create the index field using the `UpdateIndex` API.
    #
    # @note When making an API call, you may pass ConfluencePageToIndexFieldMapping
    #   data as a hash:
    #
    #       {
    #         data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #         date_field_format: "DataSourceDateFieldFormat",
    #         index_field_name: "IndexFieldName",
    #       }
    #
    # @!attribute [rw] data_source_field_name
    #   The name of the field in the data source.
    #   @return [String]
    #
    # @!attribute [rw] date_field_format
    #   The format for date fields in the data source. If the field
    #   specified in `DataSourceFieldName` is a date field you must specify
    #   the date format. If the field is not a date field, an exception is
    #   thrown.
    #   @return [String]
    #
    # @!attribute [rw] index_field_name
    #   The name of the index field to map to the Confluence data source
    #   field. The index field type must match the Confluence field type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluencePageToIndexFieldMapping AWS API Documentation
    #
    class ConfluencePageToIndexFieldMapping < Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for indexing Confluence spaces.
    #
    # @note When making an API call, you may pass ConfluenceSpaceConfiguration
    #   data as a hash:
    #
    #       {
    #         crawl_personal_spaces: false,
    #         crawl_archived_spaces: false,
    #         include_spaces: ["ConfluenceSpaceIdentifier"],
    #         exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #         space_field_mappings: [
    #           {
    #             data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] crawl_personal_spaces
    #   Specifies whether Amazon Kendra should index personal spaces. Users
    #   can add restrictions to items in personal spaces. If personal spaces
    #   are indexed, queries without user context information may return
    #   restricted items from a personal space in their results. For more
    #   information, see [Filtering on user context][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html
    #   @return [Boolean]
    #
    # @!attribute [rw] crawl_archived_spaces
    #   Specifies whether Amazon Kendra should index archived spaces.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_spaces
    #   A list of space keys for Confluence spaces. If you include a key,
    #   the blogs, documents, and attachments in the space are indexed.
    #   Spaces that aren't in the list aren't indexed. A space in the list
    #   must exist. Otherwise, Amazon Kendra logs an error when the data
    #   source is synchronized. If a space is in both the `IncludeSpaces`
    #   and the `ExcludeSpaces` list, the space is excluded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_spaces
    #   A list of space keys of Confluence spaces. If you include a key, the
    #   blogs, documents, and attachments in the space are not indexed. If a
    #   space is in both the `ExcludeSpaces` and the `IncludeSpaces` list,
    #   the space is excluded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] space_field_mappings
    #   Defines how space metadata fields should be mapped to index fields.
    #   Before you can map a field, you must first create an index field
    #   with a matching type using the console or the `UpdateIndex` API.
    #
    #   If you specify the `SpaceFieldMappings` parameter, you must specify
    #   at least one field mapping.
    #   @return [Array<Types::ConfluenceSpaceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceSpaceConfiguration AWS API Documentation
    #
    class ConfluenceSpaceConfiguration < Struct.new(
      :crawl_personal_spaces,
      :crawl_archived_spaces,
      :include_spaces,
      :exclude_spaces,
      :space_field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the mapping between a field in the Confluence data source to
    # an Amazon Kendra index field.
    #
    # You must first create the index field using the `UpdateIndex` API.
    #
    # @note When making an API call, you may pass ConfluenceSpaceToIndexFieldMapping
    #   data as a hash:
    #
    #       {
    #         data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #         date_field_format: "DataSourceDateFieldFormat",
    #         index_field_name: "IndexFieldName",
    #       }
    #
    # @!attribute [rw] data_source_field_name
    #   The name of the field in the data source.
    #   @return [String]
    #
    # @!attribute [rw] date_field_format
    #   The format for date fields in the data source. If the field
    #   specified in `DataSourceFieldName` is a date field you must specify
    #   the date format. If the field is not a date field, an exception is
    #   thrown.
    #   @return [String]
    #
    # @!attribute [rw] index_field_name
    #   The name of the index field to map to the Confluence data source
    #   field. The index field type must match the Confluence field type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ConfluenceSpaceToIndexFieldMapping AWS API Documentation
    #
    class ConfluenceSpaceToIndexFieldMapping < Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name)
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
    #   The Amazon Resource Name (ARN) of credentials stored in Secrets
    #   Manager. The credentials should be a user/password pair. For more
    #   information, see [Using a Database Data Source][1]. For more
    #   information about Secrets Manager, see [ What Is Secrets Manager][2]
    #   in the <i> Secrets Manager </i> user guide.
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

    # Configuration information for your content sources, such as data
    # sources, FAQs, and content indexed directly via [BatchPutDocument][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html
    #
    # @note When making an API call, you may pass ContentSourceConfiguration
    #   data as a hash:
    #
    #       {
    #         data_source_ids: ["DataSourceId"],
    #         faq_ids: ["FaqId"],
    #         direct_put_content: false,
    #       }
    #
    # @!attribute [rw] data_source_ids
    #   The identifier of the data sources you want to use for your Amazon
    #   Kendra experience.
    #   @return [Array<String>]
    #
    # @!attribute [rw] faq_ids
    #   The identifier of the FAQs that you want to use for your Amazon
    #   Kendra experience.
    #   @return [Array<String>]
    #
    # @!attribute [rw] direct_put_content
    #   `TRUE` to use documents you indexed directly using the
    #   `BatchPutDocument` API.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ContentSourceConfiguration AWS API Documentation
    #
    class ContentSourceConfiguration < Struct.new(
      :data_source_ids,
      :faq_ids,
      :direct_put_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "DataSourceName", # required
    #         index_id: "IndexId", # required
    #         type: "S3", # required, accepts S3, SHAREPOINT, DATABASE, SALESFORCE, ONEDRIVE, SERVICENOW, CUSTOM, CONFLUENCE, GOOGLEDRIVE, WEBCRAWLER, WORKDOCS, FSX
    #         configuration: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName", # required
    #             inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             documents_metadata_configuration: {
    #               s3_prefix: "S3ObjectKey",
    #             },
    #             access_control_list_configuration: {
    #               key_path: "S3ObjectKey",
    #             },
    #           },
    #           share_point_configuration: {
    #             share_point_version: "SHAREPOINT_2013", # required, accepts SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE
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
    #             disable_local_groups: false,
    #             ssl_certificate_s3_path: {
    #               bucket: "S3BucketName", # required
    #               key: "S3ObjectKey", # required
    #             },
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
    #             disable_local_groups: false,
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
    #               filter_query: "ServiceNowKnowledgeArticleFilterQuery",
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
    #             authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #           },
    #           confluence_configuration: {
    #             server_url: "Url", # required
    #             secret_arn: "SecretArn", # required
    #             version: "CLOUD", # required, accepts CLOUD, SERVER
    #             space_configuration: {
    #               crawl_personal_spaces: false,
    #               crawl_archived_spaces: false,
    #               include_spaces: ["ConfluenceSpaceIdentifier"],
    #               exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #               space_field_mappings: [
    #                 {
    #                   data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             page_configuration: {
    #               page_field_mappings: [
    #                 {
    #                   data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             blog_configuration: {
    #               blog_field_mappings: [
    #                 {
    #                   data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             attachment_configuration: {
    #               crawl_attachments: false,
    #               attachment_field_mappings: [
    #                 {
    #                   data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             vpc_configuration: {
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           },
    #           google_drive_configuration: {
    #             secret_arn: "SecretArn", # required
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #             exclude_mime_types: ["MimeType"],
    #             exclude_user_accounts: ["UserAccount"],
    #             exclude_shared_drives: ["SharedDriveId"],
    #           },
    #           web_crawler_configuration: {
    #             urls: { # required
    #               seed_url_configuration: {
    #                 seed_urls: ["SeedUrl"], # required
    #                 web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #               },
    #               site_maps_configuration: {
    #                 site_maps: ["SiteMap"], # required
    #               },
    #             },
    #             crawl_depth: 1,
    #             max_links_per_page: 1,
    #             max_content_size_per_page_in_mega_bytes: 1.0,
    #             max_urls_per_minute_crawl_rate: 1,
    #             url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             proxy_configuration: {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn",
    #             },
    #             authentication_configuration: {
    #               basic_authentication: [
    #                 {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   credentials: "SecretArn", # required
    #                 },
    #               ],
    #             },
    #           },
    #           work_docs_configuration: {
    #             organization_id: "OrganizationId", # required
    #             crawl_comments: false,
    #             use_change_log: false,
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
    #           fsx_configuration: {
    #             file_system_id: "FileSystemId", # required
    #             file_system_type: "WINDOWS", # required, accepts WINDOWS
    #             vpc_configuration: { # required
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             secret_arn: "SecretArn",
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
    #         },
    #         description: "Description",
    #         schedule: "ScanSchedule",
    #         role_arn: "RoleArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_token: "ClientTokenName",
    #         language_code: "LanguageCode",
    #         custom_document_enrichment_configuration: {
    #           inline_configurations: [
    #             {
    #               condition: {
    #                 condition_document_attribute_key: "DocumentAttributeKey", # required
    #                 operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #                 condition_on_value: {
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               target: {
    #                 target_document_attribute_key: "DocumentAttributeKey",
    #                 target_document_attribute_value_deletion: false,
    #                 target_document_attribute_value: {
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               document_content_deletion: false,
    #             },
    #           ],
    #           pre_extraction_hook_configuration: {
    #             invocation_condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn", # required
    #             s3_bucket: "S3BucketName", # required
    #           },
    #           post_extraction_hook_configuration: {
    #             invocation_condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn", # required
    #             s3_bucket: "S3BucketName", # required
    #           },
    #           role_arn: "RoleArn",
    #         },
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
    #   The connector configuration information that is required to access
    #   the repository.
    #
    #   You can't specify the `Configuration` parameter when the `Type`
    #   parameter is set to `CUSTOM`. If you do, you receive a
    #   `ValidationException` exception.
    #
    #   The `Configuration` parameter is required for all other data
    #   sources.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   A description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   Sets the frequency for Amazon Kendra to check the documents in your
    #   repository and update the index. If you don't set a schedule Amazon
    #   Kendra will not periodically update the index. You can call the
    #   `StartDataSourceSyncJob` API to update the index.
    #
    #   You can't specify the `Schedule` parameter when the `Type`
    #   parameter is set to `CUSTOM`. If you do, you receive a
    #   `ValidationException` exception.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source. For more information, see [IAM Roles for Amazon
    #   Kendra][1].
    #
    #   You can't specify the `RoleArn` parameter when the `Type` parameter
    #   is set to `CUSTOM`. If you do, you receive a `ValidationException`
    #   exception.
    #
    #   The `RoleArn` parameter is required for all other data sources.
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
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create a data
    #   source. Multiple calls to the `CreateDataSource` API with the same
    #   client token will create only one data source.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The code for a language. This allows you to support a language for
    #   all documents when creating the data source. English is supported by
    #   default. For more information on supported languages, including
    #   their codes, see [Adding documents in languages other than
    #   English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
    #   @return [String]
    #
    # @!attribute [rw] custom_document_enrichment_configuration
    #   Configuration information for altering document metadata and content
    #   during the document ingestion process when you create a data source.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest
    #   documents into Amazon Kendra, see [Customizing document metadata
    #   during the ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #   @return [Types::CustomDocumentEnrichmentConfiguration]
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
      :tags,
      :client_token,
      :language_code,
      :custom_document_enrichment_configuration)
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

    # @note When making an API call, you may pass CreateExperienceRequest
    #   data as a hash:
    #
    #       {
    #         name: "ExperienceName", # required
    #         index_id: "IndexId", # required
    #         role_arn: "RoleArn",
    #         configuration: {
    #           content_source_configuration: {
    #             data_source_ids: ["DataSourceId"],
    #             faq_ids: ["FaqId"],
    #             direct_put_content: false,
    #           },
    #           user_identity_configuration: {
    #             identity_attribute_name: "IdentityAttributeName",
    #           },
    #         },
    #         description: "Description",
    #         client_token: "ClientTokenName",
    #       }
    #
    # @!attribute [rw] name
    #   A name for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and
    #   Amazon Web Services SSO that stores your user and group information.
    #   For more information, see [IAM roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides the configuration information for your Amazon Kendra
    #   experience. This includes `ContentSourceConfiguration`, which
    #   specifies the data source IDs and/or FAQ IDs, and
    #   `UserIdentityConfiguration`, which specifies the user or group
    #   information to grant access to your Amazon Kendra experience.
    #   @return [Types::ExperienceConfiguration]
    #
    # @!attribute [rw] description
    #   A description for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Kendra experience. Multiple calls to the `CreateExperience`
    #   API with the same client token creates only one Amazon Kendra
    #   experience.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateExperienceRequest AWS API Documentation
    #
    class CreateExperienceRequest < Struct.new(
      :name,
      :index_id,
      :role_arn,
      :configuration,
      :description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier for your created Amazon Kendra experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateExperienceResponse AWS API Documentation
    #
    class CreateExperienceResponse < Struct.new(
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
    #         client_token: "ClientTokenName",
    #         language_code: "LanguageCode",
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
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create a FAQ.
    #   Multiple calls to the `CreateFaqRequest` API with the same client
    #   token will create only one FAQ.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The code for a language. This allows you to support a language for
    #   the FAQ document. English is supported by default. For more
    #   information on supported languages, including their codes, see
    #   [Adding documents in languages other than English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
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
      :file_format,
      :client_token,
      :language_code)
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
    #         user_token_configurations: [
    #           {
    #             jwt_token_type_configuration: {
    #               key_location: "URL", # required, accepts URL, SECRET_MANAGER
    #               url: "Url",
    #               secret_manager_arn: "RoleArn",
    #               user_name_attribute_field: "UserNameAttributeField",
    #               group_attribute_field: "GroupAttributeField",
    #               issuer: "Issuer",
    #               claim_regex: "ClaimRegex",
    #             },
    #             json_token_type_configuration: {
    #               user_name_attribute_field: "String", # required
    #               group_attribute_field: "String", # required
    #             },
    #           },
    #         ],
    #         user_context_policy: "ATTRIBUTE_FILTER", # accepts ATTRIBUTE_FILTER, USER_TOKEN
    #         user_group_resolution_configuration: {
    #           user_group_resolution_mode: "AWS_SSO", # required, accepts AWS_SSO, NONE
    #         },
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
    #
    #   For more information on quota limits for enterprise and developer
    #   editions, see [Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An Identity and Access Management(IAM) role that gives Amazon Kendra
    #   permissions to access your Amazon CloudWatch logs and metrics. This
    #   is also the role used when you use the `BatchPutDocument` API to
    #   index documents from an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The identifier of the KMScustomer managed key (CMK) to use to
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
    #   Multiple calls to the `CreateIndex` API with the same client token
    #   will create only one index.
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
    # @!attribute [rw] user_token_configurations
    #   The user token configuration.
    #   @return [Array<Types::UserTokenConfiguration>]
    #
    # @!attribute [rw] user_context_policy
    #   The user context policy.
    #
    #   ATTRIBUTE\_FILTER
    #
    #   : All indexed content is searchable and displayable for all users.
    #     If you want to filter search results on user context, you can use
    #     the attribute filters of `_user_id` and `_group_ids` or you can
    #     provide user and group information in `UserContext`.
    #
    #   USER\_TOKEN
    #
    #   : Enables token-based user access control to filter search results
    #     on user context. All documents with no access control and all
    #     documents accessible to the user will be searchable and
    #     displayable.
    #   @return [String]
    #
    # @!attribute [rw] user_group_resolution_configuration
    #   Enables fetching access levels of groups and users from an Amazon
    #   Web Services Single Sign On identity source. To configure this, see
    #   [UserGroupResolutionConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html
    #   @return [Types::UserGroupResolutionConfiguration]
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
      :tags,
      :user_token_configurations,
      :user_context_policy,
      :user_group_resolution_configuration)
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

    # @note When making an API call, you may pass CreateQuerySuggestionsBlockListRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         name: "QuerySuggestionsBlockListName", # required
    #         description: "Description",
    #         source_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         client_token: "ClientTokenName",
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to create a query suggestions
    #   block list for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user friendly name for the block list.
    #
    #   For example, the block list named 'offensive-words' includes all
    #   offensive words that could appear in user queries and need to be
    #   blocked from suggestions.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description for the block list.
    #
    #   For example, the description "List of all offensive words that can
    #   appear in user queries and need to be blocked from suggestions."
    #   @return [String]
    #
    # @!attribute [rw] source_s3_path
    #   The S3 path to your block list text file in your S3 bucket.
    #
    #   Each block word or phrase should be on a separate line in a text
    #   file.
    #
    #   For information on the current quota limits for block lists, see
    #   [Quotas for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create a query
    #   suggestions block list.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM (Identity and Access Management) role used by Amazon Kendra
    #   to access the block list text file in your S3 bucket.
    #
    #   You need permissions to the role ARN (Amazon Web Services Resource
    #   Name). The role needs S3 read permissions to your file in S3 and
    #   needs to give STS (Security Token Service) assume role permissions
    #   to Amazon Kendra.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag that you can assign to a block list that categorizes the block
    #   list.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateQuerySuggestionsBlockListRequest AWS API Documentation
    #
    class CreateQuerySuggestionsBlockListRequest < Struct.new(
      :index_id,
      :name,
      :description,
      :source_s3_path,
      :client_token,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the created block list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateQuerySuggestionsBlockListResponse AWS API Documentation
    #
    class CreateQuerySuggestionsBlockListResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateThesaurusRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         name: "ThesaurusName", # required
    #         description: "Description",
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         source_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         client_token: "ClientTokenName",
    #       }
    #
    # @!attribute [rw] index_id
    #   The unique identifier of the index for the new thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the new thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the new thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An IAM role that gives Amazon Kendra permissions to access thesaurus
    #   file specified in `SourceS3Path`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify the thesaurus. You can use
    #   the tags to identify and organize your resources and to control
    #   access to resources.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] source_s3_path
    #   The thesaurus file Amazon S3 source path.
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create a
    #   thesaurus. Multiple calls to the `CreateThesaurus` API with the same
    #   client token will create only one thesaurus.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateThesaurusRequest AWS API Documentation
    #
    class CreateThesaurusRequest < Struct.new(
      :index_id,
      :name,
      :description,
      :role_arn,
      :tags,
      :source_s3_path,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the thesaurus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateThesaurusResponse AWS API Documentation
    #
    class CreateThesaurusResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information for altering document metadata
    # and content during the document ingestion process.
    #
    # For more information, see [Customizing document metadata during the
    # ingestion process][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #
    # @note When making an API call, you may pass CustomDocumentEnrichmentConfiguration
    #   data as a hash:
    #
    #       {
    #         inline_configurations: [
    #           {
    #             condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             target: {
    #               target_document_attribute_key: "DocumentAttributeKey",
    #               target_document_attribute_value_deletion: false,
    #               target_document_attribute_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             document_content_deletion: false,
    #           },
    #         ],
    #         pre_extraction_hook_configuration: {
    #           invocation_condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           lambda_arn: "LambdaArn", # required
    #           s3_bucket: "S3BucketName", # required
    #         },
    #         post_extraction_hook_configuration: {
    #           invocation_condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           lambda_arn: "LambdaArn", # required
    #           s3_bucket: "S3BucketName", # required
    #         },
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] inline_configurations
    #   Configuration information to alter document attributes or metadata
    #   fields and content when ingesting documents into Amazon Kendra.
    #   @return [Array<Types::InlineCustomDocumentEnrichmentConfiguration>]
    #
    # @!attribute [rw] pre_extraction_hook_configuration
    #   Configuration information for invoking a Lambda function in Lambda
    #   on the original or raw documents before extracting their metadata
    #   and text. You can use a Lambda function to apply advanced logic for
    #   creating, modifying, or deleting document metadata and content. For
    #   more information, see [Advanced data manipulation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation
    #   @return [Types::HookConfiguration]
    #
    # @!attribute [rw] post_extraction_hook_configuration
    #   Configuration information for invoking a Lambda function in Lambda
    #   on the structured documents with their metadata and text extracted.
    #   You can use a Lambda function to apply advanced logic for creating,
    #   modifying, or deleting document metadata and content. For more
    #   information, see [Advanced data manipulation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation
    #   @return [Types::HookConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to run
    #   `PreExtractionHookConfiguration` and
    #   `PostExtractionHookConfiguration` for altering document metadata and
    #   content during the document ingestion process. For more information,
    #   see [IAM roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CustomDocumentEnrichmentConfiguration AWS API Documentation
    #
    class CustomDocumentEnrichmentConfiguration < Struct.new(
      :inline_configurations,
      :pre_extraction_hook_configuration,
      :post_extraction_hook_configuration,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for an Amazon Kendra data source.
    #
    # @note When making an API call, you may pass DataSourceConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName", # required
    #           inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #           inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           documents_metadata_configuration: {
    #             s3_prefix: "S3ObjectKey",
    #           },
    #           access_control_list_configuration: {
    #             key_path: "S3ObjectKey",
    #           },
    #         },
    #         share_point_configuration: {
    #           share_point_version: "SHAREPOINT_2013", # required, accepts SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE
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
    #           disable_local_groups: false,
    #           ssl_certificate_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
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
    #           disable_local_groups: false,
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
    #             filter_query: "ServiceNowKnowledgeArticleFilterQuery",
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
    #           authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #         },
    #         confluence_configuration: {
    #           server_url: "Url", # required
    #           secret_arn: "SecretArn", # required
    #           version: "CLOUD", # required, accepts CLOUD, SERVER
    #           space_configuration: {
    #             crawl_personal_spaces: false,
    #             crawl_archived_spaces: false,
    #             include_spaces: ["ConfluenceSpaceIdentifier"],
    #             exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #             space_field_mappings: [
    #               {
    #                 data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName",
    #               },
    #             ],
    #           },
    #           page_configuration: {
    #             page_field_mappings: [
    #               {
    #                 data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName",
    #               },
    #             ],
    #           },
    #           blog_configuration: {
    #             blog_field_mappings: [
    #               {
    #                 data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName",
    #               },
    #             ],
    #           },
    #           attachment_configuration: {
    #             crawl_attachments: false,
    #             attachment_field_mappings: [
    #               {
    #                 data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName",
    #               },
    #             ],
    #           },
    #           vpc_configuration: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["VpcSecurityGroupId"], # required
    #           },
    #           inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         },
    #         google_drive_configuration: {
    #           secret_arn: "SecretArn", # required
    #           inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           exclude_mime_types: ["MimeType"],
    #           exclude_user_accounts: ["UserAccount"],
    #           exclude_shared_drives: ["SharedDriveId"],
    #         },
    #         web_crawler_configuration: {
    #           urls: { # required
    #             seed_url_configuration: {
    #               seed_urls: ["SeedUrl"], # required
    #               web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #             },
    #             site_maps_configuration: {
    #               site_maps: ["SiteMap"], # required
    #             },
    #           },
    #           crawl_depth: 1,
    #           max_links_per_page: 1,
    #           max_content_size_per_page_in_mega_bytes: 1.0,
    #           max_urls_per_minute_crawl_rate: 1,
    #           url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           proxy_configuration: {
    #             host: "Host", # required
    #             port: 1, # required
    #             credentials: "SecretArn",
    #           },
    #           authentication_configuration: {
    #             basic_authentication: [
    #               {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 credentials: "SecretArn", # required
    #               },
    #             ],
    #           },
    #         },
    #         work_docs_configuration: {
    #           organization_id: "OrganizationId", # required
    #           crawl_comments: false,
    #           use_change_log: false,
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
    #         fsx_configuration: {
    #           file_system_id: "FileSystemId", # required
    #           file_system_type: "WINDOWS", # required, accepts WINDOWS
    #           vpc_configuration: { # required
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["VpcSecurityGroupId"], # required
    #           },
    #           secret_arn: "SecretArn",
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
    #   Provides configuration for data sources that connect to Microsoft
    #   OneDrive.
    #   @return [Types::OneDriveConfiguration]
    #
    # @!attribute [rw] service_now_configuration
    #   Provides configuration for data sources that connect to ServiceNow
    #   instances.
    #   @return [Types::ServiceNowConfiguration]
    #
    # @!attribute [rw] confluence_configuration
    #   Provides configuration information for connecting to a Confluence
    #   data source.
    #   @return [Types::ConfluenceConfiguration]
    #
    # @!attribute [rw] google_drive_configuration
    #   Provides configuration for data sources that connect to Google
    #   Drive.
    #   @return [Types::GoogleDriveConfiguration]
    #
    # @!attribute [rw] web_crawler_configuration
    #   Provides the configuration information required for Amazon Kendra
    #   Web Crawler.
    #   @return [Types::WebCrawlerConfiguration]
    #
    # @!attribute [rw] work_docs_configuration
    #   Provides the configuration information to connect to Amazon WorkDocs
    #   as your data source.
    #   @return [Types::WorkDocsConfiguration]
    #
    # @!attribute [rw] fsx_configuration
    #   Provides the configuration information to connect to Amazon FSx as
    #   your data source.
    #   @return [Types::FsxConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :s3_configuration,
      :share_point_configuration,
      :database_configuration,
      :salesforce_configuration,
      :one_drive_configuration,
      :service_now_configuration,
      :confluence_configuration,
      :google_drive_configuration,
      :web_crawler_configuration,
      :work_docs_configuration,
      :fsx_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data source information for user context filtering.
    #
    # @note When making an API call, you may pass DataSourceGroup
    #   data as a hash:
    #
    #       {
    #         group_id: "PrincipalName", # required
    #         data_source_id: "DataSourceId", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   The identifier of the group you want to add to your list of groups.
    #   This is for filtering search results based on the groups' access to
    #   documents.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source group you want to add to your list
    #   of data source groups. This is for filtering search results based on
    #   the groups' access to documents in that data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DataSourceGroup AWS API Documentation
    #
    class DataSourceGroup < Struct.new(
      :group_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon Kendra data source. Returned in a
    # call to the `DescribeDataSource` API.
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
    #   The status of the data source. When the status is `ACTIVE` the data
    #   source is ready to use.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The code for a language. This shows a supported language for all
    #   documents in the data source. English is supported by default. For
    #   more information on supported languages, including their codes, see
    #   [Adding documents in languages other than English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
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
      :status,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a data source synchronization job.
    #
    # @!attribute [rw] execution_id
    #   A unique identifier for the synchronization job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The UNIX datetime that the synchronization job started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The UNIX datetime that the synchronization job completed.
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
    #   indicates the reason the synchronization failed.
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
    #         data_source_sync_job_id: "DataSourceSyncJobId",
    #       }
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source that is running the sync job.
    #   @return [String]
    #
    # @!attribute [rw] data_source_sync_job_id
    #   The ID of the sync job that is running on the data source.
    #
    #   If the ID of a sync job is not provided and there is a sync job
    #   running, then the ID of this sync job is used and metrics are
    #   generated for this sync job.
    #
    #   If the ID of a sync job is not provided and there is no sync job
    #   running, then no metrics are generated and documents are
    #   indexed/deleted at the index level without sync job metrics
    #   included.
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
    # must first create the fields in the index using the `UpdateIndex` API.
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

    # @note When making an API call, you may pass DeleteExperienceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience you
    #   want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteExperienceRequest AWS API Documentation
    #
    class DeleteExperienceRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteExperienceResponse AWS API Documentation
    #
    class DeleteExperienceResponse < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass DeletePrincipalMappingRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         data_source_id: "DataSourceId",
    #         group_id: "GroupId", # required
    #         ordering_id: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to delete a group from.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source you want to delete a group from.
    #
    #   This is useful if a group is tied to multiple data sources and you
    #   want to delete a group from accessing documents in a certain data
    #   source. For example, the groups "Research", "Engineering", and
    #   "Sales and Marketing" are all tied to the company's documents
    #   stored in the data sources Confluence and Salesforce. You want to
    #   delete "Research" and "Engineering" groups from Salesforce, so
    #   that these groups cannot access customer-related documents stored in
    #   Salesforce. Only "Sales and Marketing" should access documents in
    #   the Salesforce data source.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the group you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] ordering_id
    #   The timestamp identifier you specify to ensure Amazon Kendra does
    #   not override the latest `DELETE` action with previous actions. The
    #   highest number ID, which is the ordering ID, is the latest action
    #   you want to process and apply on top of other actions with lower
    #   number IDs. This prevents previous actions with lower number IDs
    #   from possibly overriding the latest action.
    #
    #   The ordering ID can be the UNIX time of the last update you made to
    #   a group members list. You would then provide this list when calling
    #   `PutPrincipalMapping`. This ensures your `DELETE` action for that
    #   updated group with the latest members list doesn't get overwritten
    #   by earlier `DELETE` actions for the same group which are yet to be
    #   processed.
    #
    #   The default ordering ID is the current UNIX time in milliseconds
    #   that the action was received by Amazon Kendra.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeletePrincipalMappingRequest AWS API Documentation
    #
    class DeletePrincipalMappingRequest < Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      :ordering_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteQuerySuggestionsBlockListRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         id: "QuerySuggestionsBlockListId", # required
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the you want to delete a block list from.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the block list that needs to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteQuerySuggestionsBlockListRequest AWS API Documentation
    #
    class DeleteQuerySuggestionsBlockListRequest < Struct.new(
      :index_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteThesaurusRequest
    #   data as a hash:
    #
    #       {
    #         id: "ThesaurusId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the thesaurus to delete.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index associated with the thesaurus to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteThesaurusRequest AWS API Documentation
    #
    class DeleteThesaurusRequest < Struct.new(
      :id,
      :index_id)
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
    #   The schedule for Amazon Kendra to update the index.
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
    # @!attribute [rw] language_code
    #   The code for a language. This shows a supported language for all
    #   documents in the data source. English is supported by default. For
    #   more information on supported languages, including their codes, see
    #   [Adding documents in languages other than English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
    #   @return [String]
    #
    # @!attribute [rw] custom_document_enrichment_configuration
    #   Configuration information for altering document metadata and content
    #   during the document ingestion process when you describe a data
    #   source.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest
    #   documents into Amazon Kendra, see [Customizing document metadata
    #   during the ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #   @return [Types::CustomDocumentEnrichmentConfiguration]
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
      :error_message,
      :language_code,
      :custom_document_enrichment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExperienceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience you want to get
    #   information on.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience you
    #   want to get information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeExperienceRequest AWS API Documentation
    #
    class DescribeExperienceRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Shows the identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   Shows the identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Shows the name of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   Shows the endpoint URLs for your Amazon Kendra experiences. The URLs
    #   are unique and fully hosted by Amazon Web Services.
    #   @return [Array<Types::ExperienceEndpoint>]
    #
    # @!attribute [rw] configuration
    #   Shows the configuration information for your Amazon Kendra
    #   experience. This includes `ContentSourceConfiguration`, which
    #   specifies the data source IDs and/or FAQ IDs, and
    #   `UserIdentityConfiguration`, which specifies the user or group
    #   information to grant access to your Amazon Kendra experience.
    #   @return [Types::ExperienceConfiguration]
    #
    # @!attribute [rw] created_at
    #   Shows the date-time your Amazon Kendra experience was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Shows the date-time your Amazon Kendra experience was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Shows the description for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current processing status of your Amazon Kendra experience. When
    #   the status is `ACTIVE`, your Amazon Kendra experience is ready to
    #   use. When the status is `FAILED`, the `ErrorMessage` field contains
    #   the reason that this failed.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Shows the Amazon Resource Name (ARN) of a role with permission to
    #   access `Query` API, `QuerySuggestions` API, `SubmitFeedback` API,
    #   and Amazon Web Services SSO that stores your user and group
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The reason your Amazon Kendra experience could not properly process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeExperienceResponse AWS API Documentation
    #
    class DescribeExperienceResponse < Struct.new(
      :id,
      :index_id,
      :name,
      :endpoints,
      :configuration,
      :created_at,
      :updated_at,
      :description,
      :status,
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
    # @!attribute [rw] language_code
    #   The code for a language. This shows a supported language for the FAQ
    #   document. English is supported by default. For more information on
    #   supported languages, including their codes, see [Adding documents in
    #   languages other than English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
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
      :file_format,
      :language_code)
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
    #   The name of the index.
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
    #   The identifier of the KMScustomer master key (CMK) used to encrypt
    #   your data. Amazon Kendra doesn't support asymmetric CMKs.
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
    #   For Enterprise edition indexes, you can choose to use additional
    #   capacity to meet the needs of your application. This contains the
    #   capacity units used for the index. A 0 for the query capacity or the
    #   storage capacity indicates that the index is using the default
    #   capacity for the index.
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @!attribute [rw] user_token_configurations
    #   The user token configuration for the Amazon Kendra index.
    #   @return [Array<Types::UserTokenConfiguration>]
    #
    # @!attribute [rw] user_context_policy
    #   The user context policy for the Amazon Kendra index.
    #   @return [String]
    #
    # @!attribute [rw] user_group_resolution_configuration
    #   Shows whether you have enabled the configuration for fetching access
    #   levels of groups and users from an Amazon Web Services Single Sign
    #   On identity source.
    #   @return [Types::UserGroupResolutionConfiguration]
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
      :capacity_units,
      :user_token_configurations,
      :user_context_policy,
      :user_group_resolution_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePrincipalMappingRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         data_source_id: "DataSourceId",
    #         group_id: "GroupId", # required
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index required to check the processing of
    #   `PUT` and `DELETE` actions for mapping users to their groups.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source to check the processing of `PUT`
    #   and `DELETE` actions for mapping users to their groups.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the group required to check the processing of
    #   `PUT` and `DELETE` actions for mapping users to their groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribePrincipalMappingRequest AWS API Documentation
    #
    class DescribePrincipalMappingRequest < Struct.new(
      :index_id,
      :data_source_id,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_id
    #   Shows the identifier of the index to see information on the
    #   processing of `PUT` and `DELETE` actions for mapping users to their
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Shows the identifier of the data source to see information on the
    #   processing of `PUT` and `DELETE` actions for mapping users to their
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   Shows the identifier of the group to see information on the
    #   processing of `PUT` and `DELETE` actions for mapping users to their
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] group_ordering_id_summaries
    #   Shows the following information on the processing of `PUT` and
    #   `DELETE` actions for mapping users to their groups:
    #
    #   * Status – the status can be either `PROCESSING`, `SUCCEEDED`,
    #     `DELETING`, `DELETED`, or `FAILED`.
    #
    #   * Last updated – the last date-time an action was updated.
    #
    #   * Received – the last date-time an action was received or submitted.
    #
    #   * Ordering ID – the latest action that should process and apply
    #     after other actions.
    #
    #   * Failure reason – the reason an action could not be processed.
    #   @return [Array<Types::GroupOrderingIdSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribePrincipalMappingResponse AWS API Documentation
    #
    class DescribePrincipalMappingResponse < Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      :group_ordering_id_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeQuerySuggestionsBlockListRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         id: "QuerySuggestionsBlockListId", # required
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for the block list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the block list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeQuerySuggestionsBlockListRequest AWS API Documentation
    #
    class DescribeQuerySuggestionsBlockListRequest < Struct.new(
      :index_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_id
    #   Shows the identifier of the index for the block list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Shows the unique identifier of the block list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Shows the name of the block list.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Shows the description for the block list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Shows whether the current status of the block list is `ACTIVE` or
    #   `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Shows the error message with details when there are issues in
    #   processing the block list.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Shows the date-time a block list for query suggestions was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Shows the date-time a block list for query suggestions was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] source_s3_path
    #   Shows the current S3 path to your block list text file in your S3
    #   bucket.
    #
    #   Each block word or phrase should be on a separate line in a text
    #   file.
    #
    #   For information on the current quota limits for block lists, see
    #   [Quotas for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] item_count
    #   Shows the current number of valid, non-empty words or phrases in the
    #   block list text file.
    #   @return [Integer]
    #
    # @!attribute [rw] file_size_bytes
    #   Shows the current size of the block list text file in S3.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   Shows the current IAM (Identity and Access Management) role used by
    #   Amazon Kendra to access the block list text file in S3.
    #
    #   The role needs S3 read permissions to your file in S3 and needs to
    #   give STS (Security Token Service) assume role permissions to Amazon
    #   Kendra.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeQuerySuggestionsBlockListResponse AWS API Documentation
    #
    class DescribeQuerySuggestionsBlockListResponse < Struct.new(
      :index_id,
      :id,
      :name,
      :description,
      :status,
      :error_message,
      :created_at,
      :updated_at,
      :source_s3_path,
      :item_count,
      :file_size_bytes,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeQuerySuggestionsConfigRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to describe query suggestions
    #   settings for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeQuerySuggestionsConfigRequest AWS API Documentation
    #
    class DescribeQuerySuggestionsConfigRequest < Struct.new(
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mode
    #   Shows whether query suggestions are currently in `ENABLED` mode or
    #   `LEARN_ONLY` mode.
    #
    #   By default, Amazon Kendra enables query suggestions.`LEARN_ONLY`
    #   turns off query suggestions for your users. You can change the mode
    #   using the [UpdateQuerySuggestionsConfig][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateQuerySuggestionsConfig.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Shows whether the status of query suggestions settings is currently
    #   Active or Updating.
    #
    #   Active means the current settings apply and Updating means your
    #   changed settings are in the process of applying.
    #   @return [String]
    #
    # @!attribute [rw] query_log_look_back_window_in_days
    #   Shows how recent your queries are in your query log time window (in
    #   days).
    #   @return [Integer]
    #
    # @!attribute [rw] include_queries_without_user_information
    #   Shows whether Amazon Kendra uses all queries or only uses queries
    #   that include user information to generate query suggestions.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_number_of_querying_users
    #   Shows the minimum number of unique users who must search a query in
    #   order for the query to be eligible to suggest to your users.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_query_count
    #   Shows the minimum number of times a query must be searched in order
    #   for the query to be eligible to suggest to your users.
    #   @return [Integer]
    #
    # @!attribute [rw] last_suggestions_build_time
    #   Shows the date-time query suggestions for an index was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_clear_time
    #   Shows the date-time query suggestions for an index was last cleared.
    #
    #   After you clear suggestions, Amazon Kendra learns new suggestions
    #   based on new queries added to the query log from the time you
    #   cleared suggestions. Amazon Kendra only considers re-occurences of a
    #   query from the time you cleared suggestions.
    #   @return [Time]
    #
    # @!attribute [rw] total_suggestions_count
    #   Shows the current total count of query suggestions for an index.
    #
    #   This count can change when you update your query suggestions
    #   settings, if you filter out certain queries from suggestions using a
    #   block list, and as the query log accumulates more queries for Amazon
    #   Kendra to learn from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeQuerySuggestionsConfigResponse AWS API Documentation
    #
    class DescribeQuerySuggestionsConfigResponse < Struct.new(
      :mode,
      :status,
      :query_log_look_back_window_in_days,
      :include_queries_without_user_information,
      :minimum_number_of_querying_users,
      :minimum_query_count,
      :last_suggestions_build_time,
      :last_clear_time,
      :total_suggestions_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeThesaurusRequest
    #   data as a hash:
    #
    #       {
    #         id: "ThesaurusId", # required
    #         index_id: "IndexId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the thesaurus to describe.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index associated with the thesaurus to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeThesaurusRequest AWS API Documentation
    #
    class DescribeThesaurusRequest < Struct.new(
      :id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index associated with the thesaurus to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The thesaurus name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The thesaurus description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the thesaurus. When the value is `ACTIVE`,
    #   queries are able to use the thesaurus. If the `Status` field value
    #   is `FAILED`, the `ErrorMessage` field provides more information.
    #
    #   If the status is `ACTIVE_BUT_UPDATE_FAILED`, it means that Amazon
    #   Kendra could not ingest the new thesaurus file. The old thesaurus
    #   file is still active.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   provides more information.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix datetime that the thesaurus was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix datetime that the thesaurus was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   An IAM role that gives Amazon Kendra permissions to access thesaurus
    #   file specified in `SourceS3Path`.
    #   @return [String]
    #
    # @!attribute [rw] source_s3_path
    #   Information required to find a specific file in an Amazon S3 bucket.
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] file_size_bytes
    #   The size of the thesaurus file in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] term_count
    #   The number of unique terms in the thesaurus file. For example, the
    #   synonyms `a,b,c` and `a=>d`, the term count would be 4.
    #   @return [Integer]
    #
    # @!attribute [rw] synonym_rule_count
    #   The number of synonym rules in the thesaurus file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeThesaurusResponse AWS API Documentation
    #
    class DescribeThesaurusResponse < Struct.new(
      :id,
      :index_id,
      :name,
      :description,
      :status,
      :error_message,
      :created_at,
      :updated_at,
      :role_arn,
      :source_s3_path,
      :file_size_bytes,
      :term_count,
      :synonym_rule_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateEntitiesFromExperienceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #         entity_list: [ # required
    #           {
    #             entity_id: "EntityId", # required
    #             entity_type: "USER", # required, accepts USER, GROUP
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] entity_list
    #   Lists users or groups in your Amazon Web Services SSO identity
    #   source.
    #   @return [Array<Types::EntityConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DisassociateEntitiesFromExperienceRequest AWS API Documentation
    #
    class DisassociateEntitiesFromExperienceRequest < Struct.new(
      :id,
      :index_id,
      :entity_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entity_list
    #   Lists the users or groups in your Amazon Web Services SSO identity
    #   source that failed to properly remove access to your Amazon Kendra
    #   experience.
    #   @return [Array<Types::FailedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DisassociateEntitiesFromExperienceResponse AWS API Documentation
    #
    class DisassociateEntitiesFromExperienceResponse < Struct.new(
      :failed_entity_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociatePersonasFromEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #         entity_ids: ["EntityId"], # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] entity_ids
    #   The identifiers of users or groups in your Amazon Web Services SSO
    #   identity source. For example, user IDs could be user emails.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DisassociatePersonasFromEntitiesRequest AWS API Documentation
    #
    class DisassociatePersonasFromEntitiesRequest < Struct.new(
      :id,
      :index_id,
      :entity_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entity_list
    #   Lists the users or groups in your Amazon Web Services SSO identity
    #   source that failed to properly remove access to your Amazon Kendra
    #   experience.
    #   @return [Array<Types::FailedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DisassociatePersonasFromEntitiesResponse AWS API Documentation
    #
    class DisassociatePersonasFromEntitiesResponse < Struct.new(
      :failed_entity_list)
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
    #             data_source_id: "DataSourceId",
    #           },
    #         ],
    #         hierarchical_access_control_list: [
    #           {
    #             principal_list: [ # required
    #               {
    #                 name: "PrincipalName", # required
    #                 type: "USER", # required, accepts USER, GROUP
    #                 access: "ALLOW", # required, accepts ALLOW, DENY
    #                 data_source_id: "DataSourceId",
    #               },
    #             ],
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
    #   you're using an Amazon Web Services SDK to call Amazon Kendra APIs.
    #   If you are calling the Amazon Kendra endpoint directly using REST,
    #   you must base64 encode the contents before sending.
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
    #
    #   For example, 'DataSourceId' and 'DataSourceSyncJobId' are custom
    #   attributes that provide information on the synchronization of
    #   documents running on a data source. Note, 'DataSourceSyncJobId'
    #   could be an optional custom attribute as Amazon Kendra will use the
    #   ID of a running sync job.
    #   @return [Array<Types::DocumentAttribute>]
    #
    # @!attribute [rw] access_control_list
    #   Information on user and group access rights, which is used for user
    #   context filtering.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] hierarchical_access_control_list
    #   The list of [principal][1] lists that define the hierarchy for which
    #   documents users should have access to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html
    #   @return [Array<Types::HierarchicalPrincipal>]
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
      :hierarchical_access_control_list,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom attribute value assigned to a document.
    #
    # For more information on how to create custom document attributes, see
    # [Custom Attributes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-attributes.html
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

    # The condition used for the target document attribute or metadata field
    # when ingesting documents into Amazon Kendra. You use this with
    # [DocumentAttributeTarget to apply the condition][1].
    #
    # For example, you can create the 'Department' target field and have
    # it prefill department names associated with the documents based on
    # information in the 'Source\_URI' field. Set the condition that if
    # the 'Source\_URI' field contains 'financial' in its URI value,
    # then prefill the target field 'Department' with the target value
    # 'Finance' for the document.
    #
    # Amazon Kendra cannot create a target field if it has not already been
    # created as an index field. After you create your index field, you can
    # create a document metadata field using `DocumentAttributeTarget`.
    # Amazon Kendra then will map your newly created metadata field to your
    # index field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeTarget.html
    #
    # @note When making an API call, you may pass DocumentAttributeCondition
    #   data as a hash:
    #
    #       {
    #         condition_document_attribute_key: "DocumentAttributeKey", # required
    #         operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #         condition_on_value: {
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] condition_document_attribute_key
    #   The identifier of the document attribute used for the condition.
    #
    #   For example, 'Source\_URI' could be an identifier for the
    #   attribute or metadata field that contains source URIs associated
    #   with the documents.
    #
    #   Amazon Kendra currently does not support `_document_body` as an
    #   attribute key used for the condition.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The condition operator.
    #
    #   For example, you can use 'Contains' to partially match a string.
    #   @return [String]
    #
    # @!attribute [rw] condition_on_value
    #   The value used by the operator.
    #
    #   For example, you can specify the value 'financial' for strings in
    #   the 'Source\_URI' field that partially match or contain this
    #   value.
    #   @return [Types::DocumentAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentAttributeCondition AWS API Documentation
    #
    class DocumentAttributeCondition < Struct.new(
      :condition_document_attribute_key,
      :operator,
      :condition_on_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target document attribute or metadata field you want to alter when
    # ingesting documents into Amazon Kendra.
    #
    # For example, you can delete customer identification numbers associated
    # with the documents, stored in the document metadata field called
    # 'Customer\_ID'. You set the target key as 'Customer\_ID' and the
    # deletion flag to `TRUE`. This removes all customer ID values in the
    # field 'Customer\_ID'. This would scrub personally identifiable
    # information from each document's metadata.
    #
    # Amazon Kendra cannot create a target field if it has not already been
    # created as an index field. After you create your index field, you can
    # create a document metadata field using `DocumentAttributeTarget`.
    # Amazon Kendra then will map your newly created metadata field to your
    # index field.
    #
    # You can also use this with [DocumentAttributeCondition][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeCondition.html
    #
    # @note When making an API call, you may pass DocumentAttributeTarget
    #   data as a hash:
    #
    #       {
    #         target_document_attribute_key: "DocumentAttributeKey",
    #         target_document_attribute_value_deletion: false,
    #         target_document_attribute_value: {
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] target_document_attribute_key
    #   The identifier of the target document attribute or metadata field.
    #
    #   For example, 'Department' could be an identifier for the target
    #   attribute or metadata field that includes the department names
    #   associated with the documents.
    #   @return [String]
    #
    # @!attribute [rw] target_document_attribute_value_deletion
    #   `TRUE` to delete the existing target value for your specified target
    #   attribute key. You cannot create a target value and set this to
    #   `TRUE`. To create a target value (`TargetDocumentAttributeValue`),
    #   set this to `FALSE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_document_attribute_value
    #   The target value you want to create for the target attribute.
    #
    #   For example, 'Finance' could be the target value for the target
    #   attribute key 'Department'.
    #   @return [Types::DocumentAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentAttributeTarget AWS API Documentation
    #
    class DocumentAttributeTarget < Struct.new(
      :target_document_attribute_key,
      :target_document_attribute_value_deletion,
      :target_document_attribute_value)
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
    #
    #   It is important for the time zone to be included in the ISO 8601
    #   date-time format. For example, 2012-03-25T12:30:10+01:00 is the ISO
    #   8601 date-time format for March 25th 2012 at 12:30PM (plus 10
    #   seconds) in Central European Time.
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

    # Identifies a document for which to retrieve status information
    #
    # @note When making an API call, you may pass DocumentInfo
    #   data as a hash:
    #
    #       {
    #         document_id: "DocumentId", # required
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
    #       }
    #
    # @!attribute [rw] document_id
    #   The unique identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes that identify a specific version of a document to check.
    #
    #   The only valid attributes are:
    #
    #   * version
    #
    #   * datasourceId
    #
    #   * jobExecutionId
    #
    #   The attributes follow these rules:
    #
    #   * `dataSourceId` and `jobExecutionId` must be used together.
    #
    #   * `version` is ignored if `dataSourceId` and `jobExecutionId` are
    #     not provided.
    #
    #   * If `dataSourceId` and `jobExecutionId` are provided, but `version`
    #     is not, the version defaults to "0".
    #   @return [Array<Types::DocumentAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentInfo AWS API Documentation
    #
    class DocumentInfo < Struct.new(
      :document_id,
      :attributes)
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

    # Overrides the document relevance properties of a custom index field.
    #
    # @note When making an API call, you may pass DocumentRelevanceConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         relevance: { # required
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the tuning configuration to override document relevance
    #   at the index level.
    #   @return [String]
    #
    # @!attribute [rw] relevance
    #   Provides information for manually tuning the relevance of a field in
    #   a search. When a query includes terms that match the field, the
    #   results are given a boost in the response based on these tuning
    #   parameters.
    #   @return [Types::Relevance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentRelevanceConfiguration AWS API Documentation
    #
    class DocumentRelevanceConfiguration < Struct.new(
      :name,
      :relevance)
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
    #   A prefix used to filter metadata configuration files in the Amazon
    #   Web Services S3 bucket. The S3 bucket might contain multiple
    #   metadata files. Use `S3Prefix` to include only the desired metadata
    #   files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DocumentsMetadataConfiguration AWS API Documentation
    #
    class DocumentsMetadataConfiguration < Struct.new(
      :s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information of users or groups in your
    # Amazon Web Services SSO identity source to grant access your Amazon
    # Kendra experience.
    #
    # @note When making an API call, you may pass EntityConfiguration
    #   data as a hash:
    #
    #       {
    #         entity_id: "EntityId", # required
    #         entity_type: "USER", # required, accepts USER, GROUP
    #       }
    #
    # @!attribute [rw] entity_id
    #   The identifier of a user or group in your Amazon Web Services SSO
    #   identity source. For example, a user ID could be an email.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   Specifies whether you are configuring a `User` or a `Group`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/EntityConfiguration AWS API Documentation
    #
    class EntityConfiguration < Struct.new(
      :entity_id,
      :entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the user entity.
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] identified_user_name
    #   The user name of the user.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/EntityDisplayData AWS API Documentation
    #
    class EntityDisplayData < Struct.new(
      :user_name,
      :group_name,
      :identified_user_name,
      :first_name,
      :last_name)
      SENSITIVE = [:user_name, :group_name, :identified_user_name, :first_name, :last_name]
      include Aws::Structure
    end

    # Provides the configuration information of users or groups in your
    # Amazon Web Services SSO identity source for access to your Amazon
    # Kendra experience. Specific permissions are defined for each user or
    # group once they are granted access to your Amazon Kendra experience.
    #
    # @note When making an API call, you may pass EntityPersonaConfiguration
    #   data as a hash:
    #
    #       {
    #         entity_id: "EntityId", # required
    #         persona: "OWNER", # required, accepts OWNER, VIEWER
    #       }
    #
    # @!attribute [rw] entity_id
    #   The identifier of a user or group in your Amazon Web Services SSO
    #   identity source. For example, a user ID could be an email.
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   The persona that defines the specific permissions of the user or
    #   group in your Amazon Web Services SSO identity source. The available
    #   personas or access roles are `Owner` and `Viewer`. For more
    #   information on these personas, see [Providing access to your search
    #   page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/EntityPersonaConfiguration AWS API Documentation
    #
    class EntityPersonaConfiguration < Struct.new(
      :entity_id,
      :persona)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration information for your Amazon Kendra
    # experience. This includes the data source IDs and/or FAQ IDs, and user
    # or group information to grant access to your Amazon Kendra experience.
    #
    # @note When making an API call, you may pass ExperienceConfiguration
    #   data as a hash:
    #
    #       {
    #         content_source_configuration: {
    #           data_source_ids: ["DataSourceId"],
    #           faq_ids: ["FaqId"],
    #           direct_put_content: false,
    #         },
    #         user_identity_configuration: {
    #           identity_attribute_name: "IdentityAttributeName",
    #         },
    #       }
    #
    # @!attribute [rw] content_source_configuration
    #   The identifiers of your data sources and FAQs. Or, you can specify
    #   that you want to use documents indexed via the `BatchPutDocument`
    #   API. This is the content you want to use for your Amazon Kendra
    #   experience.
    #   @return [Types::ContentSourceConfiguration]
    #
    # @!attribute [rw] user_identity_configuration
    #   The Amazon Web Services SSO field name that contains the identifiers
    #   of your users, such as their emails.
    #   @return [Types::UserIdentityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ExperienceConfiguration AWS API Documentation
    #
    class ExperienceConfiguration < Struct.new(
      :content_source_configuration,
      :user_identity_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information of the endpoint for your Amazon
    # Kendra experience.
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint for your Amazon Kendra experience. The type
    #   currently available is `HOME`, which is a unique and fully hosted
    #   URL to the home page of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint of your Amazon Kendra experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ExperienceEndpoint AWS API Documentation
    #
    class ExperienceEndpoint < Struct.new(
      :endpoint_type,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for users or groups in your Amazon Web Services
    # SSO identity source with granted access to your Amazon Kendra
    # experience. You can create an Amazon Kendra experience such as a
    # search application. For more information on creating a search
    # application experience, see [Building a search experience with no
    # code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @!attribute [rw] entity_id
    #   The identifier of a user or group in your Amazon Web Services SSO
    #   identity source. For example, a user ID could be an email.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   Shows the type as `User` or `Group`.
    #   @return [String]
    #
    # @!attribute [rw] display_data
    #   Information about the user entity.
    #   @return [Types::EntityDisplayData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ExperienceEntitiesSummary AWS API Documentation
    #
    class ExperienceEntitiesSummary < Struct.new(
      :entity_id,
      :entity_type,
      :display_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for your Amazon Kendra experience. You can create
    # an Amazon Kendra experience such as a search application. For more
    # information on creating a search application experience, see [Building
    # a search experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @!attribute [rw] name
    #   The name of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date-time your Amazon Kendra experience was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The processing status of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The endpoint URLs for your Amazon Kendra experiences. The URLs are
    #   unique and fully hosted by Amazon Web Services.
    #   @return [Array<Types::ExperienceEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ExperiencesSummary AWS API Documentation
    #
    class ExperiencesSummary < Struct.new(
      :name,
      :id,
      :created_at,
      :status,
      :endpoints)
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

    # Information on the users or groups in your Amazon Web Services SSO
    # identity source that failed to properly configure with your Amazon
    # Kendra experience.
    #
    # @!attribute [rw] entity_id
    #   The identifier of the user or group in your Amazon Web Services SSO
    #   identity source. For example, a user ID could be an email.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The reason the user or group in your Amazon Web Services SSO
    #   identity source failed to properly configure with your Amazon Kendra
    #   experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/FailedEntity AWS API Documentation
    #
    class FailedEntity < Struct.new(
      :entity_id,
      :error_message)
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
    # @!attribute [rw] language_code
    #   The code for a language. This shows a supported language for the FAQ
    #   document as part of the summary information for FAQs. English is
    #   supported by default. For more information on supported languages,
    #   including their codes, see [Adding documents in languages other than
    #   English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
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
      :file_format,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information to connect to Amazon FSx as
    # your data source.
    #
    # @note When making an API call, you may pass FsxConfiguration
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         file_system_type: "WINDOWS", # required, accepts WINDOWS
    #         vpc_configuration: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         secret_arn: "SecretArn",
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
    # @!attribute [rw] file_system_id
    #   The identifier of the Amazon FSx file system.
    #
    #   You can find your file system ID on the file system dashboard in the
    #   Amazon FSx console. For information on how to create a file system
    #   in Amazon FSx console, using Windows File Server as an example, see
    #   [Amazon FSx Getting started guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/getting-started-step1.html
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   The Amazon FSx file system type. Windows is currently the only
    #   supported type.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Provides the configuration information for connecting to an Amazon
    #   Virtual Private Cloud for your Amazon FSx. Your Amazon FSx instance
    #   must reside inside your VPC.
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of an Secrets Manager secret that
    #   contains the key-value pairs required to connect to your Amazon FSx
    #   file system. Windows is currently the only supported type. The
    #   secret must contain a JSON structure with the following keys:
    #
    #   * username—The Active Directory user name, along with the Domain
    #     Name System (DNS) domain name. For example,
    #     *user@corp.example.com*. The Active Directory user account must
    #     have read and mounting access to the Amazon FSx file system for
    #     Windows.
    #
    #   * password—The password of the active directory user with read and
    #     mounting access Amazon FSx Windows file system.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_patterns
    #   A list of regular expression patterns to include certain files in
    #   your Amazon FSx file system. Files that match the patterns are
    #   included in the index. Files that don't match the patterns are
    #   excluded from the index. If a file matches both an inclusion pattern
    #   and an exclusion pattern, the exclusion pattern takes precedence and
    #   the file isn't included in the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of regular expression patterns to exclude certain files in
    #   your Amazon FSx file system. Files that match the patterns are
    #   excluded from the index. Files that don’t match the patterns are
    #   included in the index. If a file matches both an inclusion pattern
    #   and an exclusion pattern, the exclusion pattern takes precedence and
    #   the file isn't included in the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_mappings
    #   A list of `DataSourceToIndexFieldMapping` objects that map Amazon
    #   FSx data source attributes or field names to Amazon Kendra index
    #   field names in Amazon Kendra. To create custom fields, use the
    #   `UpdateIndex` API before you map to Amazon FSx fields. For more
    #   information, see [Mapping data source fields][1]. The Amazon FSx
    #   data source field names must exist in your Amazon FSx custom
    #   metadata.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/FsxConfiguration AWS API Documentation
    #
    class FsxConfiguration < Struct.new(
      :file_system_id,
      :file_system_type,
      :vpc_configuration,
      :secret_arn,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQuerySuggestionsRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         query_text: "SuggestionQueryText", # required
    #         max_suggestions_count: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to get query suggestions from.
    #   @return [String]
    #
    # @!attribute [rw] query_text
    #   The text of a user's query to generate query suggestions.
    #
    #   A query is suggested if the query prefix matches what a user starts
    #   to type as their query.
    #
    #   Amazon Kendra does not show any suggestions if a user types fewer
    #   than two characters or more than 60 characters. A query must also
    #   have at least one search result and contain at least one word of
    #   more than four characters.
    #   @return [String]
    #
    # @!attribute [rw] max_suggestions_count
    #   The maximum number of query suggestions you want to show to your
    #   users.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GetQuerySuggestionsRequest AWS API Documentation
    #
    class GetQuerySuggestionsRequest < Struct.new(
      :index_id,
      :query_text,
      :max_suggestions_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_suggestions_id
    #   The unique identifier for a list of query suggestions for an index.
    #   @return [String]
    #
    # @!attribute [rw] suggestions
    #   A list of query suggestions for an index.
    #   @return [Array<Types::Suggestion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GetQuerySuggestionsResponse AWS API Documentation
    #
    class GetQuerySuggestionsResponse < Struct.new(
      :query_suggestions_id,
      :suggestions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         interval: "THIS_MONTH", # required, accepts THIS_MONTH, THIS_WEEK, ONE_WEEK_AGO, TWO_WEEKS_AGO, ONE_MONTH_AGO, TWO_MONTHS_AGO
    #         metric_type: "QUERIES_BY_COUNT", # required, accepts QUERIES_BY_COUNT, QUERIES_BY_ZERO_CLICK_RATE, QUERIES_BY_ZERO_RESULT_RATE, DOCS_BY_CLICK_COUNT, AGG_QUERY_DOC_METRICS, TREND_QUERY_DOC_METRICS
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index to get search metrics data.
    #   @return [String]
    #
    # @!attribute [rw] interval
    #   The time interval or time window to get search metrics data. The
    #   time interval uses the time zone of your index. You can view data in
    #   the following time windows:
    #
    #   * `THIS_WEEK`\: The current week, starting on the Sunday and ending
    #     on the day before the current date.
    #
    #   * `ONE_WEEK_AGO`\: The previous week, starting on the Sunday and
    #     ending on the following Saturday.
    #
    #   * `TWO_WEEKS_AGO`\: The week before the previous week, starting on
    #     the Sunday and ending on the following Saturday.
    #
    #   * `THIS_MONTH`\: The current month, starting on the first day of the
    #     month and ending on the day before the current date.
    #
    #   * `ONE_MONTH_AGO`\: The previous month, starting on the first day of
    #     the month and ending on the last day of the month.
    #
    #   * `TWO_MONTHS_AGO`\: The month before the previous month, starting
    #     on the first day of the month and ending on last day of the month.
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   The metric you want to retrieve. You can specify only one metric per
    #   call.
    #
    #   For more information about the metrics you can view, see [Gaining
    #   insights with search analytics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of search metrics data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned data for the metric.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GetSnapshotsRequest AWS API Documentation
    #
    class GetSnapshotsRequest < Struct.new(
      :index_id,
      :interval,
      :metric_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snap_shot_time_filter
    #   The date-time for the beginning and end of the time window for the
    #   search metrics data.
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] snapshots_data_header
    #   The column headers for the search metrics data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshots_data
    #   The search metrics data. The data returned depends on the metric
    #   type you requested.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token,
    #   which you can use in a later request to retrieve the next set of
    #   search metrics data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GetSnapshotsResponse AWS API Documentation
    #
    class GetSnapshotsResponse < Struct.new(
      :snap_shot_time_filter,
      :snapshots_data_header,
      :snapshots_data,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for data sources that connect to
    # Google Drive.
    #
    # @note When making an API call, you may pass GoogleDriveConfiguration
    #   data as a hash:
    #
    #       {
    #         secret_arn: "SecretArn", # required
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         exclude_mime_types: ["MimeType"],
    #         exclude_user_accounts: ["UserAccount"],
    #         exclude_shared_drives: ["SharedDriveId"],
    #       }
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of a Secrets Managersecret that
    #   contains the credentials required to connect to Google Drive. For
    #   more information, see [Using a Google Workspace Drive data
    #   source][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html
    #   @return [String]
    #
    # @!attribute [rw] inclusion_patterns
    #   A list of regular expression patterns that apply to path on Google
    #   Drive. Items that match the pattern are included in the index from
    #   both shared drives and users' My Drives. Items that don't match
    #   the pattern are excluded from the index. If an item matches both an
    #   inclusion pattern and an exclusion pattern, it is excluded from the
    #   index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of regular expression patterns that apply to the path on
    #   Google Drive. Items that match the pattern are excluded from the
    #   index from both shared drives and users' My Drives. Items that
    #   don't match the pattern are included in the index. If an item
    #   matches both an exclusion pattern and an inclusion pattern, it is
    #   excluded from the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_mappings
    #   Defines mapping between a field in the Google Drive and a Amazon
    #   Kendra index field.
    #
    #   If you are using the console, you can define index fields when
    #   creating the mapping. If you are using the API, you must first
    #   create the field using the `UpdateIndex` API.
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @!attribute [rw] exclude_mime_types
    #   A list of MIME types to exclude from the index. All documents
    #   matching the specified MIME type are excluded.
    #
    #   For a list of MIME types, see [Using a Google Workspace Drive data
    #   source][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_user_accounts
    #   A list of email addresses of the users. Documents owned by these
    #   users are excluded from the index. Documents shared with excluded
    #   users are indexed unless they are excluded in another way.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_shared_drives
    #   A list of identifiers or shared drives to exclude from the index.
    #   All files and folders stored on the shared drive are excluded.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GoogleDriveConfiguration AWS API Documentation
    #
    class GoogleDriveConfiguration < Struct.new(
      :secret_arn,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      :exclude_mime_types,
      :exclude_user_accounts,
      :exclude_shared_drives)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of users or sub groups that belong to a group. Users and groups
    # are useful for filtering search results to different users based on
    # their group's access to documents.
    #
    # @note When making an API call, you may pass GroupMembers
    #   data as a hash:
    #
    #       {
    #         member_groups: [
    #           {
    #             group_id: "GroupId", # required
    #             data_source_id: "DataSourceId",
    #           },
    #         ],
    #         member_users: [
    #           {
    #             user_id: "UserId", # required
    #           },
    #         ],
    #         s3_pathfor_group_members: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #       }
    #
    # @!attribute [rw] member_groups
    #   A list of sub groups that belong to a group. For example, the sub
    #   groups "Research", "Engineering", and "Sales and Marketing"
    #   all belong to the group "Company".
    #   @return [Array<Types::MemberGroup>]
    #
    # @!attribute [rw] member_users
    #   A list of users that belong to a group. For example, a list of
    #   interns all belong to the "Interns" group.
    #   @return [Array<Types::MemberUser>]
    #
    # @!attribute [rw] s3_pathfor_group_members
    #   If you have more than 1000 users and/or sub groups for a single
    #   group, you need to provide the path to the S3 file that lists your
    #   users and sub groups for a group. Your sub groups can contain more
    #   than 1000 users, but the list of sub groups that belong to a group
    #   (and/or users) must be no more than 1000.
    #
    #   You can download this [example S3 file][1] that uses the correct
    #   format for listing group members. Note, `dataSourceId` is optional.
    #   The value of `type` for a group is always `GROUP` and for a user it
    #   is always `USER`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/samples/group_members.zip
    #   @return [Types::S3Path]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GroupMembers AWS API Documentation
    #
    class GroupMembers < Struct.new(
      :member_groups,
      :member_users,
      :s3_pathfor_group_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the processing of `PUT` and `DELETE` actions for
    # mapping users to their groups.
    #
    # @!attribute [rw] status
    #   The current processing status of actions for mapping users to their
    #   groups. The status can be either `PROCESSING`, `SUCCEEDED`,
    #   `DELETING`, `DELETED`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The last date-time an action was updated. An action can be a `PUT`
    #   or `DELETE` action for mapping users to their groups.
    #   @return [Time]
    #
    # @!attribute [rw] received_at
    #   The date-time an action was received by Amazon Kendra. An action can
    #   be a `PUT` or `DELETE` action for mapping users to their groups.
    #   @return [Time]
    #
    # @!attribute [rw] ordering_id
    #   The order in which actions should complete processing. An action can
    #   be a `PUT` or `DELETE` action for mapping users to their groups.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reason
    #   The reason an action could not be processed. An action can be a
    #   `PUT` or `DELETE` action for mapping users to their groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GroupOrderingIdSummary AWS API Documentation
    #
    class GroupOrderingIdSummary < Struct.new(
      :status,
      :last_updated_at,
      :received_at,
      :ordering_id,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Group summary information.
    #
    # @!attribute [rw] group_id
    #   The identifier of the group you want group summary information on.
    #   @return [String]
    #
    # @!attribute [rw] ordering_id
    #   The timestamp identifier used for the latest `PUT` or `DELETE`
    #   action.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GroupSummary AWS API Documentation
    #
    class GroupSummary < Struct.new(
      :group_id,
      :ordering_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information to define the hierarchy for which documents users should
    # have access to.
    #
    # @note When making an API call, you may pass HierarchicalPrincipal
    #   data as a hash:
    #
    #       {
    #         principal_list: [ # required
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER", # required, accepts USER, GROUP
    #             access: "ALLOW", # required, accepts ALLOW, DENY
    #             data_source_id: "DataSourceId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] principal_list
    #   A list of [principal][1] lists that define the hierarchy for which
    #   documents users should have access to. Each hierarchical list
    #   specifies which user or group has allow or deny access for each
    #   document.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html
    #   @return [Array<Types::Principal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/HierarchicalPrincipal AWS API Documentation
    #
    class HierarchicalPrincipal < Struct.new(
      :principal_list)
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
    # @!attribute [rw] type
    #   The highlight type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Highlight AWS API Documentation
    #
    class Highlight < Struct.new(
      :begin_offset,
      :end_offset,
      :top_answer,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information for invoking a Lambda function
    # in Lambda to alter document metadata and content when ingesting
    # documents into Amazon Kendra. You can configure your Lambda function
    # using [PreExtractionHookConfiguration][1] if you want to apply
    # advanced alterations on the original or raw documents. If you want to
    # apply advanced alterations on the Amazon Kendra structured documents,
    # you must configure your Lambda function using
    # [PostExtractionHookConfiguration][1]. You can only invoke one Lambda
    # function. However, this function can invoke other functions it
    # requires.
    #
    # For more information, see [Customizing document metadata during the
    # ingestion process][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_CustomDocumentEnrichmentConfiguration.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #
    # @note When making an API call, you may pass HookConfiguration
    #   data as a hash:
    #
    #       {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       }
    #
    # @!attribute [rw] invocation_condition
    #   The condition used for when a Lambda function should be invoked.
    #
    #   For example, you can specify a condition that if there are empty
    #   date-time values, then Amazon Kendra should invoke a function that
    #   inserts the current date-time.
    #   @return [Types::DocumentAttributeCondition]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of a role with permission to run a
    #   Lambda function during ingestion. For more information, see [IAM
    #   roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   Stores the original, raw documents or the structured, parsed
    #   documents before and after altering them. For more information, see
    #   [Data contracts for Lambda functions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#cde-data-contracts-lambda
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/HookConfiguration AWS API Documentation
    #
    class HookConfiguration < Struct.new(
      :invocation_condition,
      :lambda_arn,
      :s3_bucket)
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
    #   when you are using APIs such as `Query`, `DescribeIndex`,
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
    #   `UpdateIndex` API.
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

    # Provides the configuration information for applying basic logic to
    # alter document metadata and content when ingesting documents into
    # Amazon Kendra. To apply advanced logic, to go beyond what you can do
    # with basic logic, see [HookConfiguration][1].
    #
    # For more information, see [Customizing document metadata during the
    # ingestion process][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_HookConfiguration.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #
    # @note When making an API call, you may pass InlineCustomDocumentEnrichmentConfiguration
    #   data as a hash:
    #
    #       {
    #         condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         target: {
    #           target_document_attribute_key: "DocumentAttributeKey",
    #           target_document_attribute_value_deletion: false,
    #           target_document_attribute_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         document_content_deletion: false,
    #       }
    #
    # @!attribute [rw] condition
    #   Configuration of the condition used for the target document
    #   attribute or metadata field when ingesting documents into Amazon
    #   Kendra.
    #   @return [Types::DocumentAttributeCondition]
    #
    # @!attribute [rw] target
    #   Configuration of the target document attribute or metadata field
    #   when ingesting documents into Amazon Kendra. You can also include a
    #   value.
    #   @return [Types::DocumentAttributeTarget]
    #
    # @!attribute [rw] document_content_deletion
    #   `TRUE` to delete content if the condition used for the target
    #   attribute is met.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/InlineCustomDocumentEnrichmentConfiguration AWS API Documentation
    #
    class InlineCustomDocumentEnrichmentConfiguration < Struct.new(
      :condition,
      :target,
      :document_content_deletion)
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

    # The input to the request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the JSON token type.
    #
    # @note When making an API call, you may pass JsonTokenTypeConfiguration
    #   data as a hash:
    #
    #       {
    #         user_name_attribute_field: "String", # required
    #         group_attribute_field: "String", # required
    #       }
    #
    # @!attribute [rw] user_name_attribute_field
    #   The user name attribute field.
    #   @return [String]
    #
    # @!attribute [rw] group_attribute_field
    #   The group attribute field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/JsonTokenTypeConfiguration AWS API Documentation
    #
    class JsonTokenTypeConfiguration < Struct.new(
      :user_name_attribute_field,
      :group_attribute_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the JWT token type.
    #
    # @note When making an API call, you may pass JwtTokenTypeConfiguration
    #   data as a hash:
    #
    #       {
    #         key_location: "URL", # required, accepts URL, SECRET_MANAGER
    #         url: "Url",
    #         secret_manager_arn: "RoleArn",
    #         user_name_attribute_field: "UserNameAttributeField",
    #         group_attribute_field: "GroupAttributeField",
    #         issuer: "Issuer",
    #         claim_regex: "ClaimRegex",
    #       }
    #
    # @!attribute [rw] key_location
    #   The location of the key.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The signing key URL.
    #   @return [String]
    #
    # @!attribute [rw] secret_manager_arn
    #   The Amazon Resource Name (arn) of the secret.
    #   @return [String]
    #
    # @!attribute [rw] user_name_attribute_field
    #   The user name attribute field.
    #   @return [String]
    #
    # @!attribute [rw] group_attribute_field
    #   The group attribute field.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The issuer of the token.
    #   @return [String]
    #
    # @!attribute [rw] claim_regex
    #   The regular expression that identifies the claim.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/JwtTokenTypeConfiguration AWS API Documentation
    #
    class JwtTokenTypeConfiguration < Struct.new(
      :key_location,
      :url,
      :secret_manager_arn,
      :user_name_attribute_field,
      :group_attribute_field,
      :issuer,
      :claim_regex)
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
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of jobs.
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
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   jobs.
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

    # @note When making an API call, you may pass ListEntityPersonasRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of users or groups.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned users or groups.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListEntityPersonasRequest AWS API Documentation
    #
    class ListEntityPersonasRequest < Struct.new(
      :id,
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary_items
    #   An array of summary information for one or more users or groups.
    #   @return [Array<Types::PersonasSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token,
    #   which you can use in a later request to retrieve the next set of
    #   users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListEntityPersonasResponse AWS API Documentation
    #
    class ListEntityPersonasResponse < Struct.new(
      :summary_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExperienceEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListExperienceEntitiesRequest AWS API Documentation
    #
    class ListExperienceEntitiesRequest < Struct.new(
      :id,
      :index_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary_items
    #   An array of summary information for one or more users or groups.
    #   @return [Array<Types::ExperienceEntitiesSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token,
    #   which you can use in a later request to retrieve the next set of
    #   users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListExperienceEntitiesResponse AWS API Documentation
    #
    class ListExperienceEntitiesResponse < Struct.new(
      :summary_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExperiencesRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Kendra experiences.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned Amazon Kendra experiences.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListExperiencesRequest AWS API Documentation
    #
    class ListExperiencesRequest < Struct.new(
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary_items
    #   An array of summary information for one or more Amazon Kendra
    #   experiences.
    #   @return [Array<Types::ExperiencesSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token,
    #   which you can use in a later request to retrieve the next set of
    #   Amazon Kendra experiences.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListExperiencesResponse AWS API Documentation
    #
    class ListExperiencesResponse < Struct.new(
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
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of FAQs.
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
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   FAQs.
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

    # @note When making an API call, you may pass ListGroupsOlderThanOrderingIdRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         data_source_id: "DataSourceId",
    #         ordering_id: 1, # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for getting a list of groups mapped to
    #   users before a given ordering or timestamp identifier.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source for getting a list of groups
    #   mapped to users before a given ordering timestamp identifier.
    #   @return [String]
    #
    # @!attribute [rw] ordering_id
    #   The timestamp identifier used for the latest `PUT` or `DELETE`
    #   action for mapping users to their groups.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of groups that are mapped to users before a given ordering or
    #   timestamp identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned groups that are mapped to users
    #   before a given ordering or timestamp identifier.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListGroupsOlderThanOrderingIdRequest AWS API Documentation
    #
    class ListGroupsOlderThanOrderingIdRequest < Struct.new(
      :index_id,
      :data_source_id,
      :ordering_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] groups_summaries
    #   Summary information for list of groups that are mapped to users
    #   before a given ordering or timestamp identifier.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   groups that are mapped to users before a given ordering or timestamp
    #   identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListGroupsOlderThanOrderingIdResponse AWS API Documentation
    #
    class ListGroupsOlderThanOrderingIdResponse < Struct.new(
      :groups_summaries,
      :next_token)
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

    # @note When making an API call, you may pass ListQuerySuggestionsBlockListsRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for a list of all block lists that exist
    #   for that index.
    #
    #   For information on the current quota limits for block lists, see
    #   [Quotas for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of block lists (`BlockListSummaryItems`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of block lists to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListQuerySuggestionsBlockListsRequest AWS API Documentation
    #
    class ListQuerySuggestionsBlockListsRequest < Struct.new(
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] block_list_summary_items
    #   Summary items for a block list.
    #
    #   This includes summary items on the block list ID, block list name,
    #   when the block list was created, when the block list was last
    #   updated, and the count of block words/phrases in the block list.
    #
    #   For information on the current quota limits for block lists, see
    #   [Quotas for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #   @return [Array<Types::QuerySuggestionsBlockListSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   block lists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListQuerySuggestionsBlockListsResponse AWS API Documentation
    #
    class ListQuerySuggestionsBlockListsResponse < Struct.new(
      :block_list_summary_items,
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

    # @note When making an API call, you may pass ListThesauriRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index associated with the thesaurus to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Kendra returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of thesauri (`ThesaurusSummaryItems`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of thesauri to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListThesauriRequest AWS API Documentation
    #
    class ListThesauriRequest < Struct.new(
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra returns this token that
    #   you can use in the subsequent request to retrieve the next set of
    #   thesauri.
    #   @return [String]
    #
    # @!attribute [rw] thesaurus_summary_items
    #   An array of summary information for a thesaurus or multiple
    #   thesauri.
    #   @return [Array<Types::ThesaurusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListThesauriResponse AWS API Documentation
    #
    class ListThesauriResponse < Struct.new(
      :next_token,
      :thesaurus_summary_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sub groups that belong to a group.
    #
    # @note When making an API call, you may pass MemberGroup
    #   data as a hash:
    #
    #       {
    #         group_id: "GroupId", # required
    #         data_source_id: "DataSourceId",
    #       }
    #
    # @!attribute [rw] group_id
    #   The identifier of the sub group you want to map to a group.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source for the sub group you want to map
    #   to a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/MemberGroup AWS API Documentation
    #
    class MemberGroup < Struct.new(
      :group_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The users that belong to a group.
    #
    # @note When making an API call, you may pass MemberUser
    #   data as a hash:
    #
    #       {
    #         user_id: "UserId", # required
    #       }
    #
    # @!attribute [rw] user_id
    #   The identifier of the user you want to map to a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/MemberUser AWS API Documentation
    #
    class MemberUser < Struct.new(
      :user_id)
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
    #         disable_local_groups: false,
    #       }
    #
    # @!attribute [rw] tenant_domain
    #   The Azure Active Directory domain of the organization.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of an Secrets Managersecret that
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
    # @!attribute [rw] disable_local_groups
    #   A Boolean value that specifies whether local groups are disabled
    #   (`True`) or enabled (`False`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/OneDriveConfiguration AWS API Documentation
    #
    class OneDriveConfiguration < Struct.new(
      :tenant_domain,
      :secret_arn,
      :one_drive_users,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      :disable_local_groups)
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

    # Summary information for users or groups in your Amazon Web Services
    # SSO identity source. This applies to users and groups with specific
    # permissions that define their level of access to your Amazon Kendra
    # experience. You can create an Amazon Kendra experience such as a
    # search application. For more information on creating a search
    # application experience, see [Building a search experience with no
    # code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @!attribute [rw] entity_id
    #   The identifier of a user or group in your Amazon Web Services SSO
    #   identity source. For example, a user ID could be an email.
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   The persona that defines the specific permissions of the user or
    #   group in your Amazon Web Services SSO identity source. The available
    #   personas or access roles are `Owner` and `Viewer`. For more
    #   information on these personas, see [Providing access to your search
    #   page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date-time the summary information was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date-time the summary information was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/PersonasSummary AWS API Documentation
    #
    class PersonasSummary < Struct.new(
      :entity_id,
      :persona,
      :created_at,
      :updated_at)
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
    #         data_source_id: "DataSourceId",
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
    # @!attribute [rw] data_source_id
    #   The identifier of the data source the principal should access
    #   documents from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :name,
      :type,
      :access,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information for a web proxy to connect to
    # website hosts.
    #
    # @note When making an API call, you may pass ProxyConfiguration
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         credentials: "SecretArn",
    #       }
    #
    # @!attribute [rw] host
    #   The name of the website host you want to connect to via a web proxy
    #   server.
    #
    #   For example, the host name of https://a.example.com/page1.html is
    #   "a.example.com".
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number of the website host you want to connect to via a web
    #   proxy server.
    #
    #   For example, the port for https://a.example.com/page1.html is 443,
    #   the standard port for HTTPS.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   Your secret ARN, which you can create in [Secrets Manager][1]
    #
    #   The credentials are optional. You use a secret if web proxy
    #   credentials are required to connect to a website host. Amazon Kendra
    #   currently support basic authentication to connect to a web proxy
    #   server. The secret stores your credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ProxyConfiguration AWS API Documentation
    #
    class ProxyConfiguration < Struct.new(
      :host,
      :port,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPrincipalMappingRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         data_source_id: "DataSourceId",
    #         group_id: "GroupId", # required
    #         group_members: { # required
    #           member_groups: [
    #             {
    #               group_id: "GroupId", # required
    #               data_source_id: "DataSourceId",
    #             },
    #           ],
    #           member_users: [
    #             {
    #               user_id: "UserId", # required
    #             },
    #           ],
    #           s3_pathfor_group_members: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         ordering_id: 1,
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to map users to their groups.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source you want to map users to their
    #   groups.
    #
    #   This is useful if a group is tied to multiple data sources, but you
    #   only want the group to access documents of a certain data source.
    #   For example, the groups "Research", "Engineering", and "Sales
    #   and Marketing" are all tied to the company's documents stored in
    #   the data sources Confluence and Salesforce. However, "Sales and
    #   Marketing" team only needs access to customer-related documents
    #   stored in Salesforce.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the group you want to map its users to.
    #   @return [String]
    #
    # @!attribute [rw] group_members
    #   The list that contains your users or sub groups that belong the same
    #   group.
    #
    #   For example, the group "Company" includes the user "CEO" and the
    #   sub groups "Research", "Engineering", and "Sales and
    #   Marketing".
    #
    #   If you have more than 1000 users and/or sub groups for a single
    #   group, you need to provide the path to the S3 file that lists your
    #   users and sub groups for a group. Your sub groups can contain more
    #   than 1000 users, but the list of sub groups that belong to a group
    #   (and/or users) must be no more than 1000.
    #   @return [Types::GroupMembers]
    #
    # @!attribute [rw] ordering_id
    #   The timestamp identifier you specify to ensure Amazon Kendra does
    #   not override the latest `PUT` action with previous actions. The
    #   highest number ID, which is the ordering ID, is the latest action
    #   you want to process and apply on top of other actions with lower
    #   number IDs. This prevents previous actions with lower number IDs
    #   from possibly overriding the latest action.
    #
    #   The ordering ID can be the UNIX time of the last update you made to
    #   a group members list. You would then provide this list when calling
    #   `PutPrincipalMapping`. This ensures your `PUT` action for that
    #   updated group with the latest members list doesn't get overwritten
    #   by earlier `PUT` actions for the same group which are yet to be
    #   processed.
    #
    #   The default ordering ID is the current UNIX time in milliseconds
    #   that the action was received by Amazon Kendra.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role that has access to the S3
    #   file that contains your list of users or sub groups that belong to a
    #   group.
    #
    #   For more information, see [IAM roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/PutPrincipalMappingRequest AWS API Documentation
    #
    class PutPrincipalMappingRequest < Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      :group_members,
      :ordering_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass QueryRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         query_text: "QueryText",
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
    #         document_relevance_override_configurations: [
    #           {
    #             name: "DocumentMetadataConfigurationName", # required
    #             relevance: { # required
    #               freshness: false,
    #               importance: 1,
    #               duration: "Duration",
    #               rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #               value_importance_map: {
    #                 "ValueImportanceMapKey" => 1,
    #               },
    #             },
    #           },
    #         ],
    #         page_number: 1,
    #         page_size: 1,
    #         sorting_configuration: {
    #           document_attribute_key: "DocumentAttributeKey", # required
    #           sort_order: "DESC", # required, accepts DESC, ASC
    #         },
    #         user_context: {
    #           token: "Token",
    #           user_id: "PrincipalName",
    #           groups: ["PrincipalName"],
    #           data_source_groups: [
    #             {
    #               group_id: "PrincipalName", # required
    #               data_source_id: "DataSourceId", # required
    #             },
    #           ],
    #         },
    #         visitor_id: "VisitorId",
    #       }
    #
    # @!attribute [rw] index_id
    #   The unique identifier of the index to search. The identifier is
    #   returned in the response from the `CreateIndex` API.
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
    # @!attribute [rw] document_relevance_override_configurations
    #   Overrides relevance tuning configurations of fields or attributes
    #   set at the index level.
    #
    #   If you use this API to override the relevance tuning configured at
    #   the index level, but there is no relevance tuning configured at the
    #   index level, then Amazon Kendra does not apply any relevance tuning.
    #
    #   If there is relevance tuning configured at the index level, but you
    #   do not use this API to override any relevance tuning in the index,
    #   then Amazon Kendra uses the relevance tuning that is configured at
    #   the index level.
    #
    #   If there is relevance tuning configured for fields at the index
    #   level, but you use this API to override only some of these fields,
    #   then for the fields you did not override, the importance is set to
    #   1.
    #   @return [Array<Types::DocumentRelevanceConfiguration>]
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
    # @!attribute [rw] user_context
    #   The user context token or user and group information.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] visitor_id
    #   Provides an identifier for a specific user. The `VisitorId` should
    #   be a unique identifier, such as a GUID. Don't use personally
    #   identifiable information, such as the user's email address, as the
    #   `VisitorId`.
    #   @return [String]
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
      :document_relevance_override_configurations,
      :page_number,
      :page_size,
      :sorting_configuration,
      :user_context,
      :visitor_id)
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
    # @!attribute [rw] warnings
    #   A list of warning codes and their messages on problems with your
    #   query.
    #
    #   Amazon Kendra currently only supports one type of warning, which is
    #   a warning on invalid syntax used in the query. For examples of
    #   invalid query syntax, see [Searching with advanced query syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax
    #   @return [Array<Types::Warning>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/QueryResult AWS API Documentation
    #
    class QueryResult < Struct.new(
      :query_id,
      :result_items,
      :facet_results,
      :total_number_of_results,
      :warnings)
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
    # @!attribute [rw] feedback_token
    #   A token that identifies a particular result from a particular query.
    #   Use this token to provide click-through feedback for the result. For
    #   more information, see [ Submitting feedback ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/submitting-feedback.html
    #   @return [String]
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
      :score_attributes,
      :feedback_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information on a query suggestions block list.
    #
    # This includes information on the block list ID, block list name, when
    # the block list was created, when the block list was last updated, and
    # the count of block words/phrases in the block list.
    #
    # For information on the current quota limits for block lists, see
    # [Quotas for Amazon Kendra][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #
    # @!attribute [rw] id
    #   The identifier of a block list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the block list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the block list.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date-time summary information for a query suggestions block list
    #   was last created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date-time the block list was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] item_count
    #   The number of items in the block list file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/QuerySuggestionsBlockListSummary AWS API Documentation
    #
    class QuerySuggestionsBlockListSummary < Struct.new(
      :id,
      :name,
      :status,
      :created_at,
      :updated_at,
      :item_count)
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
    # application uses the `SubmitFeedback` API to provide relevance
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
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
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
    # @!attribute [rw] inclusion_patterns
    #   A list of glob patterns for documents that should be indexed. If a
    #   document that matches an inclusion pattern also matches an exclusion
    #   pattern, the document is not indexed.
    #
    #   Some [examples][1] are:
    #
    #   * **.txt* will include all text files in a directory (files with
    #     the extension .txt).
    #
    #   * ***/*.txt* will include all text files in a directory and its
    #     subdirectories.
    #
    #   * **tax** will include all files in a directory that contain
    #     'tax' in the file name, such as 'tax', 'taxes',
    #     'income\_tax'.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of glob patterns for documents that should not be indexed. If
    #   a document that matches an inclusion prefix or inclusion pattern
    #   also matches an exclusion pattern, the document is not indexed.
    #
    #   Some [examples][1] are:
    #
    #   * **.png , *.jpg* will exclude all PNG and JPEG image files in a
    #     directory (files with the extensions .png and .jpg).
    #
    #   * **internal** will exclude all files in a directory that contain
    #     'internal' in the file name, such as 'internal',
    #     'internal\_only', 'company\_internal'.
    #
    #   * ***/*internal** will exclude all internal-related files in a
    #     directory and its subdirectories.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters
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
    #   filtering files for the data source. For the format of the file, see
    #   [Access control for S3 data sources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html
    #   @return [Types::AccessControlListConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/S3DataSourceConfiguration AWS API Documentation
    #
    class S3DataSourceConfiguration < Struct.new(
      :bucket_name,
      :inclusion_prefixes,
      :inclusion_patterns,
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
    #   column.
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
    #   The Amazon Resource Name (ARN) of an Secrets Managersecret that
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
    #   Specifies configuration information for the knowledge article types
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

    # Specifies configuration information for the knowledge article types
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

    # Specifies configuration information for indexing a single standard
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
    #   document title.
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

    # Provides the configuration information of the seed or starting point
    # URLs to crawl.
    #
    # *When selecting websites to index, you must adhere to the [Amazon
    # Acceptable Use Policy][1] and all other Amazon terms. Remember that
    # you must only use Amazon Kendra Web Crawler to index your own
    # webpages, or webpages that you have authorization to index.*
    #
    #
    #
    # [1]: https://aws.amazon.com/aup/
    #
    # @note When making an API call, you may pass SeedUrlConfiguration
    #   data as a hash:
    #
    #       {
    #         seed_urls: ["SeedUrl"], # required
    #         web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #       }
    #
    # @!attribute [rw] seed_urls
    #   The list of seed or starting point URLs of the websites you want to
    #   crawl.
    #
    #   The list can include a maximum of 100 seed URLs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] web_crawler_mode
    #   You can choose one of the following modes:
    #
    #   * `HOST_ONLY` – crawl only the website host names. For example, if
    #     the seed URL is "abc.example.com", then only URLs with host name
    #     "abc.example.com" are crawled.
    #
    #   * `SUBDOMAINS` – crawl the website host names with subdomains. For
    #     example, if the seed URL is "abc.example.com", then
    #     "a.abc.example.com" and "b.abc.example.com" are also crawled.
    #
    #   * `EVERYTHING` – crawl the website host names with subdomains and
    #     other domains that the webpages link to.
    #
    #   The default mode is set to `HOST_ONLY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SeedUrlConfiguration AWS API Documentation
    #
    class SeedUrlConfiguration < Struct.new(
      :seed_urls,
      :web_crawler_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the identifier of the KMScustomer master key (CMK) used to
    # encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
    # asymmetric CMKs.
    #
    # @note When making an API call, you may pass ServerSideEncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMScustomer master key (CMK). Amazon Kendra
    #   doesn't support asymmetric CMKs.
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
    #           filter_query: "ServiceNowKnowledgeArticleFilterQuery",
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
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #       }
    #
    # @!attribute [rw] host_url
    #   The ServiceNow instance that the data source connects to. The host
    #   endpoint should look like the following:
    #   `\{instance\}.service-now.com.`
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret that
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
    # @!attribute [rw] authentication_type
    #   Determines the type of authentication used to connect to the
    #   ServiceNow instance. If you choose `HTTP_BASIC`, Amazon Kendra is
    #   authenticated using the user name and password provided in the
    #   Secrets Manager secret in the `SecretArn` field. When you choose
    #   `OAUTH2`, Amazon Kendra is authenticated using the OAuth token and
    #   secret provided in the Secrets Manager secret, and the user name and
    #   password are used to determine which information Amazon Kendra has
    #   access to.
    #
    #   When you use `OAUTH2` authentication, you must generate a token and
    #   a client secret using the ServiceNow console. For more information,
    #   see [Using a ServiceNow data source][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/data-source-servicenow.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServiceNowConfiguration AWS API Documentation
    #
    class ServiceNowConfiguration < Struct.new(
      :host_url,
      :secret_arn,
      :service_now_build_version,
      :knowledge_article_configuration,
      :service_catalog_configuration,
      :authentication_type)
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
    #         filter_query: "ServiceNowKnowledgeArticleFilterQuery",
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
    # @!attribute [rw] filter_query
    #   A query that selects the knowledge articles to index. The query can
    #   return articles from multiple knowledge bases, and the knowledge
    #   bases can be public or private.
    #
    #   The query string must be one generated by the ServiceNow console.
    #   For more information, see [Specifying documents to index with a
    #   query][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/servicenow-query.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ServiceNowKnowledgeArticleConfiguration AWS API Documentation
    #
    class ServiceNowKnowledgeArticleConfiguration < Struct.new(
      :crawl_attachments,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      :filter_query)
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
    #   A list of regular expression patterns. Documents that match the
    #   patterns are included in the index. Documents that don't match the
    #   patterns are excluded from the index. If a document matches both an
    #   exclusion pattern and an inclusion pattern, the document is not
    #   included in the index.
    #
    #   The regex is applied to the file name of the attachment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude_attachment_file_patterns
    #   A list of regular expression patterns. Documents that match the
    #   patterns are excluded from the index. Documents that don't match
    #   the patterns are included in the index. If a document matches both
    #   an exclusion pattern and an inclusion pattern, the document is not
    #   included in the index.
    #
    #   The regex is applied to the file name of the attachment.
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
    #         share_point_version: "SHAREPOINT_2013", # required, accepts SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE
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
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
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
    #   The Amazon Resource Name (ARN) of credentials stored in Secrets
    #   Manager. The credentials should be a user/password pair. If you use
    #   SharePoint Server, you also need to provide the sever domain name as
    #   part of the credentials. For more information, see [Using a
    #   Microsoft SharePoint Data Source][1]. For more information about
    #   Secrets Manager see [ What Is Secrets Manager][2] in the <i>Secrets
    #   Manager </i> user guide.
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
    #   You must first create the index fields using the `UpdateIndex` API
    #   before you map SharePoint attributes. For more information, see
    #   [Mapping Data Source Fields][1].
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
    # @!attribute [rw] disable_local_groups
    #   A Boolean value that specifies whether local groups are disabled
    #   (`True`) or enabled (`False`).
    #   @return [Boolean]
    #
    # @!attribute [rw] ssl_certificate_s3_path
    #   Information required to find a specific file in an Amazon S3 bucket.
    #   @return [Types::S3Path]
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
      :document_title_field_name,
      :disable_local_groups,
      :ssl_certificate_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information of the sitemap URLs to crawl.
    #
    # *When selecting websites to index, you must adhere to the [Amazon
    # Acceptable Use Policy][1] and all other Amazon terms. Remember that
    # you must only use Amazon Kendra Web Crawler to index your own
    # webpages, or webpages that you have authorization to index.*
    #
    #
    #
    # [1]: https://aws.amazon.com/aup/
    #
    # @note When making an API call, you may pass SiteMapsConfiguration
    #   data as a hash:
    #
    #       {
    #         site_maps: ["SiteMap"], # required
    #       }
    #
    # @!attribute [rw] site_maps
    #   The list of sitemap URLs of the websites you want to crawl.
    #
    #   The list can include a maximum of three sitemap URLs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SiteMapsConfiguration AWS API Documentation
    #
    class SiteMapsConfiguration < Struct.new(
      :site_maps)
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

    # Provides information about the status of documents submitted for
    # indexing.
    #
    # @!attribute [rw] document_id
    #   The unique identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] document_status
    #   The current status of a document.
    #
    #   If the document was submitted for deletion, the status is
    #   `NOT_FOUND` after the document is deleted.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   Indicates the source of the error.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Provides detailed information about why the document couldn't be
    #   indexed. Use this information to correct the error before you
    #   resubmit the document for indexing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Status AWS API Documentation
    #
    class Status < Struct.new(
      :document_id,
      :document_status,
      :failure_code,
      :failure_reason)
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
    #   feedback. The query ID is returned in the response to the `Query`
    #   API.
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

    # A single query suggestion.
    #
    # @!attribute [rw] id
    #   The unique UUID (universally unique identifier) of a single query
    #   suggestion.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the unique UUID (universally unique identifier) of a
    #   single query suggestion.
    #
    #   The value is the text string of a suggestion.
    #   @return [Types::SuggestionValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Suggestion AWS API Documentation
    #
    class Suggestion < Struct.new(
      :id,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text highlights for a single query suggestion.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SuggestionHighlight AWS API Documentation
    #
    class SuggestionHighlight < Struct.new(
      :begin_offset,
      :end_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides text and information about where to highlight the query
    # suggestion text.
    #
    # @!attribute [rw] text
    #   The query suggestion text to display to the user.
    #   @return [String]
    #
    # @!attribute [rw] highlights
    #   The beginning and end of the query suggestion text that should be
    #   highlighted.
    #   @return [Array<Types::SuggestionHighlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SuggestionTextWithHighlights AWS API Documentation
    #
    class SuggestionTextWithHighlights < Struct.new(
      :text,
      :highlights)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `SuggestionTextWithHighlights` structure information.
    #
    # @!attribute [rw] text
    #   The `SuggestionTextWithHighlights` structure that contains the query
    #   suggestion text and highlights.
    #   @return [Types::SuggestionTextWithHighlights]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SuggestionValue AWS API Documentation
    #
    class SuggestionValue < Struct.new(
      :text)
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

    # An array of summary information for a thesaurus or multiple thesauri.
    #
    # @!attribute [rw] id
    #   The identifier of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix datetime that the thesaurus was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix datetime that the thesaurus was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ThesaurusSummary AWS API Documentation
    #
    class ThesaurusSummary < Struct.new(
      :id,
      :name,
      :status,
      :created_at,
      :updated_at)
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
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             documents_metadata_configuration: {
    #               s3_prefix: "S3ObjectKey",
    #             },
    #             access_control_list_configuration: {
    #               key_path: "S3ObjectKey",
    #             },
    #           },
    #           share_point_configuration: {
    #             share_point_version: "SHAREPOINT_2013", # required, accepts SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE
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
    #             disable_local_groups: false,
    #             ssl_certificate_s3_path: {
    #               bucket: "S3BucketName", # required
    #               key: "S3ObjectKey", # required
    #             },
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
    #             disable_local_groups: false,
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
    #               filter_query: "ServiceNowKnowledgeArticleFilterQuery",
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
    #             authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #           },
    #           confluence_configuration: {
    #             server_url: "Url", # required
    #             secret_arn: "SecretArn", # required
    #             version: "CLOUD", # required, accepts CLOUD, SERVER
    #             space_configuration: {
    #               crawl_personal_spaces: false,
    #               crawl_archived_spaces: false,
    #               include_spaces: ["ConfluenceSpaceIdentifier"],
    #               exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #               space_field_mappings: [
    #                 {
    #                   data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             page_configuration: {
    #               page_field_mappings: [
    #                 {
    #                   data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             blog_configuration: {
    #               blog_field_mappings: [
    #                 {
    #                   data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             attachment_configuration: {
    #               crawl_attachments: false,
    #               attachment_field_mappings: [
    #                 {
    #                   data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName",
    #                 },
    #               ],
    #             },
    #             vpc_configuration: {
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           },
    #           google_drive_configuration: {
    #             secret_arn: "SecretArn", # required
    #             inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #             exclude_mime_types: ["MimeType"],
    #             exclude_user_accounts: ["UserAccount"],
    #             exclude_shared_drives: ["SharedDriveId"],
    #           },
    #           web_crawler_configuration: {
    #             urls: { # required
    #               seed_url_configuration: {
    #                 seed_urls: ["SeedUrl"], # required
    #                 web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #               },
    #               site_maps_configuration: {
    #                 site_maps: ["SiteMap"], # required
    #               },
    #             },
    #             crawl_depth: 1,
    #             max_links_per_page: 1,
    #             max_content_size_per_page_in_mega_bytes: 1.0,
    #             max_urls_per_minute_crawl_rate: 1,
    #             url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #             proxy_configuration: {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn",
    #             },
    #             authentication_configuration: {
    #               basic_authentication: [
    #                 {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   credentials: "SecretArn", # required
    #                 },
    #               ],
    #             },
    #           },
    #           work_docs_configuration: {
    #             organization_id: "OrganizationId", # required
    #             crawl_comments: false,
    #             use_change_log: false,
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
    #           fsx_configuration: {
    #             file_system_id: "FileSystemId", # required
    #             file_system_type: "WINDOWS", # required, accepts WINDOWS
    #             vpc_configuration: { # required
    #               subnet_ids: ["SubnetId"], # required
    #               security_group_ids: ["VpcSecurityGroupId"], # required
    #             },
    #             secret_arn: "SecretArn",
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
    #         },
    #         description: "Description",
    #         schedule: "ScanSchedule",
    #         role_arn: "RoleArn",
    #         language_code: "LanguageCode",
    #         custom_document_enrichment_configuration: {
    #           inline_configurations: [
    #             {
    #               condition: {
    #                 condition_document_attribute_key: "DocumentAttributeKey", # required
    #                 operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #                 condition_on_value: {
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               target: {
    #                 target_document_attribute_key: "DocumentAttributeKey",
    #                 target_document_attribute_value_deletion: false,
    #                 target_document_attribute_value: {
    #                   string_value: "DocumentAttributeStringValue",
    #                   string_list_value: ["String"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               document_content_deletion: false,
    #             },
    #           ],
    #           pre_extraction_hook_configuration: {
    #             invocation_condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn", # required
    #             s3_bucket: "S3BucketName", # required
    #           },
    #           post_extraction_hook_configuration: {
    #             invocation_condition: {
    #               condition_document_attribute_key: "DocumentAttributeKey", # required
    #               operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #               condition_on_value: {
    #                 string_value: "DocumentAttributeStringValue",
    #                 string_list_value: ["String"],
    #                 long_value: 1,
    #                 date_value: Time.now,
    #               },
    #             },
    #             lambda_arn: "LambdaArn", # required
    #             s3_bucket: "S3BucketName", # required
    #           },
    #           role_arn: "RoleArn",
    #         },
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
    #   Configuration information for an Amazon Kendra data source.
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
    # @!attribute [rw] language_code
    #   The code for a language. This allows you to support a language for
    #   all documents when updating the data source. English is supported by
    #   default. For more information on supported languages, including
    #   their codes, see [Adding documents in languages other than
    #   English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
    #   @return [String]
    #
    # @!attribute [rw] custom_document_enrichment_configuration
    #   Configuration information for altering document metadata and content
    #   during the document ingestion process when you update a data source.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest
    #   documents into Amazon Kendra, see [Customizing document metadata
    #   during the ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #   @return [Types::CustomDocumentEnrichmentConfiguration]
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
      :role_arn,
      :language_code,
      :custom_document_enrichment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateExperienceRequest
    #   data as a hash:
    #
    #       {
    #         id: "ExperienceId", # required
    #         name: "ExperienceName",
    #         index_id: "IndexId", # required
    #         role_arn: "RoleArn",
    #         configuration: {
    #           content_source_configuration: {
    #             data_source_ids: ["DataSourceId"],
    #             faq_ids: ["FaqId"],
    #             direct_put_content: false,
    #           },
    #           user_identity_configuration: {
    #             identity_attribute_name: "IdentityAttributeName",
    #           },
    #         },
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of your Amazon Kendra experience you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of your Amazon Kendra experience you want to update.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for your Amazon Kendra experience you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and
    #   Amazon Web Services SSO that stores your user and group information.
    #   For more information, see [IAM roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides the user configuration information. This includes the
    #   Amazon Web Services SSO field name that contains the identifiers of
    #   your users, such as their emails.
    #   @return [Types::ExperienceConfiguration]
    #
    # @!attribute [rw] description
    #   The description of your Amazon Kendra experience you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateExperienceRequest AWS API Documentation
    #
    class UpdateExperienceRequest < Struct.new(
      :id,
      :name,
      :index_id,
      :role_arn,
      :configuration,
      :description)
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
    #         user_token_configurations: [
    #           {
    #             jwt_token_type_configuration: {
    #               key_location: "URL", # required, accepts URL, SECRET_MANAGER
    #               url: "Url",
    #               secret_manager_arn: "RoleArn",
    #               user_name_attribute_field: "UserNameAttributeField",
    #               group_attribute_field: "GroupAttributeField",
    #               issuer: "Issuer",
    #               claim_regex: "ClaimRegex",
    #             },
    #             json_token_type_configuration: {
    #               user_name_attribute_field: "String", # required
    #               group_attribute_field: "String", # required
    #             },
    #           },
    #         ],
    #         user_context_policy: "ATTRIBUTE_FILTER", # accepts ATTRIBUTE_FILTER, USER_TOKEN
    #         user_group_resolution_configuration: {
    #           user_group_resolution_mode: "AWS_SSO", # required, accepts AWS_SSO, NONE
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
    #   Sets the number of additional storage and query capacity units that
    #   should be used by the index. You can change the capacity of the
    #   index up to 5 times per day.
    #
    #   If you are using extra storage units, you can't reduce the storage
    #   capacity below that required to meet the storage needs for your
    #   index.
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @!attribute [rw] user_token_configurations
    #   The user token configuration.
    #   @return [Array<Types::UserTokenConfiguration>]
    #
    # @!attribute [rw] user_context_policy
    #   The user context policy.
    #   @return [String]
    #
    # @!attribute [rw] user_group_resolution_configuration
    #   Enables fetching access levels of groups and users from an Amazon
    #   Web Services Single Sign On identity source. To configure this, see
    #   [UserGroupResolutionConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html
    #   @return [Types::UserGroupResolutionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateIndexRequest AWS API Documentation
    #
    class UpdateIndexRequest < Struct.new(
      :id,
      :name,
      :role_arn,
      :description,
      :document_metadata_configuration_updates,
      :capacity_units,
      :user_token_configurations,
      :user_context_policy,
      :user_group_resolution_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQuerySuggestionsBlockListRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         id: "QuerySuggestionsBlockListId", # required
    #         name: "QuerySuggestionsBlockListName",
    #         description: "Description",
    #         source_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for a block list.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of a block list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a block list.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for a block list.
    #   @return [String]
    #
    # @!attribute [rw] source_s3_path
    #   The S3 path where your block list text file sits in S3.
    #
    #   If you update your block list and provide the same path to the block
    #   list text file in S3, then Amazon Kendra reloads the file to refresh
    #   the block list. Amazon Kendra does not automatically refresh your
    #   block list. You need to call the `UpdateQuerySuggestionsBlockList`
    #   API to refresh you block list.
    #
    #   If you update your block list, then Amazon Kendra asynchronously
    #   refreshes all query suggestions with the latest content in the S3
    #   file. This means changes might not take effect immediately.
    #   @return [Types::S3Path]
    #
    # @!attribute [rw] role_arn
    #   The IAM (Identity and Access Management) role used to access the
    #   block list text file in S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateQuerySuggestionsBlockListRequest AWS API Documentation
    #
    class UpdateQuerySuggestionsBlockListRequest < Struct.new(
      :index_id,
      :id,
      :name,
      :description,
      :source_s3_path,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQuerySuggestionsConfigRequest
    #   data as a hash:
    #
    #       {
    #         index_id: "IndexId", # required
    #         mode: "ENABLED", # accepts ENABLED, LEARN_ONLY
    #         query_log_look_back_window_in_days: 1,
    #         include_queries_without_user_information: false,
    #         minimum_number_of_querying_users: 1,
    #         minimum_query_count: 1,
    #       }
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to update query suggestions
    #   settings for.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   Set the mode to `ENABLED` or `LEARN_ONLY`.
    #
    #   By default, Amazon Kendra enables query suggestions. `LEARN_ONLY`
    #   mode allows you to turn off query suggestions. You can to update
    #   this at any time.
    #
    #   In `LEARN_ONLY` mode, Amazon Kendra continues to learn from new
    #   queries to keep suggestions up to date for when you are ready to
    #   switch to ENABLED mode again.
    #   @return [String]
    #
    # @!attribute [rw] query_log_look_back_window_in_days
    #   How recent your queries are in your query log time window.
    #
    #   The time window is the number of days from current day to past days.
    #
    #   By default, Amazon Kendra sets this to 180.
    #   @return [Integer]
    #
    # @!attribute [rw] include_queries_without_user_information
    #   `TRUE` to include queries without user information (i.e. all
    #   queries, irrespective of the user), otherwise `FALSE` to only
    #   include queries with user information.
    #
    #   If you pass user information to Amazon Kendra along with the
    #   queries, you can set this flag to `FALSE` and instruct Amazon Kendra
    #   to only consider queries with user information.
    #
    #   If you set to `FALSE`, Amazon Kendra only considers queries searched
    #   at least `MinimumQueryCount` times across
    #   `MinimumNumberOfQueryingUsers` unique users for suggestions.
    #
    #   If you set to `TRUE`, Amazon Kendra ignores all user information and
    #   learns from all queries.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_number_of_querying_users
    #   The minimum number of unique users who must search a query in order
    #   for the query to be eligible to suggest to your users.
    #
    #   Increasing this number might decrease the number of suggestions.
    #   However, this ensures a query is searched by many users and is truly
    #   popular to suggest to users.
    #
    #   How you tune this setting depends on your specific needs.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_query_count
    #   The the minimum number of times a query must be searched in order to
    #   be eligible to suggest to your users.
    #
    #   Decreasing this number increases the number of suggestions. However,
    #   this affects the quality of suggestions as it sets a low bar for a
    #   query to be considered popular to suggest to users.
    #
    #   How you tune this setting depends on your specific needs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateQuerySuggestionsConfigRequest AWS API Documentation
    #
    class UpdateQuerySuggestionsConfigRequest < Struct.new(
      :index_id,
      :mode,
      :query_log_look_back_window_in_days,
      :include_queries_without_user_information,
      :minimum_number_of_querying_users,
      :minimum_query_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThesaurusRequest
    #   data as a hash:
    #
    #       {
    #         id: "ThesaurusId", # required
    #         name: "ThesaurusName",
    #         index_id: "IndexId", # required
    #         description: "Description",
    #         role_arn: "RoleArn",
    #         source_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the thesaurus to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index associated with the thesaurus to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The updated role ARN of the thesaurus.
    #   @return [String]
    #
    # @!attribute [rw] source_s3_path
    #   Information required to find a specific file in an Amazon S3 bucket.
    #   @return [Types::S3Path]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateThesaurusRequest AWS API Documentation
    #
    class UpdateThesaurusRequest < Struct.new(
      :id,
      :name,
      :index_id,
      :description,
      :role_arn,
      :source_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information of the URLs to crawl.
    #
    # You can only crawl websites that use the secure communication
    # protocol, Hypertext Transfer Protocol Secure (HTTPS). If you receive
    # an error when crawling a website, it could be that the website is
    # blocked from crawling.
    #
    # *When selecting websites to index, you must adhere to the [Amazon
    # Acceptable Use Policy][1] and all other Amazon terms. Remember that
    # you must only use Amazon Kendra Web Crawler to index your own
    # webpages, or webpages that you have authorization to index.*
    #
    #
    #
    # [1]: https://aws.amazon.com/aup/
    #
    # @note When making an API call, you may pass Urls
    #   data as a hash:
    #
    #       {
    #         seed_url_configuration: {
    #           seed_urls: ["SeedUrl"], # required
    #           web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #         },
    #         site_maps_configuration: {
    #           site_maps: ["SiteMap"], # required
    #         },
    #       }
    #
    # @!attribute [rw] seed_url_configuration
    #   Provides the configuration of the seed or starting point URLs of the
    #   websites you want to crawl.
    #
    #   You can choose to crawl only the website host names, or the website
    #   host names with subdomains, or the website host names with
    #   subdomains and other domains that the webpages link to.
    #
    #   You can list up to 100 seed URLs.
    #   @return [Types::SeedUrlConfiguration]
    #
    # @!attribute [rw] site_maps_configuration
    #   Provides the configuration of the sitemap URLs of the websites you
    #   want to crawl.
    #
    #   Only URLs belonging to the same website host names are crawled. You
    #   can list up to three sitemap URLs.
    #   @return [Types::SiteMapsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Urls AWS API Documentation
    #
    class Urls < Struct.new(
      :seed_url_configuration,
      :site_maps_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the user context for an Amazon Kendra
    # index.
    #
    # This is used for filtering search results for different users based on
    # their access to documents.
    #
    # You provide one of the following:
    #
    # * User token
    #
    # * User ID, the groups the user belongs to, and any data sources the
    #   groups can access.
    #
    # If you provide both, an exception is thrown.
    #
    # @note When making an API call, you may pass UserContext
    #   data as a hash:
    #
    #       {
    #         token: "Token",
    #         user_id: "PrincipalName",
    #         groups: ["PrincipalName"],
    #         data_source_groups: [
    #           {
    #             group_id: "PrincipalName", # required
    #             data_source_id: "DataSourceId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] token
    #   The user context token for filtering search results for a user. It
    #   must be a JWT or a JSON token.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user you want to filter search results based
    #   on their access to documents.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The list of groups you want to filter search results based on the
    #   groups' access to documents.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_source_groups
    #   The list of data source groups you want to filter search results
    #   based on groups' access to documents in that data source.
    #   @return [Array<Types::DataSourceGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UserContext AWS API Documentation
    #
    class UserContext < Struct.new(
      :token,
      :user_id,
      :groups,
      :data_source_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information to fetch access levels of
    # groups and users from an Amazon Web Services Single Sign On identity
    # source. This is useful for setting up user context filtering, where
    # Amazon Kendra filters search results for different users based on
    # their group's access to documents. You can also map your users to
    # their groups for user context filtering using the [PutPrincipalMapping
    # API][1].
    #
    # To set up an Amazon Web Services SSO identity source in the console to
    # use with Amazon Kendra, see [Getting started with an Amazon Web
    # Services SSO identity source][2]. You must also grant the required
    # permissions to use Amazon Web Services SSO with Amazon Kendra. For
    # more information, see [IAM roles for Amazon Web Services SSO][3].
    #
    # Amazon Kendra currently does not support using
    # `UserGroupResolutionConfiguration` with an Amazon Web Services
    # organization member account for your Amazon Web Services SSO identify
    # source. You must create your index in the management account for the
    # organization in order to use `UserGroupResolutionConfiguration`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_PutPrincipalMapping.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/getting-started-aws-sso.html
    # [3]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-aws-sso
    #
    # @note When making an API call, you may pass UserGroupResolutionConfiguration
    #   data as a hash:
    #
    #       {
    #         user_group_resolution_mode: "AWS_SSO", # required, accepts AWS_SSO, NONE
    #       }
    #
    # @!attribute [rw] user_group_resolution_mode
    #   The identity store provider (mode) you want to use to fetch access
    #   levels of groups and users. Amazon Web Services Single Sign On is
    #   currently the only available mode. Your users and groups must exist
    #   in an Amazon Web Services SSO identity source in order to use this
    #   mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UserGroupResolutionConfiguration AWS API Documentation
    #
    class UserGroupResolutionConfiguration < Struct.new(
      :user_group_resolution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the identifiers of your users.
    #
    # @note When making an API call, you may pass UserIdentityConfiguration
    #   data as a hash:
    #
    #       {
    #         identity_attribute_name: "IdentityAttributeName",
    #       }
    #
    # @!attribute [rw] identity_attribute_name
    #   The Amazon Web Services SSO field name that contains the identifiers
    #   of your users, such as their emails. This is used for [user context
    #   filtering][1] and for granting access to your Amazon Kendra
    #   experience. You must set up Amazon Web Services SSO with Amazon
    #   Kendra. You must include your users and groups in your Access
    #   Control List when you ingest documents into your index. For more
    #   information, see [Getting started with an Amazon Web Services SSO
    #   identity source][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html
    #   [2]: https://docs.aws.amazon.com/kendra/latest/dg/getting-started-aws-sso.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UserIdentityConfiguration AWS API Documentation
    #
    class UserIdentityConfiguration < Struct.new(
      :identity_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for a token configuration.
    #
    # @note When making an API call, you may pass UserTokenConfiguration
    #   data as a hash:
    #
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: "URL", # required, accepts URL, SECRET_MANAGER
    #           url: "Url",
    #           secret_manager_arn: "RoleArn",
    #           user_name_attribute_field: "UserNameAttributeField",
    #           group_attribute_field: "GroupAttributeField",
    #           issuer: "Issuer",
    #           claim_regex: "ClaimRegex",
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: "String", # required
    #           group_attribute_field: "String", # required
    #         },
    #       }
    #
    # @!attribute [rw] jwt_token_type_configuration
    #   Information about the JWT token type configuration.
    #   @return [Types::JwtTokenTypeConfiguration]
    #
    # @!attribute [rw] json_token_type_configuration
    #   Information about the JSON token type configuration.
    #   @return [Types::JsonTokenTypeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UserTokenConfiguration AWS API Documentation
    #
    class UserTokenConfiguration < Struct.new(
      :jwt_token_type_configuration,
      :json_token_type_configuration)
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

    # The warning code and message that explains a problem with a query.
    #
    # @!attribute [rw] message
    #   The message that explains the problem with the query.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The code used to show the type of warning for the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Warning AWS API Documentation
    #
    class Warning < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information required for Amazon Kendra Web
    # Crawler.
    #
    # @note When making an API call, you may pass WebCrawlerConfiguration
    #   data as a hash:
    #
    #       {
    #         urls: { # required
    #           seed_url_configuration: {
    #             seed_urls: ["SeedUrl"], # required
    #             web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #           },
    #           site_maps_configuration: {
    #             site_maps: ["SiteMap"], # required
    #           },
    #         },
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] urls
    #   Specifies the seed or starting point URLs of the websites or the
    #   sitemap URLs of the websites you want to crawl.
    #
    #   You can include website subdomains. You can list up to 100 seed URLs
    #   and up to three sitemap URLs.
    #
    #   You can only crawl websites that use the secure communication
    #   protocol, Hypertext Transfer Protocol Secure (HTTPS). If you receive
    #   an error when crawling a website, it could be that the website is
    #   blocked from crawling.
    #
    #   *When selecting websites to index, you must adhere to the [Amazon
    #   Acceptable Use Policy][1] and all other Amazon terms. Remember that
    #   you must only use Amazon Kendra Web Crawler to index your own
    #   webpages, or webpages that you have authorization to index.*
    #
    #
    #
    #   [1]: https://aws.amazon.com/aup/
    #   @return [Types::Urls]
    #
    # @!attribute [rw] crawl_depth
    #   Specifies the number of levels in a website that you want to crawl.
    #
    #   The first level begins from the website seed or starting point URL.
    #   For example, if a website has 3 levels – index level (i.e. seed in
    #   this example), sections level, and subsections level – and you are
    #   only interested in crawling information up to the sections level
    #   (i.e. levels 0-1), you can set your depth to 1.
    #
    #   The default crawl depth is set to 2.
    #   @return [Integer]
    #
    # @!attribute [rw] max_links_per_page
    #   The maximum number of URLs on a webpage to include when crawling a
    #   website. This number is per webpage.
    #
    #   As a website’s webpages are crawled, any URLs the webpages link to
    #   are also crawled. URLs on a webpage are crawled in order of
    #   appearance.
    #
    #   The default maximum links per page is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] max_content_size_per_page_in_mega_bytes
    #   The maximum size (in MB) of a webpage or attachment to crawl.
    #
    #   Files larger than this size (in MB) are skipped/not crawled.
    #
    #   The default maximum size of a webpage or attachment is set to 50 MB.
    #   @return [Float]
    #
    # @!attribute [rw] max_urls_per_minute_crawl_rate
    #   The maximum number of URLs crawled per website host per minute.
    #
    #   A minimum of one URL is required.
    #
    #   The default maximum number of URLs crawled per website host per
    #   minute is 300.
    #   @return [Integer]
    #
    # @!attribute [rw] url_inclusion_patterns
    #   The regular expression pattern to include certain URLs to crawl.
    #
    #   If there is a regular expression pattern to exclude certain URLs
    #   that conflicts with the include pattern, the exclude pattern takes
    #   precedence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] url_exclusion_patterns
    #   The regular expression pattern to exclude certain URLs to crawl.
    #
    #   If there is a regular expression pattern to include certain URLs
    #   that conflicts with the exclude pattern, the exclude pattern takes
    #   precedence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] proxy_configuration
    #   Provides configuration information required to connect to your
    #   internal websites via a web proxy.
    #
    #   You must provide the website host name and port number. For example,
    #   the host name of https://a.example.com/page1.html is
    #   "a.example.com" and the port is 443, the standard port for HTTPS.
    #
    #   Web proxy credentials are optional and you can use them to connect
    #   to a web proxy server that requires basic authentication. To store
    #   web proxy credentials, you use a secret in [Secrets Manager][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] authentication_configuration
    #   Provides configuration information required to connect to websites
    #   using authentication.
    #
    #   You can connect to websites using basic authentication of user name
    #   and password.
    #
    #   You must provide the website host name and port number. For example,
    #   the host name of https://a.example.com/page1.html is
    #   "a.example.com" and the port is 443, the standard port for HTTPS.
    #   You use a secret in [Secrets Manager][1] to store your
    #   authentication credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    #   @return [Types::AuthenticationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/WebCrawlerConfiguration AWS API Documentation
    #
    class WebCrawlerConfiguration < Struct.new(
      :urls,
      :crawl_depth,
      :max_links_per_page,
      :max_content_size_per_page_in_mega_bytes,
      :max_urls_per_minute_crawl_rate,
      :url_inclusion_patterns,
      :url_exclusion_patterns,
      :proxy_configuration,
      :authentication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information to connect to Amazon WorkDocs
    # as your data source.
    #
    # Amazon WorkDocs connector is available in Oregon, North Virginia,
    # Sydney, Singapore and Ireland regions.
    #
    # @note When making an API call, you may pass WorkDocsConfiguration
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         crawl_comments: false,
    #         use_change_log: false,
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
    # @!attribute [rw] organization_id
    #   The identifier of the directory corresponding to your Amazon
    #   WorkDocs site repository.
    #
    #   You can find the organization ID in the [Directory Service][1] by
    #   going to **Active Directory**, then **Directories**. Your Amazon
    #   WorkDocs site directory has an ID, which is the organization ID. You
    #   can also set up a new Amazon WorkDocs directory in the Directory
    #   Service console and enable a Amazon WorkDocs site for the directory
    #   in the Amazon WorkDocs console.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/directoryservicev2/
    #   @return [String]
    #
    # @!attribute [rw] crawl_comments
    #   `TRUE` to include comments on documents in your index. Including
    #   comments in your index means each comment is a document that can be
    #   searched on.
    #
    #   The default is set to `FALSE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_change_log
    #   `TRUE` to use the change logs to update documents in your index
    #   instead of scanning all documents.
    #
    #   If you are syncing your Amazon WorkDocs data source with your index
    #   for the first time, all documents are scanned. After your first
    #   sync, you can use the change logs to update your documents in your
    #   index for future syncs.
    #
    #   The default is set to `FALSE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] inclusion_patterns
    #   A list of regular expression patterns to include certain files in
    #   your Amazon WorkDocs site repository. Files that match the patterns
    #   are included in the index. Files that don't match the patterns are
    #   excluded from the index. If a file matches both an inclusion pattern
    #   and an exclusion pattern, the exclusion pattern takes precedence and
    #   the file isn’t included in the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_patterns
    #   A list of regular expression patterns to exclude certain files in
    #   your Amazon WorkDocs site repository. Files that match the patterns
    #   are excluded from the index. Files that don’t match the patterns are
    #   included in the index. If a file matches both an inclusion pattern
    #   and an exclusion pattern, the exclusion pattern takes precedence and
    #   the file isn’t included in the index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_mappings
    #   A list of `DataSourceToIndexFieldMapping` objects that map Amazon
    #   WorkDocs field names to custom index field names in Amazon Kendra.
    #   You must first create the custom index fields using the
    #   `UpdateIndex` API before you map to Amazon WorkDocs fields. For more
    #   information, see [Mapping Data Source Fields][1]. The Amazon
    #   WorkDocs data source field names need to exist in your Amazon
    #   WorkDocs custom metadata.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html
    #   @return [Array<Types::DataSourceToIndexFieldMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/WorkDocsConfiguration AWS API Documentation
    #
    class WorkDocsConfiguration < Struct.new(
      :organization_id,
      :crawl_comments,
      :use_change_log,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
