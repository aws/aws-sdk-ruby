# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CloudSearch
    module Types

      # The configured access rules for the domain\'s document and search
      # endpoints, and the current status of those rules.
      class AccessPoliciesStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   Access rules for a domain\'s document or search service endpoints.
        #   For more information, see [Configuring Access for a Search
        #   Domain][1] in the *Amazon CloudSearch Developer Guide*. The maximum
        #   size of a policy document is 100 KB.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html
        #   @return [String]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # Synonyms, stopwords, and stemming options for an analysis scheme.
      # Includes tokenization dictionary for Japanese.
      # @note When making an API call, pass AnalysisOptions
      #   data as a hash:
      #
      #       {
      #         synonyms: "String",
      #         stopwords: "String",
      #         stemming_dictionary: "String",
      #         japanese_tokenization_dictionary: "String",
      #         algorithmic_stemming: "none", # accepts none, minimal, light, full
      #       }
      class AnalysisOptions < Aws::Structure.new(
        :synonyms,
        :stopwords,
        :stemming_dictionary,
        :japanese_tokenization_dictionary,
        :algorithmic_stemming)

        # @!attribute [rw] synonyms
        #   A JSON object that defines synonym groups and aliases. A synonym
        #   group is an array of arrays, where each sub-array is a group of
        #   terms where each term in the group is considered a synonym of every
        #   other term in the group. The aliases value is an object that
        #   contains a collection of string:value pairs where the string
        #   specifies a term and the array of values specifies each of the
        #   aliases for that term. An alias is considered a synonym of the
        #   specified term, but the term is not considered a synonym of the
        #   alias. For more information about specifying synonyms, see
        #   [Synonyms][1] in the *Amazon CloudSearch Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms
        #   @return [String]

        # @!attribute [rw] stopwords
        #   A JSON array of terms to ignore during indexing and searching. For
        #   example, `["a", "an", "the", "of"]`. The stopwords dictionary must
        #   explicitly list each word you want to ignore. Wildcards and regular
        #   expressions are not supported.
        #   @return [String]

        # @!attribute [rw] stemming_dictionary
        #   A JSON object that contains a collection of string:value pairs that
        #   each map a term to its stem. For example, `\{"term1": "stem1",
        #   "term2": "stem2", "term3": "stem3"\}`. The stemming dictionary is
        #   applied in addition to any algorithmic stemming. This enables you to
        #   override the results of the algorithmic stemming to correct specific
        #   cases of overstemming or understemming. The maximum size of a
        #   stemming dictionary is 500 KB.
        #   @return [String]

        # @!attribute [rw] japanese_tokenization_dictionary
        #   A JSON array that contains a collection of terms, tokens, readings
        #   and part of speech for Japanese Tokenizaiton. The Japanese
        #   tokenization dictionary enables you to override the default
        #   tokenization for selected terms. This is only valid for Japanese
        #   language fields.
        #   @return [String]

        # @!attribute [rw] algorithmic_stemming
        #   The level of algorithmic stemming to perform: `none`, `minimal`,
        #   `light`, or `full`. The available levels vary depending on the
        #   language. For more information, see [Language Specific Text
        #   Processing Settings][1] in the *Amazon CloudSearch Developer Guide*
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings
        #   @return [String]

      end

      # Configuration information for an analysis scheme. Each analysis scheme
      # has a unique name and specifies the language of the text to be
      # processed. The following options can be configured for an analysis
      # scheme: `Synonyms`, `Stopwords`, `StemmingDictionary`,
      # `JapaneseTokenizationDictionary` and `AlgorithmicStemming`.
      # @note When making an API call, pass AnalysisScheme
      #   data as a hash:
      #
      #       {
      #         analysis_scheme_name: "StandardName", # required
      #         analysis_scheme_language: "ar", # required, accepts ar, bg, ca, cs, da, de, el, en, es, eu, fa, fi, fr, ga, gl, he, hi, hu, hy, id, it, ja, ko, lv, mul, nl, no, pt, ro, ru, sv, th, tr, zh-Hans, zh-Hant
      #         analysis_options: {
      #           synonyms: "String",
      #           stopwords: "String",
      #           stemming_dictionary: "String",
      #           japanese_tokenization_dictionary: "String",
      #           algorithmic_stemming: "none", # accepts none, minimal, light, full
      #         },
      #       }
      class AnalysisScheme < Aws::Structure.new(
        :analysis_scheme_name,
        :analysis_scheme_language,
        :analysis_options)

        # @!attribute [rw] analysis_scheme_name
        #   Names must begin with a letter and can contain the following
        #   characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   @return [String]

        # @!attribute [rw] analysis_scheme_language
        #   An [IETF RFC 4646][1] language code or `mul` for multiple languages.
        #
        #
        #
        #   [1]: http://tools.ietf.org/html/rfc4646
        #   @return [String]

        # @!attribute [rw] analysis_options
        #   Synonyms, stopwords, and stemming options for an analysis scheme.
        #   Includes tokenization dictionary for Japanese.
        #   @return [Types::AnalysisOptions]

      end

      # The status and configuration of an `AnalysisScheme`.
      class AnalysisSchemeStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   Configuration information for an analysis scheme. Each analysis
        #   scheme has a unique name and specifies the language of the text to
        #   be processed. The following options can be configured for an
        #   analysis scheme: `Synonyms`, `Stopwords`, `StemmingDictionary`,
        #   `JapaneseTokenizationDictionary` and `AlgorithmicStemming`.
        #   @return [Types::AnalysisScheme]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # The status and configuration of the domain\'s availability options.
      class AvailabilityOptionsStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   The availability options configured for the domain.
        #   @return [Boolean]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # Container for the parameters to the `BuildSuggester` operation.
      # Specifies the name of the domain you want to update.
      # @note When making an API call, pass BuildSuggestersRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class BuildSuggestersRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

      end

      # The result of a `BuildSuggester` request. Contains a list of the
      # fields used for suggestions.
      class BuildSuggestersResponse < Aws::Structure.new(
        :field_names)

        # @!attribute [rw] field_names
        #   A list of field names.
        #   @return [Array<String>]

      end

      # Container for the parameters to the `CreateDomain` operation.
      # Specifies a name for the new search domain.
      # @note When making an API call, pass CreateDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class CreateDomainRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   A name for the domain you are creating. Allowed characters are a-z
        #   (lower-case letters), 0-9, and hyphen (-). Domain names must start
        #   with a letter or number and be at least 3 and no more than 28
        #   characters long.
        #   @return [String]

      end

      # The result of a `CreateDomainRequest`. Contains the status of a newly
      # created domain.
      class CreateDomainResponse < Aws::Structure.new(
        :domain_status)

        # @!attribute [rw] domain_status
        #   The current status of the search domain.
        #   @return [Types::DomainStatus]

      end

      # Options for a field that contains an array of dates. Present if
      # `IndexFieldType` specifies the field is of type `date-array`. All
      # options are enabled by default.
      # @note When making an API call, pass DateArrayOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_fields: "FieldNameCommaList",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #       }
      class DateArrayOptions < Aws::Structure.new(
        :default_value,
        :source_fields,
        :facet_enabled,
        :search_enabled,
        :return_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_fields
        #   A list of source fields to map to the field.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

      end

      # Options for a date field. Dates and times are specified in UTC
      # (Coordinated Universal Time) according to IETF RFC3339:
      # yyyy-mm-ddT00:00:00Z. Present if `IndexFieldType` specifies the field
      # is of type `date`. All options are enabled by default.
      # @note When making an API call, pass DateOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_field: "FieldName",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #         sort_enabled: false,
      #       }
      class DateOptions < Aws::Structure.new(
        :default_value,
        :source_field,
        :facet_enabled,
        :search_enabled,
        :return_enabled,
        :sort_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_field
        #   A string that represents the name of an index field. CloudSearch
        #   supports regular index fields as well as dynamic fields. A dynamic
        #   field\'s name defines a pattern that begins or ends with a wildcard.
        #   Any document fields that don\'t map to a regular index field but do
        #   match a dynamic field\'s pattern are configured with the dynamic
        #   field\'s indexing options.
        #
        #   Regular field names begin with a letter and can contain the
        #   following characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   Dynamic field names must begin or end with a wildcard (\*). The
        #   wildcard can also be the only character in a dynamic field name.
        #   Multiple wildcards, and wildcards embedded within a string are not
        #   supported.
        #
        #   The name `score` is reserved and cannot be used as a field name. To
        #   reference a document\'s ID, you can use the name `_id`.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] sort_enabled
        #   Whether the field can be used to sort the search results.
        #   @return [Boolean]

      end

      # Container for the parameters to the `DefineAnalysisScheme` operation.
      # Specifies the name of the domain you want to update and the analysis
      # scheme configuration.
      # @note When making an API call, pass DefineAnalysisSchemeRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         analysis_scheme: { # required
      #           analysis_scheme_name: "StandardName", # required
      #           analysis_scheme_language: "ar", # required, accepts ar, bg, ca, cs, da, de, el, en, es, eu, fa, fi, fr, ga, gl, he, hi, hu, hy, id, it, ja, ko, lv, mul, nl, no, pt, ro, ru, sv, th, tr, zh-Hans, zh-Hant
      #           analysis_options: {
      #             synonyms: "String",
      #             stopwords: "String",
      #             stemming_dictionary: "String",
      #             japanese_tokenization_dictionary: "String",
      #             algorithmic_stemming: "none", # accepts none, minimal, light, full
      #           },
      #         },
      #       }
      class DefineAnalysisSchemeRequest < Aws::Structure.new(
        :domain_name,
        :analysis_scheme)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] analysis_scheme
        #   Configuration information for an analysis scheme. Each analysis
        #   scheme has a unique name and specifies the language of the text to
        #   be processed. The following options can be configured for an
        #   analysis scheme: `Synonyms`, `Stopwords`, `StemmingDictionary`,
        #   `JapaneseTokenizationDictionary` and `AlgorithmicStemming`.
        #   @return [Types::AnalysisScheme]

      end

      # The result of a `DefineAnalysisScheme` request. Contains the status of
      # the newly-configured analysis scheme.
      class DefineAnalysisSchemeResponse < Aws::Structure.new(
        :analysis_scheme)

        # @!attribute [rw] analysis_scheme
        #   The status and configuration of an `AnalysisScheme`.
        #   @return [Types::AnalysisSchemeStatus]

      end

      # Container for the parameters to the `DefineExpression` operation.
      # Specifies the name of the domain you want to update and the expression
      # you want to configure.
      # @note When making an API call, pass DefineExpressionRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         expression: { # required
      #           expression_name: "StandardName", # required
      #           expression_value: "ExpressionValue", # required
      #         },
      #       }
      class DefineExpressionRequest < Aws::Structure.new(
        :domain_name,
        :expression)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] expression
        #   A named expression that can be evaluated at search time. Can be used
        #   to sort the search results, define other expressions, or return
        #   computed information in the search results.
        #   @return [Types::Expression]

      end

      # The result of a `DefineExpression` request. Contains the status of the
      # newly-configured expression.
      class DefineExpressionResponse < Aws::Structure.new(
        :expression)

        # @!attribute [rw] expression
        #   The value of an `Expression` and its current status.
        #   @return [Types::ExpressionStatus]

      end

      # Container for the parameters to the `DefineIndexField` operation.
      # Specifies the name of the domain you want to update and the index
      # field configuration.
      # @note When making an API call, pass DefineIndexFieldRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         index_field: { # required
      #           index_field_name: "DynamicFieldName", # required
      #           index_field_type: "int", # required, accepts int, double, literal, text, date, latlon, int-array, double-array, literal-array, text-array, date-array
      #           int_options: {
      #             default_value: 1,
      #             source_field: "FieldName",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #             sort_enabled: false,
      #           },
      #           double_options: {
      #             default_value: 1.0,
      #             source_field: "FieldName",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #             sort_enabled: false,
      #           },
      #           literal_options: {
      #             default_value: "FieldValue",
      #             source_field: "FieldName",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #             sort_enabled: false,
      #           },
      #           text_options: {
      #             default_value: "FieldValue",
      #             source_field: "FieldName",
      #             return_enabled: false,
      #             sort_enabled: false,
      #             highlight_enabled: false,
      #             analysis_scheme: "Word",
      #           },
      #           date_options: {
      #             default_value: "FieldValue",
      #             source_field: "FieldName",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #             sort_enabled: false,
      #           },
      #           lat_lon_options: {
      #             default_value: "FieldValue",
      #             source_field: "FieldName",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #             sort_enabled: false,
      #           },
      #           int_array_options: {
      #             default_value: 1,
      #             source_fields: "FieldNameCommaList",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #           },
      #           double_array_options: {
      #             default_value: 1.0,
      #             source_fields: "FieldNameCommaList",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #           },
      #           literal_array_options: {
      #             default_value: "FieldValue",
      #             source_fields: "FieldNameCommaList",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #           },
      #           text_array_options: {
      #             default_value: "FieldValue",
      #             source_fields: "FieldNameCommaList",
      #             return_enabled: false,
      #             highlight_enabled: false,
      #             analysis_scheme: "Word",
      #           },
      #           date_array_options: {
      #             default_value: "FieldValue",
      #             source_fields: "FieldNameCommaList",
      #             facet_enabled: false,
      #             search_enabled: false,
      #             return_enabled: false,
      #           },
      #         },
      #       }
      class DefineIndexFieldRequest < Aws::Structure.new(
        :domain_name,
        :index_field)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] index_field
        #   The index field and field options you want to configure.
        #   @return [Types::IndexField]

      end

      # The result of a `DefineIndexField` request. Contains the status of the
      # newly-configured index field.
      class DefineIndexFieldResponse < Aws::Structure.new(
        :index_field)

        # @!attribute [rw] index_field
        #   The value of an `IndexField` and its current status.
        #   @return [Types::IndexFieldStatus]

      end

      # Container for the parameters to the `DefineSuggester` operation.
      # Specifies the name of the domain you want to update and the suggester
      # configuration.
      # @note When making an API call, pass DefineSuggesterRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         suggester: { # required
      #           suggester_name: "StandardName", # required
      #           document_suggester_options: { # required
      #             source_field: "FieldName", # required
      #             fuzzy_matching: "none", # accepts none, low, high
      #             sort_expression: "String",
      #           },
      #         },
      #       }
      class DefineSuggesterRequest < Aws::Structure.new(
        :domain_name,
        :suggester)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] suggester
        #   Configuration information for a search suggester. Each suggester has
        #   a unique name and specifies the text field you want to use for
        #   suggestions. The following options can be configured for a
        #   suggester: `FuzzyMatching`, `SortExpression`.
        #   @return [Types::Suggester]

      end

      # The result of a `DefineSuggester` request. Contains the status of the
      # newly-configured suggester.
      class DefineSuggesterResponse < Aws::Structure.new(
        :suggester)

        # @!attribute [rw] suggester
        #   The value of a `Suggester` and its current status.
        #   @return [Types::SuggesterStatus]

      end

      # Container for the parameters to the `DeleteAnalysisScheme` operation.
      # Specifies the name of the domain you want to update and the analysis
      # scheme you want to delete.
      # @note When making an API call, pass DeleteAnalysisSchemeRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         analysis_scheme_name: "StandardName", # required
      #       }
      class DeleteAnalysisSchemeRequest < Aws::Structure.new(
        :domain_name,
        :analysis_scheme_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] analysis_scheme_name
        #   The name of the analysis scheme you want to delete.
        #   @return [String]

      end

      # The result of a `DeleteAnalysisScheme` request. Contains the status of
      # the deleted analysis scheme.
      class DeleteAnalysisSchemeResponse < Aws::Structure.new(
        :analysis_scheme)

        # @!attribute [rw] analysis_scheme
        #   The status of the analysis scheme being deleted.
        #   @return [Types::AnalysisSchemeStatus]

      end

      # Container for the parameters to the `DeleteDomain` operation.
      # Specifies the name of the domain you want to delete.
      # @note When making an API call, pass DeleteDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DeleteDomainRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to permanently delete.
        #   @return [String]

      end

      # The result of a `DeleteDomain` request. Contains the status of a newly
      # deleted domain, or no status if the domain has already been completely
      # deleted.
      class DeleteDomainResponse < Aws::Structure.new(
        :domain_status)

        # @!attribute [rw] domain_status
        #   The current status of the search domain.
        #   @return [Types::DomainStatus]

      end

      # Container for the parameters to the `DeleteExpression` operation.
      # Specifies the name of the domain you want to update and the name of
      # the expression you want to delete.
      # @note When making an API call, pass DeleteExpressionRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         expression_name: "StandardName", # required
      #       }
      class DeleteExpressionRequest < Aws::Structure.new(
        :domain_name,
        :expression_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] expression_name
        #   The name of the `Expression` to delete.
        #   @return [String]

      end

      # The result of a `DeleteExpression` request. Specifies the expression
      # being deleted.
      class DeleteExpressionResponse < Aws::Structure.new(
        :expression)

        # @!attribute [rw] expression
        #   The status of the expression being deleted.
        #   @return [Types::ExpressionStatus]

      end

      # Container for the parameters to the `DeleteIndexField` operation.
      # Specifies the name of the domain you want to update and the name of
      # the index field you want to delete.
      # @note When making an API call, pass DeleteIndexFieldRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         index_field_name: "DynamicFieldName", # required
      #       }
      class DeleteIndexFieldRequest < Aws::Structure.new(
        :domain_name,
        :index_field_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] index_field_name
        #   The name of the index field your want to remove from the domain\'s
        #   indexing options.
        #   @return [String]

      end

      # The result of a `DeleteIndexField` request.
      class DeleteIndexFieldResponse < Aws::Structure.new(
        :index_field)

        # @!attribute [rw] index_field
        #   The status of the index field being deleted.
        #   @return [Types::IndexFieldStatus]

      end

      # Container for the parameters to the `DeleteSuggester` operation.
      # Specifies the name of the domain you want to update and name of the
      # suggester you want to delete.
      # @note When making an API call, pass DeleteSuggesterRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         suggester_name: "StandardName", # required
      #       }
      class DeleteSuggesterRequest < Aws::Structure.new(
        :domain_name,
        :suggester_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] suggester_name
        #   Specifies the name of the suggester you want to delete.
        #   @return [String]

      end

      # The result of a `DeleteSuggester` request. Contains the status of the
      # deleted suggester.
      class DeleteSuggesterResponse < Aws::Structure.new(
        :suggester)

        # @!attribute [rw] suggester
        #   The status of the suggester being deleted.
        #   @return [Types::SuggesterStatus]

      end

      # Container for the parameters to the `DescribeAnalysisSchemes`
      # operation. Specifies the name of the domain you want to describe. To
      # limit the response to particular analysis schemes, specify the names
      # of the analysis schemes you want to describe. To show the active
      # configuration and exclude any pending changes, set the `Deployed`
      # option to `true`.
      # @note When making an API call, pass DescribeAnalysisSchemesRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         analysis_scheme_names: ["StandardName"],
      #         deployed: false,
      #       }
      class DescribeAnalysisSchemesRequest < Aws::Structure.new(
        :domain_name,
        :analysis_scheme_names,
        :deployed)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to describe.
        #   @return [String]

        # @!attribute [rw] analysis_scheme_names
        #   The analysis schemes you want to describe.
        #   @return [Array<String>]

        # @!attribute [rw] deployed
        #   Whether to display the deployed configuration (`true`) or include
        #   any pending changes (`false`). Defaults to `false`.
        #   @return [Boolean]

      end

      # The result of a `DescribeAnalysisSchemes` request. Contains the
      # analysis schemes configured for the domain specified in the request.
      class DescribeAnalysisSchemesResponse < Aws::Structure.new(
        :analysis_schemes)

        # @!attribute [rw] analysis_schemes
        #   The analysis scheme descriptions.
        #   @return [Array<Types::AnalysisSchemeStatus>]

      end

      # Container for the parameters to the `DescribeAvailabilityOptions`
      # operation. Specifies the name of the domain you want to describe. To
      # show the active configuration and exclude any pending changes, set the
      # Deployed option to `true`.
      # @note When making an API call, pass DescribeAvailabilityOptionsRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         deployed: false,
      #       }
      class DescribeAvailabilityOptionsRequest < Aws::Structure.new(
        :domain_name,
        :deployed)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to describe.
        #   @return [String]

        # @!attribute [rw] deployed
        #   Whether to display the deployed configuration (`true`) or include
        #   any pending changes (`false`). Defaults to `false`.
        #   @return [Boolean]

      end

      # The result of a `DescribeAvailabilityOptions` request. Indicates
      # whether or not the Multi-AZ option is enabled for the domain specified
      # in the request.
      class DescribeAvailabilityOptionsResponse < Aws::Structure.new(
        :availability_options)

        # @!attribute [rw] availability_options
        #   The availability options configured for the domain. Indicates
        #   whether Multi-AZ is enabled for the domain.
        #   @return [Types::AvailabilityOptionsStatus]

      end

      # Container for the parameters to the `DescribeDomains` operation. By
      # default shows the status of all domains. To restrict the response to
      # particular domains, specify the names of the domains you want to
      # describe.
      # @note When making an API call, pass DescribeDomainsRequest
      #   data as a hash:
      #
      #       {
      #         domain_names: ["DomainName"],
      #       }
      class DescribeDomainsRequest < Aws::Structure.new(
        :domain_names)

        # @!attribute [rw] domain_names
        #   The names of the domains you want to include in the response.
        #   @return [Array<String>]

      end

      # The result of a `DescribeDomains` request. Contains the status of the
      # domains specified in the request or all domains owned by the account.
      class DescribeDomainsResponse < Aws::Structure.new(
        :domain_status_list)

        # @!attribute [rw] domain_status_list
        #   A list that contains the status of each requested domain.
        #   @return [Array<Types::DomainStatus>]

      end

      # Container for the parameters to the `DescribeDomains` operation.
      # Specifies the name of the domain you want to describe. To restrict the
      # response to particular expressions, specify the names of the
      # expressions you want to describe. To show the active configuration and
      # exclude any pending changes, set the `Deployed` option to `true`.
      # @note When making an API call, pass DescribeExpressionsRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         expression_names: ["StandardName"],
      #         deployed: false,
      #       }
      class DescribeExpressionsRequest < Aws::Structure.new(
        :domain_name,
        :expression_names,
        :deployed)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to describe.
        #   @return [String]

        # @!attribute [rw] expression_names
        #   Limits the `DescribeExpressions` response to the specified
        #   expressions. If not specified, all expressions are shown.
        #   @return [Array<String>]

        # @!attribute [rw] deployed
        #   Whether to display the deployed configuration (`true`) or include
        #   any pending changes (`false`). Defaults to `false`.
        #   @return [Boolean]

      end

      # The result of a `DescribeExpressions` request. Contains the
      # expressions configured for the domain specified in the request.
      class DescribeExpressionsResponse < Aws::Structure.new(
        :expressions)

        # @!attribute [rw] expressions
        #   The expressions configured for the domain.
        #   @return [Array<Types::ExpressionStatus>]

      end

      # Container for the parameters to the `DescribeIndexFields` operation.
      # Specifies the name of the domain you want to describe. To restrict the
      # response to particular index fields, specify the names of the index
      # fields you want to describe. To show the active configuration and
      # exclude any pending changes, set the `Deployed` option to `true`.
      # @note When making an API call, pass DescribeIndexFieldsRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         field_names: ["DynamicFieldName"],
      #         deployed: false,
      #       }
      class DescribeIndexFieldsRequest < Aws::Structure.new(
        :domain_name,
        :field_names,
        :deployed)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to describe.
        #   @return [String]

        # @!attribute [rw] field_names
        #   A list of the index fields you want to describe. If not specified,
        #   information is returned for all configured index fields.
        #   @return [Array<String>]

        # @!attribute [rw] deployed
        #   Whether to display the deployed configuration (`true`) or include
        #   any pending changes (`false`). Defaults to `false`.
        #   @return [Boolean]

      end

      # The result of a `DescribeIndexFields` request. Contains the index
      # fields configured for the domain specified in the request.
      class DescribeIndexFieldsResponse < Aws::Structure.new(
        :index_fields)

        # @!attribute [rw] index_fields
        #   The index fields configured for the domain.
        #   @return [Array<Types::IndexFieldStatus>]

      end

      # Container for the parameters to the `DescribeScalingParameters`
      # operation. Specifies the name of the domain you want to describe.
      # @note When making an API call, pass DescribeScalingParametersRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DescribeScalingParametersRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

      end

      # The result of a `DescribeScalingParameters` request. Contains the
      # scaling parameters configured for the domain specified in the request.
      class DescribeScalingParametersResponse < Aws::Structure.new(
        :scaling_parameters)

        # @!attribute [rw] scaling_parameters
        #   The status and configuration of a search domain\'s scaling
        #   parameters.
        #   @return [Types::ScalingParametersStatus]

      end

      # Container for the parameters to the `DescribeServiceAccessPolicies`
      # operation. Specifies the name of the domain you want to describe. To
      # show the active configuration and exclude any pending changes, set the
      # `Deployed` option to `true`.
      # @note When making an API call, pass DescribeServiceAccessPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         deployed: false,
      #       }
      class DescribeServiceAccessPoliciesRequest < Aws::Structure.new(
        :domain_name,
        :deployed)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to describe.
        #   @return [String]

        # @!attribute [rw] deployed
        #   Whether to display the deployed configuration (`true`) or include
        #   any pending changes (`false`). Defaults to `false`.
        #   @return [Boolean]

      end

      # The result of a `DescribeServiceAccessPolicies` request.
      class DescribeServiceAccessPoliciesResponse < Aws::Structure.new(
        :access_policies)

        # @!attribute [rw] access_policies
        #   The access rules configured for the domain specified in the request.
        #   @return [Types::AccessPoliciesStatus]

      end

      # Container for the parameters to the `DescribeSuggester` operation.
      # Specifies the name of the domain you want to describe. To restrict the
      # response to particular suggesters, specify the names of the suggesters
      # you want to describe. To show the active configuration and exclude any
      # pending changes, set the `Deployed` option to `true`.
      # @note When making an API call, pass DescribeSuggestersRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         suggester_names: ["StandardName"],
      #         deployed: false,
      #       }
      class DescribeSuggestersRequest < Aws::Structure.new(
        :domain_name,
        :suggester_names,
        :deployed)

        # @!attribute [rw] domain_name
        #   The name of the domain you want to describe.
        #   @return [String]

        # @!attribute [rw] suggester_names
        #   The suggesters you want to describe.
        #   @return [Array<String>]

        # @!attribute [rw] deployed
        #   Whether to display the deployed configuration (`true`) or include
        #   any pending changes (`false`). Defaults to `false`.
        #   @return [Boolean]

      end

      # The result of a `DescribeSuggesters` request.
      class DescribeSuggestersResponse < Aws::Structure.new(
        :suggesters)

        # @!attribute [rw] suggesters
        #   The suggesters configured for the domain specified in the request.
        #   @return [Array<Types::SuggesterStatus>]

      end

      # Options for a search suggester.
      # @note When making an API call, pass DocumentSuggesterOptions
      #   data as a hash:
      #
      #       {
      #         source_field: "FieldName", # required
      #         fuzzy_matching: "none", # accepts none, low, high
      #         sort_expression: "String",
      #       }
      class DocumentSuggesterOptions < Aws::Structure.new(
        :source_field,
        :fuzzy_matching,
        :sort_expression)

        # @!attribute [rw] source_field
        #   The name of the index field you want to use for suggestions.
        #   @return [String]

        # @!attribute [rw] fuzzy_matching
        #   The level of fuzziness allowed when suggesting matches for a string:
        #   `none`, `low`, or `high`. With none, the specified string is treated
        #   as an exact prefix. With low, suggestions must differ from the
        #   specified string by no more than one character. With high,
        #   suggestions can differ by up to two characters. The default is none.
        #   @return [String]

        # @!attribute [rw] sort_expression
        #   An expression that computes a score for each suggestion to control
        #   how they are sorted. The scores are rounded to the nearest integer,
        #   with a floor of 0 and a ceiling of 2^31-1. A document\'s relevance
        #   score is not computed for suggestions, so sort expressions cannot
        #   reference the `_score` value. To sort suggestions using a numeric
        #   field or existing expression, simply specify the name of the field
        #   or expression. If no expression is configured for the suggester, the
        #   suggestions are sorted with the closest matches listed first.
        #   @return [String]

      end

      # The current status of the search domain.
      class DomainStatus < Aws::Structure.new(
        :domain_id,
        :domain_name,
        :arn,
        :created,
        :deleted,
        :doc_service,
        :search_service,
        :requires_index_documents,
        :processing,
        :search_instance_type,
        :search_partition_count,
        :search_instance_count,
        :limits)

        # @!attribute [rw] domain_id
        #   An internally generated unique identifier for a domain.
        #   @return [String]

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) of the search domain. See
        #   [Identifiers for IAM Entities][1] in *Using AWS Identity and Access
        #   Management* for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] created
        #   True if the search domain is created. It can take several minutes to
        #   initialize a domain when CreateDomain is called. Newly created
        #   search domains are returned from DescribeDomains with a false value
        #   for Created until domain creation is complete.
        #   @return [Boolean]

        # @!attribute [rw] deleted
        #   True if the search domain has been deleted. The system must clean up
        #   resources dedicated to the search domain when DeleteDomain is
        #   called. Newly deleted search domains are returned from
        #   DescribeDomains with a true value for IsDeleted for several minutes
        #   until resource cleanup is complete.
        #   @return [Boolean]

        # @!attribute [rw] doc_service
        #   The service endpoint for updating documents in a search domain.
        #   @return [Types::ServiceEndpoint]

        # @!attribute [rw] search_service
        #   The service endpoint for requesting search results from a search
        #   domain.
        #   @return [Types::ServiceEndpoint]

        # @!attribute [rw] requires_index_documents
        #   True if IndexDocuments needs to be called to activate the current
        #   domain configuration.
        #   @return [Boolean]

        # @!attribute [rw] processing
        #   True if processing is being done to activate the current domain
        #   configuration.
        #   @return [Boolean]

        # @!attribute [rw] search_instance_type
        #   The instance type that is being used to process search requests.
        #   @return [String]

        # @!attribute [rw] search_partition_count
        #   The number of partitions across which the search index is spread.
        #   @return [Integer]

        # @!attribute [rw] search_instance_count
        #   The number of search instances that are available to process search
        #   requests.
        #   @return [Integer]

        # @!attribute [rw] limits
        #   @return [Types::Limits]

      end

      # Options for a field that contains an array of double-precision 64-bit
      # floating point values. Present if `IndexFieldType` specifies the field
      # is of type `double-array`. All options are enabled by default.
      # @note When making an API call, pass DoubleArrayOptions
      #   data as a hash:
      #
      #       {
      #         default_value: 1.0,
      #         source_fields: "FieldNameCommaList",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #       }
      class DoubleArrayOptions < Aws::Structure.new(
        :default_value,
        :source_fields,
        :facet_enabled,
        :search_enabled,
        :return_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [Float]

        # @!attribute [rw] source_fields
        #   A list of source fields to map to the field.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

      end

      # Options for a double-precision 64-bit floating point field. Present if
      # `IndexFieldType` specifies the field is of type `double`. All options
      # are enabled by default.
      # @note When making an API call, pass DoubleOptions
      #   data as a hash:
      #
      #       {
      #         default_value: 1.0,
      #         source_field: "FieldName",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #         sort_enabled: false,
      #       }
      class DoubleOptions < Aws::Structure.new(
        :default_value,
        :source_field,
        :facet_enabled,
        :search_enabled,
        :return_enabled,
        :sort_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document. This can be important if you are using the field in an
        #   expression and that field is not present in every document.
        #   @return [Float]

        # @!attribute [rw] source_field
        #   The name of the source field to map to the field.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] sort_enabled
        #   Whether the field can be used to sort the search results.
        #   @return [Boolean]

      end

      # A named expression that can be evaluated at search time. Can be used
      # to sort the search results, define other expressions, or return
      # computed information in the search results.
      # @note When making an API call, pass Expression
      #   data as a hash:
      #
      #       {
      #         expression_name: "StandardName", # required
      #         expression_value: "ExpressionValue", # required
      #       }
      class Expression < Aws::Structure.new(
        :expression_name,
        :expression_value)

        # @!attribute [rw] expression_name
        #   Names must begin with a letter and can contain the following
        #   characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   @return [String]

        # @!attribute [rw] expression_value
        #   The expression to evaluate for sorting while processing a search
        #   request. The `Expression` syntax is based on JavaScript expressions.
        #   For more information, see [Configuring Expressions][1] in the
        #   *Amazon CloudSearch Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
        #   @return [String]

      end

      # The value of an `Expression` and its current status.
      class ExpressionStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   The expression that is evaluated for sorting while processing a
        #   search request.
        #   @return [Types::Expression]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # Container for the parameters to the `IndexDocuments` operation.
      # Specifies the name of the domain you want to re-index.
      # @note When making an API call, pass IndexDocumentsRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class IndexDocumentsRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

      end

      # The result of an `IndexDocuments` request. Contains the status of the
      # indexing operation, including the fields being indexed.
      class IndexDocumentsResponse < Aws::Structure.new(
        :field_names)

        # @!attribute [rw] field_names
        #   The names of the fields that are currently being indexed.
        #   @return [Array<String>]

      end

      # Configuration information for a field in the index, including its
      # name, type, and options. The supported options depend on the
      # `IndexFieldType`.
      # @note When making an API call, pass IndexField
      #   data as a hash:
      #
      #       {
      #         index_field_name: "DynamicFieldName", # required
      #         index_field_type: "int", # required, accepts int, double, literal, text, date, latlon, int-array, double-array, literal-array, text-array, date-array
      #         int_options: {
      #           default_value: 1,
      #           source_field: "FieldName",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #           sort_enabled: false,
      #         },
      #         double_options: {
      #           default_value: 1.0,
      #           source_field: "FieldName",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #           sort_enabled: false,
      #         },
      #         literal_options: {
      #           default_value: "FieldValue",
      #           source_field: "FieldName",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #           sort_enabled: false,
      #         },
      #         text_options: {
      #           default_value: "FieldValue",
      #           source_field: "FieldName",
      #           return_enabled: false,
      #           sort_enabled: false,
      #           highlight_enabled: false,
      #           analysis_scheme: "Word",
      #         },
      #         date_options: {
      #           default_value: "FieldValue",
      #           source_field: "FieldName",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #           sort_enabled: false,
      #         },
      #         lat_lon_options: {
      #           default_value: "FieldValue",
      #           source_field: "FieldName",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #           sort_enabled: false,
      #         },
      #         int_array_options: {
      #           default_value: 1,
      #           source_fields: "FieldNameCommaList",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #         },
      #         double_array_options: {
      #           default_value: 1.0,
      #           source_fields: "FieldNameCommaList",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #         },
      #         literal_array_options: {
      #           default_value: "FieldValue",
      #           source_fields: "FieldNameCommaList",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #         },
      #         text_array_options: {
      #           default_value: "FieldValue",
      #           source_fields: "FieldNameCommaList",
      #           return_enabled: false,
      #           highlight_enabled: false,
      #           analysis_scheme: "Word",
      #         },
      #         date_array_options: {
      #           default_value: "FieldValue",
      #           source_fields: "FieldNameCommaList",
      #           facet_enabled: false,
      #           search_enabled: false,
      #           return_enabled: false,
      #         },
      #       }
      class IndexField < Aws::Structure.new(
        :index_field_name,
        :index_field_type,
        :int_options,
        :double_options,
        :literal_options,
        :text_options,
        :date_options,
        :lat_lon_options,
        :int_array_options,
        :double_array_options,
        :literal_array_options,
        :text_array_options,
        :date_array_options)

        # @!attribute [rw] index_field_name
        #   A string that represents the name of an index field. CloudSearch
        #   supports regular index fields as well as dynamic fields. A dynamic
        #   field\'s name defines a pattern that begins or ends with a wildcard.
        #   Any document fields that don\'t map to a regular index field but do
        #   match a dynamic field\'s pattern are configured with the dynamic
        #   field\'s indexing options.
        #
        #   Regular field names begin with a letter and can contain the
        #   following characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   Dynamic field names must begin or end with a wildcard (\*). The
        #   wildcard can also be the only character in a dynamic field name.
        #   Multiple wildcards, and wildcards embedded within a string are not
        #   supported.
        #
        #   The name `score` is reserved and cannot be used as a field name. To
        #   reference a document\'s ID, you can use the name `_id`.
        #   @return [String]

        # @!attribute [rw] index_field_type
        #   The type of field. The valid options for a field depend on the field
        #   type. For more information about the supported field types, see
        #   [Configuring Index Fields][1] in the *Amazon CloudSearch Developer
        #   Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html
        #   @return [String]

        # @!attribute [rw] int_options
        #   Options for a 64-bit signed integer field. Present if
        #   `IndexFieldType` specifies the field is of type `int`. All options
        #   are enabled by default.
        #   @return [Types::IntOptions]

        # @!attribute [rw] double_options
        #   Options for a double-precision 64-bit floating point field. Present
        #   if `IndexFieldType` specifies the field is of type `double`. All
        #   options are enabled by default.
        #   @return [Types::DoubleOptions]

        # @!attribute [rw] literal_options
        #   Options for literal field. Present if `IndexFieldType` specifies the
        #   field is of type `literal`. All options are enabled by default.
        #   @return [Types::LiteralOptions]

        # @!attribute [rw] text_options
        #   Options for text field. Present if `IndexFieldType` specifies the
        #   field is of type `text`. A `text` field is always searchable. All
        #   options are enabled by default.
        #   @return [Types::TextOptions]

        # @!attribute [rw] date_options
        #   Options for a date field. Dates and times are specified in UTC
        #   (Coordinated Universal Time) according to IETF RFC3339:
        #   yyyy-mm-ddT00:00:00Z. Present if `IndexFieldType` specifies the
        #   field is of type `date`. All options are enabled by default.
        #   @return [Types::DateOptions]

        # @!attribute [rw] lat_lon_options
        #   Options for a latlon field. A latlon field contains a location
        #   stored as a latitude and longitude value pair. Present if
        #   `IndexFieldType` specifies the field is of type `latlon`. All
        #   options are enabled by default.
        #   @return [Types::LatLonOptions]

        # @!attribute [rw] int_array_options
        #   Options for a field that contains an array of 64-bit signed
        #   integers. Present if `IndexFieldType` specifies the field is of type
        #   `int-array`. All options are enabled by default.
        #   @return [Types::IntArrayOptions]

        # @!attribute [rw] double_array_options
        #   Options for a field that contains an array of double-precision
        #   64-bit floating point values. Present if `IndexFieldType` specifies
        #   the field is of type `double-array`. All options are enabled by
        #   default.
        #   @return [Types::DoubleArrayOptions]

        # @!attribute [rw] literal_array_options
        #   Options for a field that contains an array of literal strings.
        #   Present if `IndexFieldType` specifies the field is of type
        #   `literal-array`. All options are enabled by default.
        #   @return [Types::LiteralArrayOptions]

        # @!attribute [rw] text_array_options
        #   Options for a field that contains an array of text strings. Present
        #   if `IndexFieldType` specifies the field is of type `text-array`. A
        #   `text-array` field is always searchable. All options are enabled by
        #   default.
        #   @return [Types::TextArrayOptions]

        # @!attribute [rw] date_array_options
        #   Options for a field that contains an array of dates. Present if
        #   `IndexFieldType` specifies the field is of type `date-array`. All
        #   options are enabled by default.
        #   @return [Types::DateArrayOptions]

      end

      # The value of an `IndexField` and its current status.
      class IndexFieldStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   Configuration information for a field in the index, including its
        #   name, type, and options. The supported options depend on the
        #   `IndexFieldType`.
        #   @return [Types::IndexField]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # Options for a field that contains an array of 64-bit signed integers.
      # Present if `IndexFieldType` specifies the field is of type
      # `int-array`. All options are enabled by default.
      # @note When making an API call, pass IntArrayOptions
      #   data as a hash:
      #
      #       {
      #         default_value: 1,
      #         source_fields: "FieldNameCommaList",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #       }
      class IntArrayOptions < Aws::Structure.new(
        :default_value,
        :source_fields,
        :facet_enabled,
        :search_enabled,
        :return_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [Integer]

        # @!attribute [rw] source_fields
        #   A list of source fields to map to the field.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

      end

      # Options for a 64-bit signed integer field. Present if `IndexFieldType`
      # specifies the field is of type `int`. All options are enabled by
      # default.
      # @note When making an API call, pass IntOptions
      #   data as a hash:
      #
      #       {
      #         default_value: 1,
      #         source_field: "FieldName",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #         sort_enabled: false,
      #       }
      class IntOptions < Aws::Structure.new(
        :default_value,
        :source_field,
        :facet_enabled,
        :search_enabled,
        :return_enabled,
        :sort_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document. This can be important if you are using the field in an
        #   expression and that field is not present in every document.
        #   @return [Integer]

        # @!attribute [rw] source_field
        #   The name of the source field to map to the field.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] sort_enabled
        #   Whether the field can be used to sort the search results.
        #   @return [Boolean]

      end

      # Options for a latlon field. A latlon field contains a location stored
      # as a latitude and longitude value pair. Present if `IndexFieldType`
      # specifies the field is of type `latlon`. All options are enabled by
      # default.
      # @note When making an API call, pass LatLonOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_field: "FieldName",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #         sort_enabled: false,
      #       }
      class LatLonOptions < Aws::Structure.new(
        :default_value,
        :source_field,
        :facet_enabled,
        :search_enabled,
        :return_enabled,
        :sort_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_field
        #   A string that represents the name of an index field. CloudSearch
        #   supports regular index fields as well as dynamic fields. A dynamic
        #   field\'s name defines a pattern that begins or ends with a wildcard.
        #   Any document fields that don\'t map to a regular index field but do
        #   match a dynamic field\'s pattern are configured with the dynamic
        #   field\'s indexing options.
        #
        #   Regular field names begin with a letter and can contain the
        #   following characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   Dynamic field names must begin or end with a wildcard (\*). The
        #   wildcard can also be the only character in a dynamic field name.
        #   Multiple wildcards, and wildcards embedded within a string are not
        #   supported.
        #
        #   The name `score` is reserved and cannot be used as a field name. To
        #   reference a document\'s ID, you can use the name `_id`.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] sort_enabled
        #   Whether the field can be used to sort the search results.
        #   @return [Boolean]

      end

      class Limits < Aws::Structure.new(
        :maximum_replication_count,
        :maximum_partition_count)

        # @!attribute [rw] maximum_replication_count
        #   @return [Integer]

        # @!attribute [rw] maximum_partition_count
        #   @return [Integer]

      end

      # The result of a `ListDomainNames` request. Contains a list of the
      # domains owned by an account.
      class ListDomainNamesResponse < Aws::Structure.new(
        :domain_names)

        # @!attribute [rw] domain_names
        #   The names of the search domains owned by an account.
        #   @return [Hash<String,String>]

      end

      # Options for a field that contains an array of literal strings. Present
      # if `IndexFieldType` specifies the field is of type `literal-array`.
      # All options are enabled by default.
      # @note When making an API call, pass LiteralArrayOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_fields: "FieldNameCommaList",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #       }
      class LiteralArrayOptions < Aws::Structure.new(
        :default_value,
        :source_fields,
        :facet_enabled,
        :search_enabled,
        :return_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_fields
        #   A list of source fields to map to the field.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

      end

      # Options for literal field. Present if `IndexFieldType` specifies the
      # field is of type `literal`. All options are enabled by default.
      # @note When making an API call, pass LiteralOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_field: "FieldName",
      #         facet_enabled: false,
      #         search_enabled: false,
      #         return_enabled: false,
      #         sort_enabled: false,
      #       }
      class LiteralOptions < Aws::Structure.new(
        :default_value,
        :source_field,
        :facet_enabled,
        :search_enabled,
        :return_enabled,
        :sort_enabled)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_field
        #   A string that represents the name of an index field. CloudSearch
        #   supports regular index fields as well as dynamic fields. A dynamic
        #   field\'s name defines a pattern that begins or ends with a wildcard.
        #   Any document fields that don\'t map to a regular index field but do
        #   match a dynamic field\'s pattern are configured with the dynamic
        #   field\'s indexing options.
        #
        #   Regular field names begin with a letter and can contain the
        #   following characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   Dynamic field names must begin or end with a wildcard (\*). The
        #   wildcard can also be the only character in a dynamic field name.
        #   Multiple wildcards, and wildcards embedded within a string are not
        #   supported.
        #
        #   The name `score` is reserved and cannot be used as a field name. To
        #   reference a document\'s ID, you can use the name `_id`.
        #   @return [String]

        # @!attribute [rw] facet_enabled
        #   Whether facet information can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] search_enabled
        #   Whether the contents of the field are searchable.
        #   @return [Boolean]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] sort_enabled
        #   Whether the field can be used to sort the search results.
        #   @return [Boolean]

      end

      # The status of domain configuration option.
      class OptionStatus < Aws::Structure.new(
        :creation_date,
        :update_date,
        :update_version,
        :state,
        :pending_deletion)

        # @!attribute [rw] creation_date
        #   A timestamp for when this option was created.
        #   @return [Time]

        # @!attribute [rw] update_date
        #   A timestamp for when this option was last updated.
        #   @return [Time]

        # @!attribute [rw] update_version
        #   A unique integer that indicates when this option was last updated.
        #   @return [Integer]

        # @!attribute [rw] state
        #   The state of processing a change to an option. Possible values:
        #
        #   * `RequiresIndexDocuments`\: the option\'s latest value will not be
        #     deployed until IndexDocuments has been called and indexing is
        #     complete.
        #   * `Processing`\: the option\'s latest value is in the process of
        #     being activated.
        #   * `Active`\: the option\'s latest value is completely deployed.
        #   * `FailedToValidate`\: the option value is not compatible with the
        #     domain\'s data and cannot be used to index the data. You must
        #     either modify the option value or update or remove the
        #     incompatible documents.
        #   @return [String]

        # @!attribute [rw] pending_deletion
        #   Indicates that the option will be deleted once processing is
        #   complete.
        #   @return [Boolean]

      end

      # The desired instance type and desired number of replicas of each index
      # partition.
      # @note When making an API call, pass ScalingParameters
      #   data as a hash:
      #
      #       {
      #         desired_instance_type: "search.m1.small", # accepts search.m1.small, search.m1.large, search.m2.xlarge, search.m2.2xlarge, search.m3.medium, search.m3.large, search.m3.xlarge, search.m3.2xlarge
      #         desired_replication_count: 1,
      #         desired_partition_count: 1,
      #       }
      class ScalingParameters < Aws::Structure.new(
        :desired_instance_type,
        :desired_replication_count,
        :desired_partition_count)

        # @!attribute [rw] desired_instance_type
        #   The instance type that you want to preconfigure for your domain. For
        #   example, `search.m1.small`.
        #   @return [String]

        # @!attribute [rw] desired_replication_count
        #   The number of replicas you want to preconfigure for each index
        #   partition.
        #   @return [Integer]

        # @!attribute [rw] desired_partition_count
        #   The number of partitions you want to preconfigure for your domain.
        #   Only valid when you select `m2.2xlarge` as the desired instance
        #   type.
        #   @return [Integer]

      end

      # The status and configuration of a search domain\'s scaling parameters.
      class ScalingParametersStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   The desired instance type and desired number of replicas of each
        #   index partition.
        #   @return [Types::ScalingParameters]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # The endpoint to which service requests can be submitted.
      class ServiceEndpoint < Aws::Structure.new(
        :endpoint)

        # @!attribute [rw] endpoint
        #   The endpoint to which service requests can be submitted. For
        #   example,
        #   `search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com`
        #   or
        #   `doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com`.
        #   @return [String]

      end

      # Configuration information for a search suggester. Each suggester has a
      # unique name and specifies the text field you want to use for
      # suggestions. The following options can be configured for a suggester:
      # `FuzzyMatching`, `SortExpression`.
      # @note When making an API call, pass Suggester
      #   data as a hash:
      #
      #       {
      #         suggester_name: "StandardName", # required
      #         document_suggester_options: { # required
      #           source_field: "FieldName", # required
      #           fuzzy_matching: "none", # accepts none, low, high
      #           sort_expression: "String",
      #         },
      #       }
      class Suggester < Aws::Structure.new(
        :suggester_name,
        :document_suggester_options)

        # @!attribute [rw] suggester_name
        #   Names must begin with a letter and can contain the following
        #   characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   @return [String]

        # @!attribute [rw] document_suggester_options
        #   Options for a search suggester.
        #   @return [Types::DocumentSuggesterOptions]

      end

      # The value of a `Suggester` and its current status.
      class SuggesterStatus < Aws::Structure.new(
        :options,
        :status)

        # @!attribute [rw] options
        #   Configuration information for a search suggester. Each suggester has
        #   a unique name and specifies the text field you want to use for
        #   suggestions. The following options can be configured for a
        #   suggester: `FuzzyMatching`, `SortExpression`.
        #   @return [Types::Suggester]

        # @!attribute [rw] status
        #   The status of domain configuration option.
        #   @return [Types::OptionStatus]

      end

      # Options for a field that contains an array of text strings. Present if
      # `IndexFieldType` specifies the field is of type `text-array`. A
      # `text-array` field is always searchable. All options are enabled by
      # default.
      # @note When making an API call, pass TextArrayOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_fields: "FieldNameCommaList",
      #         return_enabled: false,
      #         highlight_enabled: false,
      #         analysis_scheme: "Word",
      #       }
      class TextArrayOptions < Aws::Structure.new(
        :default_value,
        :source_fields,
        :return_enabled,
        :highlight_enabled,
        :analysis_scheme)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_fields
        #   A list of source fields to map to the field.
        #   @return [String]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] highlight_enabled
        #   Whether highlights can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] analysis_scheme
        #   The name of an analysis scheme for a `text-array` field.
        #   @return [String]

      end

      # Options for text field. Present if `IndexFieldType` specifies the
      # field is of type `text`. A `text` field is always searchable. All
      # options are enabled by default.
      # @note When making an API call, pass TextOptions
      #   data as a hash:
      #
      #       {
      #         default_value: "FieldValue",
      #         source_field: "FieldName",
      #         return_enabled: false,
      #         sort_enabled: false,
      #         highlight_enabled: false,
      #         analysis_scheme: "Word",
      #       }
      class TextOptions < Aws::Structure.new(
        :default_value,
        :source_field,
        :return_enabled,
        :sort_enabled,
        :highlight_enabled,
        :analysis_scheme)

        # @!attribute [rw] default_value
        #   A value to use for the field if the field isn\'t specified for a
        #   document.
        #   @return [String]

        # @!attribute [rw] source_field
        #   A string that represents the name of an index field. CloudSearch
        #   supports regular index fields as well as dynamic fields. A dynamic
        #   field\'s name defines a pattern that begins or ends with a wildcard.
        #   Any document fields that don\'t map to a regular index field but do
        #   match a dynamic field\'s pattern are configured with the dynamic
        #   field\'s indexing options.
        #
        #   Regular field names begin with a letter and can contain the
        #   following characters: a-z (lowercase), 0-9, and \_ (underscore).
        #   Dynamic field names must begin or end with a wildcard (\*). The
        #   wildcard can also be the only character in a dynamic field name.
        #   Multiple wildcards, and wildcards embedded within a string are not
        #   supported.
        #
        #   The name `score` is reserved and cannot be used as a field name. To
        #   reference a document\'s ID, you can use the name `_id`.
        #   @return [String]

        # @!attribute [rw] return_enabled
        #   Whether the contents of the field can be returned in the search
        #   results.
        #   @return [Boolean]

        # @!attribute [rw] sort_enabled
        #   Whether the field can be used to sort the search results.
        #   @return [Boolean]

        # @!attribute [rw] highlight_enabled
        #   Whether highlights can be returned for the field.
        #   @return [Boolean]

        # @!attribute [rw] analysis_scheme
        #   The name of an analysis scheme for a `text` field.
        #   @return [String]

      end

      # Container for the parameters to the `UpdateAvailabilityOptions`
      # operation. Specifies the name of the domain you want to update and the
      # Multi-AZ availability option.
      # @note When making an API call, pass UpdateAvailabilityOptionsRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         multi_az: false, # required
      #       }
      class UpdateAvailabilityOptionsRequest < Aws::Structure.new(
        :domain_name,
        :multi_az)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] multi_az
        #   You expand an existing search domain to a second Availability Zone
        #   by setting the Multi-AZ option to true. Similarly, you can turn off
        #   the Multi-AZ option to downgrade the domain to a single Availability
        #   Zone by setting the Multi-AZ option to `false`.
        #   @return [Boolean]

      end

      # The result of a `UpdateAvailabilityOptions` request. Contains the
      # status of the domain\'s availability options.
      class UpdateAvailabilityOptionsResponse < Aws::Structure.new(
        :availability_options)

        # @!attribute [rw] availability_options
        #   The newly-configured availability options. Indicates whether
        #   Multi-AZ is enabled for the domain.
        #   @return [Types::AvailabilityOptionsStatus]

      end

      # Container for the parameters to the `UpdateScalingParameters`
      # operation. Specifies the name of the domain you want to update and the
      # scaling parameters you want to configure.
      # @note When making an API call, pass UpdateScalingParametersRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         scaling_parameters: { # required
      #           desired_instance_type: "search.m1.small", # accepts search.m1.small, search.m1.large, search.m2.xlarge, search.m2.2xlarge, search.m3.medium, search.m3.large, search.m3.xlarge, search.m3.2xlarge
      #           desired_replication_count: 1,
      #           desired_partition_count: 1,
      #         },
      #       }
      class UpdateScalingParametersRequest < Aws::Structure.new(
        :domain_name,
        :scaling_parameters)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] scaling_parameters
        #   The desired instance type and desired number of replicas of each
        #   index partition.
        #   @return [Types::ScalingParameters]

      end

      # The result of a `UpdateScalingParameters` request. Contains the status
      # of the newly-configured scaling parameters.
      class UpdateScalingParametersResponse < Aws::Structure.new(
        :scaling_parameters)

        # @!attribute [rw] scaling_parameters
        #   The status and configuration of a search domain\'s scaling
        #   parameters.
        #   @return [Types::ScalingParametersStatus]

      end

      # Container for the parameters to the `UpdateServiceAccessPolicies`
      # operation. Specifies the name of the domain you want to update and the
      # access rules you want to configure.
      # @note When making an API call, pass UpdateServiceAccessPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         access_policies: "PolicyDocument", # required
      #       }
      class UpdateServiceAccessPoliciesRequest < Aws::Structure.new(
        :domain_name,
        :access_policies)

        # @!attribute [rw] domain_name
        #   A string that represents the name of a domain. Domain names are
        #   unique across the domains owned by an account within an AWS region.
        #   Domain names start with a letter or number and can contain the
        #   following characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] access_policies
        #   The access rules you want to configure. These rules replace any
        #   existing rules.
        #   @return [String]

      end

      # The result of an `UpdateServiceAccessPolicies` request. Contains the
      # new access policies.
      class UpdateServiceAccessPoliciesResponse < Aws::Structure.new(
        :access_policies)

        # @!attribute [rw] access_policies
        #   The access rules configured for the domain.
        #   @return [Types::AccessPoliciesStatus]

      end

    end
  end
end
