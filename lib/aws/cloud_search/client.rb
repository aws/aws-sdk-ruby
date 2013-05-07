# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class CloudSearch

    # Client class for Amazon Cloud Search.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method create_domain(options = {})
      # Calls the CreateDomain API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:domain_status` - (Hash)
      #     * `:domain_id` - (String)
      #     * `:domain_name` - (String)
      #     * `:created` - (Boolean)
      #     * `:deleted` - (Boolean)
      #     * `:num_searchable_docs` - (Integer)
      #     * `:doc_service` - (Hash)
      #       * `:arn` - (String)
      #       * `:endpoint` - (String)
      #     * `:search_service` - (Hash)
      #       * `:arn` - (String)
      #       * `:endpoint` - (String)
      #     * `:requires_index_documents` - (Boolean)
      #     * `:processing` - (Boolean)
      #     * `:search_instance_type` - (String)
      #     * `:search_partition_count` - (Integer)
      #     * `:search_instance_count` - (Integer)

      # @!method define_index_field(options = {})
      # Calls the DefineIndexField API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:index_field` - *required* - (Hash)
      #     * `:index_field_name` - *required* - (String) The name of a field
      #       in the search index. Field names must begin with a letter and can
      #       contain the following characters: a-z (lowercase), 0-9, and _
      #       (underscore). Uppercase letters and hyphens are not allowed. The
      #       names "body", "docid", and "text_relevance" are reserved and
      #       cannot be specified as field or rank expression names.
      #     * `:index_field_type` - *required* - (String) The type of field.
      #       Based on this type, exactly one of the UIntOptions,
      #       LiteralOptions or TextOptions must be present. Valid values
      #       include:
      #       * `uint`
      #       * `literal`
      #       * `text`
      #     * `:u_int_options` - (Hash) Options for an unsigned integer field.
      #       Present if IndexFieldType specifies the field is of type unsigned
      #       integer.
      #       * `:default_value` - (Integer) The default value for an unsigned
      #         integer field.
      #     * `:literal_options` - (Hash) Options for literal field. Present if
      #       IndexFieldType specifies the field is of type literal.
      #       * `:default_value` - (String) The default value for a literal
      #         field.
      #       * `:search_enabled` - (Boolean) Specifies whether search is
      #         enabled for this field.
      #       * `:facet_enabled` - (Boolean) Specifies whether facets are
      #         enabled for this field.
      #       * `:result_enabled` - (Boolean) Specifies whether values of this
      #         field can be returned in search results and used for ranking.
      #     * `:text_options` - (Hash) Options for text field. Present if
      #       IndexFieldType specifies the field is of type text.
      #       * `:default_value` - (String) The default value for a text field.
      #       * `:facet_enabled` - (Boolean) Specifies whether facets are
      #         enabled for this field.
      #       * `:result_enabled` - (Boolean) Specifies whether values of this
      #         field can be returned in search results and used for ranking.
      #     * `:source_attributes` - (Array<Hash>) An optional list of source
      #       attributes that provide data for this index field. If not
      #       specified, the data is pulled from a source attribute with the
      #       same name as this IndexField. When one or more source attributes
      #       are specified, an optional data transformation can be applied to
      #       the source data when populating the index field. You can
      #       configure a maximum of 20 sources for an IndexField.
      #       * `:source_data_function` - *required* - (String) Identifies the
      #         transformation to apply when copying data from a source
      #         attribute. Valid values include:
      #         * `Copy`
      #         * `TrimTitle`
      #         * `Map`
      #       * `:source_data_copy` - (Hash) Copies data from a source document
      #         attribute to an IndexField.
      #         * `:source_name` - *required* - (String) The name of the
      #           document source field to add to this IndexField.
      #         * `:default_value` - (String)
      #       * `:source_data_trim_title` - (Hash) Trims common title words
      #         from a source document attribute when populating an IndexField.
      #         This can be used to create an IndexField you can use for
      #         sorting.
      #         * `:source_name` - *required* - (String) The name of the
      #           document source field to add to this IndexField.
      #         * `:default_value` - (String)
      #         * `:separator` - (String) The separator that follows the text
      #           to trim.
      #         * `:language` - (String)
      #       * `:source_data_map` - (Hash) Maps source document attribute
      #         values to new values when populating the IndexField.
      #         * `:source_name` - *required* - (String) The name of the
      #           document source field to add to this IndexField.
      #         * `:default_value` - (String)
      #         * `:cases` - (Hash<String,String>) A map that translates source
      #           field values to custom values.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:index_field` - (Hash)
      #     * `:options` - (Hash)
      #       * `:index_field_name` - (String)
      #       * `:index_field_type` - (String)
      #       * `:u_int_options` - (Hash)
      #         * `:default_value` - (Integer)
      #       * `:literal_options` - (Hash)
      #         * `:default_value` - (String)
      #         * `:search_enabled` - (Boolean)
      #         * `:facet_enabled` - (Boolean)
      #         * `:result_enabled` - (Boolean)
      #       * `:text_options` - (Hash)
      #         * `:default_value` - (String)
      #         * `:facet_enabled` - (Boolean)
      #         * `:result_enabled` - (Boolean)
      #       * `:source_attributes` - (Array<Hash>)
      #         * `:source_data_function` - (String)
      #         * `:source_data_copy` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #         * `:source_data_trim_title` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #           * `:separator` - (String)
      #           * `:language` - (String)
      #         * `:source_data_map` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #           * `:cases` - (Hash<String,String>)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method define_rank_expression(options = {})
      # Calls the DefineRankExpression API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:rank_expression` - *required* - (Hash)
      #     * `:rank_name` - *required* - (String) The name of a rank
      #       expression. Rank expression names must begin with a letter and
      #       can contain the following characters: a-z (lowercase), 0-9, and _
      #       (underscore). Uppercase letters and hyphens are not allowed. The
      #       names "body", "docid", and "text_relevance" are reserved and
      #       cannot be specified as field or rank expression names.
      #     * `:rank_expression` - *required* - (String) The expression to
      #       evaluate for ranking or thresholding while processing a search
      #       request. The RankExpression syntax is based on JavaScript
      #       expressions and supports: Integer, floating point, hex and octal
      #       literals Shortcut evaluation of logical operators such that an
      #       expression a || b evaluates to the value a if a is `true` without
      #       evaluting b at all JavaScript order of precendence for operators
      #       Arithmetic operators: + - * / % Boolean operators (including the
      #       ternary operator) Bitwise operators Comparison operators Common
      #       mathematic functions: abs ceil erf exp floor lgamma ln log2 log10
      #       max min sqrt pow Trigonometric library functions: acosh acos
      #       asinh asin atanh atan cosh cos sinh sin tanh tan Random
      #       generation of a number between 0 and 1: rand Current time in
      #       epoch: time The min max functions that operate on a variable
      #       argument list Intermediate results are calculated as double
      #       precision floating point values. The final return value of a
      #       RankExpression is automatically converted from floating point to
      #       a 32-bit unsigned integer by rounding to the nearest integer,
      #       with a natural floor of 0 and a ceiling of max(uint32_t),
      #       4294967295. Mathematical errors such as dividing by 0 will fail
      #       during evaluation and return a value of 0. The source data for a
      #       RankExpression can be the name of an IndexField of type uint,
      #       another RankExpression or the reserved name text_relevance. The
      #       text_relevance source is defined to return an integer from 0 to
      #       1000 (inclusive) to indicate how relevant a document is to the
      #       search request, taking into account repetition of search terms in
      #       the document and proximity of search terms to each other in each
      #       matching IndexField in the document. For more information about
      #       using rank expressions to customize ranking, see the Amazon
      #       CloudSearch Developer Guide.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:rank_expression` - (Hash)
      #     * `:options` - (Hash)
      #       * `:rank_name` - (String)
      #       * `:rank_expression` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method delete_domain(options = {})
      # Calls the DeleteDomain API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:domain_status` - (Hash)
      #     * `:domain_id` - (String)
      #     * `:domain_name` - (String)
      #     * `:created` - (Boolean)
      #     * `:deleted` - (Boolean)
      #     * `:num_searchable_docs` - (Integer)
      #     * `:doc_service` - (Hash)
      #       * `:arn` - (String)
      #       * `:endpoint` - (String)
      #     * `:search_service` - (Hash)
      #       * `:arn` - (String)
      #       * `:endpoint` - (String)
      #     * `:requires_index_documents` - (Boolean)
      #     * `:processing` - (Boolean)
      #     * `:search_instance_type` - (String)
      #     * `:search_partition_count` - (Integer)
      #     * `:search_instance_count` - (Integer)

      # @!method delete_index_field(options = {})
      # Calls the DeleteIndexField API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:index_field_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:index_field` - (Hash)
      #     * `:options` - (Hash)
      #       * `:index_field_name` - (String)
      #       * `:index_field_type` - (String)
      #       * `:u_int_options` - (Hash)
      #         * `:default_value` - (Integer)
      #       * `:literal_options` - (Hash)
      #         * `:default_value` - (String)
      #         * `:search_enabled` - (Boolean)
      #         * `:facet_enabled` - (Boolean)
      #         * `:result_enabled` - (Boolean)
      #       * `:text_options` - (Hash)
      #         * `:default_value` - (String)
      #         * `:facet_enabled` - (Boolean)
      #         * `:result_enabled` - (Boolean)
      #       * `:source_attributes` - (Array<Hash>)
      #         * `:source_data_function` - (String)
      #         * `:source_data_copy` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #         * `:source_data_trim_title` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #           * `:separator` - (String)
      #           * `:language` - (String)
      #         * `:source_data_map` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #           * `:cases` - (Hash<String,String>)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method delete_rank_expression(options = {})
      # Calls the DeleteRankExpression API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:rank_name` - *required* - (String) The name of the RankExpression
      #     to delete.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:rank_expression` - (Hash)
      #     * `:options` - (Hash)
      #       * `:rank_name` - (String)
      #       * `:rank_expression` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_default_search_field(options = {})
      # Calls the DescribeDefaultSearchField API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:default_search_field` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_domains(options = {})
      # Calls the DescribeDomains API operation.
      # @param [Hash] options
      #   * `:domain_names` - (Array<String>) Limits the DescribeDomains
      #     response to the specified search domains.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:domain_status_list` - (Array<Hash>)
      #     * `:domain_id` - (String)
      #     * `:domain_name` - (String)
      #     * `:created` - (Boolean)
      #     * `:deleted` - (Boolean)
      #     * `:num_searchable_docs` - (Integer)
      #     * `:doc_service` - (Hash)
      #       * `:arn` - (String)
      #       * `:endpoint` - (String)
      #     * `:search_service` - (Hash)
      #       * `:arn` - (String)
      #       * `:endpoint` - (String)
      #     * `:requires_index_documents` - (Boolean)
      #     * `:processing` - (Boolean)
      #     * `:search_instance_type` - (String)
      #     * `:search_partition_count` - (Integer)
      #     * `:search_instance_count` - (Integer)

      # @!method describe_index_fields(options = {})
      # Calls the DescribeIndexFields API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:field_names` - (Array<String>) Limits the DescribeIndexFields
      #     response to the specified fields.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:index_fields` - (Array<Hash>)
      #     * `:options` - (Hash)
      #       * `:index_field_name` - (String)
      #       * `:index_field_type` - (String)
      #       * `:u_int_options` - (Hash)
      #         * `:default_value` - (Integer)
      #       * `:literal_options` - (Hash)
      #         * `:default_value` - (String)
      #         * `:search_enabled` - (Boolean)
      #         * `:facet_enabled` - (Boolean)
      #         * `:result_enabled` - (Boolean)
      #       * `:text_options` - (Hash)
      #         * `:default_value` - (String)
      #         * `:facet_enabled` - (Boolean)
      #         * `:result_enabled` - (Boolean)
      #       * `:source_attributes` - (Array<Hash>)
      #         * `:source_data_function` - (String)
      #         * `:source_data_copy` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #         * `:source_data_trim_title` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #           * `:separator` - (String)
      #           * `:language` - (String)
      #         * `:source_data_map` - (Hash)
      #           * `:source_name` - (String)
      #           * `:default_value` - (String)
      #           * `:cases` - (Hash<String,String>)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_rank_expressions(options = {})
      # Calls the DescribeRankExpressions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:rank_names` - (Array<String>) Limits the DescribeRankExpressions
      #     response to the specified fields.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:rank_expressions` - (Array<Hash>)
      #     * `:options` - (Hash)
      #       * `:rank_name` - (String)
      #       * `:rank_expression` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_service_access_policies(options = {})
      # Calls the DescribeServiceAccessPolicies API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:access_policies` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_stemming_options(options = {})
      # Calls the DescribeStemmingOptions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stems` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_stopword_options(options = {})
      # Calls the DescribeStopwordOptions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stopwords` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method describe_synonym_options(options = {})
      # Calls the DescribeSynonymOptions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:synonyms` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method index_documents(options = {})
      # Calls the IndexDocuments API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:field_names` - (Array<String>)

      # @!method update_default_search_field(options = {})
      # Calls the UpdateDefaultSearchField API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:default_search_field` - *required* - (String) The IndexField to
      #     use for search requests issued with the q parameter. The default is
      #     an empty string, which automatically searches all text fields.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:default_search_field` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method update_service_access_policies(options = {})
      # Calls the UpdateServiceAccessPolicies API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:access_policies` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:access_policies` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method update_stemming_options(options = {})
      # Calls the UpdateStemmingOptions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:stems` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stems` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method update_stopword_options(options = {})
      # Calls the UpdateStopwordOptions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:stopwords` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stopwords` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # @!method update_synonym_options(options = {})
      # Calls the UpdateSynonymOptions API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String)
      #   * `:synonyms` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:synonyms` - (Hash)
      #     * `:options` - (String)
      #     * `:status` - (Hash)
      #       * `:creation_date` - (Time)
      #       * `:update_date` - (Time)
      #       * `:update_version` - (Integer)
      #       * `:state` - (String)

      # end client methods #

      define_client_methods('2011-02-01')

    end
  end
end
