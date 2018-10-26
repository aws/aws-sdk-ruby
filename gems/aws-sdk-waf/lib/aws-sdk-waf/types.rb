# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WAF
  module Types

    # The `ActivatedRule` object in an UpdateWebACL request specifies a
    # `Rule` that you want to insert or delete, the priority of the `Rule`
    # in the `WebACL`, and the action that you want AWS WAF to take when a
    # web request matches the `Rule` (`ALLOW`, `BLOCK`, or `COUNT`).
    #
    # To specify whether to insert or delete a `Rule`, use the `Action`
    # parameter in the WebACLUpdate data type.
    #
    # @note When making an API call, you may pass ActivatedRule
    #   data as a hash:
    #
    #       {
    #         priority: 1, # required
    #         rule_id: "ResourceId", # required
    #         action: {
    #           type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #         },
    #         override_action: {
    #           type: "NONE", # required, accepts NONE, COUNT
    #         },
    #         type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #       }
    #
    # @!attribute [rw] priority
    #   Specifies the order in which the `Rules` in a `WebACL` are
    #   evaluated. Rules with a lower value for `Priority` are evaluated
    #   before `Rules` with a higher value. The value must be a unique
    #   integer. If you add multiple `Rules` to a `WebACL`, the values
    #   don't need to be consecutive.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` for a `Rule`. You use `RuleId` to get more information
    #   about a `Rule` (see GetRule), update a `Rule` (see UpdateRule),
    #   insert a `Rule` into a `WebACL` or delete a one from a `WebACL` (see
    #   UpdateWebACL), or delete a `Rule` from AWS WAF (see DeleteRule).
    #
    #   `RuleId` is returned by CreateRule and by ListRules.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action that CloudFront or AWS WAF takes when a web
    #   request matches the conditions in the `Rule`. Valid values for
    #   `Action` include the following:
    #
    #   * `ALLOW`\: CloudFront responds with the requested object.
    #
    #   * `BLOCK`\: CloudFront responds with an HTTP 403 (Forbidden) status
    #     code.
    #
    #   * `COUNT`\: AWS WAF increments a counter of requests that match the
    #     conditions in the rule and then continues to inspect the web
    #     request based on the remaining rules in the web ACL.
    #
    #   `ActivatedRule|OverrideAction` applies only when updating or adding
    #   a `RuleGroup` to a `WebACL`. In this case you do not use
    #   `ActivatedRule|Action`. For all other update requests,
    #   `ActivatedRule|Action` is used instead of
    #   `ActivatedRule|OverrideAction`.
    #   @return [Types::WafAction]
    #
    # @!attribute [rw] override_action
    #   Use the `OverrideAction` to test your `RuleGroup`.
    #
    #   Any rule in a `RuleGroup` can potentially block a request. If you
    #   set the `OverrideAction` to `None`, the `RuleGroup` will block a
    #   request if any individual rule in the `RuleGroup` matches the
    #   request and is configured to block that request. However if you
    #   first want to test the `RuleGroup`, set the `OverrideAction` to
    #   `Count`. The `RuleGroup` will then override any block action
    #   specified by individual rules contained within the group. Instead of
    #   blocking matching requests, those requests will be counted. You can
    #   view a record of counted requests using GetSampledRequests.
    #
    #   `ActivatedRule|OverrideAction` applies only when updating or adding
    #   a `RuleGroup` to a `WebACL`. In this case you do not use
    #   `ActivatedRule|Action`. For all other update requests,
    #   `ActivatedRule|Action` is used instead of
    #   `ActivatedRule|OverrideAction`.
    #   @return [Types::WafOverrideAction]
    #
    # @!attribute [rw] type
    #   The rule type, either `REGULAR`, as defined by Rule, `RATE_BASED`,
    #   as defined by RateBasedRule, or `GROUP`, as defined by RuleGroup.
    #   The default is REGULAR. Although this field is optional, be aware
    #   that if you try to add a RATE\_BASED rule to a web ACL without
    #   setting the type, the UpdateWebACL request will fail because the
    #   request tries to add a REGULAR rule with the specified ID, which
    #   does not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ActivatedRule AWS API Documentation
    #
    class ActivatedRule < Struct.new(
      :priority,
      :rule_id,
      :action,
      :override_action,
      :type)
      include Aws::Structure
    end

    # In a GetByteMatchSet request, `ByteMatchSet` is a complex type that
    # contains the `ByteMatchSetId` and `Name` of a `ByteMatchSet`, and the
    # values that you specified when you updated the `ByteMatchSet`.
    #
    # A complex type that contains `ByteMatchTuple` objects, which specify
    # the parts of web requests that you want AWS WAF to inspect and the
    # values that you want AWS WAF to search for. If a `ByteMatchSet`
    # contains more than one `ByteMatchTuple` object, a request needs to
    # match the settings in only one `ByteMatchTuple` to be considered a
    # match.
    #
    # @!attribute [rw] byte_match_set_id
    #   The `ByteMatchSetId` for a `ByteMatchSet`. You use `ByteMatchSetId`
    #   to get information about a `ByteMatchSet` (see GetByteMatchSet),
    #   update a `ByteMatchSet` (see UpdateByteMatchSet), insert a
    #   `ByteMatchSet` into a `Rule` or delete one from a `Rule` (see
    #   UpdateRule), and delete a `ByteMatchSet` from AWS WAF (see
    #   DeleteByteMatchSet).
    #
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the ByteMatchSet. You can't
    #   change `Name` after you create a `ByteMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] byte_match_tuples
    #   Specifies the bytes (typically a string that corresponds with ASCII
    #   characters) that you want AWS WAF to search for in web requests, the
    #   location in requests that you want AWS WAF to search, and other
    #   settings.
    #   @return [Array<Types::ByteMatchTuple>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ByteMatchSet AWS API Documentation
    #
    class ByteMatchSet < Struct.new(
      :byte_match_set_id,
      :name,
      :byte_match_tuples)
      include Aws::Structure
    end

    # Returned by ListByteMatchSets. Each `ByteMatchSetSummary` object
    # includes the `Name` and `ByteMatchSetId` for one ByteMatchSet.
    #
    # @!attribute [rw] byte_match_set_id
    #   The `ByteMatchSetId` for a `ByteMatchSet`. You use `ByteMatchSetId`
    #   to get information about a `ByteMatchSet`, update a `ByteMatchSet`,
    #   remove a `ByteMatchSet` from a `Rule`, and delete a `ByteMatchSet`
    #   from AWS WAF.
    #
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the ByteMatchSet. You can't
    #   change `Name` after you create a `ByteMatchSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ByteMatchSetSummary AWS API Documentation
    #
    class ByteMatchSetSummary < Struct.new(
      :byte_match_set_id,
      :name)
      include Aws::Structure
    end

    # In an UpdateByteMatchSet request, `ByteMatchSetUpdate` specifies
    # whether to insert or delete a ByteMatchTuple and includes the settings
    # for the `ByteMatchTuple`.
    #
    # @note When making an API call, you may pass ByteMatchSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         byte_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           target_string: "data", # required
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specifies whether to insert or delete a ByteMatchTuple.
    #   @return [String]
    #
    # @!attribute [rw] byte_match_tuple
    #   Information about the part of a web request that you want AWS WAF to
    #   inspect and the value that you want AWS WAF to search for. If you
    #   specify `DELETE` for the value of `Action`, the `ByteMatchTuple`
    #   values must exactly match the values in the `ByteMatchTuple` that
    #   you want to delete from the `ByteMatchSet`.
    #   @return [Types::ByteMatchTuple]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ByteMatchSetUpdate AWS API Documentation
    #
    class ByteMatchSetUpdate < Struct.new(
      :action,
      :byte_match_tuple)
      include Aws::Structure
    end

    # The bytes (typically a string that corresponds with ASCII characters)
    # that you want AWS WAF to search for in web requests, the location in
    # requests that you want AWS WAF to search, and other settings.
    #
    # @note When making an API call, you may pass ByteMatchTuple
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #           data: "MatchFieldData",
    #         },
    #         target_string: "data", # required
    #         text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #       }
    #
    # @!attribute [rw] field_to_match
    #   The part of a web request that you want AWS WAF to search, such as a
    #   specified header or a query string. For more information, see
    #   FieldToMatch.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] target_string
    #   The value that you want AWS WAF to search for. AWS WAF searches for
    #   the specified string in the part of web requests that you specified
    #   in `FieldToMatch`. The maximum length of the value is 50 bytes.
    #
    #   Valid values depend on the values that you specified for
    #   `FieldToMatch`\:
    #
    #   * `HEADER`\: The value that you want AWS WAF to search for in the
    #     request header that you specified in FieldToMatch, for example,
    #     the value of the `User-Agent` or `Referer` header.
    #
    #   * `METHOD`\: The HTTP method, which indicates the type of operation
    #     specified in the request. CloudFront supports the following
    #     methods: `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, and
    #     `PUT`.
    #
    #   * `QUERY_STRING`\: The value that you want AWS WAF to search for in
    #     the query string, which is the part of a URL that appears after a
    #     `?` character.
    #
    #   * `URI`\: The value that you want AWS WAF to search for in the part
    #     of a URL that identifies a resource, for example,
    #     `/images/daily-ad.jpg`.
    #
    #   * `BODY`\: The part of a request that contains any additional data
    #     that you want to send to your web server as the HTTP request body,
    #     such as data from a form. The request body immediately follows the
    #     request headers. Note that only the first `8192` bytes of the
    #     request body are forwarded to AWS WAF for inspection. To allow or
    #     block requests based on the length of the body, you can create a
    #     size constraint set. For more information, see
    #     CreateSizeConstraintSet.
    #
    #   * `SINGLE_QUERY_ARG`\: The parameter in the query string that you
    #     will inspect, such as *UserName* or *SalesRegion*. The maximum
    #     length for `SINGLE_QUERY_ARG` is 30 characters.
    #
    #   * `ALL_QUERY_ARGS`\: Similar to `SINGLE_QUERY_ARG`, but instead of
    #     inspecting a single parameter, AWS WAF inspects all parameters
    #     within the query string for the value or regex pattern that you
    #     specify in `TargetString`.
    #
    #   If `TargetString` includes alphabetic characters A-Z and a-z, note
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
    #   base64 encoding and include the resulting value, `QmFkQm90`, in the
    #   value of `TargetString`.
    #
    #   **If you're using the AWS CLI or one of the AWS SDKs**
    #
    #   The value that you want AWS WAF to search for. The SDK automatically
    #   base64 encodes the value.
    #   @return [String]
    #
    # @!attribute [rw] text_transformation
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass AWS WAF. If you
    #   specify a transformation, AWS WAF performs the transformation on
    #   `TargetString` before inspecting a request for a match.
    #
    #   You can only specify a single type of TextTransformation.
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
    #   Specify `NONE` if you don't want to perform any text
    #   transformations.
    #   @return [String]
    #
    # @!attribute [rw] positional_constraint
    #   Within the portion of a web request that you want to search (for
    #   example, in the query string, if any), specify where you want AWS
    #   WAF to search. Valid values include the following:
    #
    #   **CONTAINS**
    #
    #   The specified part of the web request must include the value of
    #   `TargetString`, but the location doesn't matter.
    #
    #   **CONTAINS\_WORD**
    #
    #   The specified part of the web request must include the value of
    #   `TargetString`, and `TargetString` must contain only alphanumeric
    #   characters or underscore (A-Z, a-z, 0-9, or \_). In addition,
    #   `TargetString` must be a word, which means one of the following:
    #
    #   * `TargetString` exactly matches the value of the specified part of
    #     the web request, such as the value of a header.
    #
    #   * `TargetString` is at the beginning of the specified part of the
    #     web request and is followed by a character other than an
    #     alphanumeric character or underscore (\_), for example, `BadBot;`.
    #
    #   * `TargetString` is at the end of the specified part of the web
    #     request and is preceded by a character other than an alphanumeric
    #     character or underscore (\_), for example, `;BadBot`.
    #
    #   * `TargetString` is in the middle of the specified part of the web
    #     request and is preceded and followed by characters other than
    #     alphanumeric characters or underscore (\_), for example,
    #     `-BadBot;`.
    #
    #   **EXACTLY**
    #
    #   The value of the specified part of the web request must exactly
    #   match the value of `TargetString`.
    #
    #   **STARTS\_WITH**
    #
    #   The value of `TargetString` must appear at the beginning of the
    #   specified part of the web request.
    #
    #   **ENDS\_WITH**
    #
    #   The value of `TargetString` must appear at the end of the specified
    #   part of the web request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ByteMatchTuple AWS API Documentation
    #
    class ByteMatchTuple < Struct.new(
      :field_to_match,
      :target_string,
      :text_transformation,
      :positional_constraint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateByteMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the ByteMatchSet. You can't
    #   change `Name` after you create a `ByteMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateByteMatchSetRequest AWS API Documentation
    #
    class CreateByteMatchSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] byte_match_set
    #   A ByteMatchSet that contains no `ByteMatchTuple` objects.
    #   @return [Types::ByteMatchSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateByteMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateByteMatchSetResponse AWS API Documentation
    #
    class CreateByteMatchSetResponse < Struct.new(
      :byte_match_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGeoMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the GeoMatchSet. You can't change
    #   `Name` after you create the `GeoMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateGeoMatchSetRequest AWS API Documentation
    #
    class CreateGeoMatchSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] geo_match_set
    #   The GeoMatchSet returned in the `CreateGeoMatchSet` response. The
    #   `GeoMatchSet` contains no `GeoMatchConstraints`.
    #   @return [Types::GeoMatchSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateGeoMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateGeoMatchSetResponse AWS API Documentation
    #
    class CreateGeoMatchSetResponse < Struct.new(
      :geo_match_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the IPSet. You can't change
    #   `Name` after you create the `IPSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateIPSetRequest AWS API Documentation
    #
    class CreateIPSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] ip_set
    #   The IPSet returned in the `CreateIPSet` response.
    #   @return [Types::IPSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateIPSet` request.
    #   You can also use this value to query the status of the request. For
    #   more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateIPSetResponse AWS API Documentation
    #
    class CreateIPSetResponse < Struct.new(
      :ip_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRateBasedRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         metric_name: "MetricName", # required
    #         rate_key: "IP", # required, accepts IP
    #         rate_limit: 1, # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RateBasedRule. You can't
    #   change the name of a `RateBasedRule` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this
    #   `RateBasedRule`. The name can contain only alphanumeric characters
    #   (A-Z, a-z, 0-9); the name can't contain whitespace. You can't
    #   change the name of the metric after you create the `RateBasedRule`.
    #   @return [String]
    #
    # @!attribute [rw] rate_key
    #   The field that AWS WAF uses to determine if requests are likely
    #   arriving from a single source and thus subject to rate monitoring.
    #   The only valid value for `RateKey` is `IP`. `IP` indicates that
    #   requests that arrive from the same IP address are subject to the
    #   `RateLimit` that is specified in the `RateBasedRule`.
    #   @return [String]
    #
    # @!attribute [rw] rate_limit
    #   The maximum number of requests, which have an identical value in the
    #   field that is specified by `RateKey`, allowed in a five-minute
    #   period. If the number of requests exceeds the `RateLimit` and the
    #   other predicates specified in the rule are also met, AWS WAF
    #   triggers the action that is specified for this rule.
    #   @return [Integer]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateRateBasedRule`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRateBasedRuleRequest AWS API Documentation
    #
    class CreateRateBasedRuleRequest < Struct.new(
      :name,
      :metric_name,
      :rate_key,
      :rate_limit,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   The RateBasedRule that is returned in the `CreateRateBasedRule`
    #   response.
    #   @return [Types::RateBasedRule]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateRateBasedRule`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRateBasedRuleResponse AWS API Documentation
    #
    class CreateRateBasedRuleResponse < Struct.new(
      :rule,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRegexMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RegexMatchSet. You can't
    #   change `Name` after you create a `RegexMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRegexMatchSetRequest AWS API Documentation
    #
    class CreateRegexMatchSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] regex_match_set
    #   A RegexMatchSet that contains no `RegexMatchTuple` objects.
    #   @return [Types::RegexMatchSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateRegexMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRegexMatchSetResponse AWS API Documentation
    #
    class CreateRegexMatchSetResponse < Struct.new(
      :regex_match_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RegexPatternSet. You can't
    #   change `Name` after you create a `RegexPatternSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRegexPatternSetRequest AWS API Documentation
    #
    class CreateRegexPatternSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] regex_pattern_set
    #   A RegexPatternSet that contains no objects.
    #   @return [Types::RegexPatternSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `CreateRegexPatternSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRegexPatternSetResponse AWS API Documentation
    #
    class CreateRegexPatternSetResponse < Struct.new(
      :regex_pattern_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         metric_name: "MetricName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RuleGroup. You can't change
    #   `Name` after you create a `RuleGroup`.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `RuleGroup`.
    #   The name can contain only alphanumeric characters (A-Z, a-z, 0-9);
    #   the name can't contain whitespace. You can't change the name of
    #   the metric after you create the `RuleGroup`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRuleGroupRequest AWS API Documentation
    #
    class CreateRuleGroupRequest < Struct.new(
      :name,
      :metric_name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] rule_group
    #   An empty RuleGroup.
    #   @return [Types::RuleGroup]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateRuleGroup`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRuleGroupResponse AWS API Documentation
    #
    class CreateRuleGroupResponse < Struct.new(
      :rule_group,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         metric_name: "MetricName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the Rule. You can't change the
    #   name of a `Rule` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `Rule`. The
    #   name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
    #   name can't contain whitespace. You can't change the name of the
    #   metric after you create the `Rule`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :name,
      :metric_name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   The Rule returned in the `CreateRule` response.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateRule` request.
    #   You can also use this value to query the status of the request. For
    #   more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateRuleResponse AWS API Documentation
    #
    class CreateRuleResponse < Struct.new(
      :rule,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSizeConstraintSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the SizeConstraintSet. You can't
    #   change `Name` after you create a `SizeConstraintSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateSizeConstraintSetRequest AWS API Documentation
    #
    class CreateSizeConstraintSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] size_constraint_set
    #   A SizeConstraintSet that contains no `SizeConstraint` objects.
    #   @return [Types::SizeConstraintSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `CreateSizeConstraintSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateSizeConstraintSetResponse AWS API Documentation
    #
    class CreateSizeConstraintSetResponse < Struct.new(
      :size_constraint_set,
      :change_token)
      include Aws::Structure
    end

    # A request to create a SqlInjectionMatchSet.
    #
    # @note When making an API call, you may pass CreateSqlInjectionMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description for the SqlInjectionMatchSet that
    #   you're creating. You can't change `Name` after you create the
    #   `SqlInjectionMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateSqlInjectionMatchSetRequest AWS API Documentation
    #
    class CreateSqlInjectionMatchSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # The response to a `CreateSqlInjectionMatchSet` request.
    #
    # @!attribute [rw] sql_injection_match_set
    #   A SqlInjectionMatchSet.
    #   @return [Types::SqlInjectionMatchSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `CreateSqlInjectionMatchSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateSqlInjectionMatchSetResponse AWS API Documentation
    #
    class CreateSqlInjectionMatchSetResponse < Struct.new(
      :sql_injection_match_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWebACLRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         metric_name: "MetricName", # required
    #         default_action: { # required
    #           type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #         },
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the WebACL. You can't change
    #   `Name` after you create the `WebACL`.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `WebACL`.
    #   The name can contain only alphanumeric characters (A-Z, a-z, 0-9);
    #   the name can't contain whitespace. You can't change `MetricName`
    #   after you create the `WebACL`.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action that you want AWS WAF to take when a request doesn't
    #   match the criteria specified in any of the `Rule` objects that are
    #   associated with the `WebACL`.
    #   @return [Types::WafAction]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateWebACLRequest AWS API Documentation
    #
    class CreateWebACLRequest < Struct.new(
      :name,
      :metric_name,
      :default_action,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] web_acl
    #   The WebACL returned in the `CreateWebACL` response.
    #   @return [Types::WebACL]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateWebACL`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateWebACLResponse AWS API Documentation
    #
    class CreateWebACLResponse < Struct.new(
      :web_acl,
      :change_token)
      include Aws::Structure
    end

    # A request to create an XssMatchSet.
    #
    # @note When making an API call, you may pass CreateXssMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description for the XssMatchSet that you're
    #   creating. You can't change `Name` after you create the
    #   `XssMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateXssMatchSetRequest AWS API Documentation
    #
    class CreateXssMatchSetRequest < Struct.new(
      :name,
      :change_token)
      include Aws::Structure
    end

    # The response to a `CreateXssMatchSet` request.
    #
    # @!attribute [rw] xss_match_set
    #   An XssMatchSet.
    #   @return [Types::XssMatchSet]
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `CreateXssMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/CreateXssMatchSetResponse AWS API Documentation
    #
    class CreateXssMatchSetResponse < Struct.new(
      :xss_match_set,
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteByteMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         byte_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] byte_match_set_id
    #   The `ByteMatchSetId` of the ByteMatchSet that you want to delete.
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteByteMatchSetRequest AWS API Documentation
    #
    class DeleteByteMatchSetRequest < Struct.new(
      :byte_match_set_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteByteMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteByteMatchSetResponse AWS API Documentation
    #
    class DeleteByteMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGeoMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         geo_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] geo_match_set_id
    #   The `GeoMatchSetID` of the GeoMatchSet that you want to delete.
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteGeoMatchSetRequest AWS API Documentation
    #
    class DeleteGeoMatchSetRequest < Struct.new(
      :geo_match_set_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteGeoMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteGeoMatchSetResponse AWS API Documentation
    #
    class DeleteGeoMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIPSetRequest
    #   data as a hash:
    #
    #       {
    #         ip_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] ip_set_id
    #   The `IPSetId` of the IPSet that you want to delete. `IPSetId` is
    #   returned by CreateIPSet and by ListIPSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteIPSetRequest AWS API Documentation
    #
    class DeleteIPSetRequest < Struct.new(
      :ip_set_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteIPSet` request.
    #   You can also use this value to query the status of the request. For
    #   more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteIPSetResponse AWS API Documentation
    #
    class DeleteIPSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteLoggingConfigurationRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteLoggingConfigurationResponse AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the RuleGroup from which you want
    #   to delete the policy.
    #
    #   The user making the request must be the owner of the RuleGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeletePermissionPolicyRequest AWS API Documentation
    #
    class DeletePermissionPolicyRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeletePermissionPolicyResponse AWS API Documentation
    #
    class DeletePermissionPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRateBasedRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the RateBasedRule that you want to delete. `RuleId`
    #   is returned by CreateRateBasedRule and by ListRateBasedRules.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRateBasedRuleRequest AWS API Documentation
    #
    class DeleteRateBasedRuleRequest < Struct.new(
      :rule_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteRateBasedRule`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRateBasedRuleResponse AWS API Documentation
    #
    class DeleteRateBasedRuleResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRegexMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         regex_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] regex_match_set_id
    #   The `RegexMatchSetId` of the RegexMatchSet that you want to delete.
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRegexMatchSetRequest AWS API Documentation
    #
    class DeleteRegexMatchSetRequest < Struct.new(
      :regex_match_set_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteRegexMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRegexMatchSetResponse AWS API Documentation
    #
    class DeleteRegexMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         regex_pattern_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] regex_pattern_set_id
    #   The `RegexPatternSetId` of the RegexPatternSet that you want to
    #   delete. `RegexPatternSetId` is returned by CreateRegexPatternSet and
    #   by ListRegexPatternSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRegexPatternSetRequest AWS API Documentation
    #
    class DeleteRegexPatternSetRequest < Struct.new(
      :regex_pattern_set_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `DeleteRegexPatternSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRegexPatternSetResponse AWS API Documentation
    #
    class DeleteRegexPatternSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         rule_group_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] rule_group_id
    #   The `RuleGroupId` of the RuleGroup that you want to delete.
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRuleGroupRequest AWS API Documentation
    #
    class DeleteRuleGroupRequest < Struct.new(
      :rule_group_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteRuleGroup`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRuleGroupResponse AWS API Documentation
    #
    class DeleteRuleGroupResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the Rule that you want to delete. `RuleId` is
    #   returned by CreateRule and by ListRules.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :rule_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteRule` request.
    #   You can also use this value to query the status of the request. For
    #   more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteRuleResponse AWS API Documentation
    #
    class DeleteRuleResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSizeConstraintSetRequest
    #   data as a hash:
    #
    #       {
    #         size_constraint_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] size_constraint_set_id
    #   The `SizeConstraintSetId` of the SizeConstraintSet that you want to
    #   delete. `SizeConstraintSetId` is returned by CreateSizeConstraintSet
    #   and by ListSizeConstraintSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteSizeConstraintSetRequest AWS API Documentation
    #
    class DeleteSizeConstraintSetRequest < Struct.new(
      :size_constraint_set_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `DeleteSizeConstraintSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteSizeConstraintSetResponse AWS API Documentation
    #
    class DeleteSizeConstraintSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # A request to delete a SqlInjectionMatchSet from AWS WAF.
    #
    # @note When making an API call, you may pass DeleteSqlInjectionMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         sql_injection_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] sql_injection_match_set_id
    #   The `SqlInjectionMatchSetId` of the SqlInjectionMatchSet that you
    #   want to delete. `SqlInjectionMatchSetId` is returned by
    #   CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteSqlInjectionMatchSetRequest AWS API Documentation
    #
    class DeleteSqlInjectionMatchSetRequest < Struct.new(
      :sql_injection_match_set_id,
      :change_token)
      include Aws::Structure
    end

    # The response to a request to delete a SqlInjectionMatchSet from AWS
    # WAF.
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `DeleteSqlInjectionMatchSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteSqlInjectionMatchSetResponse AWS API Documentation
    #
    class DeleteSqlInjectionMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteWebACLRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] web_acl_id
    #   The `WebACLId` of the WebACL that you want to delete. `WebACLId` is
    #   returned by CreateWebACL and by ListWebACLs.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteWebACLRequest AWS API Documentation
    #
    class DeleteWebACLRequest < Struct.new(
      :web_acl_id,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteWebACL`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteWebACLResponse AWS API Documentation
    #
    class DeleteWebACLResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # A request to delete an XssMatchSet from AWS WAF.
    #
    # @note When making an API call, you may pass DeleteXssMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         xss_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] xss_match_set_id
    #   The `XssMatchSetId` of the XssMatchSet that you want to delete.
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteXssMatchSetRequest AWS API Documentation
    #
    class DeleteXssMatchSetRequest < Struct.new(
      :xss_match_set_id,
      :change_token)
      include Aws::Structure
    end

    # The response to a request to delete an XssMatchSet from AWS WAF.
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `DeleteXssMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/DeleteXssMatchSetResponse AWS API Documentation
    #
    class DeleteXssMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # Specifies where in a web request to look for `TargetString`.
    #
    # @note When making an API call, you may pass FieldToMatch
    #   data as a hash:
    #
    #       {
    #         type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #         data: "MatchFieldData",
    #       }
    #
    # @!attribute [rw] type
    #   The part of the web request that you want AWS WAF to search for a
    #   specified string. Parts of a request that you can search include the
    #   following:
    #
    #   * `HEADER`\: A specified request header, for example, the value of
    #     the `User-Agent` or `Referer` header. If you choose `HEADER` for
    #     the type, specify the name of the header in `Data`.
    #
    #   * `METHOD`\: The HTTP method, which indicated the type of operation
    #     that the request is asking the origin to perform. Amazon
    #     CloudFront supports the following methods: `DELETE`, `GET`,
    #     `HEAD`, `OPTIONS`, `PATCH`, `POST`, and `PUT`.
    #
    #   * `QUERY_STRING`\: A query string, which is the part of a URL that
    #     appears after a `?` character, if any.
    #
    #   * `URI`\: The part of a web request that identifies a resource, for
    #     example, `/images/daily-ad.jpg`.
    #
    #   * `BODY`\: The part of a request that contains any additional data
    #     that you want to send to your web server as the HTTP request body,
    #     such as data from a form. The request body immediately follows the
    #     request headers. Note that only the first `8192` bytes of the
    #     request body are forwarded to AWS WAF for inspection. To allow or
    #     block requests based on the length of the body, you can create a
    #     size constraint set. For more information, see
    #     CreateSizeConstraintSet.
    #
    #   * `SINGLE_QUERY_ARG`\: The parameter in the query string that you
    #     will inspect, such as *UserName* or *SalesRegion*. The maximum
    #     length for `SINGLE_QUERY_ARG` is 30 characters.
    #
    #   * `ALL_QUERY_ARGS`\: Similar to `SINGLE_QUERY_ARG`, but rather than
    #     inspecting a single parameter, AWS WAF will inspect all parameters
    #     within the query for the value or regex pattern that you specify
    #     in `TargetString`.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   When the value of `Type` is `HEADER`, enter the name of the header
    #   that you want AWS WAF to search, for example, `User-Agent` or
    #   `Referer`. The name of the header is not case sensitive.
    #
    #   When the value of `Type` is `SINGLE_QUERY_ARG`, enter the name of
    #   the parameter that you want AWS WAF to search, for example,
    #   `UserName` or `SalesRegion`. The parameter name is not case
    #   sensitive.
    #
    #   If the value of `Type` is any other value, omit `Data`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/FieldToMatch AWS API Documentation
    #
    class FieldToMatch < Struct.new(
      :type,
      :data)
      include Aws::Structure
    end

    # The country from which web requests originate that you want AWS WAF to
    # search for.
    #
    # @note When making an API call, you may pass GeoMatchConstraint
    #   data as a hash:
    #
    #       {
    #         type: "Country", # required, accepts Country
    #         value: "AF", # required, accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #       }
    #
    # @!attribute [rw] type
    #   The type of geographical area you want AWS WAF to search for.
    #   Currently `Country` is the only valid value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The country that you want AWS WAF to search for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GeoMatchConstraint AWS API Documentation
    #
    class GeoMatchConstraint < Struct.new(
      :type,
      :value)
      include Aws::Structure
    end

    # Contains one or more countries that AWS WAF will search for.
    #
    # @!attribute [rw] geo_match_set_id
    #   The `GeoMatchSetId` for an `GeoMatchSet`. You use `GeoMatchSetId` to
    #   get information about a `GeoMatchSet` (see GeoMatchSet), update a
    #   `GeoMatchSet` (see UpdateGeoMatchSet), insert a `GeoMatchSet` into a
    #   `Rule` or delete one from a `Rule` (see UpdateRule), and delete a
    #   `GeoMatchSet` from AWS WAF (see DeleteGeoMatchSet).
    #
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the GeoMatchSet. You can't change
    #   the name of an `GeoMatchSet` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_constraints
    #   An array of GeoMatchConstraint objects, which contain the country
    #   that you want AWS WAF to search for.
    #   @return [Array<Types::GeoMatchConstraint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GeoMatchSet AWS API Documentation
    #
    class GeoMatchSet < Struct.new(
      :geo_match_set_id,
      :name,
      :geo_match_constraints)
      include Aws::Structure
    end

    # Contains the identifier and the name of the `GeoMatchSet`.
    #
    # @!attribute [rw] geo_match_set_id
    #   The `GeoMatchSetId` for an GeoMatchSet. You can use `GeoMatchSetId`
    #   in a GetGeoMatchSet request to get detailed information about an
    #   GeoMatchSet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the GeoMatchSet. You can't change
    #   the name of an `GeoMatchSet` after you create it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GeoMatchSetSummary AWS API Documentation
    #
    class GeoMatchSetSummary < Struct.new(
      :geo_match_set_id,
      :name)
      include Aws::Structure
    end

    # Specifies the type of update to perform to an GeoMatchSet with
    # UpdateGeoMatchSet.
    #
    # @note When making an API call, you may pass GeoMatchSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         geo_match_constraint: { # required
    #           type: "Country", # required, accepts Country
    #           value: "AF", # required, accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specifies whether to insert or delete a country with
    #   UpdateGeoMatchSet.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_constraint
    #   The country from which web requests originate that you want AWS WAF
    #   to search for.
    #   @return [Types::GeoMatchConstraint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GeoMatchSetUpdate AWS API Documentation
    #
    class GeoMatchSetUpdate < Struct.new(
      :action,
      :geo_match_constraint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetByteMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         byte_match_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] byte_match_set_id
    #   The `ByteMatchSetId` of the ByteMatchSet that you want to get.
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetByteMatchSetRequest AWS API Documentation
    #
    class GetByteMatchSetRequest < Struct.new(
      :byte_match_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] byte_match_set
    #   Information about the ByteMatchSet that you specified in the
    #   `GetByteMatchSet` request. For more information, see the following
    #   topics:
    #
    #   * ByteMatchSet: Contains `ByteMatchSetId`, `ByteMatchTuples`, and
    #     `Name`
    #
    #   * `ByteMatchTuples`\: Contains an array of ByteMatchTuple objects.
    #     Each `ByteMatchTuple` object contains FieldToMatch,
    #     `PositionalConstraint`, `TargetString`, and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Types::ByteMatchSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetByteMatchSetResponse AWS API Documentation
    #
    class GetByteMatchSetResponse < Struct.new(
      :byte_match_set)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetChangeTokenRequest AWS API Documentation
    #
    class GetChangeTokenRequest < Aws::EmptyStructure; end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used in the request. Use this value in a
    #   `GetChangeTokenStatus` request to get the current status of the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetChangeTokenResponse AWS API Documentation
    #
    class GetChangeTokenResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetChangeTokenStatusRequest
    #   data as a hash:
    #
    #       {
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] change_token
    #   The change token for which you want to get the status. This change
    #   token was previously returned in the `GetChangeToken` response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetChangeTokenStatusRequest AWS API Documentation
    #
    class GetChangeTokenStatusRequest < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token_status
    #   The status of the change token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetChangeTokenStatusResponse AWS API Documentation
    #
    class GetChangeTokenStatusResponse < Struct.new(
      :change_token_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGeoMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         geo_match_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] geo_match_set_id
    #   The `GeoMatchSetId` of the GeoMatchSet that you want to get.
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetGeoMatchSetRequest AWS API Documentation
    #
    class GetGeoMatchSetRequest < Struct.new(
      :geo_match_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] geo_match_set
    #   Information about the GeoMatchSet that you specified in the
    #   `GetGeoMatchSet` request. This includes the `Type`, which for a
    #   `GeoMatchContraint` is always `Country`, as well as the `Value`,
    #   which is the identifier for a specific country.
    #   @return [Types::GeoMatchSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetGeoMatchSetResponse AWS API Documentation
    #
    class GetGeoMatchSetResponse < Struct.new(
      :geo_match_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIPSetRequest
    #   data as a hash:
    #
    #       {
    #         ip_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] ip_set_id
    #   The `IPSetId` of the IPSet that you want to get. `IPSetId` is
    #   returned by CreateIPSet and by ListIPSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetIPSetRequest AWS API Documentation
    #
    class GetIPSetRequest < Struct.new(
      :ip_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] ip_set
    #   Information about the IPSet that you specified in the `GetIPSet`
    #   request. For more information, see the following topics:
    #
    #   * IPSet: Contains `IPSetDescriptors`, `IPSetId`, and `Name`
    #
    #   * `IPSetDescriptors`\: Contains an array of IPSetDescriptor objects.
    #     Each `IPSetDescriptor` object contains `Type` and `Value`
    #   @return [Types::IPSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetIPSetResponse AWS API Documentation
    #
    class GetIPSetResponse < Struct.new(
      :ip_set)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetLoggingConfigurationRequest AWS API Documentation
    #
    class GetLoggingConfigurationRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   The LoggingConfiguration for the specified web ACL.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetLoggingConfigurationResponse AWS API Documentation
    #
    class GetLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
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
    #   The Amazon Resource Name (ARN) of the RuleGroup for which you want
    #   to get the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetPermissionPolicyRequest AWS API Documentation
    #
    class GetPermissionPolicyRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The IAM policy attached to the specified RuleGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetPermissionPolicyResponse AWS API Documentation
    #
    class GetPermissionPolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRateBasedRuleManagedKeysRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #         next_marker: "NextMarker",
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the RateBasedRule for which you want to get a list
    #   of `ManagedKeys`. `RuleId` is returned by CreateRateBasedRule and by
    #   ListRateBasedRules.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   A null value and not currently used. Do not include this in your
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRateBasedRuleManagedKeysRequest AWS API Documentation
    #
    class GetRateBasedRuleManagedKeysRequest < Struct.new(
      :rule_id,
      :next_marker)
      include Aws::Structure
    end

    # @!attribute [rw] managed_keys
    #   An array of IP addresses that currently are blocked by the specified
    #   RateBasedRule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_marker
    #   A null value and not currently used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRateBasedRuleManagedKeysResponse AWS API Documentation
    #
    class GetRateBasedRuleManagedKeysResponse < Struct.new(
      :managed_keys,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRateBasedRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the RateBasedRule that you want to get. `RuleId` is
    #   returned by CreateRateBasedRule and by ListRateBasedRules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRateBasedRuleRequest AWS API Documentation
    #
    class GetRateBasedRuleRequest < Struct.new(
      :rule_id)
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   Information about the RateBasedRule that you specified in the
    #   `GetRateBasedRule` request.
    #   @return [Types::RateBasedRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRateBasedRuleResponse AWS API Documentation
    #
    class GetRateBasedRuleResponse < Struct.new(
      :rule)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRegexMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         regex_match_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] regex_match_set_id
    #   The `RegexMatchSetId` of the RegexMatchSet that you want to get.
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRegexMatchSetRequest AWS API Documentation
    #
    class GetRegexMatchSetRequest < Struct.new(
      :regex_match_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] regex_match_set
    #   Information about the RegexMatchSet that you specified in the
    #   `GetRegexMatchSet` request. For more information, see
    #   RegexMatchTuple.
    #   @return [Types::RegexMatchSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRegexMatchSetResponse AWS API Documentation
    #
    class GetRegexMatchSetResponse < Struct.new(
      :regex_match_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         regex_pattern_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] regex_pattern_set_id
    #   The `RegexPatternSetId` of the RegexPatternSet that you want to get.
    #   `RegexPatternSetId` is returned by CreateRegexPatternSet and by
    #   ListRegexPatternSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRegexPatternSetRequest AWS API Documentation
    #
    class GetRegexPatternSetRequest < Struct.new(
      :regex_pattern_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] regex_pattern_set
    #   Information about the RegexPatternSet that you specified in the
    #   `GetRegexPatternSet` request, including the identifier of the
    #   pattern set and the regular expression patterns you want AWS WAF to
    #   search for.
    #   @return [Types::RegexPatternSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRegexPatternSetResponse AWS API Documentation
    #
    class GetRegexPatternSetResponse < Struct.new(
      :regex_pattern_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         rule_group_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] rule_group_id
    #   The `RuleGroupId` of the RuleGroup that you want to get.
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRuleGroupRequest AWS API Documentation
    #
    class GetRuleGroupRequest < Struct.new(
      :rule_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] rule_group
    #   Information about the RuleGroup that you specified in the
    #   `GetRuleGroup` request.
    #   @return [Types::RuleGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRuleGroupResponse AWS API Documentation
    #
    class GetRuleGroupResponse < Struct.new(
      :rule_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the Rule that you want to get. `RuleId` is returned
    #   by CreateRule and by ListRules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRuleRequest AWS API Documentation
    #
    class GetRuleRequest < Struct.new(
      :rule_id)
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   Information about the Rule that you specified in the `GetRule`
    #   request. For more information, see the following topics:
    #
    #   * Rule: Contains `MetricName`, `Name`, an array of `Predicate`
    #     objects, and `RuleId`
    #
    #   * Predicate: Each `Predicate` object contains `DataId`, `Negated`,
    #     and `Type`
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetRuleResponse AWS API Documentation
    #
    class GetRuleResponse < Struct.new(
      :rule)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSampledRequestsRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_id: "ResourceId", # required
    #         rule_id: "ResourceId", # required
    #         time_window: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         max_items: 1, # required
    #       }
    #
    # @!attribute [rw] web_acl_id
    #   The `WebACLId` of the `WebACL` for which you want
    #   `GetSampledRequests` to return a sample of requests.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   `RuleId` is one of three values:
    #
    #   * The `RuleId` of the `Rule` or the `RuleGroupId` of the `RuleGroup`
    #     for which you want `GetSampledRequests` to return a sample of
    #     requests.
    #
    #   * `Default_Action`, which causes `GetSampledRequests` to return a
    #     sample of the requests that didn't match any of the rules in the
    #     specified `WebACL`.
    #   @return [String]
    #
    # @!attribute [rw] time_window
    #   The start date and time and the end date and time of the range for
    #   which you want `GetSampledRequests` to return a sample of requests.
    #   Specify the date and time in the following format:
    #   `"2016-09-27T14:50Z"`. You can specify any time range in the
    #   previous three hours.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetSampledRequestsRequest AWS API Documentation
    #
    class GetSampledRequestsRequest < Struct.new(
      :web_acl_id,
      :rule_id,
      :time_window,
      :max_items)
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
    #   first 5,000 requests.
    #   @return [Types::TimeWindow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetSampledRequestsResponse AWS API Documentation
    #
    class GetSampledRequestsResponse < Struct.new(
      :sampled_requests,
      :population_size,
      :time_window)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSizeConstraintSetRequest
    #   data as a hash:
    #
    #       {
    #         size_constraint_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] size_constraint_set_id
    #   The `SizeConstraintSetId` of the SizeConstraintSet that you want to
    #   get. `SizeConstraintSetId` is returned by CreateSizeConstraintSet
    #   and by ListSizeConstraintSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetSizeConstraintSetRequest AWS API Documentation
    #
    class GetSizeConstraintSetRequest < Struct.new(
      :size_constraint_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] size_constraint_set
    #   Information about the SizeConstraintSet that you specified in the
    #   `GetSizeConstraintSet` request. For more information, see the
    #   following topics:
    #
    #   * SizeConstraintSet: Contains `SizeConstraintSetId`,
    #     `SizeConstraints`, and `Name`
    #
    #   * `SizeConstraints`\: Contains an array of SizeConstraint objects.
    #     Each `SizeConstraint` object contains FieldToMatch,
    #     `TextTransformation`, `ComparisonOperator`, and `Size`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Types::SizeConstraintSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetSizeConstraintSetResponse AWS API Documentation
    #
    class GetSizeConstraintSetResponse < Struct.new(
      :size_constraint_set)
      include Aws::Structure
    end

    # A request to get a SqlInjectionMatchSet.
    #
    # @note When making an API call, you may pass GetSqlInjectionMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         sql_injection_match_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] sql_injection_match_set_id
    #   The `SqlInjectionMatchSetId` of the SqlInjectionMatchSet that you
    #   want to get. `SqlInjectionMatchSetId` is returned by
    #   CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetSqlInjectionMatchSetRequest AWS API Documentation
    #
    class GetSqlInjectionMatchSetRequest < Struct.new(
      :sql_injection_match_set_id)
      include Aws::Structure
    end

    # The response to a GetSqlInjectionMatchSet request.
    #
    # @!attribute [rw] sql_injection_match_set
    #   Information about the SqlInjectionMatchSet that you specified in the
    #   `GetSqlInjectionMatchSet` request. For more information, see the
    #   following topics:
    #
    #   * SqlInjectionMatchSet: Contains `Name`, `SqlInjectionMatchSetId`,
    #     and an array of `SqlInjectionMatchTuple` objects
    #
    #   * SqlInjectionMatchTuple: Each `SqlInjectionMatchTuple` object
    #     contains `FieldToMatch` and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Types::SqlInjectionMatchSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetSqlInjectionMatchSetResponse AWS API Documentation
    #
    class GetSqlInjectionMatchSetResponse < Struct.new(
      :sql_injection_match_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWebACLRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] web_acl_id
    #   The `WebACLId` of the WebACL that you want to get. `WebACLId` is
    #   returned by CreateWebACL and by ListWebACLs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetWebACLRequest AWS API Documentation
    #
    class GetWebACLRequest < Struct.new(
      :web_acl_id)
      include Aws::Structure
    end

    # @!attribute [rw] web_acl
    #   Information about the WebACL that you specified in the `GetWebACL`
    #   request. For more information, see the following topics:
    #
    #   * WebACL: Contains `DefaultAction`, `MetricName`, `Name`, an array
    #     of `Rule` objects, and `WebACLId`
    #
    #   * `DefaultAction` (Data type is WafAction): Contains `Type`
    #
    #   * `Rules`\: Contains an array of `ActivatedRule` objects, which
    #     contain `Action`, `Priority`, and `RuleId`
    #
    #   * `Action`\: Contains `Type`
    #   @return [Types::WebACL]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetWebACLResponse AWS API Documentation
    #
    class GetWebACLResponse < Struct.new(
      :web_acl)
      include Aws::Structure
    end

    # A request to get an XssMatchSet.
    #
    # @note When making an API call, you may pass GetXssMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         xss_match_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] xss_match_set_id
    #   The `XssMatchSetId` of the XssMatchSet that you want to get.
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetXssMatchSetRequest AWS API Documentation
    #
    class GetXssMatchSetRequest < Struct.new(
      :xss_match_set_id)
      include Aws::Structure
    end

    # The response to a GetXssMatchSet request.
    #
    # @!attribute [rw] xss_match_set
    #   Information about the XssMatchSet that you specified in the
    #   `GetXssMatchSet` request. For more information, see the following
    #   topics:
    #
    #   * XssMatchSet: Contains `Name`, `XssMatchSetId`, and an array of
    #     `XssMatchTuple` objects
    #
    #   * XssMatchTuple: Each `XssMatchTuple` object contains `FieldToMatch`
    #     and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Types::XssMatchSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/GetXssMatchSetResponse AWS API Documentation
    #
    class GetXssMatchSetResponse < Struct.new(
      :xss_match_set)
      include Aws::Structure
    end

    # The response from a GetSampledRequests request includes an
    # `HTTPHeader` complex type that appears as `Headers` in the response
    # syntax. `HTTPHeader` contains the names and values of all of the
    # headers that appear in one of the web requests that were returned by
    # `GetSampledRequests`.
    #
    # @!attribute [rw] name
    #   The name of one of the headers in the sampled web request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of one of the headers in the sampled web request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/HTTPHeader AWS API Documentation
    #
    class HTTPHeader < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # The response from a GetSampledRequests request includes an
    # `HTTPRequest` complex type that appears as `Request` in the response
    # syntax. `HTTPRequest` contains information about one of the web
    # requests that were returned by `GetSampledRequests`.
    #
    # @!attribute [rw] client_ip
    #   The IP address that the request originated from. If the `WebACL` is
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
    #   The part of a web request that identifies the resource, for example,
    #   `/images/daily-ad.jpg`.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP method specified in the sampled web request. CloudFront
    #   supports the following methods: `DELETE`, `GET`, `HEAD`, `OPTIONS`,
    #   `PATCH`, `POST`, and `PUT`.
    #   @return [String]
    #
    # @!attribute [rw] http_version
    #   The HTTP version specified in the sampled web request, for example,
    #   `HTTP/1.1`.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   A complex type that contains two values for each header in the
    #   sampled web request: the name of the header and the value of the
    #   header.
    #   @return [Array<Types::HTTPHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/HTTPRequest AWS API Documentation
    #
    class HTTPRequest < Struct.new(
      :client_ip,
      :country,
      :uri,
      :method,
      :http_version,
      :headers)
      include Aws::Structure
    end

    # Contains one or more IP addresses or blocks of IP addresses specified
    # in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports
    # IPv4 address ranges: /8 and any range between /16 through /32. AWS WAF
    # supports IPv6 address ranges: /16, /24, /32, /48, /56, /64, and /128.
    #
    # To specify an individual IP address, you specify the four-part IP
    # address followed by a `/32`, for example, 192.0.2.0/31. To block a
    # range of IP addresses, you can specify /8 or any range between /16
    # through /32 (for IPv4) or /16, /24, /32, /48, /56, /64, or /128 (for
    # IPv6). For more information about CIDR notation, see the Wikipedia
    # entry [Classless Inter-Domain Routing][1].
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @!attribute [rw] ip_set_id
    #   The `IPSetId` for an `IPSet`. You use `IPSetId` to get information
    #   about an `IPSet` (see GetIPSet), update an `IPSet` (see
    #   UpdateIPSet), insert an `IPSet` into a `Rule` or delete one from a
    #   `Rule` (see UpdateRule), and delete an `IPSet` from AWS WAF (see
    #   DeleteIPSet).
    #
    #   `IPSetId` is returned by CreateIPSet and by ListIPSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the IPSet. You can't change the
    #   name of an `IPSet` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_descriptors
    #   The IP address type (`IPV4` or `IPV6`) and the IP address range (in
    #   CIDR notation) that web requests originate from. If the `WebACL` is
    #   associated with a CloudFront distribution and the viewer did not use
    #   an HTTP proxy or a load balancer to send the request, this is the
    #   value of the c-ip field in the CloudFront access logs.
    #   @return [Array<Types::IPSetDescriptor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/IPSet AWS API Documentation
    #
    class IPSet < Struct.new(
      :ip_set_id,
      :name,
      :ip_set_descriptors)
      include Aws::Structure
    end

    # Specifies the IP address type (`IPV4` or `IPV6`) and the IP address
    # range (in CIDR format) that web requests originate from.
    #
    # @note When making an API call, you may pass IPSetDescriptor
    #   data as a hash:
    #
    #       {
    #         type: "IPV4", # required, accepts IPV4, IPV6
    #         value: "IPSetDescriptorValue", # required
    #       }
    #
    # @!attribute [rw] type
    #   Specify `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specify an IPv4 address by using CIDR notation. For example:
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify
    #     `192.0.2.44/32`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255,
    #     specify `192.0.2.0/24`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #   Specify an IPv6 address by using CIDR notation. For example:
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
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/IPSetDescriptor AWS API Documentation
    #
    class IPSetDescriptor < Struct.new(
      :type,
      :value)
      include Aws::Structure
    end

    # Contains the identifier and the name of the `IPSet`.
    #
    # @!attribute [rw] ip_set_id
    #   The `IPSetId` for an IPSet. You can use `IPSetId` in a GetIPSet
    #   request to get detailed information about an IPSet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the IPSet. You can't change the
    #   name of an `IPSet` after you create it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/IPSetSummary AWS API Documentation
    #
    class IPSetSummary < Struct.new(
      :ip_set_id,
      :name)
      include Aws::Structure
    end

    # Specifies the type of update to perform to an IPSet with UpdateIPSet.
    #
    # @note When making an API call, you may pass IPSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         ip_set_descriptor: { # required
    #           type: "IPV4", # required, accepts IPV4, IPV6
    #           value: "IPSetDescriptorValue", # required
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specifies whether to insert or delete an IP address with
    #   UpdateIPSet.
    #   @return [String]
    #
    # @!attribute [rw] ip_set_descriptor
    #   The IP address type (`IPV4` or `IPV6`) and the IP address range (in
    #   CIDR notation) that web requests originate from.
    #   @return [Types::IPSetDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/IPSetUpdate AWS API Documentation
    #
    class IPSetUpdate < Struct.new(
      :action,
      :ip_set_descriptor)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListActivatedRulesInRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         rule_group_id: "ResourceId",
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rule_group_id
    #   The `RuleGroupId` of the RuleGroup for which you want to get a list
    #   of ActivatedRule objects.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more
    #   `ActivatedRules` than the value of `Limit`, AWS WAF returns a
    #   `NextMarker` value in the response that allows you to list another
    #   group of `ActivatedRules`. For the second and subsequent
    #   `ListActivatedRulesInRuleGroup` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `ActivatedRules`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `ActivatedRules` that you want AWS WAF to
    #   return for this request. If you have more `ActivatedRules` than the
    #   number that you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `ActivatedRules`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListActivatedRulesInRuleGroupRequest AWS API Documentation
    #
    class ListActivatedRulesInRuleGroupRequest < Struct.new(
      :rule_group_id,
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `ActivatedRules` than the number that you specified
    #   for `Limit` in the request, the response includes a `NextMarker`
    #   value. To list more `ActivatedRules`, submit another
    #   `ListActivatedRulesInRuleGroup` request, and specify the
    #   `NextMarker` value from the response in the `NextMarker` value in
    #   the next request.
    #   @return [String]
    #
    # @!attribute [rw] activated_rules
    #   An array of `ActivatedRules` objects.
    #   @return [Array<Types::ActivatedRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListActivatedRulesInRuleGroupResponse AWS API Documentation
    #
    class ListActivatedRulesInRuleGroupResponse < Struct.new(
      :next_marker,
      :activated_rules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListByteMatchSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `ByteMatchSets`
    #   than the value of `Limit`, AWS WAF returns a `NextMarker` value in
    #   the response that allows you to list another group of
    #   `ByteMatchSets`. For the second and subsequent `ListByteMatchSets`
    #   requests, specify the value of `NextMarker` from the previous
    #   response to get information about another batch of `ByteMatchSets`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `ByteMatchSet` objects that you want AWS WAF
    #   to return for this request. If you have more `ByteMatchSets` objects
    #   than the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `ByteMatchSet` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListByteMatchSetsRequest AWS API Documentation
    #
    class ListByteMatchSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `ByteMatchSet` objects than the number that you
    #   specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `ByteMatchSet` objects, submit
    #   another `ListByteMatchSets` request, and specify the `NextMarker`
    #   value from the response in the `NextMarker` value in the next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] byte_match_sets
    #   An array of ByteMatchSetSummary objects.
    #   @return [Array<Types::ByteMatchSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListByteMatchSetsResponse AWS API Documentation
    #
    class ListByteMatchSetsResponse < Struct.new(
      :next_marker,
      :byte_match_sets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGeoMatchSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `GeoMatchSet`s
    #   than the value of `Limit`, AWS WAF returns a `NextMarker` value in
    #   the response that allows you to list another group of `GeoMatchSet`
    #   objects. For the second and subsequent `ListGeoMatchSets` requests,
    #   specify the value of `NextMarker` from the previous response to get
    #   information about another batch of `GeoMatchSet` objects.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `GeoMatchSet` objects that you want AWS WAF
    #   to return for this request. If you have more `GeoMatchSet` objects
    #   than the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of
    #   `GeoMatchSet` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListGeoMatchSetsRequest AWS API Documentation
    #
    class ListGeoMatchSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `GeoMatchSet` objects than the number that you
    #   specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `GeoMatchSet` objects, submit
    #   another `ListGeoMatchSets` request, and specify the `NextMarker`
    #   value from the response in the `NextMarker` value in the next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_sets
    #   An array of GeoMatchSetSummary objects.
    #   @return [Array<Types::GeoMatchSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListGeoMatchSetsResponse AWS API Documentation
    #
    class ListGeoMatchSetsResponse < Struct.new(
      :next_marker,
      :geo_match_sets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIPSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `IPSets` than
    #   the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `IPSets`. For the
    #   second and subsequent `ListIPSets` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `IPSets`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `IPSet` objects that you want AWS WAF to
    #   return for this request. If you have more `IPSet` objects than the
    #   number you specify for `Limit`, the response includes a `NextMarker`
    #   value that you can use to get another batch of `IPSet` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListIPSetsRequest AWS API Documentation
    #
    class ListIPSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `IPSet` objects than the number that you specified
    #   for `Limit` in the request, the response includes a `NextMarker`
    #   value. To list more `IPSet` objects, submit another `ListIPSets`
    #   request, and specify the `NextMarker` value from the response in the
    #   `NextMarker` value in the next request.
    #   @return [String]
    #
    # @!attribute [rw] ip_sets
    #   An array of IPSetSummary objects.
    #   @return [Array<Types::IPSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListIPSetsResponse AWS API Documentation
    #
    class ListIPSetsResponse < Struct.new(
      :next_marker,
      :ip_sets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLoggingConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more
    #   `LoggingConfigurations` than the value of `Limit`, AWS WAF returns a
    #   `NextMarker` value in the response that allows you to list another
    #   group of `LoggingConfigurations`. For the second and subsequent
    #   `ListLoggingConfigurations` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `ListLoggingConfigurations`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `LoggingConfigurations` that you want AWS
    #   WAF to return for this request. If you have more
    #   `LoggingConfigurations` than the number that you specify for
    #   `Limit`, the response includes a `NextMarker` value that you can use
    #   to get another batch of `LoggingConfigurations`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListLoggingConfigurationsRequest AWS API Documentation
    #
    class ListLoggingConfigurationsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] logging_configurations
    #   An array of LoggingConfiguration objects.
    #   @return [Array<Types::LoggingConfiguration>]
    #
    # @!attribute [rw] next_marker
    #   If you have more `LoggingConfigurations` than the number that you
    #   specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `LoggingConfigurations`, submit
    #   another `ListLoggingConfigurations` request, and specify the
    #   `NextMarker` value from the response in the `NextMarker` value in
    #   the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListLoggingConfigurationsResponse AWS API Documentation
    #
    class ListLoggingConfigurationsResponse < Struct.new(
      :logging_configurations,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRateBasedRulesRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `Rules` than
    #   the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `Rules`. For the
    #   second and subsequent `ListRateBasedRules` requests, specify the
    #   value of `NextMarker` from the previous response to get information
    #   about another batch of `Rules`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `Rules` that you want AWS WAF to return for
    #   this request. If you have more `Rules` than the number that you
    #   specify for `Limit`, the response includes a `NextMarker` value that
    #   you can use to get another batch of `Rules`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRateBasedRulesRequest AWS API Documentation
    #
    class ListRateBasedRulesRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `Rules` than the number that you specified for
    #   `Limit` in the request, the response includes a `NextMarker` value.
    #   To list more `Rules`, submit another `ListRateBasedRules` request,
    #   and specify the `NextMarker` value from the response in the
    #   `NextMarker` value in the next request.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of RuleSummary objects.
    #   @return [Array<Types::RuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRateBasedRulesResponse AWS API Documentation
    #
    class ListRateBasedRulesResponse < Struct.new(
      :next_marker,
      :rules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRegexMatchSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `RegexMatchSet`
    #   objects than the value of `Limit`, AWS WAF returns a `NextMarker`
    #   value in the response that allows you to list another group of
    #   `ByteMatchSets`. For the second and subsequent `ListRegexMatchSets`
    #   requests, specify the value of `NextMarker` from the previous
    #   response to get information about another batch of `RegexMatchSet`
    #   objects.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `RegexMatchSet` objects that you want AWS
    #   WAF to return for this request. If you have more `RegexMatchSet`
    #   objects than the number you specify for `Limit`, the response
    #   includes a `NextMarker` value that you can use to get another batch
    #   of `RegexMatchSet` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRegexMatchSetsRequest AWS API Documentation
    #
    class ListRegexMatchSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `RegexMatchSet` objects than the number that you
    #   specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `RegexMatchSet` objects, submit
    #   another `ListRegexMatchSets` request, and specify the `NextMarker`
    #   value from the response in the `NextMarker` value in the next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] regex_match_sets
    #   An array of RegexMatchSetSummary objects.
    #   @return [Array<Types::RegexMatchSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRegexMatchSetsResponse AWS API Documentation
    #
    class ListRegexMatchSetsResponse < Struct.new(
      :next_marker,
      :regex_match_sets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRegexPatternSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more
    #   `RegexPatternSet` objects than the value of `Limit`, AWS WAF returns
    #   a `NextMarker` value in the response that allows you to list another
    #   group of `RegexPatternSet` objects. For the second and subsequent
    #   `ListRegexPatternSets` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `RegexPatternSet` objects.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `RegexPatternSet` objects that you want AWS
    #   WAF to return for this request. If you have more `RegexPatternSet`
    #   objects than the number you specify for `Limit`, the response
    #   includes a `NextMarker` value that you can use to get another batch
    #   of `RegexPatternSet` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRegexPatternSetsRequest AWS API Documentation
    #
    class ListRegexPatternSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `RegexPatternSet` objects than the number that you
    #   specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `RegexPatternSet` objects, submit
    #   another `ListRegexPatternSets` request, and specify the `NextMarker`
    #   value from the response in the `NextMarker` value in the next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] regex_pattern_sets
    #   An array of RegexPatternSetSummary objects.
    #   @return [Array<Types::RegexPatternSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRegexPatternSetsResponse AWS API Documentation
    #
    class ListRegexPatternSetsResponse < Struct.new(
      :next_marker,
      :regex_pattern_sets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRuleGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `RuleGroups`
    #   than the value of `Limit`, AWS WAF returns a `NextMarker` value in
    #   the response that allows you to list another group of `RuleGroups`.
    #   For the second and subsequent `ListRuleGroups` requests, specify the
    #   value of `NextMarker` from the previous response to get information
    #   about another batch of `RuleGroups`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `RuleGroups` that you want AWS WAF to return
    #   for this request. If you have more `RuleGroups` than the number that
    #   you specify for `Limit`, the response includes a `NextMarker` value
    #   that you can use to get another batch of `RuleGroups`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRuleGroupsRequest AWS API Documentation
    #
    class ListRuleGroupsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `RuleGroups` than the number that you specified for
    #   `Limit` in the request, the response includes a `NextMarker` value.
    #   To list more `RuleGroups`, submit another `ListRuleGroups` request,
    #   and specify the `NextMarker` value from the response in the
    #   `NextMarker` value in the next request.
    #   @return [String]
    #
    # @!attribute [rw] rule_groups
    #   An array of RuleGroup objects.
    #   @return [Array<Types::RuleGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRuleGroupsResponse AWS API Documentation
    #
    class ListRuleGroupsResponse < Struct.new(
      :next_marker,
      :rule_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRulesRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `Rules` than
    #   the value of `Limit`, AWS WAF returns a `NextMarker` value in the
    #   response that allows you to list another group of `Rules`. For the
    #   second and subsequent `ListRules` requests, specify the value of
    #   `NextMarker` from the previous response to get information about
    #   another batch of `Rules`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `Rules` that you want AWS WAF to return for
    #   this request. If you have more `Rules` than the number that you
    #   specify for `Limit`, the response includes a `NextMarker` value that
    #   you can use to get another batch of `Rules`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `Rules` than the number that you specified for
    #   `Limit` in the request, the response includes a `NextMarker` value.
    #   To list more `Rules`, submit another `ListRules` request, and
    #   specify the `NextMarker` value from the response in the `NextMarker`
    #   value in the next request.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of RuleSummary objects.
    #   @return [Array<Types::RuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :next_marker,
      :rules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSizeConstraintSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more
    #   `SizeConstraintSets` than the value of `Limit`, AWS WAF returns a
    #   `NextMarker` value in the response that allows you to list another
    #   group of `SizeConstraintSets`. For the second and subsequent
    #   `ListSizeConstraintSets` requests, specify the value of `NextMarker`
    #   from the previous response to get information about another batch of
    #   `SizeConstraintSets`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `SizeConstraintSet` objects that you want
    #   AWS WAF to return for this request. If you have more
    #   `SizeConstraintSets` objects than the number you specify for
    #   `Limit`, the response includes a `NextMarker` value that you can use
    #   to get another batch of `SizeConstraintSet` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListSizeConstraintSetsRequest AWS API Documentation
    #
    class ListSizeConstraintSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `SizeConstraintSet` objects than the number that
    #   you specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `SizeConstraintSet` objects, submit
    #   another `ListSizeConstraintSets` request, and specify the
    #   `NextMarker` value from the response in the `NextMarker` value in
    #   the next request.
    #   @return [String]
    #
    # @!attribute [rw] size_constraint_sets
    #   An array of SizeConstraintSetSummary objects.
    #   @return [Array<Types::SizeConstraintSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListSizeConstraintSetsResponse AWS API Documentation
    #
    class ListSizeConstraintSetsResponse < Struct.new(
      :next_marker,
      :size_constraint_sets)
      include Aws::Structure
    end

    # A request to list the SqlInjectionMatchSet objects created by the
    # current AWS account.
    #
    # @note When making an API call, you may pass ListSqlInjectionMatchSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more
    #   SqlInjectionMatchSet objects than the value of `Limit`, AWS WAF
    #   returns a `NextMarker` value in the response that allows you to list
    #   another group of `SqlInjectionMatchSets`. For the second and
    #   subsequent `ListSqlInjectionMatchSets` requests, specify the value
    #   of `NextMarker` from the previous response to get information about
    #   another batch of `SqlInjectionMatchSets`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of SqlInjectionMatchSet objects that you want
    #   AWS WAF to return for this request. If you have more
    #   `SqlInjectionMatchSet` objects than the number you specify for
    #   `Limit`, the response includes a `NextMarker` value that you can use
    #   to get another batch of `Rules`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListSqlInjectionMatchSetsRequest AWS API Documentation
    #
    class ListSqlInjectionMatchSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # The response to a ListSqlInjectionMatchSets request.
    #
    # @!attribute [rw] next_marker
    #   If you have more SqlInjectionMatchSet objects than the number that
    #   you specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `SqlInjectionMatchSet` objects,
    #   submit another `ListSqlInjectionMatchSets` request, and specify the
    #   `NextMarker` value from the response in the `NextMarker` value in
    #   the next request.
    #   @return [String]
    #
    # @!attribute [rw] sql_injection_match_sets
    #   An array of SqlInjectionMatchSetSummary objects.
    #   @return [Array<Types::SqlInjectionMatchSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListSqlInjectionMatchSetsResponse AWS API Documentation
    #
    class ListSqlInjectionMatchSetsResponse < Struct.new(
      :next_marker,
      :sql_injection_match_sets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSubscribedRuleGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more
    #   `ByteMatchSets`subscribed rule groups than the value of `Limit`, AWS
    #   WAF returns a `NextMarker` value in the response that allows you to
    #   list another group of subscribed rule groups. For the second and
    #   subsequent `ListSubscribedRuleGroupsRequest` requests, specify the
    #   value of `NextMarker` from the previous response to get information
    #   about another batch of subscribed rule groups.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of subscribed rule groups that you want AWS WAF
    #   to return for this request. If you have more objects than the number
    #   you specify for `Limit`, the response includes a `NextMarker` value
    #   that you can use to get another batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListSubscribedRuleGroupsRequest AWS API Documentation
    #
    class ListSubscribedRuleGroupsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more objects than the number that you specified for
    #   `Limit` in the request, the response includes a `NextMarker` value.
    #   To list more objects, submit another `ListSubscribedRuleGroups`
    #   request, and specify the `NextMarker` value from the response in the
    #   `NextMarker` value in the next request.
    #   @return [String]
    #
    # @!attribute [rw] rule_groups
    #   An array of RuleGroup objects.
    #   @return [Array<Types::SubscribedRuleGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListSubscribedRuleGroupsResponse AWS API Documentation
    #
    class ListSubscribedRuleGroupsResponse < Struct.new(
      :next_marker,
      :rule_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWebACLsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more `WebACL`
    #   objects than the number that you specify for `Limit`, AWS WAF
    #   returns a `NextMarker` value in the response that allows you to list
    #   another group of `WebACL` objects. For the second and subsequent
    #   `ListWebACLs` requests, specify the value of `NextMarker` from the
    #   previous response to get information about another batch of `WebACL`
    #   objects.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of `WebACL` objects that you want AWS WAF to
    #   return for this request. If you have more `WebACL` objects than the
    #   number that you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of `WebACL`
    #   objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListWebACLsRequest AWS API Documentation
    #
    class ListWebACLsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   If you have more `WebACL` objects than the number that you specified
    #   for `Limit` in the request, the response includes a `NextMarker`
    #   value. To list more `WebACL` objects, submit another `ListWebACLs`
    #   request, and specify the `NextMarker` value from the response in the
    #   `NextMarker` value in the next request.
    #   @return [String]
    #
    # @!attribute [rw] web_acls
    #   An array of WebACLSummary objects.
    #   @return [Array<Types::WebACLSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListWebACLsResponse AWS API Documentation
    #
    class ListWebACLsResponse < Struct.new(
      :next_marker,
      :web_acls)
      include Aws::Structure
    end

    # A request to list the XssMatchSet objects created by the current AWS
    # account.
    #
    # @note When making an API call, you may pass ListXssMatchSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_marker: "NextMarker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_marker
    #   If you specify a value for `Limit` and you have more XssMatchSet
    #   objects than the value of `Limit`, AWS WAF returns a `NextMarker`
    #   value in the response that allows you to list another group of
    #   `XssMatchSets`. For the second and subsequent `ListXssMatchSets`
    #   requests, specify the value of `NextMarker` from the previous
    #   response to get information about another batch of `XssMatchSets`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of XssMatchSet objects that you want AWS WAF to
    #   return for this request. If you have more `XssMatchSet` objects than
    #   the number you specify for `Limit`, the response includes a
    #   `NextMarker` value that you can use to get another batch of `Rules`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListXssMatchSetsRequest AWS API Documentation
    #
    class ListXssMatchSetsRequest < Struct.new(
      :next_marker,
      :limit)
      include Aws::Structure
    end

    # The response to a ListXssMatchSets request.
    #
    # @!attribute [rw] next_marker
    #   If you have more XssMatchSet objects than the number that you
    #   specified for `Limit` in the request, the response includes a
    #   `NextMarker` value. To list more `XssMatchSet` objects, submit
    #   another `ListXssMatchSets` request, and specify the `NextMarker`
    #   value from the response in the `NextMarker` value in the next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] xss_match_sets
    #   An array of XssMatchSetSummary objects.
    #   @return [Array<Types::XssMatchSetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/ListXssMatchSetsResponse AWS API Documentation
    #
    class ListXssMatchSetsResponse < Struct.new(
      :next_marker,
      :xss_match_sets)
      include Aws::Structure
    end

    # The Amazon Kinesis Data Firehose delivery streams, `RedactedFields`
    # information, and the web ACL Amazon Resource Name (ARN).
    #
    # @note When making an API call, you may pass LoggingConfiguration
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         log_destination_configs: ["ResourceArn"], # required
    #         redacted_fields: [
    #           {
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with `LogDestinationConfigs`.
    #   @return [String]
    #
    # @!attribute [rw] log_destination_configs
    #   An array of Amazon Kinesis Data Firehose delivery stream ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redacted_fields
    #   The parts of the request that you want redacted from the logs. For
    #   example, if you redact the cookie field, the cookie field in the
    #   delivery stream will be `xxx`.
    #   @return [Array<Types::FieldToMatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :resource_arn,
      :log_destination_configs,
      :redacted_fields)
      include Aws::Structure
    end

    # Specifies the ByteMatchSet, IPSet, SqlInjectionMatchSet, XssMatchSet,
    # RegexMatchSet, GeoMatchSet, and SizeConstraintSet objects that you
    # want to add to a `Rule` and, for each object, indicates whether you
    # want to negate the settings, for example, requests that do NOT
    # originate from the IP address 192.0.2.44.
    #
    # @note When making an API call, you may pass Predicate
    #   data as a hash:
    #
    #       {
    #         negated: false, # required
    #         type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch
    #         data_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] negated
    #   Set `Negated` to `False` if you want AWS WAF to allow, block, or
    #   count requests based on the settings in the specified ByteMatchSet,
    #   IPSet, SqlInjectionMatchSet, XssMatchSet, RegexMatchSet,
    #   GeoMatchSet, or SizeConstraintSet. For example, if an `IPSet`
    #   includes the IP address `192.0.2.44`, AWS WAF will allow or block
    #   requests based on that IP address.
    #
    #   Set `Negated` to `True` if you want AWS WAF to allow or block a
    #   request based on the negation of the settings in the ByteMatchSet,
    #   IPSet, SqlInjectionMatchSet, XssMatchSet, RegexMatchSet,
    #   GeoMatchSet, or SizeConstraintSet. For example, if an `IPSet`
    #   includes the IP address `192.0.2.44`, AWS WAF will allow, block, or
    #   count requests based on all IP addresses *except* `192.0.2.44`.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of predicate in a `Rule`, such as `ByteMatch` or `IPSet`.
    #   @return [String]
    #
    # @!attribute [rw] data_id
    #   A unique identifier for a predicate in a `Rule`, such as
    #   `ByteMatchSetId` or `IPSetId`. The ID is returned by the
    #   corresponding `Create` or `List` command.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/Predicate AWS API Documentation
    #
    class Predicate < Struct.new(
      :negated,
      :type,
      :data_id)
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
    #               type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #               data: "MatchFieldData",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] logging_configuration
    #   The Amazon Kinesis Data Firehose delivery streams that contains the
    #   inspected traffic information, the redacted fields details, and the
    #   Amazon Resource Name (ARN) of the web ACL to monitor.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/PutLoggingConfigurationRequest AWS API Documentation
    #
    class PutLoggingConfigurationRequest < Struct.new(
      :logging_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   The LoggingConfiguration that you submitted in the request.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/PutLoggingConfigurationResponse AWS API Documentation
    #
    class PutLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
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
    #   The policy to attach to the specified RuleGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/PutPermissionPolicyRequest AWS API Documentation
    #
    class PutPermissionPolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/PutPermissionPolicyResponse AWS API Documentation
    #
    class PutPermissionPolicyResponse < Aws::EmptyStructure; end

    # A `RateBasedRule` is identical to a regular Rule, with one addition: a
    # `RateBasedRule` counts the number of requests that arrive from a
    # specified IP address every five minutes. For example, based on recent
    # requests that you've seen from an attacker, you might create a
    # `RateBasedRule` that includes the following conditions:
    #
    # * The requests come from 192.0.2.44.
    #
    # * They contain the value `BadBot` in the `User-Agent` header.
    #
    # In the rule, you also define the rate limit as 15,000.
    #
    # Requests that meet both of these conditions and exceed 15,000 requests
    # every five minutes trigger the rule's action (block or count), which
    # is defined in the web ACL.
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for a `RateBasedRule`. You use `RuleId` to get
    #   more information about a `RateBasedRule` (see GetRateBasedRule),
    #   update a `RateBasedRule` (see UpdateRateBasedRule), insert a
    #   `RateBasedRule` into a `WebACL` or delete one from a `WebACL` (see
    #   UpdateWebACL), or delete a `RateBasedRule` from AWS WAF (see
    #   DeleteRateBasedRule).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description for a `RateBasedRule`. You can't
    #   change the name of a `RateBasedRule` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for a
    #   `RateBasedRule`. The name can contain only alphanumeric characters
    #   (A-Z, a-z, 0-9); the name can't contain whitespace. You can't
    #   change the name of the metric after you create the `RateBasedRule`.
    #   @return [String]
    #
    # @!attribute [rw] match_predicates
    #   The `Predicates` object contains one `Predicate` element for each
    #   ByteMatchSet, IPSet, or SqlInjectionMatchSet object that you want to
    #   include in a `RateBasedRule`.
    #   @return [Array<Types::Predicate>]
    #
    # @!attribute [rw] rate_key
    #   The field that AWS WAF uses to determine if requests are likely
    #   arriving from single source and thus subject to rate monitoring. The
    #   only valid value for `RateKey` is `IP`. `IP` indicates that requests
    #   arriving from the same IP address are subject to the `RateLimit`
    #   that is specified in the `RateBasedRule`.
    #   @return [String]
    #
    # @!attribute [rw] rate_limit
    #   The maximum number of requests, which have an identical value in the
    #   field specified by the `RateKey`, allowed in a five-minute period.
    #   If the number of requests exceeds the `RateLimit` and the other
    #   predicates specified in the rule are also met, AWS WAF triggers the
    #   action that is specified for this rule.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RateBasedRule AWS API Documentation
    #
    class RateBasedRule < Struct.new(
      :rule_id,
      :name,
      :metric_name,
      :match_predicates,
      :rate_key,
      :rate_limit)
      include Aws::Structure
    end

    # In a GetRegexMatchSet request, `RegexMatchSet` is a complex type that
    # contains the `RegexMatchSetId` and `Name` of a `RegexMatchSet`, and
    # the values that you specified when you updated the `RegexMatchSet`.
    #
    # The values are contained in a `RegexMatchTuple` object, which specify
    # the parts of web requests that you want AWS WAF to inspect and the
    # values that you want AWS WAF to search for. If a `RegexMatchSet`
    # contains more than one `RegexMatchTuple` object, a request needs to
    # match the settings in only one `ByteMatchTuple` to be considered a
    # match.
    #
    # @!attribute [rw] regex_match_set_id
    #   The `RegexMatchSetId` for a `RegexMatchSet`. You use
    #   `RegexMatchSetId` to get information about a `RegexMatchSet` (see
    #   GetRegexMatchSet), update a `RegexMatchSet` (see
    #   UpdateRegexMatchSet), insert a `RegexMatchSet` into a `Rule` or
    #   delete one from a `Rule` (see UpdateRule), and delete a
    #   `RegexMatchSet` from AWS WAF (see DeleteRegexMatchSet).
    #
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RegexMatchSet. You can't
    #   change `Name` after you create a `RegexMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] regex_match_tuples
    #   Contains an array of RegexMatchTuple objects. Each `RegexMatchTuple`
    #   object contains:
    #
    #   * The part of a web request that you want AWS WAF to inspect, such
    #     as a query string or the value of the `User-Agent` header.
    #
    #   * The identifier of the pattern (a regular expression) that you want
    #     AWS WAF to look for. For more information, see RegexPatternSet.
    #
    #   * Whether to perform any conversions on the request, such as
    #     converting it to lowercase, before inspecting it for the specified
    #     string.
    #   @return [Array<Types::RegexMatchTuple>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexMatchSet AWS API Documentation
    #
    class RegexMatchSet < Struct.new(
      :regex_match_set_id,
      :name,
      :regex_match_tuples)
      include Aws::Structure
    end

    # Returned by ListRegexMatchSets. Each `RegexMatchSetSummary` object
    # includes the `Name` and `RegexMatchSetId` for one RegexMatchSet.
    #
    # @!attribute [rw] regex_match_set_id
    #   The `RegexMatchSetId` for a `RegexMatchSet`. You use
    #   `RegexMatchSetId` to get information about a `RegexMatchSet`, update
    #   a `RegexMatchSet`, remove a `RegexMatchSet` from a `Rule`, and
    #   delete a `RegexMatchSet` from AWS WAF.
    #
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RegexMatchSet. You can't
    #   change `Name` after you create a `RegexMatchSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexMatchSetSummary AWS API Documentation
    #
    class RegexMatchSetSummary < Struct.new(
      :regex_match_set_id,
      :name)
      include Aws::Structure
    end

    # In an UpdateRegexMatchSet request, `RegexMatchSetUpdate` specifies
    # whether to insert or delete a RegexMatchTuple and includes the
    # settings for the `RegexMatchTuple`.
    #
    # @note When making an API call, you may pass RegexMatchSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         regex_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           regex_pattern_set_id: "ResourceId", # required
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specifies whether to insert or delete a RegexMatchTuple.
    #   @return [String]
    #
    # @!attribute [rw] regex_match_tuple
    #   Information about the part of a web request that you want AWS WAF to
    #   inspect and the identifier of the regular expression (regex) pattern
    #   that you want AWS WAF to search for. If you specify `DELETE` for the
    #   value of `Action`, the `RegexMatchTuple` values must exactly match
    #   the values in the `RegexMatchTuple` that you want to delete from the
    #   `RegexMatchSet`.
    #   @return [Types::RegexMatchTuple]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexMatchSetUpdate AWS API Documentation
    #
    class RegexMatchSetUpdate < Struct.new(
      :action,
      :regex_match_tuple)
      include Aws::Structure
    end

    # The regular expression pattern that you want AWS WAF to search for in
    # web requests, the location in requests that you want AWS WAF to
    # search, and other settings. Each `RegexMatchTuple` object contains:
    #
    # * The part of a web request that you want AWS WAF to inspect, such as
    #   a query string or the value of the `User-Agent` header.
    #
    # * The identifier of the pattern (a regular expression) that you want
    #   AWS WAF to look for. For more information, see RegexPatternSet.
    #
    # * Whether to perform any conversions on the request, such as
    #   converting it to lowercase, before inspecting it for the specified
    #   string.
    #
    # @note When making an API call, you may pass RegexMatchTuple
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #           data: "MatchFieldData",
    #         },
    #         text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         regex_pattern_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] field_to_match
    #   Specifies where in a web request to look for the `RegexPatternSet`.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformation
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass AWS WAF. If you
    #   specify a transformation, AWS WAF performs the transformation on
    #   `RegexPatternSet` before inspecting a request for a match.
    #
    #   You can only specify a single type of TextTransformation.
    #
    #   **CMD\_LINE**
    #
    #   When you're concerned that attackers are injecting an operating
    #   system commandline command and using unusual formatting to disguise
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
    #   Specify `NONE` if you don't want to perform any text
    #   transformations.
    #   @return [String]
    #
    # @!attribute [rw] regex_pattern_set_id
    #   The `RegexPatternSetId` for a `RegexPatternSet`. You use
    #   `RegexPatternSetId` to get information about a `RegexPatternSet`
    #   (see GetRegexPatternSet), update a `RegexPatternSet` (see
    #   UpdateRegexPatternSet), insert a `RegexPatternSet` into a
    #   `RegexMatchSet` or delete one from a `RegexMatchSet` (see
    #   UpdateRegexMatchSet), and delete an `RegexPatternSet` from AWS WAF
    #   (see DeleteRegexPatternSet).
    #
    #   `RegexPatternSetId` is returned by CreateRegexPatternSet and by
    #   ListRegexPatternSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexMatchTuple AWS API Documentation
    #
    class RegexMatchTuple < Struct.new(
      :field_to_match,
      :text_transformation,
      :regex_pattern_set_id)
      include Aws::Structure
    end

    # The `RegexPatternSet` specifies the regular expression (regex) pattern
    # that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. You can
    # then configure AWS WAF to reject those requests.
    #
    # @!attribute [rw] regex_pattern_set_id
    #   The identifier for the `RegexPatternSet`. You use
    #   `RegexPatternSetId` to get information about a `RegexPatternSet`,
    #   update a `RegexPatternSet`, remove a `RegexPatternSet` from a
    #   `RegexMatchSet`, and delete a `RegexPatternSet` from AWS WAF.
    #
    #   `RegexMatchSetId` is returned by CreateRegexPatternSet and by
    #   ListRegexPatternSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RegexPatternSet. You can't
    #   change `Name` after you create a `RegexPatternSet`.
    #   @return [String]
    #
    # @!attribute [rw] regex_pattern_strings
    #   Specifies the regular expression (regex) patterns that you want AWS
    #   WAF to search for, such as `B[a@]dB[o0]t`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexPatternSet AWS API Documentation
    #
    class RegexPatternSet < Struct.new(
      :regex_pattern_set_id,
      :name,
      :regex_pattern_strings)
      include Aws::Structure
    end

    # Returned by ListRegexPatternSets. Each `RegexPatternSetSummary` object
    # includes the `Name` and `RegexPatternSetId` for one RegexPatternSet.
    #
    # @!attribute [rw] regex_pattern_set_id
    #   The `RegexPatternSetId` for a `RegexPatternSet`. You use
    #   `RegexPatternSetId` to get information about a `RegexPatternSet`,
    #   update a `RegexPatternSet`, remove a `RegexPatternSet` from a
    #   `RegexMatchSet`, and delete a `RegexPatternSet` from AWS WAF.
    #
    #   `RegexPatternSetId` is returned by CreateRegexPatternSet and by
    #   ListRegexPatternSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RegexPatternSet. You can't
    #   change `Name` after you create a `RegexPatternSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexPatternSetSummary AWS API Documentation
    #
    class RegexPatternSetSummary < Struct.new(
      :regex_pattern_set_id,
      :name)
      include Aws::Structure
    end

    # In an UpdateRegexPatternSet request, `RegexPatternSetUpdate` specifies
    # whether to insert or delete a `RegexPatternString` and includes the
    # settings for the `RegexPatternString`.
    #
    # @note When making an API call, you may pass RegexPatternSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         regex_pattern_string: "RegexPatternString", # required
    #       }
    #
    # @!attribute [rw] action
    #   Specifies whether to insert or delete a `RegexPatternString`.
    #   @return [String]
    #
    # @!attribute [rw] regex_pattern_string
    #   Specifies the regular expression (regex) pattern that you want AWS
    #   WAF to search for, such as `B[a@]dB[o0]t`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RegexPatternSetUpdate AWS API Documentation
    #
    class RegexPatternSetUpdate < Struct.new(
      :action,
      :regex_pattern_string)
      include Aws::Structure
    end

    # A combination of ByteMatchSet, IPSet, and/or SqlInjectionMatchSet
    # objects that identify the web requests that you want to allow, block,
    # or count. For example, you might create a `Rule` that includes the
    # following predicates:
    #
    # * An `IPSet` that causes AWS WAF to search for web requests that
    #   originate from the IP address `192.0.2.44`
    #
    # * A `ByteMatchSet` that causes AWS WAF to search for web requests for
    #   which the value of the `User-Agent` header is `BadBot`.
    #
    # To match the settings in this `Rule`, a request must originate from
    # `192.0.2.44` AND include a `User-Agent` header for which the value is
    # `BadBot`.
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for a `Rule`. You use `RuleId` to get more
    #   information about a `Rule` (see GetRule), update a `Rule` (see
    #   UpdateRule), insert a `Rule` into a `WebACL` or delete a one from a
    #   `WebACL` (see UpdateWebACL), or delete a `Rule` from AWS WAF (see
    #   DeleteRule).
    #
    #   `RuleId` is returned by CreateRule and by ListRules.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name or description for the `Rule`. You can't change
    #   the name of a `Rule` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `Rule`. The
    #   name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
    #   name can't contain whitespace. You can't change `MetricName` after
    #   you create the `Rule`.
    #   @return [String]
    #
    # @!attribute [rw] predicates
    #   The `Predicates` object contains one `Predicate` element for each
    #   ByteMatchSet, IPSet, or SqlInjectionMatchSet object that you want to
    #   include in a `Rule`.
    #   @return [Array<Types::Predicate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :rule_id,
      :name,
      :metric_name,
      :predicates)
      include Aws::Structure
    end

    # A collection of predefined rules that you can add to a web ACL.
    #
    # Rule groups are subject to the following limits:
    #
    # * Three rule groups per account. You can request an increase to this
    #   limit by contacting customer support.
    #
    # * One rule group per web ACL.
    #
    # * Ten rules per rule group.
    #
    # @!attribute [rw] rule_group_id
    #   A unique identifier for a `RuleGroup`. You use `RuleGroupId` to get
    #   more information about a `RuleGroup` (see GetRuleGroup), update a
    #   `RuleGroup` (see UpdateRuleGroup), insert a `RuleGroup` into a
    #   `WebACL` or delete a one from a `WebACL` (see UpdateWebACL), or
    #   delete a `RuleGroup` from AWS WAF (see DeleteRuleGroup).
    #
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name or description for the `RuleGroup`. You can't
    #   change the name of a `RuleGroup` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `RuleGroup`.
    #   The name can contain only alphanumeric characters (A-Z, a-z, 0-9);
    #   the name can't contain whitespace. You can't change the name of
    #   the metric after you create the `RuleGroup`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RuleGroup AWS API Documentation
    #
    class RuleGroup < Struct.new(
      :rule_group_id,
      :name,
      :metric_name)
      include Aws::Structure
    end

    # Contains the identifier and the friendly name or description of the
    # `RuleGroup`.
    #
    # @!attribute [rw] rule_group_id
    #   A unique identifier for a `RuleGroup`. You use `RuleGroupId` to get
    #   more information about a `RuleGroup` (see GetRuleGroup), update a
    #   `RuleGroup` (see UpdateRuleGroup), insert a `RuleGroup` into a
    #   `WebACL` or delete one from a `WebACL` (see UpdateWebACL), or delete
    #   a `RuleGroup` from AWS WAF (see DeleteRuleGroup).
    #
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the RuleGroup. You can't change
    #   the name of a `RuleGroup` after you create it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RuleGroupSummary AWS API Documentation
    #
    class RuleGroupSummary < Struct.new(
      :rule_group_id,
      :name)
      include Aws::Structure
    end

    # Specifies an `ActivatedRule` and indicates whether you want to add it
    # to a `RuleGroup` or delete it from a `RuleGroup`.
    #
    # @note When making an API call, you may pass RuleGroupUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         activated_rule: { # required
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #           },
    #           override_action: {
    #             type: "NONE", # required, accepts NONE, COUNT
    #           },
    #           type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specify `INSERT` to add an `ActivatedRule` to a `RuleGroup`. Use
    #   `DELETE` to remove an `ActivatedRule` from a `RuleGroup`.
    #   @return [String]
    #
    # @!attribute [rw] activated_rule
    #   The `ActivatedRule` object specifies a `Rule` that you want to
    #   insert or delete, the priority of the `Rule` in the `WebACL`, and
    #   the action that you want AWS WAF to take when a web request matches
    #   the `Rule` (`ALLOW`, `BLOCK`, or `COUNT`).
    #   @return [Types::ActivatedRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RuleGroupUpdate AWS API Documentation
    #
    class RuleGroupUpdate < Struct.new(
      :action,
      :activated_rule)
      include Aws::Structure
    end

    # Contains the identifier and the friendly name or description of the
    # `Rule`.
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for a `Rule`. You use `RuleId` to get more
    #   information about a `Rule` (see GetRule), update a `Rule` (see
    #   UpdateRule), insert a `Rule` into a `WebACL` or delete one from a
    #   `WebACL` (see UpdateWebACL), or delete a `Rule` from AWS WAF (see
    #   DeleteRule).
    #
    #   `RuleId` is returned by CreateRule and by ListRules.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the Rule. You can't change the
    #   name of a `Rule` after you create it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :rule_id,
      :name)
      include Aws::Structure
    end

    # Specifies a `Predicate` (such as an `IPSet`) and indicates whether you
    # want to add it to a `Rule` or delete it from a `Rule`.
    #
    # @note When making an API call, you may pass RuleUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         predicate: { # required
    #           negated: false, # required
    #           type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch
    #           data_id: "ResourceId", # required
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specify `INSERT` to add a `Predicate` to a `Rule`. Use `DELETE` to
    #   remove a `Predicate` from a `Rule`.
    #   @return [String]
    #
    # @!attribute [rw] predicate
    #   The ID of the `Predicate` (such as an `IPSet`) that you want to add
    #   to a `Rule`.
    #   @return [Types::Predicate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/RuleUpdate AWS API Documentation
    #
    class RuleUpdate < Struct.new(
      :action,
      :predicate)
      include Aws::Structure
    end

    # The response from a GetSampledRequests request includes a
    # `SampledHTTPRequests` complex type that appears as `SampledRequests`
    # in the response syntax. `SampledHTTPRequests` contains one
    # `SampledHTTPRequest` object for each web request that is returned by
    # `GetSampledRequests`.
    #
    # @!attribute [rw] request
    #   A complex type that contains detailed information about the request.
    #   @return [Types::HTTPRequest]
    #
    # @!attribute [rw] weight
    #   A value that indicates how one result in the response relates
    #   proportionally to other results in the response. A result that has a
    #   weight of `2` represents roughly twice as many CloudFront web
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
    # @!attribute [rw] rule_within_rule_group
    #   This value is returned if the `GetSampledRequests` request specifies
    #   the ID of a `RuleGroup` rather than the ID of an individual rule.
    #   `RuleWithinRuleGroup` is the rule within the specified `RuleGroup`
    #   that matched the request listed in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SampledHTTPRequest AWS API Documentation
    #
    class SampledHTTPRequest < Struct.new(
      :request,
      :weight,
      :timestamp,
      :action,
      :rule_within_rule_group)
      include Aws::Structure
    end

    # Specifies a constraint on the size of a part of the web request. AWS
    # WAF uses the `Size`, `ComparisonOperator`, and `FieldToMatch` to build
    # an expression in the form of "`Size` `ComparisonOperator` size in
    # bytes of `FieldToMatch`". If that expression is true, the
    # `SizeConstraint` is considered to match.
    #
    # @note When making an API call, you may pass SizeConstraint
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #           data: "MatchFieldData",
    #         },
    #         text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #         size: 1, # required
    #       }
    #
    # @!attribute [rw] field_to_match
    #   Specifies where in a web request to look for the size constraint.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformation
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass AWS WAF. If you
    #   specify a transformation, AWS WAF performs the transformation on
    #   `FieldToMatch` before inspecting a request for a match.
    #
    #   You can only specify a single type of TextTransformation.
    #
    #   Note that if you choose `BODY` for the value of `Type`, you must
    #   choose `NONE` for `TextTransformation` because CloudFront forwards
    #   only the first 8192 bytes for inspection.
    #
    #   **NONE**
    #
    #   Specify `NONE` if you don't want to perform any text
    #   transformations.
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
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The type of comparison you want AWS WAF to perform. AWS WAF uses
    #   this in combination with the provided `Size` and `FieldToMatch` to
    #   build an expression in the form of "`Size` `ComparisonOperator`
    #   size in bytes of `FieldToMatch`". If that expression is true, the
    #   `SizeConstraint` is considered to match.
    #
    #   **EQ**\: Used to test if the `Size` is equal to the size of the
    #   `FieldToMatch`
    #
    #   **NE**\: Used to test if the `Size` is not equal to the size of the
    #   `FieldToMatch`
    #
    #   **LE**\: Used to test if the `Size` is less than or equal to the
    #   size of the `FieldToMatch`
    #
    #   **LT**\: Used to test if the `Size` is strictly less than the size
    #   of the `FieldToMatch`
    #
    #   **GE**\: Used to test if the `Size` is greater than or equal to the
    #   size of the `FieldToMatch`
    #
    #   **GT**\: Used to test if the `Size` is strictly greater than the
    #   size of the `FieldToMatch`
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size in bytes that you want AWS WAF to compare against the size
    #   of the specified `FieldToMatch`. AWS WAF uses this in combination
    #   with `ComparisonOperator` and `FieldToMatch` to build an expression
    #   in the form of "`Size` `ComparisonOperator` size in bytes of
    #   `FieldToMatch`". If that expression is true, the `SizeConstraint`
    #   is considered to match.
    #
    #   Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).
    #
    #   If you specify `URI` for the value of `Type`, the / in the URI
    #   counts as one character. For example, the URI `/logo.jpg` is nine
    #   characters long.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SizeConstraint AWS API Documentation
    #
    class SizeConstraint < Struct.new(
      :field_to_match,
      :text_transformation,
      :comparison_operator,
      :size)
      include Aws::Structure
    end

    # A complex type that contains `SizeConstraint` objects, which specify
    # the parts of web requests that you want AWS WAF to inspect the size
    # of. If a `SizeConstraintSet` contains more than one `SizeConstraint`
    # object, a request only needs to match one constraint to be considered
    # a match.
    #
    # @!attribute [rw] size_constraint_set_id
    #   A unique identifier for a `SizeConstraintSet`. You use
    #   `SizeConstraintSetId` to get information about a `SizeConstraintSet`
    #   (see GetSizeConstraintSet), update a `SizeConstraintSet` (see
    #   UpdateSizeConstraintSet), insert a `SizeConstraintSet` into a `Rule`
    #   or delete one from a `Rule` (see UpdateRule), and delete a
    #   `SizeConstraintSet` from AWS WAF (see DeleteSizeConstraintSet).
    #
    #   `SizeConstraintSetId` is returned by CreateSizeConstraintSet and by
    #   ListSizeConstraintSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name, if any, of the `SizeConstraintSet`.
    #   @return [String]
    #
    # @!attribute [rw] size_constraints
    #   Specifies the parts of web requests that you want to inspect the
    #   size of.
    #   @return [Array<Types::SizeConstraint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SizeConstraintSet AWS API Documentation
    #
    class SizeConstraintSet < Struct.new(
      :size_constraint_set_id,
      :name,
      :size_constraints)
      include Aws::Structure
    end

    # The `Id` and `Name` of a `SizeConstraintSet`.
    #
    # @!attribute [rw] size_constraint_set_id
    #   A unique identifier for a `SizeConstraintSet`. You use
    #   `SizeConstraintSetId` to get information about a `SizeConstraintSet`
    #   (see GetSizeConstraintSet), update a `SizeConstraintSet` (see
    #   UpdateSizeConstraintSet), insert a `SizeConstraintSet` into a `Rule`
    #   or delete one from a `Rule` (see UpdateRule), and delete a
    #   `SizeConstraintSet` from AWS WAF (see DeleteSizeConstraintSet).
    #
    #   `SizeConstraintSetId` is returned by CreateSizeConstraintSet and by
    #   ListSizeConstraintSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `SizeConstraintSet`, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SizeConstraintSetSummary AWS API Documentation
    #
    class SizeConstraintSetSummary < Struct.new(
      :size_constraint_set_id,
      :name)
      include Aws::Structure
    end

    # Specifies the part of a web request that you want to inspect the size
    # of and indicates whether you want to add the specification to a
    # SizeConstraintSet or delete it from a `SizeConstraintSet`.
    #
    # @note When making an API call, you may pass SizeConstraintSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         size_constraint: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #           comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #           size: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specify `INSERT` to add a SizeConstraintSetUpdate to a
    #   SizeConstraintSet. Use `DELETE` to remove a
    #   `SizeConstraintSetUpdate` from a `SizeConstraintSet`.
    #   @return [String]
    #
    # @!attribute [rw] size_constraint
    #   Specifies a constraint on the size of a part of the web request. AWS
    #   WAF uses the `Size`, `ComparisonOperator`, and `FieldToMatch` to
    #   build an expression in the form of "`Size` `ComparisonOperator`
    #   size in bytes of `FieldToMatch`". If that expression is true, the
    #   `SizeConstraint` is considered to match.
    #   @return [Types::SizeConstraint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SizeConstraintSetUpdate AWS API Documentation
    #
    class SizeConstraintSetUpdate < Struct.new(
      :action,
      :size_constraint)
      include Aws::Structure
    end

    # A complex type that contains `SqlInjectionMatchTuple` objects, which
    # specify the parts of web requests that you want AWS WAF to inspect for
    # snippets of malicious SQL code and, if you want AWS WAF to inspect a
    # header, the name of the header. If a `SqlInjectionMatchSet` contains
    # more than one `SqlInjectionMatchTuple` object, a request needs to
    # include snippets of SQL code in only one of the specified parts of the
    # request to be considered a match.
    #
    # @!attribute [rw] sql_injection_match_set_id
    #   A unique identifier for a `SqlInjectionMatchSet`. You use
    #   `SqlInjectionMatchSetId` to get information about a
    #   `SqlInjectionMatchSet` (see GetSqlInjectionMatchSet), update a
    #   `SqlInjectionMatchSet` (see UpdateSqlInjectionMatchSet), insert a
    #   `SqlInjectionMatchSet` into a `Rule` or delete one from a `Rule`
    #   (see UpdateRule), and delete a `SqlInjectionMatchSet` from AWS WAF
    #   (see DeleteSqlInjectionMatchSet).
    #
    #   `SqlInjectionMatchSetId` is returned by CreateSqlInjectionMatchSet
    #   and by ListSqlInjectionMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name, if any, of the `SqlInjectionMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] sql_injection_match_tuples
    #   Specifies the parts of web requests that you want to inspect for
    #   snippets of malicious SQL code.
    #   @return [Array<Types::SqlInjectionMatchTuple>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SqlInjectionMatchSet AWS API Documentation
    #
    class SqlInjectionMatchSet < Struct.new(
      :sql_injection_match_set_id,
      :name,
      :sql_injection_match_tuples)
      include Aws::Structure
    end

    # The `Id` and `Name` of a `SqlInjectionMatchSet`.
    #
    # @!attribute [rw] sql_injection_match_set_id
    #   A unique identifier for a `SqlInjectionMatchSet`. You use
    #   `SqlInjectionMatchSetId` to get information about a
    #   `SqlInjectionMatchSet` (see GetSqlInjectionMatchSet), update a
    #   `SqlInjectionMatchSet` (see UpdateSqlInjectionMatchSet), insert a
    #   `SqlInjectionMatchSet` into a `Rule` or delete one from a `Rule`
    #   (see UpdateRule), and delete a `SqlInjectionMatchSet` from AWS WAF
    #   (see DeleteSqlInjectionMatchSet).
    #
    #   `SqlInjectionMatchSetId` is returned by CreateSqlInjectionMatchSet
    #   and by ListSqlInjectionMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `SqlInjectionMatchSet`, if any, specified by `Id`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SqlInjectionMatchSetSummary AWS API Documentation
    #
    class SqlInjectionMatchSetSummary < Struct.new(
      :sql_injection_match_set_id,
      :name)
      include Aws::Structure
    end

    # Specifies the part of a web request that you want to inspect for
    # snippets of malicious SQL code and indicates whether you want to add
    # the specification to a SqlInjectionMatchSet or delete it from a
    # `SqlInjectionMatchSet`.
    #
    # @note When making an API call, you may pass SqlInjectionMatchSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         sql_injection_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specify `INSERT` to add a SqlInjectionMatchSetUpdate to a
    #   SqlInjectionMatchSet. Use `DELETE` to remove a
    #   `SqlInjectionMatchSetUpdate` from a `SqlInjectionMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] sql_injection_match_tuple
    #   Specifies the part of a web request that you want AWS WAF to inspect
    #   for snippets of malicious SQL code and, if you want AWS WAF to
    #   inspect a header, the name of the header.
    #   @return [Types::SqlInjectionMatchTuple]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SqlInjectionMatchSetUpdate AWS API Documentation
    #
    class SqlInjectionMatchSetUpdate < Struct.new(
      :action,
      :sql_injection_match_tuple)
      include Aws::Structure
    end

    # Specifies the part of a web request that you want AWS WAF to inspect
    # for snippets of malicious SQL code and, if you want AWS WAF to inspect
    # a header, the name of the header.
    #
    # @note When making an API call, you may pass SqlInjectionMatchTuple
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #           data: "MatchFieldData",
    #         },
    #         text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #       }
    #
    # @!attribute [rw] field_to_match
    #   Specifies where in a web request to look for snippets of malicious
    #   SQL code.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformation
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass AWS WAF. If you
    #   specify a transformation, AWS WAF performs the transformation on
    #   `FieldToMatch` before inspecting a request for a match.
    #
    #   You can only specify a single type of TextTransformation.
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
    #   Specify `NONE` if you don't want to perform any text
    #   transformations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SqlInjectionMatchTuple AWS API Documentation
    #
    class SqlInjectionMatchTuple < Struct.new(
      :field_to_match,
      :text_transformation)
      include Aws::Structure
    end

    # A summary of the rule groups you are subscribed to.
    #
    # @!attribute [rw] rule_group_id
    #   A unique identifier for a `RuleGroup`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the `RuleGroup`. You can't change
    #   the name of a `RuleGroup` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `RuleGroup`.
    #   The name can contain only alphanumeric characters (A-Z, a-z, 0-9);
    #   the name can't contain whitespace. You can't change the name of
    #   the metric after you create the `RuleGroup`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/SubscribedRuleGroupSummary AWS API Documentation
    #
    class SubscribedRuleGroupSummary < Struct.new(
      :rule_group_id,
      :name,
      :metric_name)
      include Aws::Structure
    end

    # In a GetSampledRequests request, the `StartTime` and `EndTime` objects
    # specify the time range for which you want AWS WAF to return a sample
    # of web requests.
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
    #   AWS resource received. Specify the date and time in the following
    #   format: `"2016-09-27T14:50Z"`. You can specify any time range in the
    #   previous three hours.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time range from which you want `GetSampledRequests`
    #   to return a sample of the requests that your AWS resource received.
    #   Specify the date and time in the following format:
    #   `"2016-09-27T14:50Z"`. You can specify any time range in the
    #   previous three hours.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/TimeWindow AWS API Documentation
    #
    class TimeWindow < Struct.new(
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateByteMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         byte_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             byte_match_tuple: { # required
    #               field_to_match: { # required
    #                 type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #                 data: "MatchFieldData",
    #               },
    #               target_string: "data", # required
    #               text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] byte_match_set_id
    #   The `ByteMatchSetId` of the ByteMatchSet that you want to update.
    #   `ByteMatchSetId` is returned by CreateByteMatchSet and by
    #   ListByteMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `ByteMatchSetUpdate` objects that you want to insert
    #   into or delete from a ByteMatchSet. For more information, see the
    #   applicable data types:
    #
    #   * ByteMatchSetUpdate: Contains `Action` and `ByteMatchTuple`
    #
    #   * ByteMatchTuple: Contains `FieldToMatch`, `PositionalConstraint`,
    #     `TargetString`, and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Array<Types::ByteMatchSetUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateByteMatchSetRequest AWS API Documentation
    #
    class UpdateByteMatchSetRequest < Struct.new(
      :byte_match_set_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateByteMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateByteMatchSetResponse AWS API Documentation
    #
    class UpdateByteMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGeoMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         geo_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             geo_match_constraint: { # required
    #               type: "Country", # required, accepts Country
    #               value: "AF", # required, accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] geo_match_set_id
    #   The `GeoMatchSetId` of the GeoMatchSet that you want to update.
    #   `GeoMatchSetId` is returned by CreateGeoMatchSet and by
    #   ListGeoMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `GeoMatchSetUpdate` objects that you want to insert into
    #   or delete from an GeoMatchSet. For more information, see the
    #   applicable data types:
    #
    #   * GeoMatchSetUpdate: Contains `Action` and `GeoMatchConstraint`
    #
    #   * GeoMatchConstraint: Contains `Type` and `Value`
    #
    #     You can have only one `Type` and `Value` per `GeoMatchConstraint`.
    #     To add multiple countries, include multiple `GeoMatchSetUpdate`
    #     objects in your request.
    #   @return [Array<Types::GeoMatchSetUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateGeoMatchSetRequest AWS API Documentation
    #
    class UpdateGeoMatchSetRequest < Struct.new(
      :geo_match_set_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateGeoMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateGeoMatchSetResponse AWS API Documentation
    #
    class UpdateGeoMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIPSetRequest
    #   data as a hash:
    #
    #       {
    #         ip_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             ip_set_descriptor: { # required
    #               type: "IPV4", # required, accepts IPV4, IPV6
    #               value: "IPSetDescriptorValue", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ip_set_id
    #   The `IPSetId` of the IPSet that you want to update. `IPSetId` is
    #   returned by CreateIPSet and by ListIPSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `IPSetUpdate` objects that you want to insert into or
    #   delete from an IPSet. For more information, see the applicable data
    #   types:
    #
    #   * IPSetUpdate: Contains `Action` and `IPSetDescriptor`
    #
    #   * IPSetDescriptor: Contains `Type` and `Value`
    #
    #   You can insert a maximum of 1000 addresses in a single request.
    #   @return [Array<Types::IPSetUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateIPSetRequest AWS API Documentation
    #
    class UpdateIPSetRequest < Struct.new(
      :ip_set_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateIPSet` request.
    #   You can also use this value to query the status of the request. For
    #   more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateIPSetResponse AWS API Documentation
    #
    class UpdateIPSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRateBasedRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             predicate: { # required
    #               negated: false, # required
    #               type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch
    #               data_id: "ResourceId", # required
    #             },
    #           },
    #         ],
    #         rate_limit: 1, # required
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the `RateBasedRule` that you want to update.
    #   `RuleId` is returned by `CreateRateBasedRule` and by
    #   ListRateBasedRules.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `RuleUpdate` objects that you want to insert into or
    #   delete from a RateBasedRule.
    #   @return [Array<Types::RuleUpdate>]
    #
    # @!attribute [rw] rate_limit
    #   The maximum number of requests, which have an identical value in the
    #   field specified by the `RateKey`, allowed in a five-minute period.
    #   If the number of requests exceeds the `RateLimit` and the other
    #   predicates specified in the rule are also met, AWS WAF triggers the
    #   action that is specified for this rule.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRateBasedRuleRequest AWS API Documentation
    #
    class UpdateRateBasedRuleRequest < Struct.new(
      :rule_id,
      :change_token,
      :updates,
      :rate_limit)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateRateBasedRule`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRateBasedRuleResponse AWS API Documentation
    #
    class UpdateRateBasedRuleResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRegexMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         regex_match_set_id: "ResourceId", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             regex_match_tuple: { # required
    #               field_to_match: { # required
    #                 type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #                 data: "MatchFieldData",
    #               },
    #               text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               regex_pattern_set_id: "ResourceId", # required
    #             },
    #           },
    #         ],
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] regex_match_set_id
    #   The `RegexMatchSetId` of the RegexMatchSet that you want to update.
    #   `RegexMatchSetId` is returned by CreateRegexMatchSet and by
    #   ListRegexMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `RegexMatchSetUpdate` objects that you want to insert
    #   into or delete from a RegexMatchSet. For more information, see
    #   RegexMatchTuple.
    #   @return [Array<Types::RegexMatchSetUpdate>]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRegexMatchSetRequest AWS API Documentation
    #
    class UpdateRegexMatchSetRequest < Struct.new(
      :regex_match_set_id,
      :updates,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateRegexMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRegexMatchSetResponse AWS API Documentation
    #
    class UpdateRegexMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRegexPatternSetRequest
    #   data as a hash:
    #
    #       {
    #         regex_pattern_set_id: "ResourceId", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             regex_pattern_string: "RegexPatternString", # required
    #           },
    #         ],
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] regex_pattern_set_id
    #   The `RegexPatternSetId` of the RegexPatternSet that you want to
    #   update. `RegexPatternSetId` is returned by CreateRegexPatternSet and
    #   by ListRegexPatternSets.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `RegexPatternSetUpdate` objects that you want to insert
    #   into or delete from a RegexPatternSet.
    #   @return [Array<Types::RegexPatternSetUpdate>]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRegexPatternSetRequest AWS API Documentation
    #
    class UpdateRegexPatternSetRequest < Struct.new(
      :regex_pattern_set_id,
      :updates,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `UpdateRegexPatternSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRegexPatternSetResponse AWS API Documentation
    #
    class UpdateRegexPatternSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRuleGroupRequest
    #   data as a hash:
    #
    #       {
    #         rule_group_id: "ResourceId", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             activated_rule: { # required
    #               priority: 1, # required
    #               rule_id: "ResourceId", # required
    #               action: {
    #                 type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #               },
    #               override_action: {
    #                 type: "NONE", # required, accepts NONE, COUNT
    #               },
    #               type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #             },
    #           },
    #         ],
    #         change_token: "ChangeToken", # required
    #       }
    #
    # @!attribute [rw] rule_group_id
    #   The `RuleGroupId` of the RuleGroup that you want to update.
    #   `RuleGroupId` is returned by CreateRuleGroup and by ListRuleGroups.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `RuleGroupUpdate` objects that you want to insert into
    #   or delete from a RuleGroup.
    #
    #   You can only insert `REGULAR` rules into a rule group.
    #
    #   `ActivatedRule|OverrideAction` applies only when updating or adding
    #   a `RuleGroup` to a `WebACL`. In this case you do not use
    #   `ActivatedRule|Action`. For all other update requests,
    #   `ActivatedRule|Action` is used instead of
    #   `ActivatedRule|OverrideAction`.
    #   @return [Array<Types::RuleGroupUpdate>]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRuleGroupRequest AWS API Documentation
    #
    class UpdateRuleGroupRequest < Struct.new(
      :rule_group_id,
      :updates,
      :change_token)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateRuleGroup`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRuleGroupResponse AWS API Documentation
    #
    class UpdateRuleGroupResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             predicate: { # required
    #               negated: false, # required
    #               type: "IPMatch", # required, accepts IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch
    #               data_id: "ResourceId", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule_id
    #   The `RuleId` of the `Rule` that you want to update. `RuleId` is
    #   returned by `CreateRule` and by ListRules.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `RuleUpdate` objects that you want to insert into or
    #   delete from a Rule. For more information, see the applicable data
    #   types:
    #
    #   * RuleUpdate: Contains `Action` and `Predicate`
    #
    #   * Predicate: Contains `DataId`, `Negated`, and `Type`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Array<Types::RuleUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRuleRequest AWS API Documentation
    #
    class UpdateRuleRequest < Struct.new(
      :rule_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateRule` request.
    #   You can also use this value to query the status of the request. For
    #   more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateRuleResponse AWS API Documentation
    #
    class UpdateRuleResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSizeConstraintSetRequest
    #   data as a hash:
    #
    #       {
    #         size_constraint_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             size_constraint: { # required
    #               field_to_match: { # required
    #                 type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #                 data: "MatchFieldData",
    #               },
    #               text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #               size: 1, # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] size_constraint_set_id
    #   The `SizeConstraintSetId` of the SizeConstraintSet that you want to
    #   update. `SizeConstraintSetId` is returned by CreateSizeConstraintSet
    #   and by ListSizeConstraintSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `SizeConstraintSetUpdate` objects that you want to
    #   insert into or delete from a SizeConstraintSet. For more
    #   information, see the applicable data types:
    #
    #   * SizeConstraintSetUpdate: Contains `Action` and `SizeConstraint`
    #
    #   * SizeConstraint: Contains `FieldToMatch`, `TextTransformation`,
    #     `ComparisonOperator`, and `Size`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Array<Types::SizeConstraintSetUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateSizeConstraintSetRequest AWS API Documentation
    #
    class UpdateSizeConstraintSetRequest < Struct.new(
      :size_constraint_set_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `UpdateSizeConstraintSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateSizeConstraintSetResponse AWS API Documentation
    #
    class UpdateSizeConstraintSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # A request to update a SqlInjectionMatchSet.
    #
    # @note When making an API call, you may pass UpdateSqlInjectionMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         sql_injection_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             sql_injection_match_tuple: { # required
    #               field_to_match: { # required
    #                 type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #                 data: "MatchFieldData",
    #               },
    #               text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] sql_injection_match_set_id
    #   The `SqlInjectionMatchSetId` of the `SqlInjectionMatchSet` that you
    #   want to update. `SqlInjectionMatchSetId` is returned by
    #   CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `SqlInjectionMatchSetUpdate` objects that you want to
    #   insert into or delete from a SqlInjectionMatchSet. For more
    #   information, see the applicable data types:
    #
    #   * SqlInjectionMatchSetUpdate: Contains `Action` and
    #     `SqlInjectionMatchTuple`
    #
    #   * SqlInjectionMatchTuple: Contains `FieldToMatch` and
    #     `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Array<Types::SqlInjectionMatchSetUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateSqlInjectionMatchSetRequest AWS API Documentation
    #
    class UpdateSqlInjectionMatchSetRequest < Struct.new(
      :sql_injection_match_set_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # The response to an UpdateSqlInjectionMatchSets request.
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the
    #   `UpdateSqlInjectionMatchSet` request. You can also use this value to
    #   query the status of the request. For more information, see
    #   GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateSqlInjectionMatchSetResponse AWS API Documentation
    #
    class UpdateSqlInjectionMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateWebACLRequest
    #   data as a hash:
    #
    #       {
    #         web_acl_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             activated_rule: { # required
    #               priority: 1, # required
    #               rule_id: "ResourceId", # required
    #               action: {
    #                 type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #               },
    #               override_action: {
    #                 type: "NONE", # required, accepts NONE, COUNT
    #               },
    #               type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #             },
    #           },
    #         ],
    #         default_action: {
    #           type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #         },
    #       }
    #
    # @!attribute [rw] web_acl_id
    #   The `WebACLId` of the WebACL that you want to update. `WebACLId` is
    #   returned by CreateWebACL and by ListWebACLs.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of updates to make to the WebACL.
    #
    #   An array of `WebACLUpdate` objects that you want to insert into or
    #   delete from a WebACL. For more information, see the applicable data
    #   types:
    #
    #   * WebACLUpdate: Contains `Action` and `ActivatedRule`
    #
    #   * ActivatedRule: Contains `Action`, `OverrideAction`, `Priority`,
    #     `RuleId`, and `Type`. `ActivatedRule|OverrideAction` applies only
    #     when updating or adding a `RuleGroup` to a `WebACL`. In this case
    #     you do not use `ActivatedRule|Action`. For all other update
    #     requests, `ActivatedRule|Action` is used instead of
    #     `ActivatedRule|OverrideAction`.
    #
    #   * WafAction: Contains `Type`
    #   @return [Array<Types::WebACLUpdate>]
    #
    # @!attribute [rw] default_action
    #   A default action for the web ACL, either ALLOW or BLOCK. AWS WAF
    #   performs the default action if a request doesn't match the criteria
    #   in any of the rules in a web ACL.
    #   @return [Types::WafAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateWebACLRequest AWS API Documentation
    #
    class UpdateWebACLRequest < Struct.new(
      :web_acl_id,
      :change_token,
      :updates,
      :default_action)
      include Aws::Structure
    end

    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateWebACL`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateWebACLResponse AWS API Documentation
    #
    class UpdateWebACLResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # A request to update an XssMatchSet.
    #
    # @note When making an API call, you may pass UpdateXssMatchSetRequest
    #   data as a hash:
    #
    #       {
    #         xss_match_set_id: "ResourceId", # required
    #         change_token: "ChangeToken", # required
    #         updates: [ # required
    #           {
    #             action: "INSERT", # required, accepts INSERT, DELETE
    #             xss_match_tuple: { # required
    #               field_to_match: { # required
    #                 type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #                 data: "MatchFieldData",
    #               },
    #               text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] xss_match_set_id
    #   The `XssMatchSetId` of the `XssMatchSet` that you want to update.
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] change_token
    #   The value returned by the most recent call to GetChangeToken.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   An array of `XssMatchSetUpdate` objects that you want to insert into
    #   or delete from a XssMatchSet. For more information, see the
    #   applicable data types:
    #
    #   * XssMatchSetUpdate: Contains `Action` and `XssMatchTuple`
    #
    #   * XssMatchTuple: Contains `FieldToMatch` and `TextTransformation`
    #
    #   * FieldToMatch: Contains `Data` and `Type`
    #   @return [Array<Types::XssMatchSetUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateXssMatchSetRequest AWS API Documentation
    #
    class UpdateXssMatchSetRequest < Struct.new(
      :xss_match_set_id,
      :change_token,
      :updates)
      include Aws::Structure
    end

    # The response to an UpdateXssMatchSets request.
    #
    # @!attribute [rw] change_token
    #   The `ChangeToken` that you used to submit the `UpdateXssMatchSet`
    #   request. You can also use this value to query the status of the
    #   request. For more information, see GetChangeTokenStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/UpdateXssMatchSetResponse AWS API Documentation
    #
    class UpdateXssMatchSetResponse < Struct.new(
      :change_token)
      include Aws::Structure
    end

    # For the action that is associated with a rule in a `WebACL`, specifies
    # the action that you want AWS WAF to perform when a web request matches
    # all of the conditions in a rule. For the default action in a `WebACL`,
    # specifies the action that you want AWS WAF to take when a web request
    # doesn't match all of the conditions in any of the rules in a
    # `WebACL`.
    #
    # @note When making an API call, you may pass WafAction
    #   data as a hash:
    #
    #       {
    #         type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #       }
    #
    # @!attribute [rw] type
    #   Specifies how you want AWS WAF to respond to requests that match the
    #   settings in a `Rule`. Valid settings include the following:
    #
    #   * `ALLOW`\: AWS WAF allows requests
    #
    #   * `BLOCK`\: AWS WAF blocks requests
    #
    #   * `COUNT`\: AWS WAF increments a counter of the requests that match
    #     all of the conditions in the rule. AWS WAF then continues to
    #     inspect the web request based on the remaining rules in the web
    #     ACL. You can't specify `COUNT` for the default action for a
    #     `WebACL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/WafAction AWS API Documentation
    #
    class WafAction < Struct.new(
      :type)
      include Aws::Structure
    end

    # The action to take if any rule within the `RuleGroup` matches a
    # request.
    #
    # @note When making an API call, you may pass WafOverrideAction
    #   data as a hash:
    #
    #       {
    #         type: "NONE", # required, accepts NONE, COUNT
    #       }
    #
    # @!attribute [rw] type
    #   `COUNT` overrides the action specified by the individual rule within
    #   a `RuleGroup` . If set to `NONE`, the rule's action will take
    #   place.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/WafOverrideAction AWS API Documentation
    #
    class WafOverrideAction < Struct.new(
      :type)
      include Aws::Structure
    end

    # Contains the `Rules` that identify the requests that you want to
    # allow, block, or count. In a `WebACL`, you also specify a default
    # action (`ALLOW` or `BLOCK`), and the action for each `Rule` that you
    # add to a `WebACL`, for example, block requests from specified IP
    # addresses or block requests from specified referrers. You also
    # associate the `WebACL` with a CloudFront distribution to identify the
    # requests that you want AWS WAF to filter. If you add more than one
    # `Rule` to a `WebACL`, a request needs to match only one of the
    # specifications to be allowed, blocked, or counted. For more
    # information, see UpdateWebACL.
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier for a `WebACL`. You use `WebACLId` to get
    #   information about a `WebACL` (see GetWebACL), update a `WebACL` (see
    #   UpdateWebACL), and delete a `WebACL` from AWS WAF (see
    #   DeleteWebACL).
    #
    #   `WebACLId` is returned by CreateWebACL and by ListWebACLs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the `WebACL`. You can't change
    #   the name of a `WebACL` after you create it.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   A friendly name or description for the metrics for this `WebACL`.
    #   The name can contain only alphanumeric characters (A-Z, a-z, 0-9);
    #   the name can't contain whitespace. You can't change `MetricName`
    #   after you create the `WebACL`.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the `Rules` contained in the
    #   `WebACL` match. The action is specified by the WafAction object.
    #   @return [Types::WafAction]
    #
    # @!attribute [rw] rules
    #   An array that contains the action for each `Rule` in a `WebACL`, the
    #   priority of the `Rule`, and the ID of the `Rule`.
    #   @return [Array<Types::ActivatedRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/WebACL AWS API Documentation
    #
    class WebACL < Struct.new(
      :web_acl_id,
      :name,
      :metric_name,
      :default_action,
      :rules)
      include Aws::Structure
    end

    # Contains the identifier and the name or description of the WebACL.
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier for a `WebACL`. You use `WebACLId` to get
    #   information about a `WebACL` (see GetWebACL), update a `WebACL` (see
    #   UpdateWebACL), and delete a `WebACL` from AWS WAF (see
    #   DeleteWebACL).
    #
    #   `WebACLId` is returned by CreateWebACL and by ListWebACLs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name or description of the WebACL. You can't change the
    #   name of a `WebACL` after you create it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/WebACLSummary AWS API Documentation
    #
    class WebACLSummary < Struct.new(
      :web_acl_id,
      :name)
      include Aws::Structure
    end

    # Specifies whether to insert a `Rule` into or delete a `Rule` from a
    # `WebACL`.
    #
    # @note When making an API call, you may pass WebACLUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         activated_rule: { # required
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK", # required, accepts BLOCK, ALLOW, COUNT
    #           },
    #           override_action: {
    #             type: "NONE", # required, accepts NONE, COUNT
    #           },
    #           type: "REGULAR", # accepts REGULAR, RATE_BASED, GROUP
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specifies whether to insert a `Rule` into or delete a `Rule` from a
    #   `WebACL`.
    #   @return [String]
    #
    # @!attribute [rw] activated_rule
    #   The `ActivatedRule` object in an UpdateWebACL request specifies a
    #   `Rule` that you want to insert or delete, the priority of the `Rule`
    #   in the `WebACL`, and the action that you want AWS WAF to take when a
    #   web request matches the `Rule` (`ALLOW`, `BLOCK`, or `COUNT`).
    #   @return [Types::ActivatedRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/WebACLUpdate AWS API Documentation
    #
    class WebACLUpdate < Struct.new(
      :action,
      :activated_rule)
      include Aws::Structure
    end

    # A complex type that contains `XssMatchTuple` objects, which specify
    # the parts of web requests that you want AWS WAF to inspect for
    # cross-site scripting attacks and, if you want AWS WAF to inspect a
    # header, the name of the header. If a `XssMatchSet` contains more than
    # one `XssMatchTuple` object, a request needs to include cross-site
    # scripting attacks in only one of the specified parts of the request to
    # be considered a match.
    #
    # @!attribute [rw] xss_match_set_id
    #   A unique identifier for an `XssMatchSet`. You use `XssMatchSetId` to
    #   get information about an `XssMatchSet` (see GetXssMatchSet), update
    #   an `XssMatchSet` (see UpdateXssMatchSet), insert an `XssMatchSet`
    #   into a `Rule` or delete one from a `Rule` (see UpdateRule), and
    #   delete an `XssMatchSet` from AWS WAF (see DeleteXssMatchSet).
    #
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name, if any, of the `XssMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] xss_match_tuples
    #   Specifies the parts of web requests that you want to inspect for
    #   cross-site scripting attacks.
    #   @return [Array<Types::XssMatchTuple>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/XssMatchSet AWS API Documentation
    #
    class XssMatchSet < Struct.new(
      :xss_match_set_id,
      :name,
      :xss_match_tuples)
      include Aws::Structure
    end

    # The `Id` and `Name` of an `XssMatchSet`.
    #
    # @!attribute [rw] xss_match_set_id
    #   A unique identifier for an `XssMatchSet`. You use `XssMatchSetId` to
    #   get information about a `XssMatchSet` (see GetXssMatchSet), update
    #   an `XssMatchSet` (see UpdateXssMatchSet), insert an `XssMatchSet`
    #   into a `Rule` or delete one from a `Rule` (see UpdateRule), and
    #   delete an `XssMatchSet` from AWS WAF (see DeleteXssMatchSet).
    #
    #   `XssMatchSetId` is returned by CreateXssMatchSet and by
    #   ListXssMatchSets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `XssMatchSet`, if any, specified by `Id`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/XssMatchSetSummary AWS API Documentation
    #
    class XssMatchSetSummary < Struct.new(
      :xss_match_set_id,
      :name)
      include Aws::Structure
    end

    # Specifies the part of a web request that you want to inspect for
    # cross-site scripting attacks and indicates whether you want to add the
    # specification to an XssMatchSet or delete it from an `XssMatchSet`.
    #
    # @note When making an API call, you may pass XssMatchSetUpdate
    #   data as a hash:
    #
    #       {
    #         action: "INSERT", # required, accepts INSERT, DELETE
    #         xss_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #             data: "MatchFieldData",
    #           },
    #           text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   Specify `INSERT` to add a XssMatchSetUpdate to an XssMatchSet. Use
    #   `DELETE` to remove a `XssMatchSetUpdate` from an `XssMatchSet`.
    #   @return [String]
    #
    # @!attribute [rw] xss_match_tuple
    #   Specifies the part of a web request that you want AWS WAF to inspect
    #   for cross-site scripting attacks and, if you want AWS WAF to inspect
    #   a header, the name of the header.
    #   @return [Types::XssMatchTuple]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/XssMatchSetUpdate AWS API Documentation
    #
    class XssMatchSetUpdate < Struct.new(
      :action,
      :xss_match_tuple)
      include Aws::Structure
    end

    # Specifies the part of a web request that you want AWS WAF to inspect
    # for cross-site scripting attacks and, if you want AWS WAF to inspect a
    # header, the name of the header.
    #
    # @note When making an API call, you may pass XssMatchTuple
    #   data as a hash:
    #
    #       {
    #         field_to_match: { # required
    #           type: "URI", # required, accepts URI, QUERY_STRING, HEADER, METHOD, BODY, SINGLE_QUERY_ARG, ALL_QUERY_ARGS
    #           data: "MatchFieldData",
    #         },
    #         text_transformation: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #       }
    #
    # @!attribute [rw] field_to_match
    #   Specifies where in a web request to look for cross-site scripting
    #   attacks.
    #   @return [Types::FieldToMatch]
    #
    # @!attribute [rw] text_transformation
    #   Text transformations eliminate some of the unusual formatting that
    #   attackers use in web requests in an effort to bypass AWS WAF. If you
    #   specify a transformation, AWS WAF performs the transformation on
    #   `FieldToMatch` before inspecting a request for a match.
    #
    #   You can only specify a single type of TextTransformation.
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
    #   Specify `NONE` if you don't want to perform any text
    #   transformations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/waf-2015-08-24/XssMatchTuple AWS API Documentation
    #
    class XssMatchTuple < Struct.new(
      :field_to_match,
      :text_transformation)
      include Aws::Structure
    end

  end
end
