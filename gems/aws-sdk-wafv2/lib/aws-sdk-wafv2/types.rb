# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WAFV2
  module Types

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # All query arguments of a web request.
    #
    # This is used only to indicate the web request component for AWS WAF to
    # inspect, in the FieldToMatch specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AllQueryArguments AWS API Documentation
    #
    class AllQueryArguments < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Specifies that AWS WAF should allow requests.
    #
    # This is used only in the context of other settings, for example to
    # specify values for RuleAction and web ACL DefaultAction.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AllowAction AWS API Documentation
    #
    class AllowAction < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A logical rule statement used to combine other rule statements with
    # AND logic. You provide more than one Statement within the
    # `AndStatement`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
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
    #   The Amazon Resource Name (ARN) of the Web ACL that you want to
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
    #   * For an API Gateway REST API:
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Specifies that AWS WAF should block requests.
    #
    # This is used only in the context of other settings, for example to
    # specify values for RuleAction and web ACL DefaultAction.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/BlockAction AWS API Documentation
    #
    class BlockAction < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The body of a web request. This immediately follows the request
    # headers.
    #
    # This is used only to indicate the web request component for AWS WAF to
    # inspect, in the FieldToMatch specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Body AWS API Documentation
    #
    class Body < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement that defines a string match search for AWS WAF to
    # apply to web requests. The byte match statement provides the bytes to
    # search for, the location in requests that you want AWS WAF to search,
    # and other settings. The bytes to search for are typically a string
    # that corresponds with ASCII characters. In the AWS WAF console and the
    # developer guide, this is refered to as a string match statement.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           },
    #         ],
    #         positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #       }
    #
    # @!attribute [rw] search_string
    #   A string value that you want AWS WAF to search for. AWS WAF searches
    #   only in the part of web requests that you designate for inspection
    #   in FieldToMatch. The maximum length of the value is 50 bytes.
    #
    #   Valid values depend on the component that you specify for inspection
    #   in `FieldToMatch`\:
    #
    #   * `Method`\: The HTTP method that you want AWS WAF to search for.
    #     This indicates the type of operation specified in the request.
    #
    #   * `UriPath`\: The value that you want AWS WAF to search for in the
    #     URI path, for example, `/images/daily-ad.jpg`.
    #
    #   If `SearchString` includes alphabetic characters A-Z and a-z, note
    #   that the value is case sensitive.
    #
    #   **If you're using the AWS WAF API**
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
    #   **If you're using the AWS CLI or one of the AWS SDKs**
    #
    #   The value that you want AWS WAF to search for. The SDK automatically
    #   base64 encodes the value.
    #   @return [String]
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want AWS WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, AWS WAF
    #   performs all transformations on the content of the request component
    #   identified by `FieldToMatch`, starting from the lowest priority
    #   setting, before inspecting the content for a match.
    #   @return [Array<Types::TextTransformation>]
    #
    # @!attribute [rw] positional_constraint
    #   The area within the portion of a web request that you want AWS WAF
    #   to search for `SearchString`. Valid values include the following:
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #               },
    #               allow: {
    #               },
    #               count: {
    #               },
    #             },
    #             override_action: {
    #               count: {
    #               },
    #               none: {
    #               },
    #             },
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Specifies that AWS WAF should count requests.
    #
    # This is used only in the context of other settings, for example to
    # specify values for RuleAction and web ACL DefaultAction.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CountAction AWS API Documentation
    #
    class CountAction < Aws::EmptyStructure; end

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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the IP set that helps with identification. You
    #   cannot change the description of an IP set after you create it.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_version
    #   Specify IPV4 or IPV6.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   Contains an array of strings that specify one or more IP addresses
    #   or blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
    #   notation. AWS WAF supports all address ranges for IP versions IPv4
    #   and IPv6.
    #
    #   Examples:
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the set that helps with identification. You cannot
    #   change the description of a set after you create it.
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #               },
    #               allow: {
    #               },
    #               count: {
    #               },
    #             },
    #             override_action: {
    #               count: {
    #               },
    #               none: {
    #               },
    #             },
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
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
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   group, AWS WAF enforces this limit. You can check the capacity for a
    #   set of rules using CheckCapacity.
    #
    #   AWS WAF uses WCUs to calculate and control the operating resources
    #   that are used to run your rules, rule groups, and web ACLs. AWS WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan
    #   their web ACL WCU usage when they use a rule group. The WCU limit
    #   for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the rule group that helps with identification. You
    #   cannot change the description of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that AWS WAF uses to identify matching web requests, and
    #   parameters that govern how AWS WAF handles them.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRuleGroupRequest AWS API Documentation
    #
    class CreateRuleGroupRequest < Struct.new(
      :name,
      :scope,
      :capacity,
      :description,
      :rules,
      :visibility_config,
      :tags)
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
    #           },
    #           allow: {
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #               },
    #               allow: {
    #               },
    #               count: {
    #               },
    #             },
    #             override_action: {
    #               count: {
    #               },
    #               none: {
    #               },
    #             },
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
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
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Web ACL. You cannot change the name of a Web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the Web ACL that helps with identification. You
    #   cannot change the description of a Web ACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that AWS WAF uses to identify matching web requests, and
    #   parameters that govern how AWS WAF handles them.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateWebACLRequest AWS API Documentation
    #
    class CreateWebACLRequest < Struct.new(
      :name,
      :scope,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :tags)
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # In a WebACL, this is the action that you want AWS WAF to perform when
    # a web request doesn't match any of the rules in the `WebACL`. The
    # default action must be a terminating action, so count is not allowed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass DefaultAction
    #   data as a hash:
    #
    #       {
    #         block: {
    #         },
    #         allow: {
    #         },
    #       }
    #
    # @!attribute [rw] block
    #   Specifies that AWS WAF should block requests by default.
    #   @return [Types::BlockAction]
    #
    # @!attribute [rw] allow
    #   Specifies that AWS WAF should allow requests by default.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   The name of the Web ACL. You cannot change the name of a Web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeManagedRuleGroupRequest AWS API Documentation
    #
    class DescribeManagedRuleGroupRequest < Struct.new(
      :vendor_name,
      :name,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity
    #   The web ACL capacity units (WCUs) required for this rule group. AWS
    #   WAF uses web ACL capacity units (WCU) to calculate and control the
    #   operating resources that are used to run your rules, rule groups,
    #   and web ACLs. AWS WAF calculates capacity differently for each rule
    #   type, to reflect each rule's relative cost. Rule group capacity is
    #   fixed at creation, so users can plan their web ACL WCU usage when
    #   they use a rule group. The WCU limit for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] rules
    #   @return [Array<Types::RuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeManagedRuleGroupResponse AWS API Documentation
    #
    class DescribeManagedRuleGroupResponse < Struct.new(
      :capacity,
      :rules)
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
    #   * For an API Gateway REST API:
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Specifies a single rule to exclude from the rule group. Excluding a
    # rule overrides its action setting for the rule group in the web ACL,
    # setting it to `COUNT`. This effectively excludes the rule from acting
    # on web requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass ExcludedRule
    #   data as a hash:
    #
    #       {
    #         name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule to exclude.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ExcludedRule AWS API Documentation
    #
    class ExcludedRule < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The part of a web request that you want AWS WAF to inspect. Include
    # the single `FieldToMatch` type that you want to inspect, with
    # additional specifications as needed, according to the type. You
    # specify a single request component in `FieldToMatch` for each rule
    # statement that requires it. To inspect more than one component of a
    # web request, create a separate rule statement for each component.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #       }
    #
    # @!attribute [rw] single_header
    #   Inspect a single header. Provide the name of the header to inspect,
    #   for example, `User-Agent` or `Referer`. This setting isn't case
    #   sensitive.
    #   @return [Types::SingleHeader]
    #
    # @!attribute [rw] single_query_argument
    #   Inspect a single query argument. Provide the name of the query
    #   argument to inspect, such as *UserName* or *SalesRegion*. The name
    #   can be up to 30 characters long and isn't case sensitive.
    #
    #   This is used only to indicate the web request component for AWS WAF
    #   to inspect, in the FieldToMatch specification.
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
    #   Inspect the request body, which immediately follows the request
    #   headers. This is the part of a request that contains any additional
    #   data that you want to send to your web server as the HTTP request
    #   body, such as data from a form.
    #
    #   Note that only the first 8 KB (8192 bytes) of the request body are
    #   forwarded to AWS WAF for inspection by the underlying host service.
    #   If you don't need to inspect more than 8 KB, you can guarantee that
    #   you don't allow additional bytes in by combining a statement that
    #   inspects the body of the web request, such as ByteMatchStatement or
    #   RegexPatternSetReferenceStatement, with a SizeConstraintStatement
    #   that enforces an 8 KB size limit on the body of the request. AWS WAF
    #   doesn't support inspecting the entire contents of web requests
    #   whose bodies exceed the 8 KB limit.
    #   @return [Types::Body]
    #
    # @!attribute [rw] method
    #   Inspect the HTTP method. The method indicates the type of operation
    #   that the request is asking the origin to perform.
    #   @return [Types::Method]
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
      :method)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule group that's defined for an AWS Firewall Manager WAF policy.
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   If you define more than one rule group in the first or last Firewall
    #   Manager rule groups, AWS WAF evaluates each request against the rule
    #   groups in order, starting from the lowest priority setting. The
    #   priorities don't need to be consecutive, but they must all be
    #   different.
    #   @return [Integer]
    #
    # @!attribute [rw] firewall_manager_statement
    #   The processing guidance for an AWS Firewall Manager rule. This is
    #   like a regular rule Statement, but it can only contain a rule group
    #   reference.
    #   @return [Types::FirewallManagerStatement]
    #
    # @!attribute [rw] override_action
    #   The override action to apply to the rules in a rule group. Used only
    #   for rule statements that reference a rule group, like
    #   `RuleGroupReferenceStatement` and `ManagedRuleGroupStatement`.
    #
    #   Set the override action to none to leave the rule actions in effect.
    #   Set it to count to only count matches, regardless of the rule action
    #   settings.
    #
    #   In a Rule, you must specify either this `OverrideAction` setting or
    #   the rule `Action` setting, but not both:
    #
    #   * If the rule statement references a rule group, use this override
    #     action setting and not the action setting.
    #
    #   * If the rule statement does not reference a rule group, use the
    #     rule action setting and not this rule override action setting.
    #   @return [Types::OverrideAction]
    #
    # @!attribute [rw] visibility_config
    #   <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    #   in November, 2019. For information, including how to migrate your
    #   AWS WAF resources from the prior release, see the [AWS WAF Developer
    #   Guide][1].
    #
    #    </note>
    #
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # The processing guidance for an AWS Firewall Manager rule. This is like
    # a regular rule Statement, but it can only contain a rule group
    # reference.
    #
    # @!attribute [rw] managed_rule_group_statement
    #   <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    #   in November, 2019. For information, including how to migrate your
    #   AWS WAF resources from the prior release, see the [AWS WAF Developer
    #   Guide][1].
    #
    #    </note>
    #
    #   A rule statement used to run the rules that are defined in a managed
    #   rule group. To use this, provide the vendor name and the name of the
    #   rule group in this statement. You can retrieve the required names by
    #   calling ListAvailableManagedRuleGroups.
    #
    #   You can't nest a `ManagedRuleGroupStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. It can only be referenced
    #   as a top-level statement within a rule.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   @return [Types::ManagedRuleGroupStatement]
    #
    # @!attribute [rw] rule_group_reference_statement
    #   <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    #   in November, 2019. For information, including how to migrate your
    #   AWS WAF resources from the prior release, see the [AWS WAF Developer
    #   Guide][1].
    #
    #    </note>
    #
    #   A rule statement used to run the rules that are defined in a
    #   RuleGroup. To use this, create a rule group with your rules, then
    #   provide the ARN of the rule group in this statement.
    #
    #   You cannot nest a `RuleGroupReferenceStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. It can only be referenced
    #   as a top-level statement within a rule.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    # <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    # doesn't apply the rule to the web request at all.
    #
    #  </note>
    #
    # This configuration is used for GeoMatchStatement and
    # RateBasedStatement. For IPSetReferenceStatement, use
    # IPSetForwardedIPConfig instead.
    #
    # AWS WAF only evaluates the first IP address found in the specified
    # HTTP header.
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
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] fallback_behavior
    #   The match status to assign to the web request if the request
    #   doesn't have a valid IP address in the specified position.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
    #
    #    </note>
    #
    #   You can specify the following fallback behaviors:
    #
    #   * MATCH - Treat the web request as matching the rule statement. AWS
    #     WAF applies the rule action to the request.
    #
    #   * NO\_MATCH - Treat the web request as not matching the rule
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement used to identify web requests based on country of
    # origin.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #         rule_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The name of the Web ACL. You cannot change the name of a Web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_id
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rate-based rule to get the keys for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRateBasedStatementManagedKeysRequest AWS API Documentation
    #
    class GetRateBasedStatementManagedKeysRequest < Struct.new(
      :scope,
      :web_acl_name,
      :web_acl_id,
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #         name: "EntityName", # required
    #         scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #         id: "EntityId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRuleGroupRequest AWS API Documentation
    #
    class GetRuleGroupRequest < Struct.new(
      :name,
      :scope,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group
    #   @return [Types::RuleGroup]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   the previous three hours.
    #   @return [Types::TimeWindow]
    #
    # @!attribute [rw] max_items
    #   The number of requests that you want AWS WAF to return from among
    #   the first 5,000 requests that your AWS resource received during the
    #   time range. If your resource received fewer requests than the value
    #   of `MaxItems`, `GetSampledRequests` returns information about all of
    #   them.
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
    #   `MaxItems`, the sample includes every request that your AWS resource
    #   received during the specified time range.
    #   @return [Integer]
    #
    # @!attribute [rw] time_window
    #   Usually, `TimeWindow` is the time range that you specified in the
    #   `GetSampledRequests` request. However, if your AWS resource received
    #   more than 5,000 requests during the time range that you specified in
    #   the request, `GetSampledRequests` returns the time range for the
    #   first 5,000 requests. Times are in Coordinated Universal Time (UTC)
    #   format.
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
    #   The Web ACL that is associated with the resource. If there is no
    #   associated resource, AWS WAF returns a null Web ACL.
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
    #   The name of the Web ACL. You cannot change the name of a Web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The unique identifier for the Web ACL. This ID is returned in the
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
    #   The Web ACL specification. You can modify the settings in this Web
    #   ACL and use it to update this Web ACL or create a new one.
    #   @return [Types::WebACL]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLResponse AWS API Documentation
    #
    class GetWebACLResponse < Struct.new(
      :web_acl,
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Part of the response from GetSampledRequests. This is a complex type
    # that appears as `Headers` in the response syntax. `HTTPHeader`
    # contains the names and values of all of the headers that appear in one
    # of the web requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Part of the response from GetSampledRequests. This is a complex type
    # that appears as `Request` in the response syntax. `HTTPRequest`
    # contains information about one of the web requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Contains one or more IP addresses or blocks of IP addresses specified
    # in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports
    # any CIDR range. For information about CIDR notation, see the Wikipedia
    # entry [Classless Inter-Domain Routing][2].
    #
    # AWS WAF assigns an ARN to each `IPSet` that you create. To use an IP
    # set in a rule, you provide the ARN to the Rule statement
    # IPSetReferenceStatement.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    # [2]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
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
    #   A description of the IP set that helps with identification. You
    #   cannot change the description of an IP set after you create it.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_version
    #   Specify IPV4 or IPV6.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   Contains an array of strings that specify one or more IP addresses
    #   or blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
    #   notation. AWS WAF supports all address ranges for IP versions IPv4
    #   and IPv6.
    #
    #   Examples:
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
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
    # <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    # doesn't apply the rule to the web request at all.
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
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] fallback_behavior
    #   The match status to assign to the web request if the request
    #   doesn't have a valid IP address in the specified position.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
    #
    #    </note>
    #
    #   You can specify the following fallback behaviors:
    #
    #   * MATCH - Treat the web request as matching the rule statement. AWS
    #     WAF applies the rule action to the request.
    #
    #   * NO\_MATCH - Treat the web request as not matching the rule
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
    #     header contains more than 10 IP addresses, AWS WAF inspects the
    #     last 10.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement used to detect web requests coming from particular IP
    # addresses or address ranges. To use this, create an IPSet that
    # specifies the addresses you want to detect, then use the ARN of that
    # set in this statement. To create an IP set, see CreateIPSet.
    #
    # Each IP set rule statement references an IP set. You create and
    # maintain the set independent of your rules. This allows you to use the
    # single set in multiple rules. When you update the referenced set, AWS
    # WAF automatically updates all rules that reference it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # High-level information about an IPSet, returned by operations like
    # create and list. This provides information like the ID, that you can
    # use to retrieve and manage an `IPSet`, and the ARN, that you provide
    # to the IPSetReferenceStatement to use the address set in a Rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   A description of the IP set that helps with identification. You
    #   cannot change the description of an IP set after you create it.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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
    #         scope: "CLOUDFRONT", # accepts CLOUDFRONT, REGIONAL
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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
    #   The Amazon Resource Name (ARN) of the Web ACL.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Used for web ACLs that are scoped for regional applications. A
    #   regional application can be an Application Load Balancer (ALB), an
    #   API Gateway REST API, or an AppSync GraphQL API.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects that you want AWS WAF to return for
    #   this request. If more objects are available, in the response, AWS
    #   WAF provides a `NextMarker` value that you can use in a subsequent
    #   call to get the next batch of objects.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the
    #   prior call in your next request.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Defines an association between Amazon Kinesis Data Firehose
    # destinations and a web ACL resource, for logging from AWS WAF. As part
    # of the association, you can specify parts of the standard logging
    # fields to keep out of the logs.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #           },
    #         ],
    #         managed_by_firewall_manager: false,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with `LogDestinationConfigs`.
    #   @return [String]
    #
    # @!attribute [rw] log_destination_configs
    #   The Amazon Kinesis Data Firehose Amazon Resource Name (ARNs) that
    #   you want to associate with the web ACL.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redacted_fields
    #   The parts of the request that you want to keep out of the logs. For
    #   example, if you redact the `HEADER` field, the `HEADER` field in the
    #   firehose will be `xxx`.
    #
    #   <note markdown="1"> You must use one of the following values: `URI`, `QUERY_STRING`,
    #   `HEADER`, or `METHOD`.
    #
    #    </note>
    #   @return [Array<Types::FieldToMatch>]
    #
    # @!attribute [rw] managed_by_firewall_manager
    #   Indicates whether the logging configuration was created by AWS
    #   Firewall Manager, as part of an AWS WAF policy configuration. If
    #   true, only Firewall Manager can modify or delete the configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :resource_arn,
      :log_destination_configs,
      :redacted_fields,
      :managed_by_firewall_manager)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement used to run the rules that are defined in a managed
    # rule group. To use this, provide the vendor name and the name of the
    # rule group in this statement. You can retrieve the required names by
    # calling ListAvailableManagedRuleGroups.
    #
    # You can't nest a `ManagedRuleGroupStatement`, for example for use
    # inside a `NotStatement` or `OrStatement`. It can only be referenced as
    # a top-level statement within a rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass ManagedRuleGroupStatement
    #   data as a hash:
    #
    #       {
    #         vendor_name: "VendorName", # required
    #         name: "EntityName", # required
    #         excluded_rules: [
    #           {
    #             name: "EntityName", # required
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
    # @!attribute [rw] excluded_rules
    #   The rules whose actions are set to `COUNT` by the web ACL,
    #   regardless of the action that is set on the rule. This effectively
    #   excludes the rule from acting on web requests.
    #   @return [Array<Types::ExcludedRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ManagedRuleGroupStatement AWS API Documentation
    #
    class ManagedRuleGroupStatement < Struct.new(
      :vendor_name,
      :name,
      :excluded_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # High-level information about a managed rule group, returned by
    # ListAvailableManagedRuleGroups. This provides information like the
    # name and vendor name, that you provide when you add a
    # ManagedRuleGroupStatement to a web ACL. Managed rule groups include
    # AWS Managed Rules rule groups, which are free of charge to AWS WAF
    # customers, and AWS Marketplace managed rule groups, which you can
    # subscribe to through AWS Marketplace.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   The description of the managed rule group, provided by AWS Managed
    #   Rules or the AWS Marketplace seller who manages it.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The HTTP method of a web request. The method indicates the type of
    # operation that the request is asking the origin to perform.
    #
    # This is used only to indicate the web request component for AWS WAF to
    # inspect, in the FieldToMatch specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Method AWS API Documentation
    #
    class Method < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Specifies that AWS WAF should do nothing. This is generally used to
    # try out a rule without performing any actions. You set the
    # `OverrideAction` on the Rule.
    #
    # This is used only in the context of other settings, for example to
    # specify values for RuleAction and web ACL DefaultAction.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/NoneAction AWS API Documentation
    #
    class NoneAction < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A logical rule statement used to negate the results of another rule
    # statement. You provide one Statement within the `NotStatement`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A logical rule statement used to combine other rule statements with OR
    # logic. You provide more than one Statement within the `OrStatement`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
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

    # The override action to apply to the rules in a rule group. Used only
    # for rule statements that reference a rule group, like
    # `RuleGroupReferenceStatement` and `ManagedRuleGroupStatement`.
    #
    # Set the override action to none to leave the rule actions in effect.
    # Set it to count to only count matches, regardless of the rule action
    # settings.
    #
    # In a Rule, you must specify either this `OverrideAction` setting or
    # the rule `Action` setting, but not both:
    #
    # * If the rule statement references a rule group, use this override
    #   action setting and not the action setting.
    #
    # * If the rule statement does not reference a rule group, use the rule
    #   action setting and not this rule override action setting.
    #
    # @note When making an API call, you may pass OverrideAction
    #   data as a hash:
    #
    #       {
    #         count: {
    #         },
    #         none: {
    #         },
    #       }
    #
    # @!attribute [rw] count
    #   Override the rule action setting to count.
    #   @return [Types::CountAction]
    #
    # @!attribute [rw] none
    #   Don't override the rule action setting.
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
    #             },
    #           ],
    #           managed_by_firewall_manager: false,
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
    #     and `wafv2:PutFirewallManagerRuleGroups`. AWS WAF rejects any
    #     extra actions or wildcard actions in the policy.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The query string of a web request. This is the part of a URL that
    # appears after a `?` character, if any.
    #
    # This is used only to indicate the web request component for AWS WAF to
    # inspect, in the FieldToMatch specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/QueryString AWS API Documentation
    #
    class QueryString < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rate-based rule tracks the rate of requests for each originating IP
    # address, and triggers the rule action when the rate exceeds a limit
    # that you specify on the number of requests in any 5-minute time span.
    # You can use this to put a temporary block on requests from an IP
    # address that is sending excessive requests.
    #
    # When the rule action triggers, AWS WAF blocks additional requests from
    # the IP address until the request rate falls below the limit.
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
    # You cannot nest a `RateBasedStatement`, for example for use inside a
    # `NotStatement` or `OrStatement`. It can only be referenced as a
    # top-level statement within a rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
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
    #   An optional nested statement that narrows the scope of the
    #   rate-based statement to matching web requests. This can be any
    #   nestable statement, and you can nest statements at any level below
    #   this scope-down statement.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] forwarded_ip_config
    #   The configuration for inspecting IP addresses in an HTTP header that
    #   you specify, instead of using the IP address that's reported by the
    #   web request origin. Commonly, this is the X-Forwarded-For (XFF)
    #   header, but you can specify any header name.
    #
    #   <note markdown="1"> If the specified header isn't present in the request, AWS WAF
    #   doesn't apply the rule to the web request at all.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The set of IP addresses that are currently blocked for a rate-based
    # statement.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @!attribute [rw] ip_address_version
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A single regular expression. This is used in a RegexPatternSet.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Contains one or more regular expressions.
    #
    # AWS WAF assigns an ARN to each `RegexPatternSet` that you create. To
    # use a set in a rule, you provide the ARN to the Rule statement
    # RegexPatternSetReferenceStatement.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   A description of the set that helps with identification. You cannot
    #   change the description of a set after you create it.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
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
    # referenced set, AWS WAF automatically updates all rules that reference
    # it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #   The part of a web request that you want AWS WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, AWS WAF
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # High-level information about a RegexPatternSet, returned by operations
    # like create and list. This provides information like the ID, that you
    # can use to retrieve and manage a `RegexPatternSet`, and the ARN, that
    # you provide to the RegexPatternSetReferenceStatement to use the
    # pattern set in a Rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   A description of the set that helps with identification. You cannot
    #   change the description of a set after you create it.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A single rule, which you can use in a WebACL or RuleGroup to identify
    # web requests that you want to allow, block, or count. Each rule
    # includes one top-level Statement that AWS WAF uses to identify
    # matching web requests, and parameters that govern how AWS WAF handles
    # them.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #           },
    #           allow: {
    #           },
    #           count: {
    #           },
    #         },
    #         override_action: {
    #           count: {
    #           },
    #           none: {
    #           },
    #         },
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule. You can't change the name of a `Rule` after
    #   you create it.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   If you define more than one `Rule` in a `WebACL`, AWS WAF evaluates
    #   each request against the `Rules` in order based on the value of
    #   `Priority`. AWS WAF processes rules with lower priority first. The
    #   priorities don't need to be consecutive, but they must all be
    #   different.
    #   @return [Integer]
    #
    # @!attribute [rw] statement
    #   The AWS WAF processing statement for the rule, for example
    #   ByteMatchStatement or SizeConstraintStatement.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] action
    #   The action that AWS WAF should take on a web request when it matches
    #   the rule statement. Settings at the web ACL level can override the
    #   rule action setting.
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
    #   The override action to apply to the rules in a rule group. Used only
    #   for rule statements that reference a rule group, like
    #   `RuleGroupReferenceStatement` and `ManagedRuleGroupStatement`.
    #
    #   Set the override action to none to leave the rule actions in effect.
    #   Set it to count to only count matches, regardless of the rule action
    #   settings.
    #
    #   In a Rule, you must specify either this `OverrideAction` setting or
    #   the rule `Action` setting, but not both:
    #
    #   * If the rule statement references a rule group, use this override
    #     action setting and not the action setting.
    #
    #   * If the rule statement does not reference a rule group, use the
    #     rule action setting and not this rule override action setting.
    #   @return [Types::OverrideAction]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :priority,
      :statement,
      :action,
      :override_action,
      :visibility_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The action that AWS WAF should take on a web request when it matches a
    # rule's statement. Settings at the web ACL level can override the rule
    # action setting.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass RuleAction
    #   data as a hash:
    #
    #       {
    #         block: {
    #         },
    #         allow: {
    #         },
    #         count: {
    #         },
    #       }
    #
    # @!attribute [rw] block
    #   Instructs AWS WAF to block the web request.
    #   @return [Types::BlockAction]
    #
    # @!attribute [rw] allow
    #   Instructs AWS WAF to allow the web request.
    #   @return [Types::AllowAction]
    #
    # @!attribute [rw] count
    #   Instructs AWS WAF to count the web request and allow it.
    #   @return [Types::CountAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/RuleAction AWS API Documentation
    #
    class RuleAction < Struct.new(
      :block,
      :allow,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule group defines a collection of rules to inspect and control web
    # requests that you can use in a WebACL. When you create a rule group,
    # you define an immutable capacity limit. If you update a rule group,
    # you must stay within the capacity. This allows others to reuse the
    # rule group with confidence in its capacity requirements.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   group, AWS WAF enforces this limit. You can check the capacity for a
    #   set of rules using CheckCapacity.
    #
    #   AWS WAF uses WCUs to calculate and control the operating resources
    #   that are used to run your rules, rule groups, and web ACLs. AWS WAF
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
    #   A description of the rule group that helps with identification. You
    #   cannot change the description of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that AWS WAF uses to identify matching web requests, and
    #   parameters that govern how AWS WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
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
      :visibility_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement used to run the rules that are defined in a
    # RuleGroup. To use this, create a rule group with your rules, then
    # provide the ARN of the rule group in this statement.
    #
    # You cannot nest a `RuleGroupReferenceStatement`, for example for use
    # inside a `NotStatement` or `OrStatement`. It can only be referenced as
    # a top-level statement within a rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   The names of rules that are in the referenced rule group, but that
    #   you want AWS WAF to exclude from processing for this rule statement.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # High-level information about a RuleGroup, returned by operations like
    # create and list. This provides information like the ID, that you can
    # use to retrieve and manage a `RuleGroup`, and the ARN, that you
    # provide to the RuleGroupReferenceStatement to use the rule group in a
    # Rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   A description of the rule group that helps with identification. You
    #   cannot change the description of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # High-level information about a Rule, returned by operations like
    # DescribeManagedRuleGroup. This provides information like the ID, that
    # you can use to retrieve and manage a `RuleGroup`, and the ARN, that
    # you provide to the RuleGroupReferenceStatement to use the rule group
    # in a Rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    #   in November, 2019. For information, including how to migrate your
    #   AWS WAF resources from the prior release, see the [AWS WAF Developer
    #   Guide][1].
    #
    #    </note>
    #
    #   The action that AWS WAF should take on a web request when it matches
    #   a rule's statement. Settings at the web ACL level can override the
    #   rule action setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Represents a single sampled web request. The response from
    # GetSampledRequests includes a `SampledHTTPRequests` complex type that
    # appears as `SampledRequests` in the response syntax.
    # `SampledHTTPRequests` contains an array of `SampledHTTPRequest`
    # objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   The time at which AWS WAF received the request from your AWS
    #   resource, in Unix time format (in seconds).
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The action for the `Rule` that the request matched: `ALLOW`,
    #   `BLOCK`, or `COUNT`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/SampledHTTPRequest AWS API Documentation
    #
    class SampledHTTPRequest < Struct.new(
      :request,
      :weight,
      :timestamp,
      :action,
      :rule_name_within_rule_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # One of the headers in a web request, identified by name, for example,
    # `User-Agent` or `Referer`. This setting isn't case sensitive.
    #
    # This is used only to indicate the web request component for AWS WAF to
    # inspect, in the FieldToMatch specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # One query argument in a web request, identified by name, for example
    # *UserName* or *SalesRegion*. The name can be up to 30 characters long
    # and isn't case sensitive.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement that compares a number of bytes against the size of a
    # request component, using a comparison operator, such as greater than
    # (&gt;) or less than (&lt;). For example, you can use a size constraint
    # statement to look for query strings that are longer than 100 bytes.
    #
    # If you configure AWS WAF to inspect the request body, AWS WAF inspects
    # only the first 8192 bytes (8 KB). If the request body for your web
    # requests never exceeds 8192 bytes, you can create a size constraint
    # condition and block requests that have a request body greater than
    # 8192 bytes.
    #
    # If you choose URI for the value of Part of the request to filter on,
    # the slash (/) in the URI counts as one character. For example, the URI
    # `/logo.jpg` is nine characters long.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #         },
    #         comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #         size: 1, # required
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want AWS WAF to inspect. For more
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
    #   you specify one or more transformations in a rule statement, AWS WAF
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Attackers sometimes insert malicious SQL code into web requests in an
    # effort to extract data from your database. To allow or block web
    # requests that appear to contain malicious SQL code, create one or more
    # SQL injection match conditions. An SQL injection match condition
    # identifies the part of web requests, such as the URI or the query
    # string, that you want AWS WAF to inspect. Later in the process, when
    # you create a web ACL, you specify whether to allow or block requests
    # that appear to contain malicious SQL code.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want AWS WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, AWS WAF
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The processing guidance for a Rule, used by AWS WAF to determine
    # whether a web request matches the rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #           },
    #           comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #           size: 1, # required
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #           },
    #           text_transformations: [ # required
    #             {
    #               priority: 1, # required
    #               type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #               text_transformations: [ # required
    #                 {
    #                   priority: 1, # required
    #                   type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               excluded_rules: [
    #                 {
    #                   name: "EntityName", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         managed_rule_group_statement: {
    #           vendor_name: "VendorName", # required
    #           name: "EntityName", # required
    #           excluded_rules: [
    #             {
    #               name: "EntityName", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] byte_match_statement
    #   A rule statement that defines a string match search for AWS WAF to
    #   apply to web requests. The byte match statement provides the bytes
    #   to search for, the location in requests that you want AWS WAF to
    #   search, and other settings. The bytes to search for are typically a
    #   string that corresponds with ASCII characters. In the AWS WAF
    #   console and the developer guide, this is refered to as a string
    #   match statement.
    #   @return [Types::ByteMatchStatement]
    #
    # @!attribute [rw] sqli_match_statement
    #   Attackers sometimes insert malicious SQL code into web requests in
    #   an effort to extract data from your database. To allow or block web
    #   requests that appear to contain malicious SQL code, create one or
    #   more SQL injection match conditions. An SQL injection match
    #   condition identifies the part of web requests, such as the URI or
    #   the query string, that you want AWS WAF to inspect. Later in the
    #   process, when you create a web ACL, you specify whether to allow or
    #   block requests that appear to contain malicious SQL code.
    #   @return [Types::SqliMatchStatement]
    #
    # @!attribute [rw] xss_match_statement
    #   A rule statement that defines a cross-site scripting (XSS) match
    #   search for AWS WAF to apply to web requests. XSS attacks are those
    #   where the attacker uses vulnerabilities in a benign website as a
    #   vehicle to inject malicious client-site scripts into other
    #   legitimate web browsers. The XSS match statement provides the
    #   location in requests that you want AWS WAF to search and text
    #   transformations to use on the search area before AWS WAF searches
    #   for character sequences that are likely to be malicious strings.
    #   @return [Types::XssMatchStatement]
    #
    # @!attribute [rw] size_constraint_statement
    #   A rule statement that compares a number of bytes against the size of
    #   a request component, using a comparison operator, such as greater
    #   than (&gt;) or less than (&lt;). For example, you can use a size
    #   constraint statement to look for query strings that are longer than
    #   100 bytes.
    #
    #   If you configure AWS WAF to inspect the request body, AWS WAF
    #   inspects only the first 8192 bytes (8 KB). If the request body for
    #   your web requests never exceeds 8192 bytes, you can create a size
    #   constraint condition and block requests that have a request body
    #   greater than 8192 bytes.
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
    #   inside a `NotStatement` or `OrStatement`. It can only be referenced
    #   as a top-level statement within a rule.
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
    #   set, AWS WAF automatically updates all rules that reference it.
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
    #   the referenced set, AWS WAF automatically updates all rules that
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
    #   When the rule action triggers, AWS WAF blocks additional requests
    #   from the IP address until the request rate falls below the limit.
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
    #   You cannot nest a `RateBasedStatement`, for example for use inside a
    #   `NotStatement` or `OrStatement`. It can only be referenced as a
    #   top-level statement within a rule.
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
    #   You can't nest a `ManagedRuleGroupStatement`, for example for use
    #   inside a `NotStatement` or `OrStatement`. It can only be referenced
    #   as a top-level statement within a rule.
    #   @return [Types::ManagedRuleGroupStatement]
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
      :managed_rule_group_statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A tag associated with an AWS resource. Tags are key:value pairs that
    # you can use to categorize and manage your resources, for purposes like
    # billing or other management. Typically, the tag key represents a
    # category, such as "environment", and the tag value represents a
    # specific value within that category, such as "test,"
    # "development," or "production". Or you might set the tag key to
    # "customer" and the value to the customer name or ID. You can specify
    # one or more tags to add to each AWS resource, up to 50 tags for a
    # resource.
    #
    # You can tag the AWS resources that you manage through AWS WAF: web
    # ACLs, rule groups, IP sets, and regex pattern sets. You can't manage
    # or view tags through the AWS WAF console.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The collection of tagging definitions for an AWS resource. Tags are
    # key:value pairs that you can use to categorize and manage your
    # resources, for purposes like billing or other management. Typically,
    # the tag key represents a category, such as "environment", and the
    # tag value represents a specific value within that category, such as
    # "test," "development," or "production". Or you might set the tag
    # key to "customer" and the value to the customer name or ID. You can
    # specify one or more tags to add to each AWS resource, up to 50 tags
    # for a resource.
    #
    # You can tag the AWS resources that you manage through AWS WAF: web
    # ACLs, rule groups, IP sets, and regex pattern sets. You can't manage
    # or view tags through the AWS WAF console.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Text transformations eliminate some of the unusual formatting that
    # attackers use in web requests in an effort to bypass detection.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @note When making an API call, you may pass TextTransformation
    #   data as a hash:
    #
    #       {
    #         priority: 1, # required
    #         type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #       }
    #
    # @!attribute [rw] priority
    #   Sets the relative processing order for multiple transformations that
    #   are defined for a rule statement. AWS WAF processes all
    #   transformations, from lowest priority to highest, before inspecting
    #   the transformed content. The priorities don't need to be
    #   consecutive, but they must all be different.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   You can specify the following transformation types:
    #
    #   **CMD\_LINE**
    #
    #   When you're concerned that attackers are injecting an operating
    #   system command line command and using unusual formatting to disguise
    #   some or all of the command, use this option to perform the following
    #   transformations:
    #
    #   * Delete the following characters: \\ " ' ^
    #
    #   * Delete spaces before the following characters: / (
    #
    #   * Replace the following characters with a space: , ;
    #
    #   * Replace multiple spaces with one space
    #
    #   * Convert uppercase letters (A-Z) to lowercase (a-z)
    #
    #   **COMPRESS\_WHITE\_SPACE**
    #
    #   Use this option to replace the following characters with a space
    #   character (decimal 32):
    #
    #   * \\f, formfeed, decimal 12
    #
    #   * \\t, tab, decimal 9
    #
    #   * \\n, newline, decimal 10
    #
    #   * \\r, carriage return, decimal 13
    #
    #   * \\v, vertical tab, decimal 11
    #
    #   * non-breaking space, decimal 160
    #
    #   `COMPRESS_WHITE_SPACE` also replaces multiple spaces with one space.
    #
    #   **HTML\_ENTITY\_DECODE**
    #
    #   Use this option to replace HTML-encoded characters with unencoded
    #   characters. `HTML_ENTITY_DECODE` performs the following operations:
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
    #   **LOWERCASE**
    #
    #   Use this option to convert uppercase letters (A-Z) to lowercase
    #   (a-z).
    #
    #   **URL\_DECODE**
    #
    #   Use this option to decode a URL-encoded value.
    #
    #   **NONE**
    #
    #   Specify `NONE` if you don't want any text transformations.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # In a GetSampledRequests request, the `StartTime` and `EndTime` objects
    # specify the time range for which you want AWS WAF to return a sample
    # of web requests.
    #
    # You must specify the times in Coordinated Universal Time (UTC) format.
    # UTC format includes the special designator, `Z`. For example,
    # `"2016-09-27T14:50Z"`. You can specify any time range in the previous
    # three hours.
    #
    # In a GetSampledRequests response, the `StartTime` and `EndTime`
    # objects specify the time range for which AWS WAF actually returned a
    # sample of web requests. AWS WAF gets the specified number of requests
    # from among the first 5,000 requests that your AWS resource receives
    # during the specified time period. If your resource receives more than
    # 5,000 requests during that period, AWS WAF stops sampling after the
    # 5,000th request. In that case, `EndTime` is the time that AWS WAF
    # received the 5,000th request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   AWS resource received. You must specify the times in Coordinated
    #   Universal Time (UTC) format. UTC format includes the special
    #   designator, `Z`. For example, `"2016-09-27T14:50Z"`. You can specify
    #   any time range in the previous three hours.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time range from which you want `GetSampledRequests`
    #   to return a sample of the requests that your AWS resource received.
    #   You must specify the times in Coordinated Universal Time (UTC)
    #   format. UTC format includes the special designator, `Z`. For
    #   example, `"2016-09-27T14:50Z"`. You can specify any time range in
    #   the previous three hours.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the IP set that helps with identification. You
    #   cannot change the description of an IP set after you create it.
    #   @return [String]
    #
    # @!attribute [rw] addresses
    #   Contains an array of strings that specify one or more IP addresses
    #   or blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
    #   notation. AWS WAF supports all address ranges for IP versions IPv4
    #   and IPv6.
    #
    #   Examples:
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [Array<String>]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   A token used for optimistic locking. AWS WAF returns this token to
    #   your update requests. You use `NextLockToken` in the same manner as
    #   you use `LockToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateIPSetResponse AWS API Documentation
    #
    class UpdateIPSetResponse < Struct.new(
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
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the set that helps with identification. You cannot
    #   change the description of a set after you create it.
    #   @return [String]
    #
    # @!attribute [rw] regular_expression_list
    #   @return [Array<Types::Regex>]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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
    #   A token used for optimistic locking. AWS WAF returns this token to
    #   your update requests. You use `NextLockToken` in the same manner as
    #   you use `LockToken`.
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #               },
    #               allow: {
    #               },
    #               count: {
    #               },
    #             },
    #             override_action: {
    #               count: {
    #               },
    #               none: {
    #               },
    #             },
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule group. You cannot change the name of a rule
    #   group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the rule group that helps with identification. You
    #   cannot change the description of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that AWS WAF uses to identify matching web requests, and
    #   parameters that govern how AWS WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
    #   @return [String]
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
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. AWS WAF returns this token to
    #   your update requests. You use `NextLockToken` in the same manner as
    #   you use `LockToken`.
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
    #           },
    #           allow: {
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #                 size: 1, # required
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 },
    #                 text_transformations: [ # required
    #                   {
    #                     priority: 1, # required
    #                     type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #                 excluded_rules: [
    #                   {
    #                     name: "EntityName", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             action: {
    #               block: {
    #               },
    #               allow: {
    #               },
    #               count: {
    #               },
    #             },
    #             override_action: {
    #               count: {
    #               },
    #               none: {
    #               },
    #             },
    #             visibility_config: { # required
    #               sampled_requests_enabled: false, # required
    #               cloud_watch_metrics_enabled: false, # required
    #               metric_name: "MetricName", # required
    #             },
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         lock_token: "LockToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Web ACL. You cannot change the name of a Web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies whether this is for an AWS CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The unique identifier for the Web ACL. This ID is returned in the
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
    #   A description of the Web ACL that helps with identification. You
    #   cannot change the description of a Web ACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that AWS WAF uses to identify matching web requests, and
    #   parameters that govern how AWS WAF handles them.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #   @return [Types::VisibilityConfig]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
    #   @return [String]
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
      :lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_lock_token
    #   A token used for optimistic locking. AWS WAF returns this token to
    #   your update requests. You use `NextLockToken` in the same manner as
    #   you use `LockToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateWebACLResponse AWS API Documentation
    #
    class UpdateWebACLResponse < Struct.new(
      :next_lock_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # The path component of the URI of a web request. This is the part of a
    # web request that identifies a resource, for example,
    # `/images/daily-ad.jpg`.
    #
    # This is used only to indicate the web request component for AWS WAF to
    # inspect, in the FieldToMatch specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UriPath AWS API Documentation
    #
    class UriPath < Aws::EmptyStructure; end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # Defines and enables Amazon CloudWatch metrics and web request sample
    # collection.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #   A boolean indicating whether AWS WAF should store a sampling of the
    #   web requests that match the rules. You can view the sampled requests
    #   through the AWS WAF console.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   A boolean indicating whether the associated resource sends metrics
    #   to CloudWatch. For the list of available metrics, see [AWS WAF
    #   Metrics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics
    #   @return [Boolean]
    #
    # @!attribute [rw] metric_name
    #   A name of the CloudWatch metric. The name can contain only the
    #   characters: A-Z, a-z, 0-9, - (hyphen), and \_ (underscore). The name
    #   can be from one to 128 characters long. It can't contain whitespace
    #   or metric names reserved for AWS WAF, for example "All" and
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

    # AWS WAF couldn’t perform the operation because your resource is being
    # used by another resource or it’s associated with another resource.
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

    # AWS WAF couldn’t perform the operation because the resource that you
    # tried to save is a duplicate of an existing one.
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

    # Your request is valid, but AWS WAF couldn’t perform the operation
    # because of a system problem. Retry your request.
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

    # The operation failed because AWS WAF didn't recognize a parameter in
    # the request. For example:
    #
    # * You specified an invalid parameter name or value.
    #
    # * Your nested statement isn't valid. You might have tried to nest a
    #   statement that can’t be nested.
    #
    # * You tried to update a `WebACL` with a `DefaultAction` that isn't
    #   among the types available at DefaultAction.
    #
    # * Your request references an ARN that is malformed, or corresponds to
    #   a resource with which a Web ACL cannot be associated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field
    #   @return [String]
    #
    # @!attribute [rw] parameter
    #   @return [String]
    #
    # @!attribute [rw] reason
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
    #   and `wafv2:PutFirewallManagerRuleGroups`. AWS WAF rejects any extra
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

    # AWS WAF couldn’t perform the operation because the resource that you
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

    # AWS WAF couldn’t perform the operation because you exceeded your
    # resource limit. For example, the maximum number of `WebACL` objects
    # that you can create for an AWS account. For more information, see
    # [Limits][1] in the *AWS WAF Developer Guide*.
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

    # AWS WAF couldn’t perform the operation because your resource doesn’t
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

    # AWS WAF couldn’t save your changes because you tried to update or
    # delete a resource that has changed since you last retrieved it. Get
    # the resource again, make any changes you need to make to the new copy,
    # and retry your operation.
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

    # AWS WAF is not able to access the service linked role. This can be
    # caused by a previous `PutLoggingConfiguration` request, which can lock
    # the service linked role for about 20 seconds. Please try your request
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

    # AWS WAF couldn’t perform your tagging operation because of an internal
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

    # AWS WAF couldn’t retrieve the resource that you requested. Retry your
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A Web ACL defines a collection of rules to use to inspect and control
    # web requests. Each rule has an action defined (allow, block, or count)
    # for requests that match the statement of the rule. In the Web ACL, you
    # assign a default action to take (allow, block) for any request that
    # does not match any of the rules. The rules in a Web ACL can be a
    # combination of the types Rule, RuleGroup, and managed rule group. You
    # can associate a Web ACL with one or more AWS resources to protect. The
    # resources can be Amazon CloudFront, an Amazon API Gateway REST API, an
    # Application Load Balancer, or an AWS AppSync GraphQL API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @!attribute [rw] name
    #   The name of the Web ACL. You cannot change the name of a Web ACL
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
    #   The Amazon Resource Name (ARN) of the Web ACL that you want to
    #   associate with the resource.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the `Rules` contained in the
    #   `WebACL` match.
    #   @return [Types::DefaultAction]
    #
    # @!attribute [rw] description
    #   A description of the Web ACL that helps with identification. You
    #   cannot change the description of a Web ACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Rule statements used to identify the web requests that you want
    #   to allow, block, or count. Each rule includes one top-level
    #   statement that AWS WAF uses to identify matching web requests, and
    #   parameters that govern how AWS WAF handles them.
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
    #   AWS WAF uses WCUs to calculate and control the operating resources
    #   that are used to run your rules, rule groups, and web ACLs. AWS WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan
    #   their web ACL WCU usage when they use a rule group. The WCU limit
    #   for web ACLs is 1,500.
    #   @return [Integer]
    #
    # @!attribute [rw] pre_process_firewall_manager_rule_groups
    #   The first set of rules for AWS WAF to process in the web ACL. This
    #   is defined in an AWS Firewall Manager WAF policy and contains only
    #   rule group references. You can't alter these. Any rules and rule
    #   groups that you define for the web ACL are prioritized after these.
    #
    #   In the Firewall Manager WAF policy, the Firewall Manager
    #   administrator can define a set of rule groups to run first in the
    #   web ACL and a set of rule groups to run last. Within each set, the
    #   administrator prioritizes the rule groups, to determine their
    #   relative processing order.
    #   @return [Array<Types::FirewallManagerRuleGroup>]
    #
    # @!attribute [rw] post_process_firewall_manager_rule_groups
    #   The last set of rules for AWS WAF to process in the web ACL. This is
    #   defined in an AWS Firewall Manager WAF policy and contains only rule
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
    #   Indicates whether this web ACL is managed by AWS Firewall Manager.
    #   If true, then only AWS Firewall Manager can delete the web ACL or
    #   any Firewall Manager rule groups in the web ACL.
    #   @return [Boolean]
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
      :managed_by_firewall_manager)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # High-level information about a WebACL, returned by operations like
    # create and list. This provides information like the ID, that you can
    # use to retrieve and manage a `WebACL`, and the ARN, that you provide
    # to operations like AssociateWebACL.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #
    # @!attribute [rw] name
    #   The name of the Web ACL. You cannot change the name of a Web ACL
    #   after you create it.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the Web ACL that helps with identification. You
    #   cannot change the description of a Web ACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time
    #   of the request. To make changes to the entity associated with the
    #   token, you provide the token to operations like update and delete.
    #   AWS WAF uses the token to ensure that no changes have been made to
    #   the entity since you last retrieved it. If a change has been made,
    #   the update fails with a `WAFOptimisticLockException`. If this
    #   happens, perform another get, and use the new token returned by that
    #   operation.
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

    # <note markdown="1"> This is the latest version of **AWS WAF**, named AWS WAFV2, released
    # in November, 2019. For information, including how to migrate your AWS
    # WAF resources from the prior release, see the [AWS WAF Developer
    # Guide][1].
    #
    #  </note>
    #
    # A rule statement that defines a cross-site scripting (XSS) match
    # search for AWS WAF to apply to web requests. XSS attacks are those
    # where the attacker uses vulnerabilities in a benign website as a
    # vehicle to inject malicious client-site scripts into other legitimate
    # web browsers. The XSS match statement provides the location in
    # requests that you want AWS WAF to search and text transformations to
    # use on the search area before AWS WAF searches for character sequences
    # that are likely to be malicious strings.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
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
    #         },
    #         text_transformations: [ # required
    #           {
    #             priority: 1, # required
    #             type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want AWS WAF to inspect. For more
    #   information, see FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformations
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass detection. If
    #   you specify one or more transformations in a rule statement, AWS WAF
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
