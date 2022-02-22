# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WAFV2
  module Types

    # A single action condition for a Condition in a logging filter.
    #
    # @note When making an API call, you may pass ActionCondition
    #   data as a hash:
    #
    #       {
    #         action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, EXCLUDED_AS_COUNT
    #       }
    #
    # @!attribute [rw] action
    #   The action setting that a log record must contain in order to meet
    #   the condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ActionCondition AWS API Documentation
    #
    class ActionCondition < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Inspect all of the elements that WAF has parsed and extracted from the
    # web request JSON body that are within the JsonBody `MatchScope`. This
    # is used with the FieldToMatch option `JsonBody`.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # JSON specification: `"All": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/All AWS API Documentation
    #
    class All < Aws::EmptyStructure; end

    # All query arguments of a web request.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # JSON specification: `"AllQueryArguments": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AllQueryArguments AWS API Documentation
    #
    class AllQueryArguments < Aws::EmptyStructure; end

    # Specifies that WAF should allow the request and optionally defines
    # additional custom handling for the request.
    #
    # This is used in the context of other settings, for example to specify
    # values for RuleAction and web ACL DefaultAction.
    #
    # @note When making an API call, you may pass AllowAction
    #   data as a hash:
    #
    #       {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] custom_request_handling
    #   Defines custom handling for the web request.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Types::CustomRequestHandling]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AllowAction AWS API Documentation
    #
    class AllowAction < Struct.new(
      :custom_request_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # A logical rule statement used to combine other rule statements with
    # AND logic. You provide more than one Statement within the
    # `AndStatement`.
    #
    # @note When making an API call, you may pass AndStatement
    #   data as a hash:
    #
    #       {
    #         statements: [ # required
    #           {
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #               positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 position: "FIRST", # required, accepts FIRST, LAST, ANY
    #               },
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             and_statement: {
    #               statements: { # required
    #                 # recursive Statements
    #               },
    #             },
    #             or_statement: {
    #               statements: { # required
    #                 # recursive Statements
    #               },
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               },
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                 },
    #               ],
    #             },
    #             label_match_statement: {
    #               scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] statements
    #   The statements to combine with AND logic. You can use any statements
    #   that can be nested.
    #   @return [Array<Types::Statement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AndStatement AWS API Documentation
    #
    class AndStatement < Struct.new(
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateWebACLRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_arn: "ResourceArn", # required
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to associate with the
    #   web ACL.
    #
    #   The ARN must be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Amazon API Gateway REST API:
    #     `arn:aws:apigateway:region::/restapis/api-id/stages/stage-name `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:aws:appsync:region:account-id:apis/GraphQLApiId `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AssociateWebACLRequest AWS API Documentation
    #
    class AssociateWebACLRequest < Struct.new(
      :web_acl_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AssociateWebACLResponse AWS API Documentation
    #
    class AssociateWebACLResponse < Aws::EmptyStructure; end

    # Specifies that WAF should block the request and optionally defines
    # additional custom handling for the response to the web request.
    #
    # This is used in the context of other settings, for example to specify
    # values for RuleAction and web ACL DefaultAction.
    #
    # @note When making an API call, you may pass BlockAction
    #   data as a hash:
    #
    #       {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: "EntityName",
    #           response_headers: [
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] custom_response
    #   Defines a custom response for the web request.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Types::CustomResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/BlockAction AWS API Documentation
    #
    class BlockAction < Struct.new(
      :custom_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # The body of a web request. This immediately follows the request
    # headers.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # JSON specification: `"Body": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Body AWS API Documentation
    #
    class Body < Aws::EmptyStructure; end

    # A rule statement that defines a string match search for WAF to apply
    # to web requests. The byte match statement provides the bytes to search
    # for, the location in requests that you want WAF to search, and other
    # settings. The bytes to search for are typically a string that
    # corresponds with ASCII characters. In the WAF console and the
    # developer guide, this is refered to as a string match statement.
    #
    # @note When making an API call, you may pass ByteMatchStatement
    #   data as a hash:
    #
    #       {
    #         search_string: "data", # required
    #         field_to_match: { # required
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #           },
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #           },
    #         ],
    #         positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #       }
    #
    # @!attribute [rw] search_string
    #   A string value that you want WAF to search for. WAF searches only in
    #   the part of web requests that you designate for inspection in
    #   FieldToMatch. The maximum length of the value is 50 bytes.
    #
    #   Valid values depend on the component that you specify for inspection
    #   in `FieldToMatch`\:
    #
    #   * `Method`\: The HTTP method that you want WAF to search for. This
    #     indicates the type of operation specified in the request.
    #
    #   * `UriPath`\: The value that you want WAF to search for in the URI
    #     path, for example, `/images/daily-ad.jpg`.
    #
    #   If `SearchString` includes alphabetic characters A-Z and a-z, note
    #   that the value is case sensitive.
    #
    #   **If you're using the WAF API**
    #
    #   Specify a base64-encoded version of the value. The maximum length of
    #   the value before you base64-encode it is 50 bytes.
    #
    #   For example, suppose the value of `Type` is `HEADER` and the value
    #   of `Data` is `User-Agent`. If you want to search the `User-Agent`
    #   header for the value `BadBot`, you base64-encode `BadBot` using MIME
    #   base64-encoding and include the resulting value, `QmFkQm90`, in the
    #   value of `SearchString`.
    #
    #   **If you're using the CLI or one of the Amazon Web Services SDKs**
    #
    #   The value that you want WAF to search for. The SDK automatically
    #   base64 encodes the value.
    #   @return [String]
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @!attribute [rw] positional_constraint
    #   The area within the portion of a web request that you want WAF to
    #   search for `SearchString`. Valid values include the following:
    #
    #   **CONTAINS**
    #
    #   The specified part of the web request must include the value of
    #   `SearchString`, but the location doesn't matter.
    #
    #   **CONTAINS\_WORD**
    #
    #   The specified part of the web request must include the value of
    #   `SearchString`, and `SearchString` must contain only alphanumeric
    #   characters or underscore (A-Z, a-z, 0-9, or \_). In addition,
    #   `SearchString` must be a word, which means that both of the
    #   following are true:
    #
    #   * `SearchString` is at the beginning of the specified part of the
    #     web request or is preceded by a character other than an
    #     alphanumeric character or underscore (\_). Examples include the
    #     value of a header and `;BadBot`.
    #
    #   * `SearchString` is at the end of the specified part of the web
    #     request or is followed by a character other than an alphanumeric
    #     character or underscore (\_), for example, `BadBot;` and
    #     `-BadBot;`.
    #
    #   **EXACTLY**
    #
    #   The value of the specified part of the web request must exactly
    #   match the value of `SearchString`.
    #
    #   **STARTS\_WITH**
    #
    #   The value of `SearchString` must appear at the beginning of the
    #   specified part of the web request.
    #
    #   **ENDS\_WITH**
    #
    #   The value of `SearchString` must appear at the end of the specified
    #   part of the web request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ByteMatchStatement AWS API Documentation
    #
    class ByteMatchStatement < Struct.new(
      :search_string,
      :field_to_match,
      :text_transformations,
      :positional_constraint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should run a `CAPTCHA` check against the request:
    #
    # * If the request includes a valid, unexpired `CAPTCHA` token, WAF
    #   allows the web request inspection to proceed to the next rule,
    #   similar to a `CountAction`.
    #
    # * If the request doesn't include a valid, unexpired `CAPTCHA` token,
    #   WAF discontinues the web ACL evaluation of the request and blocks it
    #   from going to its intended destination.
    #
    #   WAF generates a response that it sends back to the client, which
    #   includes the following:
    #
    #   * The header `x-amzn-waf-action` with a value of `captcha`.
    #
    #   * The HTTP status code `405 Method Not Allowed`.
    #
    #   * If the request contains an `Accept` header with a value of
    #     `text/html`, the response includes a `CAPTCHA` challenge.
    #
    # You can configure the expiration time in the `CaptchaConfig`
    # `ImmunityTimeProperty` setting at the rule and web ACL level. The rule
    # setting overrides the web ACL setting.
    #
    # This action option is available for rules. It isn't available for web
    # ACL default actions.
    #
    # This is used in the context of other settings, for example to specify
    # values for RuleAction and web ACL DefaultAction.
    #
    # @note When making an API call, you may pass CaptchaAction
    #   data as a hash:
    #
    #       {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] custom_request_handling
    #   Defines custom handling for the web request.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Types::CustomRequestHandling]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CaptchaAction AWS API Documentation
    #
    class CaptchaAction < Struct.new(
      :custom_request_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how WAF should handle `CAPTCHA` evaluations. This is
    # available at the web ACL level and in each rule.
    #
    # @note When making an API call, you may pass CaptchaConfig
    #   data as a hash:
    #
    #       {
    #         immunity_time_property: {
    #           immunity_time: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] immunity_time_property
    #   Determines how long a `CAPTCHA` token remains valid after the client
    #   successfully solves a `CAPTCHA` puzzle.
    #   @return [Types::ImmunityTimeProperty]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CaptchaConfig AWS API Documentation
    #
    class CaptchaConfig < Struct.new(
      :immunity_time_property)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result from the inspection of the web request for a valid
    # `CAPTCHA` token.
    #
    # @!attribute [rw] response_code
    #   The HTTP response code indicating the status of the `CAPTCHA` token
    #   in the web request. If the token is missing, invalid, or expired,
    #   this code is `405 Method Not Allowed`.
    #   @return [Integer]
    #
    # @!attribute [rw] solve_timestamp
    #   The time that the `CAPTCHA` puzzle was solved for the supplied
    #   token.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure, populated when the evaluation of the token
    #   fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CaptchaResponse AWS API Documentation
    #
    class CaptchaResponse < Struct.new(
      :response_code,
      :solve_timestamp,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CheckCapacityRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         rules: [ # required
    #           {
    #             name: "EntityName", # required
    #             priority: 1, # required
    #             statement: { # required
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               or_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #                 custom_response: {
    #                   response_code: 1, # required
    #                   custom_response_body_key: "EntityName",
    #                   response_headers: [
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               allow: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               captcha: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             override_action: {
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               none: {
    #               },
    #             },
    #             rule_labels: [
    #               {
    #                 name: "LabelName", # required
    #               },
    #             ],
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #             captcha_config: {
    #               immunity_time_property: {
    #                 immunity_time: 1, # required
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of Rule that you're configuring to use in a rule group or
    #   web ACL.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CheckCapacityRequest AWS API Documentation
    #
    class CheckCapacityRequest < Struct.new(
      :scope,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity
    #   The capacity required by the rules and scope.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CheckCapacityResponse AWS API Documentation
    #
    class CheckCapacityResponse < Struct.new(
      :capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single match condition for a Filter.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         action_condition: {
    #           action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, EXCLUDED_AS_COUNT
    #         },
    #         label_name_condition: {
    #           label_name: "LabelName", # required
    #         },
    #       }
    #
    # @!attribute [rw] action_condition
    #   A single action condition.
    #   @return [Types::ActionCondition]
    #
    # @!attribute [rw] label_name_condition
    #   A single label name condition.
    #   @return [Types::LabelNameCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :action_condition,
      :label_name_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should count the request. Optionally defines
    # additional custom handling for the request.
    #
    # This is used in the context of other settings, for example to specify
    # values for RuleAction and web ACL DefaultAction.
    #
    # @note When making an API call, you may pass CountAction
    #   data as a hash:
    #
    #       {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] custom_request_handling
    #   Defines custom handling for the web request.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Types::CustomRequestHandling]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CountAction AWS API Documentation
    #
    class CountAction < Struct.new(
      :custom_request_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         description: "EntityDescription",
    #         ip_address_version: "IPV4", # required, accepts IPV4, IPV6
    #         addresses: ["IPAddress"], # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the IP set. You cannot change the name of an `IPSet`
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the IP set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_version
    #   The version of the IP addresses, either `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   Contains an array of strings that specifies zero or more IP
    #   addresses or blocks of IP addresses in Classless Inter-Domain
    #   Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges
    #   except for /0.
    #
    #   Example address strings:
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from IP addresses
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #   Example JSON `Addresses` specifications:
    #
    #   * Empty array: `"Addresses": []`
    #
    #   * Array with one address: `"Addresses": ["192.0.2.44/32"]`
    #
    #   * Array with three addresses: `"Addresses": ["192.0.2.44/32",
    #     "192.0.2.0/24", "192.0.0.0/16"]`
    #
    #   * INVALID specification: `"Addresses": [""]` INVALID
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   An array of key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateIPSetRequest AWS API Documentation
    #
    class CreateIPSetRequest < Struct.new(
      :name,
      :scope,
      :description,
      :ip_address_version,
      :addresses,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   High-level information about an IPSet, returned by operations like
    #   create and list. This provides information like the ID, that you can
    #   use to retrieve and manage an `IPSet`, and the ARN, that you provide
    #   to the IPSetReferenceStatement to use the address set in a Rule.
    #   @return [Types::IPSetSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateIPSetResponse AWS API Documentation
    #
    class CreateIPSetResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         description: "EntityDescription",
    #         regular_expression_list: [ # required
    #           {
    #             regex_string: "RegexPatternString",
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] regular_expression_list
    #   Array of regular expression strings.
    #   @return [Array<Types::Regex>]
    #
    # @!attribute [rw] tags
    #   An array of key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRegexPatternSetRequest AWS API Documentation
    #
    class CreateRegexPatternSetRequest < Struct.new(
      :name,
      :scope,
      :description,
      :regular_expression_list,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   High-level information about a RegexPatternSet, returned by
    #   operations like create and list. This provides information like the
    #   ID, that you can use to retrieve and manage a `RegexPatternSet`, and
    #   the ARN, that you provide to the RegexPatternSetReferenceStatement
    #   to use the pattern set in a Rule.
    #   @return [Types::RegexPatternSetSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRegexPatternSetResponse AWS API Documentation
    #
    class CreateRegexPatternSetResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         capacity: 1, # required
    #         description: "EntityDescription",
    #         rules: [
    #           {
    #             name: "EntityName", # required
    #             priority: 1, # required
    #             statement: { # required
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               or_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #                 custom_response: {
    #                   response_code: 1, # required
    #                   custom_response_body_key: "EntityName",
    #                   response_headers: [
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               allow: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               captcha: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             override_action: {
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               none: {
    #               },
    #             },
    #             rule_labels: [
    #               {
    #                 name: "LabelName", # required
    #               },
    #             ],
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #             captcha_config: {
    #               immunity_time_property: {
    #                 immunity_time: 1, # required
    #               },
    #             },
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         custom_response_bodies: {
    #           "EntityName" => {
    #             content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #             content: "ResponseContent", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) required for this rule group.
    #
    #   When you create your own rule group, you define this, and you cannot
    #   change it after creation. When you add or modify the rules in a rule
    #   group, WAF enforces this limit. You can check the capacity for a set
    #   of rules using CheckCapacity.
    #
    #   WAF uses WCUs to calculate and control the operating resources that
    #   are used to run your rules, rule groups, and web ACLs. WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan
    #   their web ACL WCU usage when they use a rule group. The WCU limit
    #   for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the rule group that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] tags
    #   An array of key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the rule group, and then use them in
    #   the rules that you define in the rule group.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][3] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   @return [Hash<String,Types::CustomResponseBody>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRuleGroupRequest AWS API Documentation
    #
    class CreateRuleGroupRequest < Struct.new(
      :name,
      :scope,
      :capacity,
      :description,
      :rules,
      :visibility_config,
      :tags,
      :custom_response_bodies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   High-level information about a RuleGroup, returned by operations
    #   like create and list. This provides information like the ID, that
    #   you can use to retrieve and manage a `RuleGroup`, and the ARN, that
    #   you provide to the RuleGroupReferenceStatement to use the rule group
    #   in a Rule.
    #   @return [Types::RuleGroupSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRuleGroupResponse AWS API Documentation
    #
    class CreateRuleGroupResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWebACLRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         default_action: { # required
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         description: "EntityDescription",
    #         rules: [
    #           {
    #             name: "EntityName", # required
    #             priority: 1, # required
    #             statement: { # required
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               or_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #                 custom_response: {
    #                   response_code: 1, # required
    #                   custom_response_body_key: "EntityName",
    #                   response_headers: [
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               allow: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               captcha: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             override_action: {
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               none: {
    #               },
    #             },
    #             rule_labels: [
    #               {
    #                 name: "LabelName", # required
    #               },
    #             ],
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #             captcha_config: {
    #               immunity_time_property: {
    #                 immunity_time: 1, # required
    #               },
    #             },
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         custom_response_bodies: {
    #           "EntityName" => {
    #             content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #             content: "ResponseContent", # required
    #           },
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the `Rules` contained in the
    #   `WebACL` match.
    #   @return [Types::DefaultAction]
    #
    # @!attribute [rw] description
    #   A description of the web ACL that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] tags
    #   An array of key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the web ACL, and then use them in the
    #   rules and default actions that you define in the web ACL.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][3] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   @return [Hash<String,Types::CustomResponseBody>]
    #
    # @!attribute [rw] captcha_config
    #   Specifies how WAF should handle `CAPTCHA` evaluations for rules that
    #   don't have their own `CaptchaConfig` settings. If you don't
    #   specify this, WAF uses its default settings for `CaptchaConfig`.
    #   @return [Types::CaptchaConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateWebACLRequest AWS API Documentation
    #
    class CreateWebACLRequest < Struct.new(
      :name,
      :scope,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :tags,
      :custom_response_bodies,
      :captcha_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   High-level information about a WebACL, returned by operations like
    #   create and list. This provides information like the ID, that you can
    #   use to retrieve and manage a `WebACL`, and the ARN, that you provide
    #   to operations like AssociateWebACL.
    #   @return [Types::WebACLSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateWebACLResponse AWS API Documentation
    #
    class CreateWebACLResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom header for custom request and response handling. This is used
    # in CustomResponse and CustomRequestHandling.
    #
    # @note When making an API call, you may pass CustomHTTPHeader
    #   data as a hash:
    #
    #       {
    #         name: "CustomHTTPHeaderName", # required
    #         value: "CustomHTTPHeaderValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom header.
    #
    #   For custom request header insertion, when WAF inserts the header
    #   into the request, it prefixes this name `x-amzn-waf-`, to avoid
    #   confusion with the headers that are already in the request. For
    #   example, for the header name `sample`, WAF inserts the header
    #   `x-amzn-waf-sample`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the custom header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CustomHTTPHeader AWS API Documentation
    #
    class CustomHTTPHeader < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom request handling behavior that inserts custom headers into a
    # web request. You can add custom request handling for the rule actions
    # allow and count.
    #
    # For information about customizing web requests and responses, see
    # [Customizing web requests and responses in WAF][1] in the [WAF
    # Developer Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass CustomRequestHandling
    #   data as a hash:
    #
    #       {
    #         insert_headers: [ # required
    #           {
    #             name: "CustomHTTPHeaderName", # required
    #             value: "CustomHTTPHeaderValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] insert_headers
    #   The HTTP headers to insert into the request. Duplicate header names
    #   are not allowed.
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Array<Types::CustomHTTPHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CustomRequestHandling AWS API Documentation
    #
    class CustomRequestHandling < Struct.new(
      :insert_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom response to send to the client. You can define a custom
    # response for rule actions and default web ACL actions that are set to
    # BlockAction.
    #
    # For information about customizing web requests and responses, see
    # [Customizing web requests and responses in WAF][1] in the [WAF
    # Developer Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass CustomResponse
    #   data as a hash:
    #
    #       {
    #         response_code: 1, # required
    #         custom_response_body_key: "EntityName",
    #         response_headers: [
    #           {
    #             name: "CustomHTTPHeaderName", # required
    #             value: "CustomHTTPHeaderValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] response_code
    #   The HTTP status code to return to the client.
    #
    #   For a list of status codes that you can use in your custom
    #   reqponses, see [Supported status codes for custom response][1] in
    #   the [WAF Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Integer]
    #
    # @!attribute [rw] custom_response_body_key
    #   References the response body that you want WAF to return to the web
    #   request client. You can define a custom response for a rule action
    #   or a default web ACL action that is set to block. To do this, you
    #   first define the response body key and value in the
    #   `CustomResponseBodies` setting for the WebACL or RuleGroup where you
    #   want to use it. Then, in the rule action or web ACL default action
    #   `BlockAction` setting, you reference the response body using this
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] response_headers
    #   The HTTP headers to use in the response. Duplicate header names are
    #   not allowed.
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Array<Types::CustomHTTPHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CustomResponse AWS API Documentation
    #
    class CustomResponse < Struct.new(
      :response_code,
      :custom_response_body_key,
      :response_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response body to use in a custom response to a web request. This
    # is referenced by key from CustomResponse `CustomResponseBodyKey`.
    #
    # @note When making an API call, you may pass CustomResponseBody
    #   data as a hash:
    #
    #       {
    #         content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #         content: "ResponseContent", # required
    #       }
    #
    # @!attribute [rw] content_type
    #   The type of content in the payload that you are defining in the
    #   `Content` string.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The payload of the custom response.
    #
    #   You can use JSON escape strings in JSON content. To do this, you
    #   must specify JSON content in the `ContentType` setting.
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][1] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CustomResponseBody AWS API Documentation
    #
    class CustomResponseBody < Struct.new(
      :content_type,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # In a WebACL, this is the action that you want WAF to perform when a
    # web request doesn't match any of the rules in the `WebACL`. The
    # default action must be a terminating action, so you can't use count.
    #
    # @note When making an API call, you may pass DefaultAction
    #   data as a hash:
    #
    #       {
    #         block: {
    #           custom_response: {
    #             response_code: 1, # required
    #             custom_response_body_key: "EntityName",
    #             response_headers: [
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         allow: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] block
    #   Specifies that WAF should block requests by default.
    #   @return [Types::BlockAction]
    #
    # @!attribute [rw] allow
    #   Specifies that WAF should allow requests by default.
    #   @return [Types::AllowAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DefaultAction AWS API Documentation
    #
    class DefaultAction < Struct.new(
      :block,
      :allow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFirewallManagerRuleGroupsRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_arn: "ResourceArn", # required
    #         web_acl_lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteFirewallManagerRuleGroupsRequest AWS API Documentation
    #
    class DeleteFirewallManagerRuleGroupsRequest < Struct.new(
      :web_acl_arn,
      :web_acl_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_web_acl_lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteFirewallManagerRuleGroupsResponse AWS API Documentation
    #
    class DeleteFirewallManagerRuleGroupsResponse < Struct.new(
      :next_web_acl_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIPSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the IP set. You cannot change the name of an `IPSet`
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteIPSetRequest AWS API Documentation
    #
    class DeleteIPSetRequest < Struct.new(
      :name,
      :scope,
      :id,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteIPSetResponse AWS API Documentation
    #
    class DeleteIPSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLoggingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL from which you want to
    #   delete the LoggingConfiguration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteLoggingConfigurationRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteLoggingConfigurationResponse AWS API Documentation
    #
    class DeleteLoggingConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePermissionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rule group from which you want
    #   to delete the policy.
    #
    #   You must be the owner of the rule group to perform this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeletePermissionPolicyRequest AWS API Documentation
    #
    class DeletePermissionPolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeletePermissionPolicyResponse AWS API Documentation
    #
    class DeletePermissionPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteRegexPatternSetRequest AWS API Documentation
    #
    class DeleteRegexPatternSetRequest < Struct.new(
      :name,
      :scope,
      :id,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteRegexPatternSetResponse AWS API Documentation
    #
    class DeleteRegexPatternSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteRuleGroupRequest AWS API Documentation
    #
    class DeleteRuleGroupRequest < Struct.new(
      :name,
      :scope,
      :id,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteRuleGroupResponse AWS API Documentation
    #
    class DeleteRuleGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWebACLRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteWebACLRequest AWS API Documentation
    #
    class DeleteWebACLRequest < Struct.new(
      :name,
      :scope,
      :id,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteWebACLResponse AWS API Documentation
    #
    class DeleteWebACLResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeManagedRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         vendor_name: "VendorName", # required
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         version_name: "VersionKeyString",
    #       }
    #
    # @!attribute [rw] vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version of the rule group. You can only use a version that is
    #   not scheduled for expiration. If you don't provide this, WAF uses
    #   the vendor's default version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeManagedRuleGroupRequest AWS API Documentation
    #
    class DescribeManagedRuleGroupRequest < Struct.new(
      :vendor_name,
      :name,
      :scope,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_name
    #   The managed rule group's version.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon resource name (ARN) of the Amazon Simple Notification
    #   Service SNS topic that's used to record changes to the managed rule
    #   group. You can subscribe to the SNS topic to receive notifications
    #   when the managed rule group is modified, such as for new versions
    #   and for version expiration. For more information, see the [Amazon
    #   Simple Notification Service Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/welcome.html
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) required for this rule group. WAF
    #   uses web ACL capacity units (WCU) to calculate and control the
    #   operating resources that are used to run your rules, rule groups,
    #   and web ACLs. WAF calculates capacity differently for each rule
    #   type, to reflect each rule's relative cost. Rule group capacity is
    #   fixed at creation, so users can plan their web ACL WCU usage when
    #   they use a rule group. The WCU limit for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] rules
    #   @return [Array<Types::RuleSummary>]
    #
    # @!attribute [rw] label_namespace
    #   The label namespace prefix for this rule group. All labels added by
    #   rules in this rule group have this prefix.
    #
    #   * The syntax for the label namespace prefix for a managed rule group
    #     is the following:
    #
    #     `awswaf:managed:<vendor>:<rule group name>`\:
    #
    #   * When a rule with a label matches a web request, WAF adds the fully
    #     qualified label to the request. A fully qualified label is made up
    #     of the label namespace from the rule group or web ACL where the
    #     rule is defined and the label from the rule, separated by a colon:
    #
    #     `<label namespace>:<label from rule>`
    #   @return [String]
    #
    # @!attribute [rw] available_labels
    #   The labels that one or more rules in this rule group add to matching
    #   web requests. These labels are defined in the `RuleLabels` for a
    #   Rule.
    #   @return [Array<Types::LabelSummary>]
    #
    # @!attribute [rw] consumed_labels
    #   The labels that one or more rules in this rule group match against
    #   in label match statements. These labels are defined in a
    #   `LabelMatchStatement` specification, in the Statement definition of
    #   a rule.
    #   @return [Array<Types::LabelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeManagedRuleGroupResponse AWS API Documentation
    #
    class DescribeManagedRuleGroupResponse < Struct.new(
      :version_name,
      :sns_topic_arn,
      :capacity,
      :rules,
      :label_namespace,
      :available_labels,
      :consumed_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateWebACLRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to disassociate from
    #   the web ACL.
    #
    #   The ARN must be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Amazon API Gateway REST API:
    #     `arn:aws:apigateway:region::/restapis/api-id/stages/stage-name `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:aws:appsync:region:account-id:apis/GraphQLApiId `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DisassociateWebACLRequest AWS API Documentation
    #
    class DisassociateWebACLRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DisassociateWebACLResponse AWS API Documentation
    #
    class DisassociateWebACLResponse < Aws::EmptyStructure; end

    # Specifies a single rule in a rule group whose action you want to
    # override to `Count`. When you exclude a rule, WAF evaluates it exactly
    # as it would if the rule action setting were `Count`. This is a useful
    # option for testing the rules in a rule group without modifying how
    # they handle your web traffic.
    #
    # @note When making an API call, you may pass ExcludedRule
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule whose action you want to override to `Count`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ExcludedRule AWS API Documentation
    #
    class ExcludedRule < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The part of a web request that you want WAF to inspect. Include the
    # single `FieldToMatch` type that you want to inspect, with additional
    # specifications as needed, according to the type. You specify a single
    # request component in `FieldToMatch` for each rule statement that
    # requires it. To inspect more than one component of a web request,
    # create a separate rule statement for each component.
    #
    # JSON specification for a `QueryString` field to match:
    #
    # ` "FieldToMatch": \{ "QueryString": \{\} \}`
    #
    # Example JSON for a `Method` field to match specification:
    #
    # ` "FieldToMatch": \{ "Method": \{ "Name": "DELETE" \} \}`
    #
    # @note When making an API call, you may pass FieldToMatch
    #   data as a hash:
    #
    #       {
    #         single_header: {
    #           name: "FieldToMatchData", # required
    #         },
    #         single_query_argument: {
    #           name: "FieldToMatchData", # required
    #         },
    #         all_query_arguments: {
    #         },
    #         uri_path: {
    #         },
    #         query_string: {
    #         },
    #         body: {
    #         },
    #         method: {
    #         },
    #         json_body: {
    #           match_pattern: { # required
    #             all: {
    #             },
    #             included_paths: ["JsonPointerPath"],
    #           },
    #           match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #           invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #         },
    #       }
    #
    # @!attribute [rw] single_header
    #   Inspect a single header. Provide the name of the header to inspect,
    #   for example, `User-Agent` or `Referer`. This setting isn't case
    #   sensitive.
    #
    #   Example JSON: `"SingleHeader": \{ "Name": "haystack" \}`
    #   @return [Types::SingleHeader]
    #
    # @!attribute [rw] single_query_argument
    #   Inspect a single query argument. Provide the name of the query
    #   argument to inspect, such as *UserName* or *SalesRegion*. The name
    #   can be up to 30 characters long and isn't case sensitive.
    #
    #   This is used only to indicate the web request component for WAF to
    #   inspect, in the FieldToMatch specification.
    #
    #   Example JSON: `"SingleQueryArgument": \{ "Name": "myArgument" \}`
    #   @return [Types::SingleQueryArgument]
    #
    # @!attribute [rw] all_query_arguments
    #   Inspect all query arguments.
    #   @return [Types::AllQueryArguments]
    #
    # @!attribute [rw] uri_path
    #   Inspect the request URI path. This is the part of a web request that
    #   identifies a resource, for example, `/images/daily-ad.jpg`.
    #   @return [Types::UriPath]
    #
    # @!attribute [rw] query_string
    #   Inspect the query string. This is the part of a URL that appears
    #   after a `?` character, if any.
    #   @return [Types::QueryString]
    #
    # @!attribute [rw] body
    #   Inspect the request body as plain text. The request body immediately
    #   follows the request headers. This is the part of a request that
    #   contains any additional data that you want to send to your web
    #   server as the HTTP request body, such as data from a form.
    #
    #   Note that only the first 8 KB (8192 bytes) of the request body are
    #   forwarded to WAF for inspection by the underlying host service. If
    #   you don't need to inspect more than 8 KB, you can guarantee that
    #   you don't allow additional bytes in by combining a statement that
    #   inspects the body of the web request, such as ByteMatchStatement or
    #   RegexPatternSetReferenceStatement, with a SizeConstraintStatement
    #   that enforces an 8 KB size limit on the body of the request. WAF
    #   doesn't support inspecting the entire contents of web requests
    #   whose bodies exceed the 8 KB limit.
    #   @return [Types::Body]
    #
    # @!attribute [rw] method
    #   Inspect the HTTP method. The method indicates the type of operation
    #   that the request is asking the origin to perform.
    #   @return [Types::Method]
    #
    # @!attribute [rw] json_body
    #   Inspect the request body as JSON. The request body immediately
    #   follows the request headers. This is the part of a request that
    #   contains any additional data that you want to send to your web
    #   server as the HTTP request body, such as data from a form.
    #
    #   Note that only the first 8 KB (8192 bytes) of the request body are
    #   forwarded to WAF for inspection by the underlying host service. If
    #   you don't need to inspect more than 8 KB, you can guarantee that
    #   you don't allow additional bytes in by combining a statement that
    #   inspects the body of the web request, such as ByteMatchStatement or
    #   RegexPatternSetReferenceStatement, with a SizeConstraintStatement
    #   that enforces an 8 KB size limit on the body of the request. WAF
    #   doesn't support inspecting the entire contents of web requests
    #   whose bodies exceed the 8 KB limit.
    #   @return [Types::JsonBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/FieldToMatch AWS API Documentation
    #
    class FieldToMatch < Struct.new(
      :single_header,
      :single_query_argument,
      :all_query_arguments,
      :uri_path,
      :query_string,
      :body,
      :method,
      :json_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single logging filter, used in LoggingFilter.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         behavior: "KEEP", # required, accepts KEEP, DROP
    #         requirement: "MEETS_ALL", # required, accepts MEETS_ALL, MEETS_ANY
    #         conditions: [ # required
    #           {
    #             action_condition: {
    #               action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, EXCLUDED_AS_COUNT
    #             },
    #             label_name_condition: {
    #               label_name: "LabelName", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] behavior
    #   How to handle logs that satisfy the filter's conditions and
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] requirement
    #   Logic to apply to the filtering conditions. You can specify that, in
    #   order to satisfy the filter, a log must match all conditions or must
    #   match at least one condition.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   Match conditions for the filter.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :behavior,
      :requirement,
      :conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule group that's defined for an Firewall Manager WAF policy.
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   If you define more than one rule group in the first or last Firewall
    #   Manager rule groups, WAF evaluates each request against the rule
    #   groups in order, starting from the lowest priority setting. The
    #   priorities don't need to be consecutive, but they must all be
    #   different.
    #   @return [Integer]
    #
    # @!attribute [rw] firewall_manager_statement
    #   The processing guidance for an Firewall Manager rule. This is like a
    #   regular rule Statement, but it can only contain a rule group
    #   reference.
    #   @return [Types::FirewallManagerStatement]
    #
    # @!attribute [rw] override_action
    #   The action to use in the place of the action that results from the
    #   rule group evaluation. Set the override action to none to leave the
    #   result of the rule group alone. Set it to count to override the
    #   result to count only.
    #
    #   You can only use this for rule statements that reference a rule
    #   group, like `RuleGroupReferenceStatement` and
    #   `ManagedRuleGroupStatement`.
    #
    #   <note markdown="1"> This option is usually set to none. It does not affect how the rules
    #   in the rule group are evaluated. If you want the rules in the rule
    #   group to only count matches, do not use this and instead exclude
    #   those rules in your rule group reference statement settings.
    #
    #    </note>
    #   @return [Types::OverrideAction]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/FirewallManagerRuleGroup AWS API Documentation
    #
    class FirewallManagerRuleGroup < Struct.new(
      :name,
      :priority,
      :firewall_manager_statement,
      :override_action,
      :visibility_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing guidance for an Firewall Manager rule. This is like a
    # regular rule Statement, but it can only contain a rule group
    # reference.
    #
    # @!attribute [rw] managed_rule_group_statement
    #   A rule statement used to run the rules that are defined in a managed
    #   rule group. To use this, provide the vendor name and the name of the
    #   rule group in this statement. You can retrieve the required names by
    #   calling ListAvailableManagedRuleGroups.
    #
    #   You cannot nest a `ManagedRuleGroupStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. It can only be referenced
    #   as a top-level statement within a rule.
    #   @return [Types::ManagedRuleGroupStatement]
    #
    # @!attribute [rw] rule_group_reference_statement
    #   A rule statement used to run the rules that are defined in a
    #   RuleGroup. To use this, create a rule group with your rules, then
    #   provide the ARN of the rule group in this statement.
    #
    #   You cannot nest a `RuleGroupReferenceStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. You can only use a rule
    #   group reference statement at the top level inside a web ACL.
    #   @return [Types::RuleGroupReferenceStatement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/FirewallManagerStatement AWS API Documentation
    #
    class FirewallManagerStatement < Struct.new(
      :managed_rule_group_statement,
      :rule_group_reference_statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for inspecting IP addresses in an HTTP header that
    # you specify, instead of using the IP address that's reported by the
    # web request origin. Commonly, this is the X-Forwarded-For (XFF)
    # header, but you can specify any header name.
    #
    # <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    # apply the rule to the web request at all.
    #
    #  </note>
    #
    # This configuration is used for GeoMatchStatement and
    # RateBasedStatement. For IPSetReferenceStatement, use
    # IPSetForwardedIPConfig instead.
    #
    # WAF only evaluates the first IP address found in the specified HTTP
    # header.
    #
    # @note When making an API call, you may pass ForwardedIPConfig
    #   data as a hash:
    #
    #       {
    #         header_name: "ForwardedIPHeaderName", # required
    #         fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #       }
    #
    # @!attribute [rw] header_name
    #   The name of the HTTP header to use for the IP address. For example,
    #   to use the X-Forwarded-For (XFF) header, set this to
    #   `X-Forwarded-For`.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] fallback_behavior
    #   The match status to assign to the web request if the request
    #   doesn't have a valid IP address in the specified position.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #
    #   You can specify the following fallback behaviors:
    #
    #   * `MATCH` - Treat the web request as matching the rule statement.
    #     WAF applies the rule action to the request.
    #
    #   * `NO_MATCH` - Treat the web request as not matching the rule
    #     statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ForwardedIPConfig AWS API Documentation
    #
    class ForwardedIPConfig < Struct.new(
      :header_name,
      :fallback_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateMobileSdkReleaseUrlRequest
    #   data as a hash:
    #
    #       {
    #         platform: "IOS", # required, accepts IOS, ANDROID
    #         release_version: "VersionKeyString", # required
    #       }
    #
    # @!attribute [rw] platform
    #   The device platform.
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   The release version. For the latest available version, specify
    #   `LATEST`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GenerateMobileSdkReleaseUrlRequest AWS API Documentation
    #
    class GenerateMobileSdkReleaseUrlRequest < Struct.new(
      :platform,
      :release_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The presigned download URL for the specified SDK release.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GenerateMobileSdkReleaseUrlResponse AWS API Documentation
    #
    class GenerateMobileSdkReleaseUrlResponse < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement used to identify web requests based on country of
    # origin.
    #
    # @note When making an API call, you may pass GeoMatchStatement
    #   data as a hash:
    #
    #       {
    #         country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #         forwarded_ip_config: {
    #           header_name: "ForwardedIPHeaderName", # required
    #           fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #         },
    #       }
    #
    # @!attribute [rw] country_codes
    #   An array of two-character country codes, for example, `[ "US", "CN"
    #   ]`, from the alpha-2 country ISO codes of the ISO 3166 international
    #   standard.
    #   @return [Array<String>]
    #
    # @!attribute [rw] forwarded_ip_config
    #   The configuration for inspecting IP addresses in an HTTP header that
    #   you specify, instead of using the IP address that's reported by the
    #   web request origin. Commonly, this is the X-Forwarded-For (XFF)
    #   header, but you can specify any header name.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #   @return [Types::ForwardedIPConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GeoMatchStatement AWS API Documentation
    #
    class GeoMatchStatement < Struct.new(
      :country_codes,
      :forwarded_ip_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIPSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the IP set. You cannot change the name of an `IPSet`
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetIPSetRequest AWS API Documentation
    #
    class GetIPSetRequest < Struct.new(
      :name,
      :scope,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_set
    #   @return [Types::IPSet]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetIPSetResponse AWS API Documentation
    #
    class GetIPSetResponse < Struct.new(
      :ip_set,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoggingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL for which you want to
    #   get the LoggingConfiguration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetLoggingConfigurationRequest AWS API Documentation
    #
    class GetLoggingConfigurationRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   The LoggingConfiguration for the specified web ACL.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetLoggingConfigurationResponse AWS API Documentation
    #
    class GetLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetManagedRuleSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetManagedRuleSetRequest AWS API Documentation
    #
    class GetManagedRuleSetRequest < Struct.new(
      :name,
      :scope,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_rule_set
    #   The managed rule set that you requested.
    #   @return [Types::ManagedRuleSet]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetManagedRuleSetResponse AWS API Documentation
    #
    class GetManagedRuleSetResponse < Struct.new(
      :managed_rule_set,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMobileSdkReleaseRequest
    #   data as a hash:
    #
    #       {
    #         platform: "IOS", # required, accepts IOS, ANDROID
    #         release_version: "VersionKeyString", # required
    #       }
    #
    # @!attribute [rw] platform
    #   The device platform.
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   The release version. For the latest available version, specify
    #   `LATEST`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetMobileSdkReleaseRequest AWS API Documentation
    #
    class GetMobileSdkReleaseRequest < Struct.new(
      :platform,
      :release_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mobile_sdk_release
    #   Information for a specified SDK release, including release notes and
    #   tags.
    #   @return [Types::MobileSdkRelease]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetMobileSdkReleaseResponse AWS API Documentation
    #
    class GetMobileSdkReleaseResponse < Struct.new(
      :mobile_sdk_release)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPermissionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rule group for which you want
    #   to get the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetPermissionPolicyRequest AWS API Documentation
    #
    class GetPermissionPolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The IAM policy that is attached to the specified rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetPermissionPolicyResponse AWS API Documentation
    #
    class GetPermissionPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRateBasedStatementManagedKeysRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         web_acl_name: "EntityName", # required
    #         web_acl_id: "EntityId", # required
    #         rule_group_rule_name: "EntityName",
    #         rule_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_rule_name
    #   The name of the rule group reference statement in your web ACL. This
    #   is required only when you have the rate-based rule nested inside a
    #   rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rate-based rule to get the keys for. If you have the
    #   rule defined inside a rule group that you're using in your web ACL,
    #   also provide the name of the rule group reference statement in the
    #   request parameter `RuleGroupRuleName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRateBasedStatementManagedKeysRequest AWS API Documentation
    #
    class GetRateBasedStatementManagedKeysRequest < Struct.new(
      :scope,
      :web_acl_name,
      :web_acl_id,
      :rule_group_rule_name,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_keys_ipv4
    #   The keys that are of Internet Protocol version 4 (IPv4).
    #   @return [Types::RateBasedStatementManagedKeysIPSet]
    #
    # @!attribute [rw] managed_keys_ipv6
    #   The keys that are of Internet Protocol version 6 (IPv6).
    #   @return [Types::RateBasedStatementManagedKeysIPSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRateBasedStatementManagedKeysResponse AWS API Documentation
    #
    class GetRateBasedStatementManagedKeysResponse < Struct.new(
      :managed_keys_ipv4,
      :managed_keys_ipv6)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRegexPatternSetRequest AWS API Documentation
    #
    class GetRegexPatternSetRequest < Struct.new(
      :name,
      :scope,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] regex_pattern_set
    #   @return [Types::RegexPatternSet]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRegexPatternSetResponse AWS API Documentation
    #
    class GetRegexPatternSetResponse < Struct.new(
      :regex_pattern_set,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName",
    #         scope: "CLOUDFRONT", # accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId",
    #         arn: "ResourceArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRuleGroupRequest AWS API Documentation
    #
    class GetRuleGroupRequest < Struct.new(
      :name,
      :scope,
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group
    #   @return [Types::RuleGroup]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRuleGroupResponse AWS API Documentation
    #
    class GetRuleGroupResponse < Struct.new(
      :rule_group,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSampledRequestsRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_arn: "ResourceArn", # required
    #         rule_metric_name: "MetricName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         time_window: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         max_items: 1, # required
    #       }
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon resource name (ARN) of the `WebACL` for which you want a
    #   sample of requests.
    #   @return [String]
    #
    # @!attribute [rw] rule_metric_name
    #   The metric name assigned to the `Rule` or `RuleGroup` for which you
    #   want a sample of requests.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] time_window
    #   The start date and time and the end date and time of the range for
    #   which you want `GetSampledRequests` to return a sample of requests.
    #   You must specify the times in Coordinated Universal Time (UTC)
    #   format. UTC format includes the special designator, `Z`. For
    #   example, `"2016-09-27T14:50Z"`. You can specify any time range in
    #   the previous three hours. If you specify a start time that's
    #   earlier than three hours ago, WAF sets it to three hours ago.
    #   @return [Types::TimeWindow]
    #
    # @!attribute [rw] max_items
    #   The number of requests that you want WAF to return from among the
    #   first 5,000 requests that your Amazon Web Services resource received
    #   during the time range. If your resource received fewer requests than
    #   the value of `MaxItems`, `GetSampledRequests` returns information
    #   about all of them.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetSampledRequestsRequest AWS API Documentation
    #
    class GetSampledRequestsRequest < Struct.new(
      :web_acl_arn,
      :rule_metric_name,
      :scope,
      :time_window,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampled_requests
    #   A complex type that contains detailed information about each of the
    #   requests in the sample.
    #   @return [Array<Types::SampledHTTPRequest>]
    #
    # @!attribute [rw] population_size
    #   The total number of requests from which `GetSampledRequests` got a
    #   sample of `MaxItems` requests. If `PopulationSize` is less than
    #   `MaxItems`, the sample includes every request that your Amazon Web
    #   Services resource received during the specified time range.
    #   @return [Integer]
    #
    # @!attribute [rw] time_window
    #   Usually, `TimeWindow` is the time range that you specified in the
    #   `GetSampledRequests` request. However, if your Amazon Web Services
    #   resource received more than 5,000 requests during the time range
    #   that you specified in the request, `GetSampledRequests` returns the
    #   time range for the first 5,000 requests. Times are in Coordinated
    #   Universal Time (UTC) format.
    #   @return [Types::TimeWindow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetSampledRequestsResponse AWS API Documentation
    #
    class GetSampledRequestsResponse < Struct.new(
      :sampled_requests,
      :population_size,
      :time_window)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWebACLForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLForResourceRequest AWS API Documentation
    #
    class GetWebACLForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_acl
    #   The web ACL that is associated with the resource. If there is no
    #   associated resource, WAF returns a null web ACL.
    #   @return [Types::WebACL]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLForResourceResponse AWS API Documentation
    #
    class GetWebACLForResourceResponse < Struct.new(
      :web_acl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWebACLRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLRequest AWS API Documentation
    #
    class GetWebACLRequest < Struct.new(
      :name,
      :scope,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_acl
    #   The web ACL specification. You can modify the settings in this web
    #   ACL and use it to update this web ACL or create a new one.
    #   @return [Types::WebACL]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] application_integration_url
    #   The URL to use in SDK integrations with Amazon Web Services managed
    #   rule groups. For example, you can use the integration SDKs with the
    #   account takeover prevention managed rule group
    #   `AWSManagedRulesATPRuleSet`. This is only populated if you are using
    #   a rule group in your web ACL that integrates with your applications
    #   in this way. For more information, see [WAF client application
    #   integration][1] in the *WAF Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLResponse AWS API Documentation
    #
    class GetWebACLResponse < Struct.new(
      :web_acl,
      :lock_token,
      :application_integration_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the response from GetSampledRequests. This is a complex type
    # that appears as `Headers` in the response syntax. `HTTPHeader`
    # contains the names and values of all of the headers that appear in one
    # of the web requests.
    #
    # @!attribute [rw] name
    #   The name of the HTTP header.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the HTTP header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/HTTPHeader AWS API Documentation
    #
    class HTTPHeader < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the response from GetSampledRequests. This is a complex type
    # that appears as `Request` in the response syntax. `HTTPRequest`
    # contains information about one of the web requests.
    #
    # @!attribute [rw] client_ip
    #   The IP address that the request originated from. If the web ACL is
    #   associated with a CloudFront distribution, this is the value of one
    #   of the following fields in CloudFront access logs:
    #
    #   * `c-ip`, if the viewer did not use an HTTP proxy or a load balancer
    #     to send the request
    #
    #   * `x-forwarded-for`, if the viewer did use an HTTP proxy or a load
    #     balancer to send the request
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The two-letter country code for the country that the request
    #   originated from. For a current list of country codes, see the
    #   Wikipedia entry [ISO 3166-1 alpha-2][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI path of the request, which identifies the resource, for
    #   example, `/images/daily-ad.jpg`.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP method specified in the sampled web request.
    #   @return [String]
    #
    # @!attribute [rw] http_version
    #   The HTTP version specified in the sampled web request, for example,
    #   `HTTP/1.1`.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   A complex type that contains the name and value for each header in
    #   the sampled web request.
    #   @return [Array<Types::HTTPHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/HTTPRequest AWS API Documentation
    #
    class HTTPRequest < Struct.new(
      :client_ip,
      :country,
      :uri,
      :method,
      :http_version,
      :headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains zero or more IP addresses or blocks of IP addresses specified
    # in Classless Inter-Domain Routing (CIDR) notation. WAF supports all
    # IPv4 and IPv6 CIDR ranges except for /0. For information about CIDR
    # notation, see the Wikipedia entry [Classless Inter-Domain Routing][1].
    #
    # WAF assigns an ARN to each `IPSet` that you create. To use an IP set
    # in a rule, you provide the ARN to the Rule statement
    # IPSetReferenceStatement.
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @!attribute [rw] name
    #   The name of the IP set. You cannot change the name of an `IPSet`
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the IP set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_version
    #   The version of the IP addresses, either `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   Contains an array of strings that specifies zero or more IP
    #   addresses or blocks of IP addresses in Classless Inter-Domain
    #   Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges
    #   except for /0.
    #
    #   Example address strings:
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from IP addresses
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #   Example JSON `Addresses` specifications:
    #
    #   * Empty array: `"Addresses": []`
    #
    #   * Array with one address: `"Addresses": ["192.0.2.44/32"]`
    #
    #   * Array with three addresses: `"Addresses": ["192.0.2.44/32",
    #     "192.0.2.0/24", "192.0.0.0/16"]`
    #
    #   * INVALID specification: `"Addresses": [""]` INVALID
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/IPSet AWS API Documentation
    #
    class IPSet < Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :ip_address_version,
      :addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for inspecting IP addresses in an HTTP header that
    # you specify, instead of using the IP address that's reported by the
    # web request origin. Commonly, this is the X-Forwarded-For (XFF)
    # header, but you can specify any header name.
    #
    # <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    # apply the rule to the web request at all.
    #
    #  </note>
    #
    # This configuration is used only for IPSetReferenceStatement. For
    # GeoMatchStatement and RateBasedStatement, use ForwardedIPConfig
    # instead.
    #
    # @note When making an API call, you may pass IPSetForwardedIPConfig
    #   data as a hash:
    #
    #       {
    #         header_name: "ForwardedIPHeaderName", # required
    #         fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #         position: "FIRST", # required, accepts FIRST, LAST, ANY
    #       }
    #
    # @!attribute [rw] header_name
    #   The name of the HTTP header to use for the IP address. For example,
    #   to use the X-Forwarded-For (XFF) header, set this to
    #   `X-Forwarded-For`.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] fallback_behavior
    #   The match status to assign to the web request if the request
    #   doesn't have a valid IP address in the specified position.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #
    #   You can specify the following fallback behaviors:
    #
    #   * `MATCH` - Treat the web request as matching the rule statement.
    #     WAF applies the rule action to the request.
    #
    #   * `NO_MATCH` - Treat the web request as not matching the rule
    #     statement.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position in the header to search for the IP address. The header
    #   can contain IP addresses of the original client and also of proxies.
    #   For example, the header value could be `10.1.1.1, 127.0.0.0,
    #   10.10.10.10` where the first IP address identifies the original
    #   client and the rest identify proxies that the request went through.
    #
    #   The options for this setting are the following:
    #
    #   * FIRST - Inspect the first IP address in the list of IP addresses
    #     in the header. This is usually the client's original IP.
    #
    #   * LAST - Inspect the last IP address in the list of IP addresses in
    #     the header.
    #
    #   * ANY - Inspect all IP addresses in the header for a match. If the
    #     header contains more than 10 IP addresses, WAF inspects the last
    #     10.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/IPSetForwardedIPConfig AWS API Documentation
    #
    class IPSetForwardedIPConfig < Struct.new(
      :header_name,
      :fallback_behavior,
      :position)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement used to detect web requests coming from particular IP
    # addresses or address ranges. To use this, create an IPSet that
    # specifies the addresses you want to detect, then use the ARN of that
    # set in this statement. To create an IP set, see CreateIPSet.
    #
    # Each IP set rule statement references an IP set. You create and
    # maintain the set independent of your rules. This allows you to use the
    # single set in multiple rules. When you update the referenced set, WAF
    # automatically updates all rules that reference it.
    #
    # @note When making an API call, you may pass IPSetReferenceStatement
    #   data as a hash:
    #
    #       {
    #         arn: "ResourceArn", # required
    #         ip_set_forwarded_ip_config: {
    #           header_name: "ForwardedIPHeaderName", # required
    #           fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #           position: "FIRST", # required, accepts FIRST, LAST, ANY
    #         },
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the IPSet that this statement
    #   references.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_forwarded_ip_config
    #   The configuration for inspecting IP addresses in an HTTP header that
    #   you specify, instead of using the IP address that's reported by the
    #   web request origin. Commonly, this is the X-Forwarded-For (XFF)
    #   header, but you can specify any header name.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #   @return [Types::IPSetForwardedIPConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/IPSetReferenceStatement AWS API Documentation
    #
    class IPSetReferenceStatement < Struct.new(
      :arn,
      :ip_set_forwarded_ip_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about an IPSet, returned by operations like
    # create and list. This provides information like the ID, that you can
    # use to retrieve and manage an `IPSet`, and the ARN, that you provide
    # to the IPSetReferenceStatement to use the address set in a Rule.
    #
    # @!attribute [rw] name
    #   The name of the IP set. You cannot change the name of an `IPSet`
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the IP set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/IPSetSummary AWS API Documentation
    #
    class IPSetSummary < Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines how long a `CAPTCHA` token remains valid after the client
    # successfully solves a `CAPTCHA` puzzle.
    #
    # @note When making an API call, you may pass ImmunityTimeProperty
    #   data as a hash:
    #
    #       {
    #         immunity_time: 1, # required
    #       }
    #
    # @!attribute [rw] immunity_time
    #   The amount of time, in seconds, that a `CAPTCHA` token is valid. The
    #   default setting is 300.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ImmunityTimeProperty AWS API Documentation
    #
    class ImmunityTimeProperty < Struct.new(
      :immunity_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The body of a web request, inspected as JSON. The body immediately
    # follows the request headers. This is used in the FieldToMatch
    # specification.
    #
    # Use the specifications in this object to indicate which parts of the
    # JSON body to inspect using the rule's inspection criteria. WAF
    # inspects only the parts of the JSON that result from the matches that
    # you indicate.
    #
    # Example JSON: `"JsonBody": \{ "MatchPattern": \{ "All": \{\} \},
    # "MatchScope": "ALL" \}`
    #
    # @note When making an API call, you may pass JsonBody
    #   data as a hash:
    #
    #       {
    #         match_pattern: { # required
    #           all: {
    #           },
    #           included_paths: ["JsonPointerPath"],
    #         },
    #         match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #         invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #       }
    #
    # @!attribute [rw] match_pattern
    #   The patterns to look for in the JSON body. WAF inspects the results
    #   of these pattern matches against the rule inspection criteria.
    #   @return [Types::JsonMatchPattern]
    #
    # @!attribute [rw] match_scope
    #   The parts of the JSON to match against using the `MatchPattern`. If
    #   you specify `All`, WAF matches against keys and values.
    #   @return [String]
    #
    # @!attribute [rw] invalid_fallback_behavior
    #   What WAF should do if it fails to completely parse the JSON body.
    #   The options are the following:
    #
    #   * `EVALUATE_AS_STRING` - Inspect the body as plain text. WAF applies
    #     the text transformations and inspection criteria that you defined
    #     for the JSON inspection to the body text string.
    #
    #   * `MATCH` - Treat the web request as matching the rule statement.
    #     WAF applies the rule action to the request.
    #
    #   * `NO_MATCH` - Treat the web request as not matching the rule
    #     statement.
    #
    #   If you don't provide this setting, WAF parses and evaluates the
    #   content only up to the first parsing failure that it encounters.
    #
    #   WAF does its best to parse the entire JSON body, but might be forced
    #   to stop for reasons such as invalid characters, duplicate keys,
    #   truncation, and any content whose root node isn't an object or an
    #   array.
    #
    #   WAF parses the JSON in the following examples as two valid key,
    #   value pairs:
    #
    #   * Missing comma: `\{"key1":"value1""key2":"value2"\}`
    #
    #   * Missing colon: `\{"key1":"value1","key2""value2"\}`
    #
    #   * Extra colons: `\{"key1"::"value1","key2""value2"\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/JsonBody AWS API Documentation
    #
    class JsonBody < Struct.new(
      :match_pattern,
      :match_scope,
      :invalid_fallback_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # The patterns to look for in the JSON body. WAF inspects the results of
    # these pattern matches against the rule inspection criteria. This is
    # used with the FieldToMatch option `JsonBody`.
    #
    # @note When making an API call, you may pass JsonMatchPattern
    #   data as a hash:
    #
    #       {
    #         all: {
    #         },
    #         included_paths: ["JsonPointerPath"],
    #       }
    #
    # @!attribute [rw] all
    #   Match all of the elements. See also `MatchScope` in JsonBody.
    #
    #   You must specify either this setting or the `IncludedPaths` setting,
    #   but not both.
    #   @return [Types::All]
    #
    # @!attribute [rw] included_paths
    #   Match only the specified include paths. See also `MatchScope` in
    #   JsonBody.
    #
    #   Provide the include paths using JSON Pointer syntax. For example,
    #   `"IncludedPaths": ["/dogs/0/name", "/dogs/1/name"]`. For information
    #   about this syntax, see the Internet Engineering Task Force (IETF)
    #   documentation [JavaScript Object Notation (JSON) Pointer][1].
    #
    #   You must specify either this setting or the `All` setting, but not
    #   both.
    #
    #   <note markdown="1"> Don't use this option to include all paths. Instead, use the `All`
    #   setting.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6901
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/JsonMatchPattern AWS API Documentation
    #
    class JsonMatchPattern < Struct.new(
      :all,
      :included_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single label container. This is used as an element of a label array
    # in multiple contexts, for example, in `RuleLabels` inside a Rule and
    # in `Labels` inside a SampledHTTPRequest.
    #
    # @note When making an API call, you may pass Label
    #   data as a hash:
    #
    #       {
    #         name: "LabelName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The label string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Label AWS API Documentation
    #
    class Label < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement that defines a string match search against labels
    # that have been added to the web request by rules that have already run
    # in the web ACL.
    #
    # The label match statement provides the label or namespace string to
    # search for. The label string can represent a part or all of the fully
    # qualified label name that had been added to the web request. Fully
    # qualified labels have a prefix, optional namespaces, and label name.
    # The prefix identifies the rule group or web ACL context of the rule
    # that added the label. If you do not provide the fully qualified name
    # in your label match string, WAF performs the search for labels that
    # were added in the same context as the label match statement.
    #
    # @note When making an API call, you may pass LabelMatchStatement
    #   data as a hash:
    #
    #       {
    #         scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #         key: "LabelMatchKey", # required
    #       }
    #
    # @!attribute [rw] scope
    #   Specify whether you want to match using the label name or just the
    #   namespace.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The string to match against. The setting you provide for this
    #   depends on the match statement's `Scope` setting:
    #
    #   * If the `Scope` indicates `LABEL`, then this specification must
    #     include the name and can include any number of preceding namespace
    #     specifications and prefix up to providing the fully qualified
    #     label name.
    #
    #   * If the `Scope` indicates `NAMESPACE`, then this specification can
    #     include any number of contiguous namespace strings, and can
    #     include the entire label namespace prefix from the rule group or
    #     web ACL where the label originates.
    #
    #   Labels are case sensitive and components of a label must be
    #   separated by colon, for example `NS1:NS2:name`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/LabelMatchStatement AWS API Documentation
    #
    class LabelMatchStatement < Struct.new(
      :scope,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single label name condition for a Condition in a logging filter.
    #
    # @note When making an API call, you may pass LabelNameCondition
    #   data as a hash:
    #
    #       {
    #         label_name: "LabelName", # required
    #       }
    #
    # @!attribute [rw] label_name
    #   The label name that a log record must contain in order to meet the
    #   condition. This must be a fully qualified label name. Fully
    #   qualified labels have a prefix, optional namespaces, and label name.
    #   The prefix identifies the rule group or web ACL context of the rule
    #   that added the label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/LabelNameCondition AWS API Documentation
    #
    class LabelNameCondition < Struct.new(
      :label_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of labels used by one or more of the rules of a RuleGroup. This
    # summary object is used for the following rule group lists:
    #
    # * `AvailableLabels` - Labels that rules add to matching requests.
    #   These labels are defined in the `RuleLabels` for a Rule.
    #
    # * `ConsumedLabels` - Labels that rules match against. These labels are
    #   defined in a `LabelMatchStatement` specification, in the Statement
    #   definition of a rule.
    #
    # @!attribute [rw] name
    #   An individual label specification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/LabelSummary AWS API Documentation
    #
    class LabelSummary < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAvailableManagedRuleGroupVersionsRequest
    #   data as a hash:
    #
    #       {
    #         vendor_name: "VendorName", # required
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAvailableManagedRuleGroupVersionsRequest AWS API Documentation
    #
    class ListAvailableManagedRuleGroupVersionsRequest < Struct.new(
      :vendor_name,
      :name,
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The versions that are currently available for the specified managed
    #   rule group.
    #   @return [Array<Types::ManagedRuleGroupVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAvailableManagedRuleGroupVersionsResponse AWS API Documentation
    #
    class ListAvailableManagedRuleGroupVersionsResponse < Struct.new(
      :next_marker,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAvailableManagedRuleGroupsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAvailableManagedRuleGroupsRequest AWS API Documentation
    #
    class ListAvailableManagedRuleGroupsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] managed_rule_groups
    #   @return [Array<Types::ManagedRuleGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAvailableManagedRuleGroupsResponse AWS API Documentation
    #
    class ListAvailableManagedRuleGroupsResponse < Struct.new(
      :next_marker,
      :managed_rule_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIPSetsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListIPSetsRequest AWS API Documentation
    #
    class ListIPSetsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] ip_sets
    #   Array of IPSets. This may not be the full list of IPSets that you
    #   have defined. See the `Limit` specification for this request.
    #   @return [Array<Types::IPSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListIPSetsResponse AWS API Documentation
    #
    class ListIPSetsResponse < Struct.new(
      :next_marker,
      :ip_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLoggingConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListLoggingConfigurationsRequest AWS API Documentation
    #
    class ListLoggingConfigurationsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configurations
    #   @return [Array<Types::LoggingConfiguration>]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListLoggingConfigurationsResponse AWS API Documentation
    #
    class ListLoggingConfigurationsResponse < Struct.new(
      :logging_configurations,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListManagedRuleSetsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListManagedRuleSetsRequest AWS API Documentation
    #
    class ListManagedRuleSetsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] managed_rule_sets
    #   Your managed rule sets.
    #   @return [Array<Types::ManagedRuleSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListManagedRuleSetsResponse AWS API Documentation
    #
    class ListManagedRuleSetsResponse < Struct.new(
      :next_marker,
      :managed_rule_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMobileSdkReleasesRequest
    #   data as a hash:
    #
    #       {
    #         platform: "IOS", # required, accepts IOS, ANDROID
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] platform
    #   The device platform to retrieve the list for.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListMobileSdkReleasesRequest AWS API Documentation
    #
    class ListMobileSdkReleasesRequest < Struct.new(
      :platform,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] release_summaries
    #   High level information for the available SDK releases.
    #   @return [Array<Types::ReleaseSummary>]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListMobileSdkReleasesResponse AWS API Documentation
    #
    class ListMobileSdkReleasesResponse < Struct.new(
      :release_summaries,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRegexPatternSetsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListRegexPatternSetsRequest AWS API Documentation
    #
    class ListRegexPatternSetsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] regex_pattern_sets
    #   @return [Array<Types::RegexPatternSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListRegexPatternSetsResponse AWS API Documentation
    #
    class ListRegexPatternSetsResponse < Struct.new(
      :next_marker,
      :regex_pattern_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourcesForWebACLRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_arn: "ResourceArn", # required
    #         resource_type: "APPLICATION_LOAD_BALANCER", # accepts APPLICATION_LOAD_BALANCER, API_GATEWAY, APPSYNC
    #       }
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Used for web ACLs that are scoped for regional applications. A
    #   regional application can be an Application Load Balancer (ALB), an
    #   Amazon API Gateway REST API, or an AppSync GraphQL API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListResourcesForWebACLRequest AWS API Documentation
    #
    class ListResourcesForWebACLRequest < Struct.new(
      :web_acl_arn,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arns
    #   The array of Amazon Resource Names (ARNs) of the associated
    #   resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListResourcesForWebACLResponse AWS API Documentation
    #
    class ListResourcesForWebACLResponse < Struct.new(
      :resource_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRuleGroupsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListRuleGroupsRequest AWS API Documentation
    #
    class ListRuleGroupsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] rule_groups
    #   @return [Array<Types::RuleGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListRuleGroupsResponse AWS API Documentation
    #
    class ListRuleGroupsResponse < Struct.new(
      :next_marker,
      :rule_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :next_marker,
      :limit,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] tag_info_for_resource
    #   The collection of tagging definitions for the resource.
    #   @return [Types::TagInfoForResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :next_marker,
      :tag_info_for_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWebACLsRequest
    #   data as a hash:
    #
    #       {
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF
    #   provides a `NextMarker` value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListWebACLsRequest AWS API Documentation
    #
    class ListWebACLsRequest < Struct.new(
      :scope,
      :next_marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] web_acls
    #   @return [Array<Types::WebACLSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListWebACLsResponse AWS API Documentation
    #
    class ListWebACLsResponse < Struct.new(
      :next_marker,
      :web_acls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an association between logging destinations and a web ACL
    # resource, for logging from WAF. As part of the association, you can
    # specify parts of the standard logging fields to keep out of the logs
    # and you can specify filters so that you log only a subset of the
    # logging records.
    #
    # <note markdown="1"> You can define one logging destination per web ACL.
    #
    #  </note>
    #
    # You can access information about the traffic that WAF inspects using
    # the following steps:
    #
    # 1.  Create your logging destination. You can use an Amazon CloudWatch
    #     Logs log group, an Amazon Simple Storage Service (Amazon S3)
    #     bucket, or an Amazon Kinesis Data Firehose. For information about
    #     configuring logging destinations and the permissions that are
    #     required for each, see [Logging web ACL traffic information][1] in
    #     the *WAF Developer Guide*.
    #
    # 2.  Associate your logging destination to your web ACL using a
    #     `PutLoggingConfiguration` request.
    #
    # When you successfully enable logging using a `PutLoggingConfiguration`
    # request, WAF creates an additional role or policy that is required to
    # write logs to the logging destination. For an Amazon CloudWatch Logs
    # log group, WAF creates a resource policy on the log group. For an
    # Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis
    # Data Firehose, WAF creates a service-linked role.
    #
    # For additional information about web ACL logging, see [Logging web ACL
    # traffic information][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/logging.html
    #
    # @note When making an API call, you may pass LoggingConfiguration
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         log_destination_configs: ["ResourceArn"], # required
    #         redacted_fields: [
    #           {
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #         ],
    #         managed_by_firewall_manager: false,
    #         logging_filter: {
    #           filters: [ # required
    #             {
    #               behavior: "KEEP", # required, accepts KEEP, DROP
    #               requirement: "MEETS_ALL", # required, accepts MEETS_ALL, MEETS_ANY
    #               conditions: [ # required
    #                 {
    #                   action_condition: {
    #                     action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, EXCLUDED_AS_COUNT
    #                   },
    #                   label_name_condition: {
    #                     label_name: "LabelName", # required
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           default_behavior: "KEEP", # required, accepts KEEP, DROP
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with `LogDestinationConfigs`.
    #   @return [String]
    #
    # @!attribute [rw] log_destination_configs
    #   The logging destination configuration that you want to associate
    #   with the web ACL.
    #
    #   <note markdown="1"> You can associate one logging destination to a web ACL.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] redacted_fields
    #   The parts of the request that you want to keep out of the logs. For
    #   example, if you redact the `SingleHeader` field, the `HEADER` field
    #   in the logs will be `xxx`.
    #
    #   <note markdown="1"> You can specify only the following fields for redaction: `UriPath`,
    #   `QueryString`, `SingleHeader`, `Method`, and `JsonBody`.
    #
    #    </note>
    #   @return [Array<Types::FieldToMatch>]
    #
    # @!attribute [rw] managed_by_firewall_manager
    #   Indicates whether the logging configuration was created by Firewall
    #   Manager, as part of an WAF policy configuration. If true, only
    #   Firewall Manager can modify or delete the configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_filter
    #   Filtering that specifies which web requests are kept in the logs and
    #   which are dropped. You can filter on the rule action and on the web
    #   request labels that were applied by matching rules during web ACL
    #   evaluation.
    #   @return [Types::LoggingFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :resource_arn,
      :log_destination_configs,
      :redacted_fields,
      :managed_by_firewall_manager,
      :logging_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filtering that specifies which web requests are kept in the logs and
    # which are dropped, defined for a web ACL's LoggingConfiguration.
    #
    # You can filter on the rule action and on the web request labels that
    # were applied by matching rules during web ACL evaluation.
    #
    # @note When making an API call, you may pass LoggingFilter
    #   data as a hash:
    #
    #       {
    #         filters: [ # required
    #           {
    #             behavior: "KEEP", # required, accepts KEEP, DROP
    #             requirement: "MEETS_ALL", # required, accepts MEETS_ALL, MEETS_ANY
    #             conditions: [ # required
    #               {
    #                 action_condition: {
    #                   action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, EXCLUDED_AS_COUNT
    #                 },
    #                 label_name_condition: {
    #                   label_name: "LabelName", # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         default_behavior: "KEEP", # required, accepts KEEP, DROP
    #       }
    #
    # @!attribute [rw] filters
    #   The filters that you want to apply to the logs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] default_behavior
    #   Default handling for logs that don't match any of the specified
    #   filtering conditions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/LoggingFilter AWS API Documentation
    #
    class LoggingFilter < Struct.new(
      :filters,
      :default_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional information that's used by a managed rule group. Most
    # managed rule groups don't require this.
    #
    # Use this for the account takeover prevention managed rule group
    # `AWSManagedRulesATPRuleSet`, to provide information about the sign-in
    # page of your application.
    #
    # @note When making an API call, you may pass ManagedRuleGroupConfig
    #   data as a hash:
    #
    #       {
    #         login_path: "LoginPathString",
    #         payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #         username_field: {
    #           identifier: "FieldIdentifier", # required
    #         },
    #         password_field: {
    #           identifier: "FieldIdentifier", # required
    #         },
    #       }
    #
    # @!attribute [rw] login_path
    #   The path of the login endpoint for your application. For example,
    #   for the URL `https://example.com/web/login`, you would provide the
    #   path `/web/login`.
    #   @return [String]
    #
    # @!attribute [rw] payload_type
    #   The payload type for your login endpoint, either JSON or form
    #   encoded.
    #   @return [String]
    #
    # @!attribute [rw] username_field
    #   Details about your login page username field.
    #   @return [Types::UsernameField]
    #
    # @!attribute [rw] password_field
    #   Details about your login page password field.
    #   @return [Types::PasswordField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleGroupConfig AWS API Documentation
    #
    class ManagedRuleGroupConfig < Struct.new(
      :login_path,
      :payload_type,
      :username_field,
      :password_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement used to run the rules that are defined in a managed
    # rule group. To use this, provide the vendor name and the name of the
    # rule group in this statement. You can retrieve the required names by
    # calling ListAvailableManagedRuleGroups.
    #
    # You cannot nest a `ManagedRuleGroupStatement`, for example for use
    # inside a `NotStatement` or `OrStatement`. It can only be referenced as
    # a top-level statement within a rule.
    #
    # @note When making an API call, you may pass ManagedRuleGroupStatement
    #   data as a hash:
    #
    #       {
    #         vendor_name: "VendorName", # required
    #         name: "EntityName", # required
    #         version: "VersionKeyString",
    #         excluded_rules: [
    #           {
    #             name: "EntityName", # required
    #           },
    #         ],
    #         scope_down_statement: {
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         managed_rule_group_configs: [
    #           {
    #             login_path: "LoginPathString",
    #             payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #             username_field: {
    #               identifier: "FieldIdentifier", # required
    #             },
    #             password_field: {
    #               identifier: "FieldIdentifier", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the managed rule group to use. If you specify this,
    #   the version setting is fixed until you change it. If you don't
    #   specify this, WAF uses the vendor's default version, and then keeps
    #   the version at the vendor's default when the vendor updates the
    #   managed rule group settings.
    #   @return [String]
    #
    # @!attribute [rw] excluded_rules
    #   The rules in the referenced rule group whose actions are set to
    #   `Count`. When you exclude a rule, WAF evaluates it exactly as it
    #   would if the rule action setting were `Count`. This is a useful
    #   option for testing the rules in a rule group without modifying how
    #   they handle your web traffic.
    #   @return [Array<Types::ExcludedRule>]
    #
    # @!attribute [rw] scope_down_statement
    #   An optional nested statement that narrows the scope of the web
    #   requests that are evaluated by the managed rule group. Requests are
    #   only evaluated by the rule group if they match the scope-down
    #   statement. You can use any nestable Statement in the scope-down
    #   statement, and you can nest statements at any level, the same as you
    #   can for a rule statement.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] managed_rule_group_configs
    #   Additional information that's used by a managed rule group. Most
    #   managed rule groups don't require this.
    #
    #   Use this for the account takeover prevention managed rule group
    #   `AWSManagedRulesATPRuleSet`, to provide information about the
    #   sign-in page of your application.
    #   @return [Array<Types::ManagedRuleGroupConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleGroupStatement AWS API Documentation
    #
    class ManagedRuleGroupStatement < Struct.new(
      :vendor_name,
      :name,
      :version,
      :excluded_rules,
      :scope_down_statement,
      :managed_rule_group_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a managed rule group, returned by
    # ListAvailableManagedRuleGroups. This provides information like the
    # name and vendor name, that you provide when you add a
    # ManagedRuleGroupStatement to a web ACL. Managed rule groups include
    # Amazon Web Services Managed Rules rule groups, which are free of
    # charge to WAF customers, and Amazon Web Services Marketplace managed
    # rule groups, which you can subscribe to through Amazon Web Services
    # Marketplace.
    #
    # @!attribute [rw] vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the managed rule group, provided by Amazon Web
    #   Services Managed Rules or the Amazon Web Services Marketplace seller
    #   who manages it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleGroupSummary AWS API Documentation
    #
    class ManagedRuleGroupSummary < Struct.new(
      :vendor_name,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a single version of a managed rule group.
    #
    # @!attribute [rw] name
    #   The version name.
    #   @return [String]
    #
    # @!attribute [rw] last_update_timestamp
    #   The date and time that the managed rule group owner updated the rule
    #   group version information.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleGroupVersion AWS API Documentation
    #
    class ManagedRuleGroupVersion < Struct.new(
      :name,
      :last_update_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of rules that is managed by Amazon Web Services and Amazon Web
    # Services Marketplace sellers to provide versioned managed rule groups
    # for customers of WAF.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] published_versions
    #   The versions of this managed rule set that are available for use by
    #   customers.
    #   @return [Hash<String,Types::ManagedRuleSetVersion>]
    #
    # @!attribute [rw] recommended_version
    #   The version that you would like your customers to use.
    #   @return [String]
    #
    # @!attribute [rw] label_namespace
    #   The label namespace prefix for the managed rule groups that are
    #   offered to customers from this managed rule set. All labels that are
    #   added by rules in the managed rule group have this prefix.
    #
    #   * The syntax for the label namespace prefix for a managed rule group
    #     is the following:
    #
    #     `awswaf:managed:<vendor>:<rule group name>`\:
    #
    #   * When a rule with a label matches a web request, WAF adds the fully
    #     qualified label to the request. A fully qualified label is made up
    #     of the label namespace from the rule group or web ACL where the
    #     rule is defined and the label from the rule, separated by a colon:
    #
    #     `<label namespace>:<label from rule>`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleSet AWS API Documentation
    #
    class ManagedRuleSet < Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :published_versions,
      :recommended_version,
      :label_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information for a managed rule set.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] label_namespace
    #   The label namespace prefix for the managed rule groups that are
    #   offered to customers from this managed rule set. All labels that are
    #   added by rules in the managed rule group have this prefix.
    #
    #   * The syntax for the label namespace prefix for a managed rule group
    #     is the following:
    #
    #     `awswaf:managed:<vendor>:<rule group name>`\:
    #
    #   * When a rule with a label matches a web request, WAF adds the fully
    #     qualified label to the request. A fully qualified label is made up
    #     of the label namespace from the rule group or web ACL where the
    #     rule is defined and the label from the rule, separated by a colon:
    #
    #     `<label namespace>:<label from rule>`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleSetSummary AWS API Documentation
    #
    class ManagedRuleSetSummary < Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      :label_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information for a single version of a managed rule set.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @!attribute [rw] associated_rule_group_arn
    #   The Amazon Resource Name (ARN) of the vendor rule group that's used
    #   to define the published version of your managed rule group.
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) required for this rule group.
    #
    #   WAF uses WCUs to calculate and control the operating resources that
    #   are used to run your rules, rule groups, and web ACLs. WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan
    #   their web ACL WCU usage when they use a rule group. The WCU limit
    #   for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] forecasted_lifetime
    #   The amount of time you expect this version of your managed rule
    #   group to last, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] publish_timestamp
    #   The time that you first published this version.
    #
    #   Times are in Coordinated Universal Time (UTC) format. UTC format
    #   includes the special designator, Z. For example,
    #   "2016-09-27T14:50Z".
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   The last time that you updated this version.
    #
    #   Times are in Coordinated Universal Time (UTC) format. UTC format
    #   includes the special designator, Z. For example,
    #   "2016-09-27T14:50Z".
    #   @return [Time]
    #
    # @!attribute [rw] expiry_timestamp
    #   The time that this version is set to expire.
    #
    #   Times are in Coordinated Universal Time (UTC) format. UTC format
    #   includes the special designator, Z. For example,
    #   "2016-09-27T14:50Z".
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleSetVersion AWS API Documentation
    #
    class ManagedRuleSetVersion < Struct.new(
      :associated_rule_group_arn,
      :capacity,
      :forecasted_lifetime,
      :publish_timestamp,
      :last_update_timestamp,
      :expiry_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP method of a web request. The method indicates the type of
    # operation that the request is asking the origin to perform.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # JSON specification: `"Method": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Method AWS API Documentation
    #
    class Method < Aws::EmptyStructure; end

    # Information for a release of the mobile SDK, including release notes
    # and tags.
    #
    # The mobile SDK is not generally available. Customers who have access
    # to the mobile SDK can use it to establish and manage Security Token
    # Service (STS) security tokens for use in HTTP(S) requests from a
    # mobile device to WAF. For more information, see [WAF client
    # application integration][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @!attribute [rw] release_version
    #   The release version.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the release.
    #   @return [Time]
    #
    # @!attribute [rw] release_notes
    #   Notes describing the release.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that are associated with the release.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/MobileSdkRelease AWS API Documentation
    #
    class MobileSdkRelease < Struct.new(
      :release_version,
      :timestamp,
      :release_notes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that WAF should do nothing. This is used for the
    # `OverrideAction` setting on a Rule when the rule uses a rule group
    # reference statement.
    #
    # This is used in the context of other settings, for example to specify
    # values for RuleAction and web ACL DefaultAction.
    #
    # JSON specification: `"None": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/NoneAction AWS API Documentation
    #
    class NoneAction < Aws::EmptyStructure; end

    # A logical rule statement used to negate the results of another rule
    # statement. You provide one Statement within the `NotStatement`.
    #
    # @note When making an API call, you may pass NotStatement
    #   data as a hash:
    #
    #       {
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] statement
    #   The statement to negate. You can use any statement that can be
    #   nested.
    #   @return [Types::Statement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/NotStatement AWS API Documentation
    #
    class NotStatement < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # A logical rule statement used to combine other rule statements with OR
    # logic. You provide more than one Statement within the `OrStatement`.
    #
    # @note When making an API call, you may pass OrStatement
    #   data as a hash:
    #
    #       {
    #         statements: [ # required
    #           {
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #               positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 position: "FIRST", # required, accepts FIRST, LAST, ANY
    #               },
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             and_statement: {
    #               statements: { # required
    #                 # recursive Statements
    #               },
    #             },
    #             or_statement: {
    #               statements: { # required
    #                 # recursive Statements
    #               },
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               },
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                 },
    #               ],
    #             },
    #             label_match_statement: {
    #               scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] statements
    #   The statements to combine with OR logic. You can use any statements
    #   that can be nested.
    #   @return [Array<Types::Statement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/OrStatement AWS API Documentation
    #
    class OrStatement < Struct.new(
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action to use in the place of the action that results from the
    # rule group evaluation. Set the override action to none to leave the
    # result of the rule group alone. Set it to count to override the result
    # to count only.
    #
    # You can only use this for rule statements that reference a rule group,
    # like `RuleGroupReferenceStatement` and `ManagedRuleGroupStatement`.
    #
    # <note markdown="1"> This option is usually set to none. It does not affect how the rules
    # in the rule group are evaluated. If you want the rules in the rule
    # group to only count matches, do not use this and instead exclude those
    # rules in your rule group reference statement settings.
    #
    #  </note>
    #
    # @note When making an API call, you may pass OverrideAction
    #   data as a hash:
    #
    #       {
    #         count: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         none: {
    #         },
    #       }
    #
    # @!attribute [rw] count
    #   Override the rule group evaluation result to count only.
    #
    #   <note markdown="1"> This option is usually set to none. It does not affect how the rules
    #   in the rule group are evaluated. If you want the rules in the rule
    #   group to only count matches, do not use this and instead exclude
    #   those rules in your rule group reference statement settings.
    #
    #    </note>
    #   @return [Types::CountAction]
    #
    # @!attribute [rw] none
    #   Don't override the rule group evaluation result. This is the most
    #   common setting.
    #   @return [Types::NoneAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/OverrideAction AWS API Documentation
    #
    class OverrideAction < Struct.new(
      :count,
      :none)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about your login page password field, used in a
    # `ManagedRuleGroupConfig`.
    #
    # @note When making an API call, you may pass PasswordField
    #   data as a hash:
    #
    #       {
    #         identifier: "FieldIdentifier", # required
    #       }
    #
    # @!attribute [rw] identifier
    #   The name of the password field. For example `/form/password`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PasswordField AWS API Documentation
    #
    class PasswordField < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLoggingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         logging_configuration: { # required
    #           resource_arn: "ResourceArn", # required
    #           log_destination_configs: ["ResourceArn"], # required
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #           ],
    #           managed_by_firewall_manager: false,
    #           logging_filter: {
    #             filters: [ # required
    #               {
    #                 behavior: "KEEP", # required, accepts KEEP, DROP
    #                 requirement: "MEETS_ALL", # required, accepts MEETS_ALL, MEETS_ANY
    #                 conditions: [ # required
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, EXCLUDED_AS_COUNT
    #                     },
    #                     label_name_condition: {
    #                       label_name: "LabelName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             default_behavior: "KEEP", # required, accepts KEEP, DROP
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] logging_configuration
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutLoggingConfigurationRequest AWS API Documentation
    #
    class PutLoggingConfigurationRequest < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutLoggingConfigurationResponse AWS API Documentation
    #
    class PutLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutManagedRuleSetVersionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         lock_token: "LockToken", # required
    #         recommended_version: "VersionKeyString",
    #         versions_to_publish: {
    #           "VersionKeyString" => {
    #             associated_rule_group_arn: "ResourceArn",
    #             forecasted_lifetime: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] recommended_version
    #   The version of the named managed rule group that you'd like your
    #   customers to choose, from among your version offerings.
    #   @return [String]
    #
    # @!attribute [rw] versions_to_publish
    #   The versions of the named managed rule group that you want to offer
    #   to your customers.
    #   @return [Hash<String,Types::VersionToPublish>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutManagedRuleSetVersionsRequest AWS API Documentation
    #
    class PutManagedRuleSetVersionsRequest < Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      :recommended_version,
      :versions_to_publish)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutManagedRuleSetVersionsResponse AWS API Documentation
    #
    class PutManagedRuleSetVersionsResponse < Struct.new(
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPermissionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         policy: "PolicyString", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the RuleGroup to which you want to
    #   attach the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to attach to the specified rule group.
    #
    #   The policy specifications must conform to the following:
    #
    #   * The policy must be composed using IAM Policy version 2012-10-17 or
    #     version 2015-01-01.
    #
    #   * The policy must include specifications for `Effect`, `Action`, and
    #     `Principal`.
    #
    #   * `Effect` must specify `Allow`.
    #
    #   * `Action` must specify `wafv2:CreateWebACL`, `wafv2:UpdateWebACL`,
    #     and `wafv2:PutFirewallManagerRuleGroups`. WAF rejects any extra
    #     actions or wildcard actions in the policy.
    #
    #   * The policy must not include a `Resource` parameter.
    #
    #   For more information, see [IAM Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutPermissionPolicyRequest AWS API Documentation
    #
    class PutPermissionPolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutPermissionPolicyResponse AWS API Documentation
    #
    class PutPermissionPolicyResponse < Aws::EmptyStructure; end

    # The query string of a web request. This is the part of a URL that
    # appears after a `?` character, if any.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # JSON specification: `"QueryString": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/QueryString AWS API Documentation
    #
    class QueryString < Aws::EmptyStructure; end

    # A rate-based rule tracks the rate of requests for each originating IP
    # address, and triggers the rule action when the rate exceeds a limit
    # that you specify on the number of requests in any 5-minute time span.
    # You can use this to put a temporary block on requests from an IP
    # address that is sending excessive requests.
    #
    # WAF tracks and manages web requests separately for each instance of a
    # rate-based rule that you use. For example, if you provide the same
    # rate-based rule settings in two web ACLs, each of the two rule
    # statements represents a separate instance of the rate-based rule and
    # gets its own tracking and management by WAF. If you define a
    # rate-based rule inside a rule group, and then use that rule group in
    # multiple places, each use creates a separate instance of the
    # rate-based rule that gets its own tracking and management by WAF.
    #
    # When the rule action triggers, WAF blocks additional requests from the
    # IP address until the request rate falls below the limit.
    #
    # You can optionally nest another statement inside the rate-based
    # statement, to narrow the scope of the rule so that it only counts
    # requests that match the nested statement. For example, based on recent
    # requests that you have seen from an attacker, you might create a
    # rate-based rule with a nested AND rule statement that contains the
    # following nested statements:
    #
    # * An IP match statement with an IP set that specified the address
    #   192.0.2.44.
    #
    # * A string match statement that searches in the User-Agent header for
    #   the string BadBot.
    #
    # In this rate-based rule, you also define a rate limit. For this
    # example, the rate limit is 1,000. Requests that meet both of the
    # conditions in the statements are counted. If the count exceeds 1,000
    # requests per five minutes, the rule action triggers. Requests that do
    # not meet both conditions are not counted towards the rate limit and
    # are not affected by this rule.
    #
    # You cannot nest a `RateBasedStatement` inside another statement, for
    # example inside a `NotStatement` or `OrStatement`. You can define a
    # `RateBasedStatement` inside a web ACL and inside a rule group.
    #
    # @note When making an API call, you may pass RateBasedStatement
    #   data as a hash:
    #
    #       {
    #         limit: 1, # required
    #         aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #         scope_down_statement: {
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         forwarded_ip_config: {
    #           header_name: "ForwardedIPHeaderName", # required
    #           fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #         },
    #       }
    #
    # @!attribute [rw] limit
    #   The limit on requests per 5-minute period for a single originating
    #   IP address. If the statement includes a `ScopeDownStatement`, this
    #   limit is applied only to the requests that match the statement.
    #   @return [Integer]
    #
    # @!attribute [rw] aggregate_key_type
    #   Setting that indicates how to aggregate the request counts. The
    #   options are the following:
    #
    #   * IP - Aggregate the request counts on the IP address from the web
    #     request origin.
    #
    #   * FORWARDED\_IP - Aggregate the request counts on the first IP
    #     address in an HTTP header. If you use this, configure the
    #     `ForwardedIPConfig`, to specify the header to use.
    #   @return [String]
    #
    # @!attribute [rw] scope_down_statement
    #   An optional nested statement that narrows the scope of the web
    #   requests that are evaluated by the rate-based statement. Requests
    #   are only tracked by the rate-based statement if they match the
    #   scope-down statement. You can use any nestable Statement in the
    #   scope-down statement, and you can nest statements at any level, the
    #   same as you can for a rule statement.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] forwarded_ip_config
    #   The configuration for inspecting IP addresses in an HTTP header that
    #   you specify, instead of using the IP address that's reported by the
    #   web request origin. Commonly, this is the X-Forwarded-For (XFF)
    #   header, but you can specify any header name.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, WAF doesn't
    #   apply the rule to the web request at all.
    #
    #    </note>
    #
    #   This is required if `AggregateKeyType` is set to `FORWARDED_IP`.
    #   @return [Types::ForwardedIPConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RateBasedStatement AWS API Documentation
    #
    class RateBasedStatement < Struct.new(
      :limit,
      :aggregate_key_type,
      :scope_down_statement,
      :forwarded_ip_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of IP addresses that are currently blocked for a
    # RateBasedStatement.
    #
    # @!attribute [rw] ip_address_version
    #   The version of the IP addresses, either `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   The IP addresses that are currently blocked.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RateBasedStatementManagedKeysIPSet AWS API Documentation
    #
    class RateBasedStatementManagedKeysIPSet < Struct.new(
      :ip_address_version,
      :addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single regular expression. This is used in a RegexPatternSet.
    #
    # @note When making an API call, you may pass Regex
    #   data as a hash:
    #
    #       {
    #         regex_string: "RegexPatternString",
    #       }
    #
    # @!attribute [rw] regex_string
    #   The string representing the regular expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Regex AWS API Documentation
    #
    class Regex < Struct.new(
      :regex_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement used to search web request components for a match
    # against a single regular expression.
    #
    # @note When making an API call, you may pass RegexMatchStatement
    #   data as a hash:
    #
    #       {
    #         regex_string: "RegexPatternString", # required
    #         field_to_match: { # required
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #           },
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] regex_string
    #   The string representing the regular expression.
    #   @return [String]
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RegexMatchStatement AWS API Documentation
    #
    class RegexMatchStatement < Struct.new(
      :regex_string,
      :field_to_match,
      :text_transformations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one or more regular expressions.
    #
    # WAF assigns an ARN to each `RegexPatternSet` that you create. To use a
    # set in a rule, you provide the ARN to the Rule statement
    # RegexPatternSetReferenceStatement.
    #
    # @!attribute [rw] name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] regular_expression_list
    #   The regular expression patterns in the set.
    #   @return [Array<Types::Regex>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RegexPatternSet AWS API Documentation
    #
    class RegexPatternSet < Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :regular_expression_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement used to search web request components for matches
    # with regular expressions. To use this, create a RegexPatternSet that
    # specifies the expressions that you want to detect, then use the ARN of
    # that set in this statement. A web request matches the pattern set rule
    # statement if the request component matches any of the patterns in the
    # set. To create a regex pattern set, see CreateRegexPatternSet.
    #
    # Each regex pattern set rule statement references a regex pattern set.
    # You create and maintain the set independent of your rules. This allows
    # you to use the single set in multiple rules. When you update the
    # referenced set, WAF automatically updates all rules that reference it.
    #
    # @note When making an API call, you may pass RegexPatternSetReferenceStatement
    #   data as a hash:
    #
    #       {
    #         arn: "ResourceArn", # required
    #         field_to_match: { # required
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #           },
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the RegexPatternSet that this
    #   statement references.
    #   @return [String]
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RegexPatternSetReferenceStatement AWS API Documentation
    #
    class RegexPatternSetReferenceStatement < Struct.new(
      :arn,
      :field_to_match,
      :text_transformations)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a RegexPatternSet, returned by operations
    # like create and list. This provides information like the ID, that you
    # can use to retrieve and manage a `RegexPatternSet`, and the ARN, that
    # you provide to the RegexPatternSetReferenceStatement to use the
    # pattern set in a Rule.
    #
    # @!attribute [rw] name
    #   The name of the data type instance. You cannot change the name after
    #   you create the instance.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RegexPatternSetSummary AWS API Documentation
    #
    class RegexPatternSetSummary < Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # High level information for an SDK release.
    #
    # @!attribute [rw] release_version
    #   The release version.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the release.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ReleaseSummary AWS API Documentation
    #
    class ReleaseSummary < Struct.new(
      :release_version,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single rule, which you can use in a WebACL or RuleGroup to identify
    # web requests that you want to allow, block, or count. Each rule
    # includes one top-level Statement that WAF uses to identify matching
    # web requests, and parameters that govern how WAF handles them.
    #
    # @note When making an API call, you may pass Rule
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           none: {
    #           },
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule. You can't change the name of a `Rule` after
    #   you create it.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   If you define more than one `Rule` in a `WebACL`, WAF evaluates each
    #   request against the `Rules` in order based on the value of
    #   `Priority`. WAF processes rules with lower priority first. The
    #   priorities don't need to be consecutive, but they must all be
    #   different.
    #   @return [Integer]
    #
    # @!attribute [rw] statement
    #   The WAF processing statement for the rule, for example
    #   ByteMatchStatement or SizeConstraintStatement.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] action
    #   The action that WAF should take on a web request when it matches the
    #   rule statement. Settings at the web ACL level can override the rule
    #   action setting.
    #
    #   This is used only for rules whose statements do not reference a rule
    #   group. Rule statements that reference a rule group include
    #   `RuleGroupReferenceStatement` and `ManagedRuleGroupStatement`.
    #
    #   You must specify either this `Action` setting or the rule
    #   `OverrideAction` setting, but not both:
    #
    #   * If the rule statement does not reference a rule group, use this
    #     rule action setting and not the rule override action setting.
    #
    #   * If the rule statement references a rule group, use the override
    #     action setting and not this action setting.
    #   @return [Types::RuleAction]
    #
    # @!attribute [rw] override_action
    #   The action to use in the place of the action that results from the
    #   rule group evaluation. Set the override action to none to leave the
    #   result of the rule group alone. Set it to count to override the
    #   result to count only.
    #
    #   You can only use this for rule statements that reference a rule
    #   group, like `RuleGroupReferenceStatement` and
    #   `ManagedRuleGroupStatement`.
    #
    #   <note markdown="1"> This option is usually set to none. It does not affect how the rules
    #   in the rule group are evaluated. If you want the rules in the rule
    #   group to only count matches, do not use this and instead exclude
    #   those rules in your rule group reference statement settings.
    #
    #    </note>
    #   @return [Types::OverrideAction]
    #
    # @!attribute [rw] rule_labels
    #   Labels to apply to web requests that match the rule match statement.
    #   WAF applies fully qualified labels to matching web requests. A fully
    #   qualified label is the concatenation of a label namespace and a rule
    #   label. The rule's rule group or web ACL defines the label
    #   namespace.
    #
    #   Rules that run after this rule in the web ACL can match against
    #   these labels using a `LabelMatchStatement`.
    #
    #   For each label, provide a case-sensitive string containing optional
    #   namespaces and a label name, according to the following guidelines:
    #
    #   * Separate each component of the label with a colon.
    #
    #   * Each namespace or name can have up to 128 characters.
    #
    #   * You can specify up to 5 namespaces in a label.
    #
    #   * Don't use the following reserved words in your label
    #     specification: `aws`, `waf`, `managed`, `rulegroup`, `webacl`,
    #     `regexpatternset`, or `ipset`.
    #
    #   For example, `myLabelName` or `nameSpace1:nameSpace2:myLabelName`.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] captcha_config
    #   Specifies how WAF should handle `CAPTCHA` evaluations. If you don't
    #   specify this, WAF uses the `CAPTCHA` configuration that's defined
    #   for the web ACL.
    #   @return [Types::CaptchaConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :priority,
      :statement,
      :action,
      :override_action,
      :rule_labels,
      :visibility_config,
      :captcha_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action that WAF should take on a web request when it matches a
    # rule's statement. Settings at the web ACL level can override the rule
    # action setting.
    #
    # @note When making an API call, you may pass RuleAction
    #   data as a hash:
    #
    #       {
    #         block: {
    #           custom_response: {
    #             response_code: 1, # required
    #             custom_response_body_key: "EntityName",
    #             response_headers: [
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         allow: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         count: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         captcha: {
    #           custom_request_handling: {
    #             insert_headers: [ # required
    #               {
    #                 name: "CustomHTTPHeaderName", # required
    #                 value: "CustomHTTPHeaderValue", # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] block
    #   Instructs WAF to block the web request.
    #   @return [Types::BlockAction]
    #
    # @!attribute [rw] allow
    #   Instructs WAF to allow the web request.
    #   @return [Types::AllowAction]
    #
    # @!attribute [rw] count
    #   Instructs WAF to count the web request and allow it.
    #   @return [Types::CountAction]
    #
    # @!attribute [rw] captcha
    #   Instructs WAF to run a `CAPTCHA` check against the web request.
    #   @return [Types::CaptchaAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RuleAction AWS API Documentation
    #
    class RuleAction < Struct.new(
      :block,
      :allow,
      :count,
      :captcha)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule group defines a collection of rules to inspect and control web
    # requests that you can use in a WebACL. When you create a rule group,
    # you define an immutable capacity limit. If you update a rule group,
    # you must stay within the capacity. This allows others to reuse the
    # rule group with confidence in its capacity requirements.
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) required for this rule group.
    #
    #   When you create your own rule group, you define this, and you cannot
    #   change it after creation. When you add or modify the rules in a rule
    #   group, WAF enforces this limit. You can check the capacity for a set
    #   of rules using CheckCapacity.
    #
    #   WAF uses WCUs to calculate and control the operating resources that
    #   are used to run your rules, rule groups, and web ACLs. WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan
    #   their web ACL WCU usage when they use a rule group. The WCU limit
    #   for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] label_namespace
    #   The label namespace prefix for this rule group. All labels added by
    #   rules in this rule group have this prefix.
    #
    #   * The syntax for the label namespace prefix for your rule groups is
    #     the following:
    #
    #     `awswaf:<account ID>:rulegroup:<rule group name>:`
    #
    #   * When a rule with a label matches a web request, WAF adds the fully
    #     qualified label to the request. A fully qualified label is made up
    #     of the label namespace from the rule group or web ACL where the
    #     rule is defined and the label from the rule, separated by a colon:
    #
    #     `<label namespace>:<label from rule>`
    #   @return [String]
    #
    # @!attribute [rw] custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the rule group, and then use them in
    #   the rules that you define in the rule group.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][3] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   @return [Hash<String,Types::CustomResponseBody>]
    #
    # @!attribute [rw] available_labels
    #   The labels that one or more rules in this rule group add to matching
    #   web requests. These labels are defined in the `RuleLabels` for a
    #   Rule.
    #   @return [Array<Types::LabelSummary>]
    #
    # @!attribute [rw] consumed_labels
    #   The labels that one or more rules in this rule group match against
    #   in label match statements. These labels are defined in a
    #   `LabelMatchStatement` specification, in the Statement definition of
    #   a rule.
    #   @return [Array<Types::LabelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RuleGroup AWS API Documentation
    #
    class RuleGroup < Struct.new(
      :name,
      :id,
      :capacity,
      :arn,
      :description,
      :rules,
      :visibility_config,
      :label_namespace,
      :custom_response_bodies,
      :available_labels,
      :consumed_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement used to run the rules that are defined in a
    # RuleGroup. To use this, create a rule group with your rules, then
    # provide the ARN of the rule group in this statement.
    #
    # You cannot nest a `RuleGroupReferenceStatement`, for example for use
    # inside a `NotStatement` or `OrStatement`. You can only use a rule
    # group reference statement at the top level inside a web ACL.
    #
    # @note When making an API call, you may pass RuleGroupReferenceStatement
    #   data as a hash:
    #
    #       {
    #         arn: "ResourceArn", # required
    #         excluded_rules: [
    #           {
    #             name: "EntityName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] excluded_rules
    #   The rules in the referenced rule group whose actions are set to
    #   `Count`. When you exclude a rule, WAF evaluates it exactly as it
    #   would if the rule action setting were `Count`. This is a useful
    #   option for testing the rules in a rule group without modifying how
    #   they handle your web traffic.
    #   @return [Array<Types::ExcludedRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RuleGroupReferenceStatement AWS API Documentation
    #
    class RuleGroupReferenceStatement < Struct.new(
      :arn,
      :excluded_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a RuleGroup, returned by operations like
    # create and list. This provides information like the ID, that you can
    # use to retrieve and manage a `RuleGroup`, and the ARN, that you
    # provide to the RuleGroupReferenceStatement to use the rule group in a
    # Rule.
    #
    # @!attribute [rw] name
    #   The name of the data type instance. You cannot change the name after
    #   you create the instance.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RuleGroupSummary AWS API Documentation
    #
    class RuleGroupSummary < Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a Rule, returned by operations like
    # DescribeManagedRuleGroup. This provides information like the ID, that
    # you can use to retrieve and manage a `RuleGroup`, and the ARN, that
    # you provide to the RuleGroupReferenceStatement to use the rule group
    # in a Rule.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that WAF should take on a web request when it matches a
    #   rule's statement. Settings at the web ACL level can override the
    #   rule action setting.
    #   @return [Types::RuleAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :name,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single sampled web request. The response from
    # GetSampledRequests includes a `SampledHTTPRequests` complex type that
    # appears as `SampledRequests` in the response syntax.
    # `SampledHTTPRequests` contains an array of `SampledHTTPRequest`
    # objects.
    #
    # @!attribute [rw] request
    #   A complex type that contains detailed information about the request.
    #   @return [Types::HTTPRequest]
    #
    # @!attribute [rw] weight
    #   A value that indicates how one result in the response relates
    #   proportionally to other results in the response. For example, a
    #   result that has a weight of `2` represents roughly twice as many web
    #   requests as a result that has a weight of `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp
    #   The time at which WAF received the request from your Amazon Web
    #   Services resource, in Unix time format (in seconds).
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The action for the `Rule` that the request matched: `Allow`,
    #   `Block`, or `Count`.
    #   @return [String]
    #
    # @!attribute [rw] rule_name_within_rule_group
    #   The name of the `Rule` that the request matched. For managed rule
    #   groups, the format for this name is `<vendor name>#<managed rule
    #   group name>#<rule name>`. For your own rule groups, the format for
    #   this name is `<rule group name>#<rule name>`. If the rule is not in
    #   a rule group, this field is absent.
    #   @return [String]
    #
    # @!attribute [rw] request_headers_inserted
    #   Custom request headers inserted by WAF into the request, according
    #   to the custom request configuration for the matching rule action.
    #   @return [Array<Types::HTTPHeader>]
    #
    # @!attribute [rw] response_code_sent
    #   The response code that was sent for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] labels
    #   Labels applied to the web request by matching rules. WAF applies
    #   fully qualified labels to matching web requests. A fully qualified
    #   label is the concatenation of a label namespace and a rule label.
    #   The rule's rule group or web ACL defines the label namespace.
    #
    #   For example,
    #   `awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA`
    #   or `awswaf:managed:aws:managed-rule-set:header:encoding:utf8`.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] captcha_response
    #   The `CAPTCHA` response for the request.
    #   @return [Types::CaptchaResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/SampledHTTPRequest AWS API Documentation
    #
    class SampledHTTPRequest < Struct.new(
      :request,
      :weight,
      :timestamp,
      :action,
      :rule_name_within_rule_group,
      :request_headers_inserted,
      :response_code_sent,
      :labels,
      :captcha_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the headers in a web request, identified by name, for example,
    # `User-Agent` or `Referer`. This setting isn't case sensitive.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # Example JSON: `"SingleHeader": \{ "Name": "haystack" \}`
    #
    # @note When making an API call, you may pass SingleHeader
    #   data as a hash:
    #
    #       {
    #         name: "FieldToMatchData", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the query header to inspect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/SingleHeader AWS API Documentation
    #
    class SingleHeader < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # One query argument in a web request, identified by name, for example
    # *UserName* or *SalesRegion*. The name can be up to 30 characters long
    # and isn't case sensitive.
    #
    # Example JSON: `"SingleQueryArgument": \{ "Name": "myArgument" \}`
    #
    # @note When making an API call, you may pass SingleQueryArgument
    #   data as a hash:
    #
    #       {
    #         name: "FieldToMatchData", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the query argument to inspect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/SingleQueryArgument AWS API Documentation
    #
    class SingleQueryArgument < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement that compares a number of bytes against the size of a
    # request component, using a comparison operator, such as greater than
    # (&gt;) or less than (&lt;). For example, you can use a size constraint
    # statement to look for query strings that are longer than 100 bytes.
    #
    # If you configure WAF to inspect the request body, WAF inspects only
    # the first 8192 bytes (8 KB). If the request body for your web requests
    # never exceeds 8192 bytes, you can create a size constraint condition
    # and block requests that have a request body greater than 8192 bytes.
    #
    # If you choose URI for the value of Part of the request to filter on,
    # the slash (/) in the URI counts as one character. For example, the URI
    # `/logo.jpg` is nine characters long.
    #
    # @note When making an API call, you may pass SizeConstraintStatement
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #           },
    #         },
    #         comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #         size: 1, # required
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] comparison_operator
    #   The operator to use to compare the request part to the size setting.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size, in byte, to compare to the request part, after any
    #   transformations.
    #   @return [Integer]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/SizeConstraintStatement AWS API Documentation
    #
    class SizeConstraintStatement < Struct.new(
      :field_to_match,
      :comparison_operator,
      :size,
      :text_transformations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attackers sometimes insert malicious SQL code into web requests in an
    # effort to extract data from your database. To allow or block web
    # requests that appear to contain malicious SQL code, create one or more
    # SQL injection match conditions. An SQL injection match condition
    # identifies the part of web requests, such as the URI or the query
    # string, that you want WAF to inspect. Later in the process, when you
    # create a web ACL, you specify whether to allow or block requests that
    # appear to contain malicious SQL code.
    #
    # @note When making an API call, you may pass SqliMatchStatement
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #           },
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/SqliMatchStatement AWS API Documentation
    #
    class SqliMatchStatement < Struct.new(
      :field_to_match,
      :text_transformations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing guidance for a Rule, used by WAF to determine whether a
    # web request matches the rule.
    #
    # @note When making an API call, you may pass Statement
    #   data as a hash:
    #
    #       {
    #         byte_match_statement: {
    #           search_string: "data", # required
    #           field_to_match: { # required
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #             },
    #           ],
    #           positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #         },
    #         sqli_match_statement: {
    #           field_to_match: { # required
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #             },
    #           ],
    #         },
    #         xss_match_statement: {
    #           field_to_match: { # required
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #             },
    #           ],
    #         },
    #         size_constraint_statement: {
    #           field_to_match: { # required
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #           comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #           size: 1, # required
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #             },
    #           ],
    #         },
    #         geo_match_statement: {
    #           country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #           forwarded_ip_config: {
    #             header_name: "ForwardedIPHeaderName", # required
    #             fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #           },
    #         },
    #         rule_group_reference_statement: {
    #           arn: "ResourceArn", # required
    #           excluded_rules: [
    #             {
    #               name: "EntityName", # required
    #             },
    #           ],
    #         },
    #         ip_set_reference_statement: {
    #           arn: "ResourceArn", # required
    #           ip_set_forwarded_ip_config: {
    #             header_name: "ForwardedIPHeaderName", # required
    #             fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             position: "FIRST", # required, accepts FIRST, LAST, ANY
    #           },
    #         },
    #         regex_pattern_set_reference_statement: {
    #           arn: "ResourceArn", # required
    #           field_to_match: { # required
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #             },
    #           ],
    #         },
    #         rate_based_statement: {
    #           limit: 1, # required
    #           aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #           scope_down_statement: {
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #               positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 position: "FIRST", # required, accepts FIRST, LAST, ANY
    #               },
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             rate_based_statement: {
    #               # recursive RateBasedStatement
    #             },
    #             and_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 },
    #               ],
    #             },
    #             or_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 },
    #               ],
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               },
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                 },
    #               ],
    #             },
    #             label_match_statement: {
    #               scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #           },
    #           forwarded_ip_config: {
    #             header_name: "ForwardedIPHeaderName", # required
    #             fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #           },
    #         },
    #         and_statement: {
    #           statements: [ # required
    #             {
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 # recursive AndStatement
    #               },
    #               or_statement: {
    #                 statements: { # required
    #                   # recursive Statements
    #                 },
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #         },
    #         or_statement: {
    #           statements: [ # required
    #             {
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 statements: { # required
    #                   # recursive Statements
    #                 },
    #               },
    #               or_statement: {
    #                 # recursive OrStatement
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #         },
    #         not_statement: {
    #           statement: { # required
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #               positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 position: "FIRST", # required, accepts FIRST, LAST, ANY
    #               },
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             and_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 },
    #               ],
    #             },
    #             or_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 },
    #               ],
    #             },
    #             not_statement: {
    #               # recursive NotStatement
    #             },
    #             managed_rule_group_statement: {
    #               vendor_name: "VendorName", # required
    #               name: "EntityName", # required
    #               version: "VersionKeyString",
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               managed_rule_group_configs: [
    #                 {
    #                   login_path: "LoginPathString",
    #                   payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                   username_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                   password_field: {
    #                     identifier: "FieldIdentifier", # required
    #                   },
    #                 },
    #               ],
    #             },
    #             label_match_statement: {
    #               scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         managed_rule_group_statement: {
    #           vendor_name: "VendorName", # required
    #           name: "EntityName", # required
    #           version: "VersionKeyString",
    #           excluded_rules: [
    #             {
    #               name: "EntityName", # required
    #             },
    #           ],
    #           scope_down_statement: {
    #             byte_match_statement: {
    #               search_string: "data", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #               positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #             },
    #             sqli_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             xss_match_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             size_constraint_statement: {
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             geo_match_statement: {
    #               country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             rule_group_reference_statement: {
    #               arn: "ResourceArn", # required
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #             },
    #             ip_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               ip_set_forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 position: "FIRST", # required, accepts FIRST, LAST, ANY
    #               },
    #             },
    #             regex_pattern_set_reference_statement: {
    #               arn: "ResourceArn", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #             rate_based_statement: {
    #               limit: 1, # required
    #               aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #               scope_down_statement: {
    #                 # recursive Statement
    #               },
    #               forwarded_ip_config: {
    #                 header_name: "ForwardedIPHeaderName", # required
    #                 fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               },
    #             },
    #             and_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 },
    #               ],
    #             },
    #             or_statement: {
    #               statements: [ # required
    #                 {
    #                   # recursive Statement
    #                 },
    #               ],
    #             },
    #             not_statement: {
    #               statement: { # required
    #                 # recursive Statement
    #               },
    #             },
    #             managed_rule_group_statement: {
    #               # recursive ManagedRuleGroupStatement
    #             },
    #             label_match_statement: {
    #               scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #               key: "LabelMatchKey", # required
    #             },
    #             regex_match_statement: {
    #               regex_string: "RegexPatternString", # required
    #               field_to_match: { # required
    #                 single_header: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 single_query_argument: {
    #                   name: "FieldToMatchData", # required
    #                 },
    #                 all_query_arguments: {
    #                 },
    #                 uri_path: {
    #                 },
    #                 query_string: {
    #                 },
    #                 body: {
    #                 },
    #                 method: {
    #                 },
    #                 json_body: {
    #                   match_pattern: { # required
    #                     all: {
    #                     },
    #                     included_paths: ["JsonPointerPath"],
    #                   },
    #                   match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                   invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 },
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                 },
    #               ],
    #             },
    #           },
    #           managed_rule_group_configs: [
    #             {
    #               login_path: "LoginPathString",
    #               payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #               username_field: {
    #                 identifier: "FieldIdentifier", # required
    #               },
    #               password_field: {
    #                 identifier: "FieldIdentifier", # required
    #               },
    #             },
    #           ],
    #         },
    #         label_match_statement: {
    #           scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #           key: "LabelMatchKey", # required
    #         },
    #         regex_match_statement: {
    #           regex_string: "RegexPatternString", # required
    #           field_to_match: { # required
    #             single_header: {
    #               name: "FieldToMatchData", # required
    #             },
    #             single_query_argument: {
    #               name: "FieldToMatchData", # required
    #             },
    #             all_query_arguments: {
    #             },
    #             uri_path: {
    #             },
    #             query_string: {
    #             },
    #             body: {
    #             },
    #             method: {
    #             },
    #             json_body: {
    #               match_pattern: { # required
    #                 all: {
    #                 },
    #                 included_paths: ["JsonPointerPath"],
    #               },
    #               match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #               invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             },
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] byte_match_statement
    #   A rule statement that defines a string match search for WAF to apply
    #   to web requests. The byte match statement provides the bytes to
    #   search for, the location in requests that you want WAF to search,
    #   and other settings. The bytes to search for are typically a string
    #   that corresponds with ASCII characters. In the WAF console and the
    #   developer guide, this is refered to as a string match statement.
    #   @return [Types::ByteMatchStatement]
    #
    # @!attribute [rw] sqli_match_statement
    #   Attackers sometimes insert malicious SQL code into web requests in
    #   an effort to extract data from your database. To allow or block web
    #   requests that appear to contain malicious SQL code, create one or
    #   more SQL injection match conditions. An SQL injection match
    #   condition identifies the part of web requests, such as the URI or
    #   the query string, that you want WAF to inspect. Later in the
    #   process, when you create a web ACL, you specify whether to allow or
    #   block requests that appear to contain malicious SQL code.
    #   @return [Types::SqliMatchStatement]
    #
    # @!attribute [rw] xss_match_statement
    #   A rule statement that defines a cross-site scripting (XSS) match
    #   search for WAF to apply to web requests. XSS attacks are those where
    #   the attacker uses vulnerabilities in a benign website as a vehicle
    #   to inject malicious client-site scripts into other legitimate web
    #   browsers. The XSS match statement provides the location in requests
    #   that you want WAF to search and text transformations to use on the
    #   search area before WAF searches for character sequences that are
    #   likely to be malicious strings.
    #   @return [Types::XssMatchStatement]
    #
    # @!attribute [rw] size_constraint_statement
    #   A rule statement that compares a number of bytes against the size of
    #   a request component, using a comparison operator, such as greater
    #   than (&gt;) or less than (&lt;). For example, you can use a size
    #   constraint statement to look for query strings that are longer than
    #   100 bytes.
    #
    #   If you configure WAF to inspect the request body, WAF inspects only
    #   the first 8192 bytes (8 KB). If the request body for your web
    #   requests never exceeds 8192 bytes, you can create a size constraint
    #   condition and block requests that have a request body greater than
    #   8192 bytes.
    #
    #   If you choose URI for the value of Part of the request to filter on,
    #   the slash (/) in the URI counts as one character. For example, the
    #   URI `/logo.jpg` is nine characters long.
    #   @return [Types::SizeConstraintStatement]
    #
    # @!attribute [rw] geo_match_statement
    #   A rule statement used to identify web requests based on country of
    #   origin.
    #   @return [Types::GeoMatchStatement]
    #
    # @!attribute [rw] rule_group_reference_statement
    #   A rule statement used to run the rules that are defined in a
    #   RuleGroup. To use this, create a rule group with your rules, then
    #   provide the ARN of the rule group in this statement.
    #
    #   You cannot nest a `RuleGroupReferenceStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. You can only use a rule
    #   group reference statement at the top level inside a web ACL.
    #   @return [Types::RuleGroupReferenceStatement]
    #
    # @!attribute [rw] ip_set_reference_statement
    #   A rule statement used to detect web requests coming from particular
    #   IP addresses or address ranges. To use this, create an IPSet that
    #   specifies the addresses you want to detect, then use the ARN of that
    #   set in this statement. To create an IP set, see CreateIPSet.
    #
    #   Each IP set rule statement references an IP set. You create and
    #   maintain the set independent of your rules. This allows you to use
    #   the single set in multiple rules. When you update the referenced
    #   set, WAF automatically updates all rules that reference it.
    #   @return [Types::IPSetReferenceStatement]
    #
    # @!attribute [rw] regex_pattern_set_reference_statement
    #   A rule statement used to search web request components for matches
    #   with regular expressions. To use this, create a RegexPatternSet that
    #   specifies the expressions that you want to detect, then use the ARN
    #   of that set in this statement. A web request matches the pattern set
    #   rule statement if the request component matches any of the patterns
    #   in the set. To create a regex pattern set, see
    #   CreateRegexPatternSet.
    #
    #   Each regex pattern set rule statement references a regex pattern
    #   set. You create and maintain the set independent of your rules. This
    #   allows you to use the single set in multiple rules. When you update
    #   the referenced set, WAF automatically updates all rules that
    #   reference it.
    #   @return [Types::RegexPatternSetReferenceStatement]
    #
    # @!attribute [rw] rate_based_statement
    #   A rate-based rule tracks the rate of requests for each originating
    #   IP address, and triggers the rule action when the rate exceeds a
    #   limit that you specify on the number of requests in any 5-minute
    #   time span. You can use this to put a temporary block on requests
    #   from an IP address that is sending excessive requests.
    #
    #   WAF tracks and manages web requests separately for each instance of
    #   a rate-based rule that you use. For example, if you provide the same
    #   rate-based rule settings in two web ACLs, each of the two rule
    #   statements represents a separate instance of the rate-based rule and
    #   gets its own tracking and management by WAF. If you define a
    #   rate-based rule inside a rule group, and then use that rule group in
    #   multiple places, each use creates a separate instance of the
    #   rate-based rule that gets its own tracking and management by WAF.
    #
    #   When the rule action triggers, WAF blocks additional requests from
    #   the IP address until the request rate falls below the limit.
    #
    #   You can optionally nest another statement inside the rate-based
    #   statement, to narrow the scope of the rule so that it only counts
    #   requests that match the nested statement. For example, based on
    #   recent requests that you have seen from an attacker, you might
    #   create a rate-based rule with a nested AND rule statement that
    #   contains the following nested statements:
    #
    #   * An IP match statement with an IP set that specified the address
    #     192.0.2.44.
    #
    #   * A string match statement that searches in the User-Agent header
    #     for the string BadBot.
    #
    #   In this rate-based rule, you also define a rate limit. For this
    #   example, the rate limit is 1,000. Requests that meet both of the
    #   conditions in the statements are counted. If the count exceeds 1,000
    #   requests per five minutes, the rule action triggers. Requests that
    #   do not meet both conditions are not counted towards the rate limit
    #   and are not affected by this rule.
    #
    #   You cannot nest a `RateBasedStatement` inside another statement, for
    #   example inside a `NotStatement` or `OrStatement`. You can define a
    #   `RateBasedStatement` inside a web ACL and inside a rule group.
    #   @return [Types::RateBasedStatement]
    #
    # @!attribute [rw] and_statement
    #   A logical rule statement used to combine other rule statements with
    #   AND logic. You provide more than one Statement within the
    #   `AndStatement`.
    #   @return [Types::AndStatement]
    #
    # @!attribute [rw] or_statement
    #   A logical rule statement used to combine other rule statements with
    #   OR logic. You provide more than one Statement within the
    #   `OrStatement`.
    #   @return [Types::OrStatement]
    #
    # @!attribute [rw] not_statement
    #   A logical rule statement used to negate the results of another rule
    #   statement. You provide one Statement within the `NotStatement`.
    #   @return [Types::NotStatement]
    #
    # @!attribute [rw] managed_rule_group_statement
    #   A rule statement used to run the rules that are defined in a managed
    #   rule group. To use this, provide the vendor name and the name of the
    #   rule group in this statement. You can retrieve the required names by
    #   calling ListAvailableManagedRuleGroups.
    #
    #   You cannot nest a `ManagedRuleGroupStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. It can only be referenced
    #   as a top-level statement within a rule.
    #   @return [Types::ManagedRuleGroupStatement]
    #
    # @!attribute [rw] label_match_statement
    #   A rule statement that defines a string match search against labels
    #   that have been added to the web request by rules that have already
    #   run in the web ACL.
    #
    #   The label match statement provides the label or namespace string to
    #   search for. The label string can represent a part or all of the
    #   fully qualified label name that had been added to the web request.
    #   Fully qualified labels have a prefix, optional namespaces, and label
    #   name. The prefix identifies the rule group or web ACL context of the
    #   rule that added the label. If you do not provide the fully qualified
    #   name in your label match string, WAF performs the search for labels
    #   that were added in the same context as the label match statement.
    #   @return [Types::LabelMatchStatement]
    #
    # @!attribute [rw] regex_match_statement
    #   A rule statement used to search web request components for a match
    #   against a single regular expression.
    #   @return [Types::RegexMatchStatement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Statement AWS API Documentation
    #
    class Statement < Struct.new(
      :byte_match_statement,
      :sqli_match_statement,
      :xss_match_statement,
      :size_constraint_statement,
      :geo_match_statement,
      :rule_group_reference_statement,
      :ip_set_reference_statement,
      :regex_pattern_set_reference_statement,
      :rate_based_statement,
      :and_statement,
      :or_statement,
      :not_statement,
      :managed_rule_group_statement,
      :label_match_statement,
      :regex_match_statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag associated with an Amazon Web Services resource. Tags are
    # key:value pairs that you can use to categorize and manage your
    # resources, for purposes like billing or other management. Typically,
    # the tag key represents a category, such as "environment", and the
    # tag value represents a specific value within that category, such as
    # "test," "development," or "production". Or you might set the tag
    # key to "customer" and the value to the customer name or ID. You can
    # specify one or more tags to add to each Amazon Web Services resource,
    # up to 50 tags for a resource.
    #
    # You can tag the Amazon Web Services resources that you manage through
    # WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You
    # can't manage or view tags through the WAF console.
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
    #   Part of the key:value pair that defines a tag. You can use a tag key
    #   to describe a category of information, such as "customer." Tag
    #   keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Part of the key:value pair that defines a tag. You can use a tag
    #   value to describe a specific value within a category, such as
    #   "companyA" or "companyB." Tag values are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of tagging definitions for an Amazon Web Services
    # resource. Tags are key:value pairs that you can use to categorize and
    # manage your resources, for purposes like billing or other management.
    # Typically, the tag key represents a category, such as "environment",
    # and the tag value represents a specific value within that category,
    # such as "test," "development," or "production". Or you might set
    # the tag key to "customer" and the value to the customer name or ID.
    # You can specify one or more tags to add to each Amazon Web Services
    # resource, up to 50 tags for a resource.
    #
    # You can tag the Amazon Web Services resources that you manage through
    # WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You
    # can't manage or view tags through the WAF console.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The array of Tag objects defined for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/TagInfoForResource AWS API Documentation
    #
    class TagInfoForResource < Struct.new(
      :resource_arn,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Text transformations eliminate some of the unusual formatting that
    # attackers use in web requests in an effort to bypass detection.
    #
    # @note When making an API call, you may pass TextTransformation
    #   data as a hash:
    #
    #       {
    #         priority: 1, # required
    #         type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #       }
    #
    # @!attribute [rw] priority
    #   Sets the relative processing order for multiple transformations that
    #   are defined for a rule statement. WAF processes all transformations,
    #   from lowest priority to highest, before inspecting the transformed
    #   content. The priorities don't need to be consecutive, but they must
    #   all be different.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   You can specify the following transformation types:
    #
    #   **BASE64\_DECODE** - Decode a `Base64`-encoded string.
    #
    #   **BASE64\_DECODE\_EXT** - Decode a `Base64`-encoded string, but use
    #   a forgiving implementation that ignores characters that aren't
    #   valid.
    #
    #   **CMD\_LINE** - Command-line transformations. These are helpful in
    #   reducing effectiveness of attackers who inject an operating system
    #   command-line command and use unusual formatting to disguise some or
    #   all of the command.
    #
    #   * Delete the following characters: `\ " ' ^`
    #
    #   * Delete spaces before the following characters: `/ (`
    #
    #   * Replace the following characters with a space: `, ;`
    #
    #   * Replace multiple spaces with one space
    #
    #   * Convert uppercase letters (A-Z) to lowercase (a-z)
    #
    #   **COMPRESS\_WHITE\_SPACE** - Replace these characters with a space
    #   character (decimal 32):
    #
    #   * `\f`, formfeed, decimal 12
    #
    #   * `\t`, tab, decimal 9
    #
    #   * `\n`, newline, decimal 10
    #
    #   * `\r`, carriage return, decimal 13
    #
    #   * `\v`, vertical tab, decimal 11
    #
    #   * Non-breaking space, decimal 160
    #
    #   `COMPRESS_WHITE_SPACE` also replaces multiple spaces with one space.
    #
    #   **CSS\_DECODE** - Decode characters that were encoded using CSS 2.x
    #   escape rules `syndata.html#characters`. This function uses up to two
    #   bytes in the decoding process, so it can help to uncover ASCII
    #   characters that were encoded using CSS encoding that wouldn’t
    #   typically be encoded. It's also useful in countering evasion, which
    #   is a combination of a backslash and non-hexadecimal characters. For
    #   example, `ja\vascript` for javascript.
    #
    #   **ESCAPE\_SEQ\_DECODE** - Decode the following ANSI C escape
    #   sequences: `\a`, `\b`, `\f`, `\n`, `\r`, `\t`, `\v`, `\`, `\?`,
    #   `'`, `"`, `\xHH` (hexadecimal), `\0OOO` (octal). Encodings that
    #   aren't valid remain in the output.
    #
    #   **HEX\_DECODE** - Decode a string of hexadecimal characters into a
    #   binary.
    #
    #   **HTML\_ENTITY\_DECODE** - Replace HTML-encoded characters with
    #   unencoded characters. `HTML_ENTITY_DECODE` performs these
    #   operations:
    #
    #   * Replaces `(ampersand)quot;` with `"`
    #
    #   * Replaces `(ampersand)nbsp;` with a non-breaking space, decimal 160
    #
    #   * Replaces `(ampersand)lt;` with a "less than" symbol
    #
    #   * Replaces `(ampersand)gt;` with `>`
    #
    #   * Replaces characters that are represented in hexadecimal format,
    #     `(ampersand)#xhhhh;`, with the corresponding characters
    #
    #   * Replaces characters that are represented in decimal format,
    #     `(ampersand)#nnnn;`, with the corresponding characters
    #
    #   **JS\_DECODE** - Decode JavaScript escape sequences. If a `` `u`
    #   `HHHH` code is in the full-width ASCII code range of `FF01-FF5E`,
    #   then the higher byte is used to detect and adjust the lower byte. If
    #   not, only the lower byte is used and the higher byte is zeroed,
    #   causing a possible loss of information.
    #
    #   **LOWERCASE** - Convert uppercase letters (A-Z) to lowercase (a-z).
    #
    #   **MD5** - Calculate an MD5 hash from the data in the input. The
    #   computed hash is in a raw binary form.
    #
    #   **NONE** - Specify `NONE` if you don't want any text
    #   transformations.
    #
    #   **NORMALIZE\_PATH** - Remove multiple slashes, directory
    #   self-references, and directory back-references that are not at the
    #   beginning of the input from an input string.
    #
    #   **NORMALIZE\_PATH\_WIN** - This is the same as `NORMALIZE_PATH`, but
    #   first converts backslash characters to forward slashes.
    #
    #   **REMOVE\_NULLS** - Remove all `NULL` bytes from the input.
    #
    #   **REPLACE\_COMMENTS** - Replace each occurrence of a C-style comment
    #   (`/* ... */`) with a single space. Multiple consecutive occurrences
    #   are not compressed. Unterminated comments are also replaced with a
    #   space (ASCII 0x20). However, a standalone termination of a comment
    #   (`*/`) is not acted upon.
    #
    #   **REPLACE\_NULLS** - Replace NULL bytes in the input with space
    #   characters (ASCII `0x20`).
    #
    #   **SQL\_HEX\_DECODE** - Decode SQL hex data. Example (`0x414243`)
    #   will be decoded to (`ABC`).
    #
    #   **URL\_DECODE** - Decode a URL-encoded value.
    #
    #   **URL\_DECODE\_UNI** - Like `URL_DECODE`, but with support for
    #   Microsoft-specific `%u` encoding. If the code is in the full-width
    #   ASCII code range of `FF01-FF5E`, the higher byte is used to detect
    #   and adjust the lower byte. Otherwise, only the lower byte is used
    #   and the higher byte is zeroed.
    #
    #   **UTF8\_TO\_UNICODE** - Convert all UTF-8 character sequences to
    #   Unicode. This helps input normalization, and minimizing
    #   false-positives and false-negatives for non-English languages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/TextTransformation AWS API Documentation
    #
    class TextTransformation < Struct.new(
      :priority,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # In a GetSampledRequests request, the `StartTime` and `EndTime` objects
    # specify the time range for which you want WAF to return a sample of
    # web requests.
    #
    # You must specify the times in Coordinated Universal Time (UTC) format.
    # UTC format includes the special designator, `Z`. For example,
    # `"2016-09-27T14:50Z"`. You can specify any time range in the previous
    # three hours.
    #
    # In a GetSampledRequests response, the `StartTime` and `EndTime`
    # objects specify the time range for which WAF actually returned a
    # sample of web requests. WAF gets the specified number of requests from
    # among the first 5,000 requests that your Amazon Web Services resource
    # receives during the specified time period. If your resource receives
    # more than 5,000 requests during that period, WAF stops sampling after
    # the 5,000th request. In that case, `EndTime` is the time that WAF
    # received the 5,000th request.
    #
    # @note When making an API call, you may pass TimeWindow
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] start_time
    #   The beginning of the time range from which you want
    #   `GetSampledRequests` to return a sample of the requests that your
    #   Amazon Web Services resource received. You must specify the times in
    #   Coordinated Universal Time (UTC) format. UTC format includes the
    #   special designator, `Z`. For example, `"2016-09-27T14:50Z"`. You can
    #   specify any time range in the previous three hours.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time range from which you want `GetSampledRequests`
    #   to return a sample of the requests that your Amazon Web Services
    #   resource received. You must specify the times in Coordinated
    #   Universal Time (UTC) format. UTC format includes the special
    #   designator, `Z`. For example, `"2016-09-27T14:50Z"`. You can specify
    #   any time range in the previous three hours.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/TimeWindow AWS API Documentation
    #
    class TimeWindow < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   An array of keys identifying the tags to disassociate from the
    #   resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         description: "EntityDescription",
    #         addresses: ["IPAddress"], # required
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the IP set. You cannot change the name of an `IPSet`
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the IP set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   Contains an array of strings that specifies zero or more IP
    #   addresses or blocks of IP addresses in Classless Inter-Domain
    #   Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges
    #   except for /0.
    #
    #   Example address strings:
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure WAF to allow, block, or count requests that
    #     originated from IP addresses
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #   Example JSON `Addresses` specifications:
    #
    #   * Empty array: `"Addresses": []`
    #
    #   * Array with one address: `"Addresses": ["192.0.2.44/32"]`
    #
    #   * Array with three addresses: `"Addresses": ["192.0.2.44/32",
    #     "192.0.2.0/24", "192.0.0.0/16"]`
    #
    #   * INVALID specification: `"Addresses": [""]` INVALID
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [Array<String>]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateIPSetRequest AWS API Documentation
    #
    class UpdateIPSetRequest < Struct.new(
      :name,
      :scope,
      :id,
      :description,
      :addresses,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. WAF returns this token to your
    #   `update` requests. You use `NextLockToken` in the same manner as you
    #   use `LockToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateIPSetResponse AWS API Documentation
    #
    class UpdateIPSetResponse < Struct.new(
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateManagedRuleSetVersionExpiryDateRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         lock_token: "LockToken", # required
    #         version_to_expire: "VersionKeyString", # required
    #         expiry_timestamp: Time.now, # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] version_to_expire
    #   The version that you want to remove from your list of offerings for
    #   the named managed rule group.
    #   @return [String]
    #
    # @!attribute [rw] expiry_timestamp
    #   The time that you want the version to expire.
    #
    #   Times are in Coordinated Universal Time (UTC) format. UTC format
    #   includes the special designator, Z. For example,
    #   "2016-09-27T14:50Z".
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateManagedRuleSetVersionExpiryDateRequest AWS API Documentation
    #
    class UpdateManagedRuleSetVersionExpiryDateRequest < Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      :version_to_expire,
      :expiry_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] expiring_version
    #   The version that is set to expire.
    #   @return [String]
    #
    # @!attribute [rw] expiry_timestamp
    #   The time that the version will expire.
    #
    #   Times are in Coordinated Universal Time (UTC) format. UTC format
    #   includes the special designator, Z. For example,
    #   "2016-09-27T14:50Z".
    #   @return [Time]
    #
    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateManagedRuleSetVersionExpiryDateResponse AWS API Documentation
    #
    class UpdateManagedRuleSetVersionExpiryDateResponse < Struct.new(
      :expiring_version,
      :expiry_timestamp,
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         description: "EntityDescription",
    #         regular_expression_list: [ # required
    #           {
    #             regex_string: "RegexPatternString",
    #           },
    #         ],
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the set. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the set that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] regular_expression_list
    #   @return [Array<Types::Regex>]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateRegexPatternSetRequest AWS API Documentation
    #
    class UpdateRegexPatternSetRequest < Struct.new(
      :name,
      :scope,
      :id,
      :description,
      :regular_expression_list,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. WAF returns this token to your
    #   `update` requests. You use `NextLockToken` in the same manner as you
    #   use `LockToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateRegexPatternSetResponse AWS API Documentation
    #
    class UpdateRegexPatternSetResponse < Struct.new(
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         description: "EntityDescription",
    #         rules: [
    #           {
    #             name: "EntityName", # required
    #             priority: 1, # required
    #             statement: { # required
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               or_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #                 custom_response: {
    #                   response_code: 1, # required
    #                   custom_response_body_key: "EntityName",
    #                   response_headers: [
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               allow: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               captcha: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             override_action: {
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               none: {
    #               },
    #             },
    #             rule_labels: [
    #               {
    #                 name: "LabelName", # required
    #               },
    #             ],
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #             captcha_config: {
    #               immunity_time_property: {
    #                 immunity_time: 1, # required
    #               },
    #             },
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         lock_token: "LockToken", # required
    #         custom_response_bodies: {
    #           "EntityName" => {
    #             content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #             content: "ResponseContent", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the rule group, and then use them in
    #   the rules that you define in the rule group.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][3] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   @return [Hash<String,Types::CustomResponseBody>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateRuleGroupRequest AWS API Documentation
    #
    class UpdateRuleGroupRequest < Struct.new(
      :name,
      :scope,
      :id,
      :description,
      :rules,
      :visibility_config,
      :lock_token,
      :custom_response_bodies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. WAF returns this token to your
    #   `update` requests. You use `NextLockToken` in the same manner as you
    #   use `LockToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateRuleGroupResponse AWS API Documentation
    #
    class UpdateRuleGroupResponse < Struct.new(
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateWebACLRequest
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #         default_action: { # required
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         description: "EntityDescription",
    #         rules: [
    #           {
    #             name: "EntityName", # required
    #             priority: 1, # required
    #             statement: { # required
    #               byte_match_statement: {
    #                 search_string: "data", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #                 positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #               },
    #               sqli_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               xss_match_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               size_constraint_statement: {
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               geo_match_statement: {
    #                 country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               rule_group_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #               ip_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 ip_set_forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                   position: "FIRST", # required, accepts FIRST, LAST, ANY
    #                 },
    #               },
    #               regex_pattern_set_reference_statement: {
    #                 arn: "ResourceArn", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #               rate_based_statement: {
    #                 limit: 1, # required
    #                 aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 forwarded_ip_config: {
    #                   header_name: "ForwardedIPHeaderName", # required
    #                   fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #                 },
    #               },
    #               and_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               or_statement: {
    #                 statements: [ # required
    #                   {
    #                     # recursive Statement
    #                   },
    #                 ],
    #               },
    #               not_statement: {
    #                 statement: { # required
    #                   # recursive Statement
    #                 },
    #               },
    #               managed_rule_group_statement: {
    #                 vendor_name: "VendorName", # required
    #                 name: "EntityName", # required
    #                 version: "VersionKeyString",
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #                 scope_down_statement: {
    #                   # recursive Statement
    #                 },
    #                 managed_rule_group_configs: [
    #                   {
    #                     login_path: "LoginPathString",
    #                     payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #               label_match_statement: {
    #                 scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #                 key: "LabelMatchKey", # required
    #               },
    #               regex_match_statement: {
    #                 regex_string: "RegexPatternString", # required
    #                 field_to_match: { # required
    #                   single_header: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   single_query_argument: {
    #                     name: "FieldToMatchData", # required
    #                   },
    #                   all_query_arguments: {
    #                   },
    #                   uri_path: {
    #                   },
    #                   query_string: {
    #                   },
    #                   body: {
    #                   },
    #                   method: {
    #                   },
    #                   json_body: {
    #                     match_pattern: { # required
    #                       all: {
    #                       },
    #                       included_paths: ["JsonPointerPath"],
    #                     },
    #                     match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                     invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                   },
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #                 custom_response: {
    #                   response_code: 1, # required
    #                   custom_response_body_key: "EntityName",
    #                   response_headers: [
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               allow: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               captcha: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             override_action: {
    #               count: {
    #                 custom_request_handling: {
    #                   insert_headers: [ # required
    #                     {
    #                       name: "CustomHTTPHeaderName", # required
    #                       value: "CustomHTTPHeaderValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               none: {
    #               },
    #             },
    #             rule_labels: [
    #               {
    #                 name: "LabelName", # required
    #               },
    #             ],
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #             captcha_config: {
    #               immunity_time_property: {
    #                 immunity_time: 1, # required
    #               },
    #             },
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         lock_token: "LockToken", # required
    #         custom_response_bodies: {
    #           "EntityName" => {
    #             content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #             content: "ResponseContent", # required
    #           },
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an Amazon CloudFront distribution or
    #   for a regional application. A regional application can be an
    #   Application Load Balancer (ALB), an Amazon API Gateway REST API, or
    #   an AppSync GraphQL API.
    #
    #   To work with CloudFront, you must also specify the Region US East
    #   (N. Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the `Rules` contained in the
    #   `WebACL` match.
    #   @return [Types::DefaultAction]
    #
    # @!attribute [rw] description
    #   A description of the web ACL that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the web ACL, and then use them in the
    #   rules and default actions that you define in the web ACL.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][3] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   @return [Hash<String,Types::CustomResponseBody>]
    #
    # @!attribute [rw] captcha_config
    #   Specifies how WAF should handle `CAPTCHA` evaluations for rules that
    #   don't have their own `CaptchaConfig` settings. If you don't
    #   specify this, WAF uses its default settings for `CaptchaConfig`.
    #   @return [Types::CaptchaConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateWebACLRequest AWS API Documentation
    #
    class UpdateWebACLRequest < Struct.new(
      :name,
      :scope,
      :id,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :lock_token,
      :custom_response_bodies,
      :captcha_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. WAF returns this token to your
    #   `update` requests. You use `NextLockToken` in the same manner as you
    #   use `LockToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateWebACLResponse AWS API Documentation
    #
    class UpdateWebACLResponse < Struct.new(
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The path component of the URI of a web request. This is the part of a
    # web request that identifies a resource. For example,
    # `/images/daily-ad.jpg`.
    #
    # This is used only to indicate the web request component for WAF to
    # inspect, in the FieldToMatch specification.
    #
    # JSON specification: `"UriPath": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UriPath AWS API Documentation
    #
    class UriPath < Aws::EmptyStructure; end

    # Details about your login page username field, used in a
    # `ManagedRuleGroupConfig`.
    #
    # @note When making an API call, you may pass UsernameField
    #   data as a hash:
    #
    #       {
    #         identifier: "FieldIdentifier", # required
    #       }
    #
    # @!attribute [rw] identifier
    #   The name of the username field. For example `/form/username`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UsernameField AWS API Documentation
    #
    class UsernameField < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of the named managed rule group, that the rule group's
    # vendor publishes for use by customers.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @note When making an API call, you may pass VersionToPublish
    #   data as a hash:
    #
    #       {
    #         associated_rule_group_arn: "ResourceArn",
    #         forecasted_lifetime: 1,
    #       }
    #
    # @!attribute [rw] associated_rule_group_arn
    #   The Amazon Resource Name (ARN) of the vendor's rule group that's
    #   used in the published managed rule group version.
    #   @return [String]
    #
    # @!attribute [rw] forecasted_lifetime
    #   The amount of time the vendor expects this version of the managed
    #   rule group to last, in days.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/VersionToPublish AWS API Documentation
    #
    class VersionToPublish < Struct.new(
      :associated_rule_group_arn,
      :forecasted_lifetime)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines and enables Amazon CloudWatch metrics and web request sample
    # collection.
    #
    # @note When making an API call, you may pass VisibilityConfig
    #   data as a hash:
    #
    #       {
    #         sampled_requests_enabled: false, # required
    #         cloud_watch_metrics_enabled: false, # required
    #         metric_name: "MetricName", # required
    #       }
    #
    # @!attribute [rw] sampled_requests_enabled
    #   A boolean indicating whether WAF should store a sampling of the web
    #   requests that match the rules. You can view the sampled requests
    #   through the WAF console.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   A boolean indicating whether the associated resource sends metrics
    #   to Amazon CloudWatch. For the list of available metrics, see [WAF
    #   Metrics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics
    #   @return [Boolean]
    #
    # @!attribute [rw] metric_name
    #   A name of the Amazon CloudWatch metric. The name can contain only
    #   the characters: A-Z, a-z, 0-9, - (hyphen), and \_ (underscore). The
    #   name can be from one to 128 characters long. It can't contain
    #   whitespace or metric names reserved for WAF, for example "All" and
    #   "Default\_Action."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/VisibilityConfig AWS API Documentation
    #
    class VisibilityConfig < Struct.new(
      :sampled_requests_enabled,
      :cloud_watch_metrics_enabled,
      :metric_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t perform the operation because your resource is being used
    # by another resource or it’s associated with another resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFAssociatedItemException AWS API Documentation
    #
    class WAFAssociatedItemException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t perform the operation because the resource that you tried
    # to save is a duplicate of an existing one.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFDuplicateItemException AWS API Documentation
    #
    class WAFDuplicateItemException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified version for the managed
    # rule group has expired. You can retrieve the available versions for
    # the managed rule group by calling
    # ListAvailableManagedRuleGroupVersions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFExpiredManagedRuleGroupVersionException AWS API Documentation
    #
    class WAFExpiredManagedRuleGroupVersionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request is valid, but WAF couldn’t perform the operation because
    # of a system problem. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFInternalErrorException AWS API Documentation
    #
    class WAFInternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFInvalidOperationException AWS API Documentation
    #
    class WAFInvalidOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because WAF didn't recognize a parameter in the
    # request. For example:
    #
    # * You specified a parameter name or value that isn't valid.
    #
    # * Your nested statement isn't valid. You might have tried to nest a
    #   statement that can’t be nested.
    #
    # * You tried to update a `WebACL` with a `DefaultAction` that isn't
    #   among the types available at DefaultAction.
    #
    # * Your request references an ARN that is malformed, or corresponds to
    #   a resource with which a web ACL can't be associated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The settings where the invalid parameter was found.
    #   @return [String]
    #
    # @!attribute [rw] parameter
    #   The invalid parameter that resulted in the exception.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Additional information about the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFInvalidParameterException AWS API Documentation
    #
    class WAFInvalidParameterException < Struct.new(
      :message,
      :field,
      :parameter,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified policy isn't in the proper
    # format.
    #
    # The policy specifications must conform to the following:
    #
    # * The policy must be composed using IAM Policy version 2012-10-17 or
    #   version 2015-01-01.
    #
    # * The policy must include specifications for `Effect`, `Action`, and
    #   `Principal`.
    #
    # * `Effect` must specify `Allow`.
    #
    # * `Action` must specify `wafv2:CreateWebACL`, `wafv2:UpdateWebACL`,
    #   and `wafv2:PutFirewallManagerRuleGroups`. WAF rejects any extra
    #   actions or wildcard actions in the policy.
    #
    # * The policy must not include a `Resource` parameter.
    #
    # For more information, see [IAM Policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFInvalidPermissionPolicyException AWS API Documentation
    #
    class WAFInvalidPermissionPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t perform the operation because the resource that you
    # requested isn’t valid. Check the resource, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFInvalidResourceException AWS API Documentation
    #
    class WAFInvalidResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t perform the operation because you exceeded your resource
    # limit. For example, the maximum number of `WebACL` objects that you
    # can create for an Amazon Web Services account. For more information,
    # see [WAF quotas][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFLimitsExceededException AWS API Documentation
    #
    class WAFLimitsExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because you don't have the permissions that your
    # logging configuration requires. For information, see [Logging web ACL
    # traffic information][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/logging.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFLogDestinationPermissionIssueException AWS API Documentation
    #
    class WAFLogDestinationPermissionIssueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t perform the operation because your resource doesn’t
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFNonexistentItemException AWS API Documentation
    #
    class WAFNonexistentItemException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t save your changes because you tried to update or delete a
    # resource that has changed since you last retrieved it. Get the
    # resource again, make any changes you need to make to the new copy, and
    # retry your operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFOptimisticLockException AWS API Documentation
    #
    class WAFOptimisticLockException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF is not able to access the service linked role. This can be caused
    # by a previous `PutLoggingConfiguration` request, which can lock the
    # service linked role for about 20 seconds. Please try your request
    # again. The service linked role can also be locked by a previous
    # `DeleteServiceLinkedRole` request, which can lock the role for 15
    # minutes or more. If you recently made a call to
    # `DeleteServiceLinkedRole`, wait at least 15 minutes and try the
    # request again. If you receive this same exception again, you will have
    # to wait additional time until the role is unlocked.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFServiceLinkedRoleErrorException AWS API Documentation
    #
    class WAFServiceLinkedRoleErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You tried to use a managed rule group that's available by
    # subscription, but you aren't subscribed to it yet.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFSubscriptionNotFoundException AWS API Documentation
    #
    class WAFSubscriptionNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred during the tagging operation. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFTagOperationException AWS API Documentation
    #
    class WAFTagOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t perform your tagging operation because of an internal
    # error. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFTagOperationInternalErrorException AWS API Documentation
    #
    class WAFTagOperationInternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WAF couldn’t retrieve the resource that you requested. Retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WAFUnavailableEntityException AWS API Documentation
    #
    class WAFUnavailableEntityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A web ACL defines a collection of rules to use to inspect and control
    # web requests. Each rule has an action defined (allow, block, or count)
    # for requests that match the statement of the rule. In the web ACL, you
    # assign a default action to take (allow, block) for any request that
    # does not match any of the rules. The rules in a web ACL can be a
    # combination of the types Rule, RuleGroup, and managed rule group. You
    # can associate a web ACL with one or more Amazon Web Services resources
    # to protect. The resources can be an Amazon CloudFront distribution, an
    # Amazon API Gateway REST API, an Application Load Balancer, or an
    # AppSync GraphQL API.
    #
    # @!attribute [rw] name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the `WebACL`. This ID is returned in the
    #   responses to create and list commands. You use this ID to do things
    #   like get, update, and delete a `WebACL`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with the resource.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the `Rules` contained in the
    #   `WebACL` match.
    #   @return [Types::DefaultAction]
    #
    # @!attribute [rw] description
    #   A description of the web ACL that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that WAF uses to identify matching web requests, and
    #   parameters that govern how WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) currently being used by this web
    #   ACL.
    #
    #   WAF uses WCUs to calculate and control the operating resources that
    #   are used to run your rules, rule groups, and web ACLs. WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan
    #   their web ACL WCU usage when they use a rule group. The WCU limit
    #   for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] pre_process_firewall_manager_rule_groups
    #   The first set of rules for WAF to process in the web ACL. This is
    #   defined in an Firewall Manager WAF policy and contains only rule
    #   group references. You can't alter these. Any rules and rule groups
    #   that you define for the web ACL are prioritized after these.
    #
    #   In the Firewall Manager WAF policy, the Firewall Manager
    #   administrator can define a set of rule groups to run first in the
    #   web ACL and a set of rule groups to run last. Within each set, the
    #   administrator prioritizes the rule groups, to determine their
    #   relative processing order.
    #   @return [Array<Types::FirewallManagerRuleGroup>]
    #
    # @!attribute [rw] post_process_firewall_manager_rule_groups
    #   The last set of rules for WAF to process in the web ACL. This is
    #   defined in an Firewall Manager WAF policy and contains only rule
    #   group references. You can't alter these. Any rules and rule groups
    #   that you define for the web ACL are prioritized before these.
    #
    #   In the Firewall Manager WAF policy, the Firewall Manager
    #   administrator can define a set of rule groups to run first in the
    #   web ACL and a set of rule groups to run last. Within each set, the
    #   administrator prioritizes the rule groups, to determine their
    #   relative processing order.
    #   @return [Array<Types::FirewallManagerRuleGroup>]
    #
    # @!attribute [rw] managed_by_firewall_manager
    #   Indicates whether this web ACL is managed by Firewall Manager. If
    #   true, then only Firewall Manager can delete the web ACL or any
    #   Firewall Manager rule groups in the web ACL.
    #   @return [Boolean]
    #
    # @!attribute [rw] label_namespace
    #   The label namespace prefix for this web ACL. All labels added by
    #   rules in this web ACL have this prefix.
    #
    #   * The syntax for the label namespace prefix for a web ACL is the
    #     following:
    #
    #     `awswaf:<account ID>:webacl:<web ACL name>:`
    #
    #   * When a rule with a label matches a web request, WAF adds the fully
    #     qualified label to the request. A fully qualified label is made up
    #     of the label namespace from the rule group or web ACL where the
    #     rule is defined and the label from the rule, separated by a colon:
    #
    #     `<label namespace>:<label from rule>`
    #   @return [String]
    #
    # @!attribute [rw] custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the web ACL, and then use them in the
    #   rules and default actions that you define in the web ACL.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the [WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom
    #   request and response settings, see [WAF quotas][3] in the [WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #   @return [Hash<String,Types::CustomResponseBody>]
    #
    # @!attribute [rw] captcha_config
    #   Specifies how WAF should handle `CAPTCHA` evaluations for rules that
    #   don't have their own `CaptchaConfig` settings. If you don't
    #   specify this, WAF uses its default settings for `CaptchaConfig`.
    #   @return [Types::CaptchaConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WebACL AWS API Documentation
    #
    class WebACL < Struct.new(
      :name,
      :id,
      :arn,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :capacity,
      :pre_process_firewall_manager_rule_groups,
      :post_process_firewall_manager_rule_groups,
      :managed_by_firewall_manager,
      :label_namespace,
      :custom_response_bodies,
      :captcha_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a WebACL, returned by operations like
    # create and list. This provides information like the ID, that you can
    # use to retrieve and manage a `WebACL`, and the ARN, that you provide
    # to operations like AssociateWebACL.
    #
    # @!attribute [rw] name
    #   The name of the web ACL. You cannot change the name of a web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the web ACL that helps with identification.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. WAF returns a token to your
    #   `get` and `list` requests, to mark the state of the entity at the
    #   time of the request. To make changes to the entity associated with
    #   the token, you provide the token to operations like `update` and
    #   `delete`. WAF uses the token to ensure that no changes have been
    #   made to the entity since you last retrieved it. If a change has been
    #   made, the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another `get`, and use the new token returned by
    #   that operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/WebACLSummary AWS API Documentation
    #
    class WebACLSummary < Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule statement that defines a cross-site scripting (XSS) match
    # search for WAF to apply to web requests. XSS attacks are those where
    # the attacker uses vulnerabilities in a benign website as a vehicle to
    # inject malicious client-site scripts into other legitimate web
    # browsers. The XSS match statement provides the location in requests
    # that you want WAF to search and text transformations to use on the
    # search area before WAF searches for character sequences that are
    # likely to be malicious strings.
    #
    # @note When making an API call, you may pass XssMatchStatement
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #           },
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/XssMatchStatement AWS API Documentation
    #
    class XssMatchStatement < Struct.new(
      :field_to_match,
      :text_transformations)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
