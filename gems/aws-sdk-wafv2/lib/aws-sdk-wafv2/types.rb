# frozen_string_literal: true

# This is generated code!

module Aws::WAFV2
  # This module contains the types returned by client operations.
  module Types

    # <p>Information for a single API key. </p>
    #          <p>API keys are required for the integration of the CAPTCHA API in your JavaScript client applications.
    #            The API lets you customize the placement and characteristics of the CAPTCHA puzzle for your end users.
    #            For more information about the CAPTCHA JavaScript integration, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @!attribute token_domains
    #   <p>The token domains that are defined in this API key. </p>
    #   @return [Array<String>]
    # @!attribute api_key
    #   <p>The generated, encrypted API key. You can copy this for use in your JavaScript CAPTCHA integration.  </p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The date and time that the key was created. </p>
    #   @return [Time]
    # @!attribute version
    #   <p>Internal value used by WAF to manage the key. </p>
    #   @return [Integer]
    class APIKeySummary < Struct.new(
      nil,
      :token_domains,
      :api_key,
      :creation_timestamp,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Details for your use of the account creation fraud prevention managed rule group, <code>AWSManagedRulesACFPRuleSet</code>. This configuration is used in <code>ManagedRuleGroupConfig</code>. </p>
    #          <p>For additional information about this and the other intelligent threat mitigation rule groups,
    #     see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-managed-protections">Intelligent threat mitigation in WAF</a>
    #     and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list">Amazon Web Services Managed Rules rule groups list</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    # @!attribute creation_path
    #   <p>The path of the account creation endpoint for your application. This is the page on your website that accepts the completed registration form for a new user. This page must accept <code>POST</code> requests.</p>
    #            <p>For example, for the URL <code>https://example.com/web/newaccount</code>, you would provide
    #   	the path <code>/web/newaccount</code>. Account creation page paths that
    #   	start with the path that you provide are considered a match. For example
    #   	<code>/web/newaccount</code> matches the account creation paths
    #   		<code>/web/newaccount</code>, <code>/web/newaccount/</code>,
    #   		<code>/web/newaccountPage</code>, and
    #   		<code>/web/newaccount/thisPage</code>, but doesn't match the path
    #   		<code>/home/web/newaccount</code> or
    #   		<code>/website/newaccount</code>. </p>
    #   @return [String]
    # @!attribute registration_page_path
    #   <p>The path of the account registration endpoint for your application. This is the page on your website that presents the registration form to new users. </p>
    #            <note>
    #               <p>This page must accept <code>GET</code> text/html requests.</p>
    #            </note>
    #            <p>For example, for the URL <code>https://example.com/web/registration</code>, you would provide
    #   	the path <code>/web/registration</code>. Registration page paths that
    #   	start with the path that you provide are considered a match. For example
    #   	    <code>/web/registration</code> matches the registration paths
    #   	    <code>/web/registration</code>, <code>/web/registration/</code>,
    #   	    <code>/web/registrationPage</code>, and
    #   	    <code>/web/registration/thisPage</code>, but doesn't match the path
    #   	    <code>/home/web/registration</code> or
    #   	    <code>/website/registration</code>. </p>
    #   @return [String]
    # @!attribute request_inspection
    #   <p>The criteria for inspecting account creation requests, used by the ACFP rule group to validate and track account creation attempts.  </p>
    #   @return [Types::RequestInspectionACFP]
    # @!attribute response_inspection
    #   <p>The criteria for inspecting responses to account creation requests, used by the ACFP rule group to track account creation success rates. </p>
    #            <note>
    #               <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #            </note>
    #            <p>The ACFP rule group evaluates the responses that your protected resources send back to client account creation attempts, keeping count of successful and failed attempts from each IP address and client session. Using this information, the rule group labels
    #                  and mitigates requests from client sessions and IP addresses that have had too many successful account creation attempts in a short amount of time. </p>
    #   @return [Types::ResponseInspection]
    # @!attribute enable_regex_in_path
    #   <p>Allow the use of regular expressions in the registration page path and the account creation path. </p>
    #   @return [Boolean]
    class AWSManagedRulesACFPRuleSet < Struct.new(
      nil,
      :creation_path,
      :registration_page_path,
      :request_inspection,
      :response_inspection,
      :enable_regex_in_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_regex_in_path] = false unless options.key?(:enable_regex_in_path)
        super
      end
    end

    # <p>Details for your use of the account takeover prevention managed rule group, <code>AWSManagedRulesATPRuleSet</code>. This configuration is used in <code>ManagedRuleGroupConfig</code>. </p>
    #          <p>For additional information about this and the other intelligent threat mitigation rule groups,
    #     see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-managed-protections">Intelligent threat mitigation in WAF</a>
    #     and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list">Amazon Web Services Managed Rules rule groups list</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    # @!attribute login_path
    #   <p>The path of the login endpoint for your application. For example, for the URL
    #               <code>https://example.com/web/login</code>, you would provide the path
    #               <code>/web/login</code>. Login paths that start with the path that you provide are considered a match. For example <code>/web/login</code> matches the login paths <code>/web/login</code>, <code>/web/login/</code>, <code>/web/loginPage</code>, and <code>/web/login/thisPage</code>, but doesn't match the login path <code>/home/web/login</code> or <code>/website/login</code>.</p>
    #            <p>The rule group inspects only HTTP <code>POST</code> requests to your specified login endpoint.</p>
    #   @return [String]
    # @!attribute request_inspection
    #   <p>The criteria for inspecting login requests, used by the ATP rule group to validate credentials usage.  </p>
    #   @return [Types::RequestInspection]
    # @!attribute response_inspection
    #   <p>The criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. </p>
    #            <note>
    #               <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #            </note>
    #            <p>The ATP rule group evaluates the responses that your protected resources send back to client login attempts, keeping count of successful and failed attempts for each IP address and client session. Using this information, the rule group labels
    #                  and mitigates requests from client sessions and IP addresses that have had too many failed login attempts in a short amount of time. </p>
    #   @return [Types::ResponseInspection]
    # @!attribute enable_regex_in_path
    #   <p>Allow the use of regular expressions in the login page path. </p>
    #   @return [Boolean]
    class AWSManagedRulesATPRuleSet < Struct.new(
      nil,
      :login_path,
      :request_inspection,
      :response_inspection,
      :enable_regex_in_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_regex_in_path] = false unless options.key?(:enable_regex_in_path)
        super
      end
    end

    # <p>Configures the use of the anti-DDoS managed rule group, <code>AWSManagedRulesAntiDDoSRuleSet</code>. This configuration is used in <code>ManagedRuleGroupConfig</code>. </p>
    #          <p>The configuration that you provide here determines whether and how the rules in the rule group are used. </p>
    #          <p>For additional information about this and the other intelligent threat mitigation rule groups,
    #     see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-managed-protections">Intelligent threat mitigation in WAF</a>
    #     and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list">Amazon Web Services Managed Rules rule groups list</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    # @!attribute client_side_action_config
    #   <p>Configures the request handling that's applied by the managed rule group rules <code>ChallengeAllDuringEvent</code> and <code>ChallengeDDoSRequests</code> during a distributed denial of service (DDoS) attack.</p>
    #   @return [Types::ClientSideActionConfig]
    # @!attribute sensitivity_to_block
    #   <p>The sensitivity that the rule group rule <code>DDoSRequests</code> uses when matching against the
    #              DDoS suspicion labeling on a request. The managed rule group adds the labeling during DDoS events, before the <code>DDoSRequests</code> rule runs.
    #          </p>
    #            <p>The higher the sensitivity, the more levels of labeling that the rule matches: </p>
    #            <ul>
    #               <li>
    #                  <p>Low sensitivity is less sensitive, causing the rule to match only on the most likely participants in an attack, which are the requests with the high suspicion label <code>awswaf:managed:aws:anti-ddos:high-suspicion-ddos-request</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Medium sensitivity causes the rule to match on the medium and high suspicion labels.</p>
    #               </li>
    #               <li>
    #                  <p>High sensitivity causes the rule to match on all of the suspicion labels: low, medium, and high.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>LOW</code>
    #            </p>
    #   @return [String]
    class AWSManagedRulesAntiDDoSRuleSet < Struct.new(
      nil,
      :client_side_action_config,
      :sensitivity_to_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for your use of the Bot Control managed rule group, <code>AWSManagedRulesBotControlRuleSet</code>. This configuration is used in <code>ManagedRuleGroupConfig</code>. </p>
    #          <p>For additional information about this and the other intelligent threat mitigation rule groups,
    #     see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-managed-protections">Intelligent threat mitigation in WAF</a>
    #     and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list">Amazon Web Services Managed Rules rule groups list</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    # @!attribute inspection_level
    #   <p>The inspection level to use for the Bot Control rule group. The common level is the least expensive. The
    #              targeted level includes all common level rules and adds rules with more advanced inspection criteria. For
    #      details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html">WAF Bot Control rule group</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute enable_machine_learning
    #   <p>Applies only to the targeted inspection level. </p>
    #            <p>Determines whether to use machine learning (ML) to
    #         analyze your web traffic for bot-related activity. Machine learning is required for the Bot Control rules <code>TGT_ML_CoordinatedActivityLow</code> and <code>TGT_ML_CoordinatedActivityMedium</code>, which
    #   inspect for anomalous behavior that might indicate distributed, coordinated bot activity.</p>
    #            <p>For more information about this choice, see the listing for these rules in the table at <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html#aws-managed-rule-groups-bot-rules">Bot Control rules listing</a> in the
    #               <i>WAF Developer Guide</i>.</p>
    #            <p>Default: <code>TRUE</code>
    #            </p>
    #   @return [Boolean]
    class AWSManagedRulesBotControlRuleSet < Struct.new(
      nil,
      :inspection_level,
      :enable_machine_learning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_machine_learning] = true unless options.key?(:enable_machine_learning)
        super
      end
    end

    # <p>A single action condition for a <a>Condition</a> in a logging filter.</p>
    # @!attribute action
    #   <p>The action setting that a log record must contain in order to meet the condition. This is the action that WAF applied to the web request. </p>
    #            <p>For rule groups, this is either the configured rule action setting, or if you've applied a rule action override to the rule, it's the override action.
    #          The value <code>EXCLUDED_AS_COUNT</code> matches on
    #          excluded rules and also on rules that have a rule action override of Count. </p>
    #   @return [String]
    class ActionCondition < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of a field in the request payload that contains part or all of your customer's primary physical address. </p>
    #          <p>This data type is used in the <code>RequestInspectionACFP</code> data type. </p>
    # @!attribute identifier
    #   <p>The name of a single primary address field. </p>
    #            <p>How you specify the address fields depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field identifiers in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "primaryaddressline1": "THE_ADDRESS1", "primaryaddressline2": "THE_ADDRESS2", "primaryaddressline3": "THE_ADDRESS3" } }</code>,
    #                    the address field idenfiers are <code>/form/primaryaddressline1</code>, <code>/form/primaryaddressline2</code>, and <code>/form/primaryaddressline3</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with input elements
    #                      named <code>primaryaddressline1</code>, <code>primaryaddressline2</code>, and <code>primaryaddressline3</code>, the address fields identifiers are <code>primaryaddressline1</code>, <code>primaryaddressline2</code>, and <code>primaryaddressline3</code>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AddressField < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect all of the elements that WAF has parsed and extracted from the web request
    #          component that you've identified in your <a>FieldToMatch</a> specifications. </p>
    #          <p>This is used in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"All": {}</code>
    #          </p>
    class All < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect all query arguments of the web request. </p>
    #          <p>This is used in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"AllQueryArguments": {}</code>
    #          </p>
    class AllQueryArguments < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that WAF should allow the request and optionally defines additional
    #          custom handling for the request.</p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request.</p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Types::CustomRequestHandling]
    class AllowAction < Struct.new(
      nil,
      :custom_request_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>
    # @!attribute statements
    #   <p>The statements to combine with AND logic. You can use any statements that can be nested.
    #         </p>
    #   @return [Array<Types::Statement>]
    class AndStatement < Struct.new(
      nil,
      :statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Application details defined during the web ACL creation process. Application attributes help WAF give recommendations for protection packs.</p>
    # @!attribute name
    #   <p>Specifies the attribute name.</p>
    #   @return [String]
    # @!attribute values
    #   <p>Specifies the attribute value.</p>
    #   @return [Array<String>]
    class ApplicationAttribute < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>ApplicationAttribute</code>s that contains information about the application.</p>
    # @!attribute attributes
    #   <p>Contains the attribute name and a list of values for that attribute.</p>
    #   @return [Array<Types::ApplicationAttribute>]
    class ApplicationConfig < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address.</p>
    #          <p>For additional details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-type-asn-match.html">ASN match rule statement</a> in the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    # @!attribute asn_list
    #   <p>Contains one or more Autonomous System Numbers (ASNs).
    #            ASNs are unique identifiers assigned to large internet networks managed by organizations such as
    #            internet service providers, enterprises, universities, or government agencies. </p>
    #   @return [Array<Integer>]
    # @!attribute forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses to match against an ASN in an HTTP header that you specify,
    #            instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header,
    #            but you can specify any header name. </p>
    #   @return [Types::ForwardedIPConfig]
    class AsnMatchStatement < Struct.new(
      nil,
      :asn_list,
      :forwarded_ip_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with the
    #            resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the web ACL. </p>
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:<i>partition</i>:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:<i>partition</i>:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:<i>partition</i>:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Cognito user pool: <code>arn:<i>partition</i>:cognito-idp:<i>region</i>:<i>account-id</i>:userpool/<i>user-pool-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an App Runner service: <code>arn:<i>partition</i>:apprunner:<i>region</i>:<i>account-id</i>:service/<i>apprunner-service-name</i>/<i>apprunner-service-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Verified Access instance: <code>arn:<i>partition</i>:ec2:<i>region</i>:<i>account-id</i>:verified-access-instance/<i>instance-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amplify application: <code>arn:<i>partition</i>:amplify:<i>region</i>:<i>account-id</i>:apps/<i>app-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Bedrock AgentCore Gateway: <code>arn:<i>partition</i>:bedrock-agentcore:<i>region</i>:<i>account-id</i>:gateway/<i>gateway-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateWebACLRequest < Struct.new(
      nil,
      :web_acl_arn,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateWebACLResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies custom configurations for the associations between the web ACL and protected resources.  </p>
    #          <p>Use this to customize the maximum size of the request body that your protected resources forward to WAF for inspection. You can
    #     customize this setting for CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resources. The default setting is 16 KB (16,384 bytes). </p>
    #          <note>
    #             <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #          </note>
    #          <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    # @!attribute request_body
    #   <p>Customizes the maximum size of the request body that your protected CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access resources forward to WAF for inspection. The default size is 16 KB (16,384 bytes). You can change the setting for any of the available resource types. </p>
    #            <note>
    #               <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #            <p>Example JSON: <code> {
    #       "API_GATEWAY": "KB_48",
    #       "APP_RUNNER_SERVICE": "KB_32"
    #       }</code>
    #            </p>
    #            <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #   @return [Hash<String, Types::RequestBodyAssociatedResourceTypeConfig>]
    class AssociationConfig < Struct.new(
      nil,
      :request_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that WAF should block the request and optionally defines additional
    #          custom handling for the response to the web request.</p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    # @!attribute custom_response
    #   <p>Defines a custom response for the web request.</p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Types::CustomResponse]
    class BlockAction < Struct.new(
      nil,
      :custom_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect the body of the web request. The body immediately follows the request
    #          headers.</p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    # @!attribute oversize_handling
    #   <p>What WAF should do if the body is larger than WAF can inspect. </p>
    #            <p>WAF does not support inspecting the entire contents of the web request body if the body
    #       exceeds the limit for the resource type. When a web request body is larger than the limit, the underlying host service
    #       only forwards the contents that are within the limit to WAF for inspection. </p>
    #            <ul>
    #               <li>
    #                  <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #               </li>
    #               <li>
    #                  <p>For CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access, the default limit is 16 KB (16,384 bytes), and
    #             you can increase the limit for each resource type in the web ACL <code>AssociationConfig</code>, for additional processing fees. </p>
    #               </li>
    #               <li>
    #                  <p>For Amplify, use the CloudFront limit.</p>
    #               </li>
    #            </ul>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the available body contents normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #            <p>You can combine the <code>MATCH</code> or <code>NO_MATCH</code>
    #         settings for oversize handling with your rule and web ACL action settings, so that you block any request whose body is over the limit. </p>
    #            <p>Default: <code>CONTINUE</code>
    #            </p>
    #   @return [String]
    class Body < Struct.new(
      nil,
      :oversize_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics about a specific bot's traffic to a path, including the bot name, request count, and percentage of traffic.</p>
    # @!attribute bot_name
    #   <p>The name of the bot. For example, <code>gptbot</code> or <code>googlebot</code>.</p>
    #   @return [String]
    # @!attribute request_count
    #   <p>The number of requests from this bot to the associated path within the specified time window.</p>
    #   @return [Integer]
    # @!attribute percentage
    #   <p>The percentage of total requests to the associated path that came from this bot.</p>
    #   @return [Float]
    class BotStatistics < Struct.new(
      nil,
      :bot_name,
      :request_count,
      :percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_count] = 0 unless options.key?(:request_count)
        options[:percentage] = 0 unless options.key?(:percentage)
        super
      end
    end

    # <p>A rule statement that defines a string match search for WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the WAF console and the developer guide, this is called a string match statement.</p>
    # @!attribute search_string
    #   <p>A string value that you want WAF to search for. WAF searches only in the part of
    #            web requests that you designate for inspection in <a>FieldToMatch</a>. The
    #            maximum length of the value is 200 bytes.</p>
    #            <p>Valid values depend on the component that you specify for inspection in
    #               <code>FieldToMatch</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Method</code>: The HTTP method that you want WAF to search for. This
    #                  indicates the type of operation specified in the request. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UriPath</code>: The value that you want WAF to search for in the URI path,
    #                  for example, <code>/images/daily-ad.jpg</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JA3Fingerprint</code>: Available for use with Amazon CloudFront distributions and Application Load Balancers. Match against the request's JA3 fingerprint. The JA3 fingerprint is a 32-character hash derived from the TLS Client Hello of an incoming request. This fingerprint serves as a unique identifier for the client's TLS configuration. You can use this choice only with a string match <code>ByteMatchStatement</code> with the <code>PositionalConstraint</code> set to
    #          <code>EXACTLY</code>. </p>
    #                  <p>You can obtain the JA3 fingerprint for client requests from the web ACL logs.
    #   						If WAF is able to calculate the fingerprint, it includes it in the logs.
    #   						For information about the logging fields,
    #   see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields</a> in the <i>WAF Developer Guide</i>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HeaderOrder</code>: The list of header names to match for. WAF creates a
    #                    string that contains the ordered list of header names, from the headers in the web request, and then matches against that string. </p>
    #               </li>
    #            </ul>
    #            <p>If <code>SearchString</code> includes alphabetic characters A-Z and a-z, note that the
    #            value is case sensitive.</p>
    #            <p>
    #               <b>If you're using the WAF API</b>
    #            </p>
    #            <p>Specify a base64-encoded version of the value. The maximum length of the value before
    #            you base64-encode it is 200 bytes.</p>
    #            <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the value
    #            of <code>Data</code> is <code>User-Agent</code>. If you want to search the
    #               <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode
    #               <code>BadBot</code> using MIME base64-encoding and include the resulting value,
    #               <code>QmFkQm90</code>, in the value of <code>SearchString</code>.</p>
    #            <p>
    #               <b>If you're using the CLI or one of the Amazon Web Services SDKs</b>
    #            </p>
    #            <p>The value that you want WAF to search for. The SDK automatically base64 encodes the
    #            value.</p>
    #   @return [String]
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. </p>
    #   @return [Types::FieldToMatch]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    # @!attribute pre_parse_text_transformations
    #   <p>Pre-parse text transformations normalize the raw query string before WAF parses it into individual
    #            query arguments. They are applied before the standard text transformations. Pre-parse text transformations
    #            are only supported when <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or
    #            <code>AllQueryArguments</code>. You can specify up to 10 pre-parse text transformations per rule statement.</p>
    #   @return [Array<Types::PreParseTextTransformation>]
    # @!attribute positional_constraint
    #   <p>The area within the portion of the web request that you want WAF to search for
    #               <code>SearchString</code>. Valid values include the following:</p>
    #            <p>
    #               <b>CONTAINS</b>
    #            </p>
    #            <p>The specified part of the web request must include the value of
    #               <code>SearchString</code>, but the location doesn't matter.</p>
    #            <p>
    #               <b>CONTAINS_WORD</b>
    #            </p>
    #            <p>The specified part of the web request must include the value of
    #               <code>SearchString</code>, and <code>SearchString</code> must contain only alphanumeric
    #            characters or underscore (A-Z, a-z, 0-9, or _). In addition, <code>SearchString</code> must
    #            be a word, which means that both of the following are true:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SearchString</code> is at the beginning of the specified part of the web
    #                  request or is preceded by a character other than an alphanumeric character or
    #                  underscore (_). Examples include the value of a header and
    #                  <code>;BadBot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SearchString</code> is at the end of the specified part of the web request or
    #                  is followed by a character other than an alphanumeric character or underscore (_),
    #                  for example, <code>BadBot;</code> and <code>-BadBot;</code>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>EXACTLY</b>
    #            </p>
    #            <p>The value of the specified part of the web request must exactly match the value of
    #               <code>SearchString</code>.</p>
    #            <p>
    #               <b>STARTS_WITH</b>
    #            </p>
    #            <p>The value of <code>SearchString</code> must appear at the beginning of the specified
    #            part of the web request.</p>
    #            <p>
    #               <b>ENDS_WITH</b>
    #            </p>
    #            <p>The value of <code>SearchString</code> must appear at the end of the specified part of
    #            the web request.</p>
    #   @return [String]
    class ByteMatchStatement < Struct.new(
      nil,
      :search_string,
      :field_to_match,
      :text_transformations,
      :pre_parse_text_transformations,
      :positional_constraint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that WAF should run a <code>CAPTCHA</code> check against the request: </p>
    #          <ul>
    #             <li>
    #                <p>If the request includes a valid, unexpired <code>CAPTCHA</code> token,
    #                WAF applies any custom request handling and labels that you've configured and then allows the web request inspection to
    #                proceed to the next rule, similar to a <code>CountAction</code>. </p>
    #             </li>
    #             <li>
    #                <p>If the request doesn't include a valid, unexpired token, WAF
    #                    discontinues the web ACL evaluation of the request and blocks it from going to its intended destination.</p>
    #                <p>WAF generates a response that it sends back to the client, which includes the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>The header <code>x-amzn-waf-action</code> with a value of <code>captcha</code>. </p>
    #                   </li>
    #                   <li>
    #                      <p>The HTTP status code <code>405 Method Not Allowed</code>. </p>
    #                   </li>
    #                   <li>
    #                      <p>If the request contains an <code>Accept</code> header with a value of <code>text/html</code>, the response includes a <code>CAPTCHA</code> JavaScript page interstitial. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>You can configure the expiration time
    #                in the <code>CaptchaConfig</code>
    #             <code>ImmunityTimeProperty</code> setting at the rule and web ACL level. The rule setting overrides the web ACL setting. </p>
    #          <p>This action option is available for rules. It isn't available for web ACL default actions. </p>
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request, used when the <code>CAPTCHA</code> inspection determines that the request's token is valid and unexpired.</p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Types::CustomRequestHandling]
    class CaptchaAction < Struct.new(
      nil,
      :custom_request_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations. This is
    #          available at the web ACL level and in each rule. </p>
    # @!attribute immunity_time_property
    #   <p>Determines how long a <code>CAPTCHA</code> timestamp in the token remains valid after the client
    #            successfully solves a <code>CAPTCHA</code> puzzle. </p>
    #   @return [Types::ImmunityTimeProperty]
    class CaptchaConfig < Struct.new(
      nil,
      :immunity_time_property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result from the inspection of the web request for a valid <code>CAPTCHA</code> token. </p>
    # @!attribute response_code
    #   <p>The HTTP response code indicating the status of the <code>CAPTCHA</code> token in the
    #            web request. If the token is missing, invalid, or expired, this code is <code>405 Method
    #               Not Allowed</code>.</p>
    #   @return [Integer]
    # @!attribute solve_timestamp
    #   <p>The time that the <code>CAPTCHA</code> was last solved for the supplied token. </p>
    #   @return [Integer]
    # @!attribute failure_reason
    #   <p>The reason for failure, populated when the evaluation of the token fails.</p>
    #   @return [String]
    class CaptchaResponse < Struct.new(
      nil,
      :response_code,
      :solve_timestamp,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that WAF should run a <code>Challenge</code> check against the request to verify that the request is coming from a legitimate client session: </p>
    #          <ul>
    #             <li>
    #                <p>If the request includes a valid, unexpired challenge token,
    #                WAF applies any custom request handling and labels that you've configured and then allows the web request inspection to
    #                proceed to the next rule, similar to a <code>CountAction</code>. </p>
    #             </li>
    #             <li>
    #                <p>If the request doesn't include a valid, unexpired challenge token, WAF
    #                    discontinues the web ACL evaluation of the request and blocks it from going to its intended destination.</p>
    #                <p>WAF then generates a challenge response that it sends back to the client, which includes the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>The header <code>x-amzn-waf-action</code> with a value of <code>challenge</code>. </p>
    #                   </li>
    #                   <li>
    #                      <p>The HTTP status code <code>202 Request Accepted</code>. </p>
    #                   </li>
    #                   <li>
    #                      <p>If the request contains an <code>Accept</code> header with a value of <code>text/html</code>, the response includes a JavaScript page interstitial with a challenge script. </p>
    #                   </li>
    #                </ul>
    #                <p>Challenges run silent browser interrogations in the background, and don't generally affect the end user experience. </p>
    #                <p>A challenge enforces token acquisition using an interstitial JavaScript challenge that inspects the client session for legitimate behavior. The challenge blocks bots or at least increases the cost of operating sophisticated bots. </p>
    #                <p>After the client session successfully responds to
    #            the challenge, it receives a new token from WAF, which the challenge script uses to resubmit the original request. </p>
    #             </li>
    #          </ul>
    #          <p>You can configure the expiration time
    #          in the <code>ChallengeConfig</code>
    #             <code>ImmunityTimeProperty</code> setting at the rule and web ACL level. The rule setting overrides the web ACL setting. </p>
    #          <p>This action option is available for rules. It isn't available for web ACL default actions. </p>
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request, used when the challenge inspection determines that the request's token is valid and unexpired.</p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Types::CustomRequestHandling]
    class ChallengeAction < Struct.new(
      nil,
      :custom_request_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how WAF should handle <code>Challenge</code> evaluations. This is
    #          available at the web ACL level and in each rule. </p>
    # @!attribute immunity_time_property
    #   <p>Determines how long a challenge timestamp in the token remains valid after the client
    #            successfully responds to a challenge. </p>
    #   @return [Types::ImmunityTimeProperty]
    class ChallengeConfig < Struct.new(
      nil,
      :immunity_time_property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result from the inspection of the web request for a valid challenge token. </p>
    # @!attribute response_code
    #   <p>The HTTP response code indicating the status of the challenge token in the
    #            web request. If the token is missing, invalid, or expired, this code is <code>202 Request Accepted</code>.</p>
    #   @return [Integer]
    # @!attribute solve_timestamp
    #   <p>The time that the challenge was last solved for the supplied token. </p>
    #   @return [Integer]
    # @!attribute failure_reason
    #   <p>The reason for failure, populated when the evaluation of the token fails.</p>
    #   @return [String]
    class ChallengeResponse < Struct.new(
      nil,
      :response_code,
      :solve_timestamp,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute rules
    #   <p>An array of <a>Rule</a> that you're configuring to use in a rule group or web
    #            ACL. </p>
    #   @return [Array<Types::Rule>]
    class CheckCapacityRequest < Struct.new(
      nil,
      :scope,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity
    #   <p>The capacity required by the rules and scope.</p>
    #   @return [Integer]
    class CheckCapacityResponse < Struct.new(
      nil,
      :capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:capacity] = 0 unless options.key?(:capacity)
        super
      end
    end

    # <p>This is part of the <code>AWSManagedRulesAntiDDoSRuleSet</code>
    #             <code>ClientSideActionConfig</code> configuration in <code>ManagedRuleGroupConfig</code>.</p>
    # @!attribute usage_of_action
    #   <p>Determines whether to use the <code>AWSManagedRulesAntiDDoSRuleSet</code> rules <code>ChallengeAllDuringEvent</code> and <code>ChallengeDDoSRequests</code> in the rule group evaluation and the related label <code>awswaf:managed:aws:anti-ddos:challengeable-request</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>If usage is enabled: </p>
    #                  <ul>
    #                     <li>
    #                        <p>The managed rule group adds the label <code>awswaf:managed:aws:anti-ddos:challengeable-request</code> to any web request whose URL does <i>NOT</i> match the regular expressions provided in the
    #                      <code>ClientSideAction</code> setting <code>ExemptUriRegularExpressions</code>. </p>
    #                     </li>
    #                     <li>
    #                        <p>The two rules are evaluated against web requests for protected resources that are experiencing a DDoS attack.
    #                  The two rules only apply their action to matching requests that have the label <code>awswaf:managed:aws:anti-ddos:challengeable-request</code>.
    #              </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>If usage is disabled: </p>
    #                  <ul>
    #                     <li>
    #                        <p>The managed rule group doesn't add the label <code>awswaf:managed:aws:anti-ddos:challengeable-request</code> to any web requests. </p>
    #                     </li>
    #                     <li>
    #                        <p>The two rules are not evaluated.</p>
    #                     </li>
    #                     <li>
    #                        <p>None of the other <code>ClientSideAction</code> settings have any effect.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This setting only enables or disables the use of the two anti-DDOS rules <code>ChallengeAllDuringEvent</code> and <code>ChallengeDDoSRequests</code> in the anti-DDoS managed rule group. </p>
    #               <p>This setting doesn't alter the action setting in the two rules. To override the actions
    #              used by the rules <code>ChallengeAllDuringEvent</code> and <code>ChallengeDDoSRequests</code>,
    #                  enable this setting, and then override the rule actions in the usual way, in your managed rule group configuration. </p>
    #            </note>
    #   @return [String]
    # @!attribute sensitivity
    #   <p>The sensitivity that the rule group rule <code>ChallengeDDoSRequests</code> uses when matching against the
    #              DDoS suspicion labeling on a request. The managed rule group adds the labeling during DDoS events, before the <code>ChallengeDDoSRequests</code> rule runs.
    #          </p>
    #            <p>The higher the sensitivity, the more levels of labeling that the rule matches: </p>
    #            <ul>
    #               <li>
    #                  <p>Low sensitivity is less sensitive, causing the rule to match only on the most likely participants in an attack, which are the requests with the high suspicion label <code>awswaf:managed:aws:anti-ddos:high-suspicion-ddos-request</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Medium sensitivity causes the rule to match on the medium and high suspicion labels.</p>
    #               </li>
    #               <li>
    #                  <p>High sensitivity causes the rule to match on all of the suspicion labels: low, medium, and high.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>HIGH</code>
    #            </p>
    #   @return [String]
    # @!attribute exempt_uri_regular_expressions
    #   <p>The regular expression to match against the web request URI, used to identify requests
    #          that can't handle a silent browser challenge. When the <code>ClientSideAction</code> setting <code>UsageOfAction</code> is enabled,
    #          the managed rule group uses this setting to determine which requests to label with
    #          <code>awswaf:managed:aws:anti-ddos:challengeable-request</code>. If <code>UsageOfAction</code> is disabled, this setting
    #      has no effect and the managed rule group doesn't add the label to any requests.</p>
    #            <p>The anti-DDoS managed rule group doesn't
    #              evaluate the rules <code>ChallengeDDoSRequests</code> or <code>ChallengeAllDuringEvent</code> for web requests whose URIs match this regex. This
    #          is true regardless of whether you override the rule action for either of the rules in your web ACL configuration. </p>
    #            <p>Amazon Web Services recommends using a regular expression. </p>
    #            <p>This setting is required if <code>UsageOfAction</code> is set to <code>ENABLED</code>. If required, you can provide
    #          between 1 and 5 regex objects in the array of settings. </p>
    #            <p>Amazon Web Services recommends starting with the following setting. Review and update it for your application's needs:</p>
    #            <p>
    #               <code>\/api\/|\.(acc|avi|css|gif|jpe?g|js|mp[34]|ogg|otf|pdf|png|tiff?|ttf|webm|webp|woff2?)$</code>
    #            </p>
    #   @return [Array<Types::Regex>]
    class ClientSideAction < Struct.new(
      nil,
      :usage_of_action,
      :sensitivity,
      :exempt_uri_regular_expressions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is part of the configuration for the managed rules <code>AWSManagedRulesAntiDDoSRuleSet</code>
    #                in <code>ManagedRuleGroupConfig</code>.</p>
    # @!attribute challenge
    #   <p>Configuration for the use of the <code>AWSManagedRulesAntiDDoSRuleSet</code> rules <code>ChallengeAllDuringEvent</code> and <code>ChallengeDDoSRequests</code>. </p>
    #            <note>
    #               <p>This setting isn't related to the configuration of the <code>Challenge</code> action itself. It only
    #          configures the use of the two anti-DDoS rules named here. </p>
    #            </note>
    #            <p>You can enable or disable the use of these rules, and you can configure how to use them when they are enabled. </p>
    #   @return [Types::ClientSideAction]
    class ClientSideActionConfig < Struct.new(
      nil,
      :challenge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single match condition for a <a>Filter</a>.</p>
    # @!attribute action_condition
    #   <p>A single action condition. This is the action setting that a log record must contain in order to meet the condition.</p>
    #   @return [Types::ActionCondition]
    # @!attribute label_name_condition
    #   <p>A single label name condition. This is the fully qualified label name that a log record must contain in order to meet the condition.
    #          Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  </p>
    #   @return [Types::LabelNameCondition]
    class Condition < Struct.new(
      nil,
      :action_condition,
      :label_name_condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter to use to identify the subset of cookies to inspect in a web request. </p>
    #          <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedCookies</code>, or <code>ExcludedCookies</code>.</p>
    #          <p>Example JSON: <code>"MatchPattern": { "IncludedCookies": [ "session-id-time", "session-id" ] }</code>
    #          </p>
    # @!attribute all
    #   <p>Inspect all cookies. </p>
    #   @return [Types::All]
    # @!attribute included_cookies
    #   <p>Inspect only the cookies that have a key that matches one of the strings specified here.
    #         </p>
    #   @return [Array<String>]
    # @!attribute excluded_cookies
    #   <p>Inspect only the cookies whose keys don't match any of the strings specified here.
    #         </p>
    #   @return [Array<String>]
    class CookieMatchPattern < Struct.new(
      nil,
      :all,
      :included_cookies,
      :excluded_cookies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect the cookies in the web request. You can specify the parts of the cookies to
    #          inspect and you can narrow the set of cookies to inspect by including or excluding specific
    #          keys.</p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"Cookies": { "MatchPattern": { "All": {} }, "MatchScope": "KEY",
    #             "OversizeHandling": "MATCH" }</code>
    #          </p>
    # @!attribute match_pattern
    #   <p>The filter to use to identify the subset of cookies to inspect in a web request. </p>
    #            <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedCookies</code>, or <code>ExcludedCookies</code>.</p>
    #            <p>Example JSON: <code>"MatchPattern": { "IncludedCookies": [ "session-id-time", "session-id" ] }</code>
    #            </p>
    #   @return [Types::CookieMatchPattern]
    # @!attribute match_scope
    #   <p>The parts of the cookies to inspect with the rule inspection criteria. If you specify
    #               <code>ALL</code>, WAF inspects both keys and values. </p>
    #            <p>
    #               <code>All</code> does not require a match to be found in the keys
    #    and a match to be found in the values. It requires a match to be found in the keys
    #    or the values or both. To require a match in the keys and in the values, use a logical <code>AND</code> statement
    #    to combine two match rules, one that inspects the keys and another that inspects the values. </p>
    #   @return [String]
    # @!attribute oversize_handling
    #   <p>What WAF should do if the cookies of the request are more numerous or larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of request cookies
    #         when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies
    #         and at most 8 KB of cookie contents to WAF. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the available cookies normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Cookies < Struct.new(
      nil,
      :match_pattern,
      :match_scope,
      :oversize_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that WAF should count the request. Optionally defines additional custom
    #          handling for the request.</p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request.</p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Types::CustomRequestHandling]
    class CountAction < Struct.new(
      nil,
      :custom_request_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute token_domains
    #   <p>The client application domains that you want to use this API key for.  </p>
    #            <p>Example JSON: <code>"TokenDomains": ["abc.com", "store.abc.com"]</code>
    #            </p>
    #            <p>Public suffixes aren't allowed. For example, you can't use <code>gov.au</code> or <code>co.uk</code> as token domains.</p>
    #   @return [Array<String>]
    class CreateAPIKeyRequest < Struct.new(
      nil,
      :scope,
      :token_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key
    #   <p>The generated, encrypted API key. You can copy this for use in your JavaScript CAPTCHA integration.  </p>
    #   @return [String]
    class CreateAPIKeyResponse < Struct.new(
      nil,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #   @return [String]
    # @!attribute ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #   @return [String]
    # @!attribute addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses that you want WAF to inspect for in incoming requests. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for <code>/0</code>. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>For requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateIPSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :description,
      :ip_address_version,
      :addresses,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>
    #   @return [Types::IPSetSummary]
    class CreateIPSetResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #   @return [String]
    # @!attribute regular_expression_list
    #   <p>Array of regular expression strings. </p>
    #   @return [Array<Types::Regex>]
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateRegexPatternSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :description,
      :regular_expression_list,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>
    #   @return [Types::RegexPatternSetSummary]
    class CreateRegexPatternSetResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #            <p>When you create your own rule group, you define this, and you cannot change it after creation.
    #             When you add or modify the rules in a rule group, WAF enforces this limit. You can check the capacity
    #             for a set of rules using <a>CheckCapacity</a>.</p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #   @return [Array<Types::Rule>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Hash<String, Types::CustomResponseBody>]
    # @!attribute monetization_config
    #   <p>The monetization configuration for the rule group. Provide this when any rule in the rule group uses the <code>Monetize</code> action.</p>
    #   @return [Types::MonetizationConfig]
    class CreateRuleGroupRequest < Struct.new(
      nil,
      :name,
      :scope,
      :capacity,
      :description,
      :rules,
      :visibility_config,
      :tags,
      :custom_response_bodies,
      :monetization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    #   @return [Types::RuleGroupSummary]
    class CreateRuleGroupResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #   @return [Types::DefaultAction]
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #   @return [Array<Types::Rule>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute data_protection_config
    #   <p>Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. </p>
    #            <p>The data protection that you configure for the web ACL alters the data that's available for any other data collection activity,
    #     including your WAF logging destinations, web ACL request sampling, and Amazon Security Lake data collection and management. Your other option for data protection is in the logging configuration, which only affects logging. </p>
    #   @return [Types::DataProtectionConfig]
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Hash<String, Types::CustomResponseBody>]
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #   @return [Types::CaptchaConfig]
    # @!attribute challenge_config
    #   <p>Specifies how WAF should handle challenge evaluations for rules that don't have
    #   their own <code>ChallengeConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>ChallengeConfig</code>. </p>
    #   @return [Types::ChallengeConfig]
    # @!attribute token_domains
    #   <p>Specifies the domains that WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When WAF provides a token, it uses the domain of the Amazon Web Services resource that the web ACL is protecting. If you don't specify a list of token domains, WAF accepts tokens only for the domain of the protected resource. With a token domain list, WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.</p>
    #            <p>Example JSON: <code>"TokenDomains": { "mywebsite.com", "myotherwebsite.com" }</code>
    #            </p>
    #            <p>Public suffixes aren't allowed. For example, you can't use <code>gov.au</code> or <code>co.uk</code> as token domains.</p>
    #   @return [Array<String>]
    # @!attribute association_config
    #   <p>Specifies custom configurations for the associations between the web ACL and protected resources.  </p>
    #            <p>Use this to customize the maximum size of the request body that your protected resources forward to WAF for inspection. You can
    #       customize this setting for CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resources. The default setting is 16 KB (16,384 bytes). </p>
    #            <note>
    #               <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #            <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #   @return [Types::AssociationConfig]
    # @!attribute on_source_d_do_s_protection_config
    #   <p>Specifies the type of DDoS protection to apply to web request data for a web ACL. For most scenarios, it is recommended to use the default protection level, <code>ACTIVE_UNDER_DDOS</code>.
    #      If a web ACL is associated with multiple Application Load Balancers, the changes you make to DDoS protection in that web ACL will apply to all associated Application Load Balancers.</p>
    #   @return [Types::OnSourceDDoSProtectionConfig]
    # @!attribute application_config
    #   <p>Configures the ability for the WAF console to store and retrieve application attributes during the web ACL creation process. Application attributes help WAF give recommendations for protection packs.</p>
    #   @return [Types::ApplicationConfig]
    # @!attribute monetization_config
    #   <p>The monetization configuration for the web ACL. Provide this when any rule in the web ACL uses the <code>Monetize</code> action.</p>
    #   @return [Types::MonetizationConfig]
    class CreateWebACLRequest < Struct.new(
      nil,
      :name,
      :scope,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :data_protection_config,
      :tags,
      :custom_response_bodies,
      :captcha_config,
      :challenge_config,
      :token_domains,
      :association_config,
      :on_source_d_do_s_protection_config,
      :application_config,
      :monetization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>
    #   @return [Types::WebACLSummary]
    class CreateWebACLResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cryptocurrency payment configuration for AI bot monetization. Contains the list of blockchain payment networks where you receive payments.</p>
    # @!attribute payment_networks
    #   <p>The blockchain payment networks configured to receive payments. You can specify 1 to 2 networks. All networks must be in the same environment-either all production networks (Base, Solana) or all test networks (Base Sepolia, Solana Devnet).</p>
    #   @return [Array<Types::PaymentNetwork>]
    class CryptoConfig < Struct.new(
      nil,
      :payment_networks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom header for custom request and response handling. This is used in <a>CustomResponse</a> and <a>CustomRequestHandling</a>.</p>
    # @!attribute name
    #   <p>The name of the custom header. </p>
    #            <p>For custom request header insertion, when WAF inserts the header into the request,
    #            it prefixes this name <code>x-amzn-waf-</code>, to avoid confusion with the headers that
    #            are already in the request. For example, for the header name <code>sample</code>, WAF
    #            inserts the header <code>x-amzn-waf-sample</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the custom header.</p>
    #   @return [String]
    class CustomHTTPHeader < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Custom request handling behavior that inserts custom headers into a web request. You can
    #       add custom request handling for WAF to use when the rule action doesn't block the request.
    #           For example, <code>CaptchaAction</code> for requests with valid t okens, and <code>AllowAction</code>. </p>
    #          <p>For information about customizing web requests and responses,
    #            see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    # @!attribute insert_headers
    #   <p>The HTTP headers to insert into the request. Duplicate header names are not allowed. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Array<Types::CustomHTTPHeader>]
    class CustomRequestHandling < Struct.new(
      nil,
      :insert_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom response to send to the client. You can define a custom response for rule
    #          actions and default web ACL actions that are set to <a>BlockAction</a>. </p>
    #          <p>For information about customizing web requests and responses,
    #            see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    # @!attribute response_code
    #   <p>The HTTP status code to return to the client. </p>
    #            <p>For a list of status codes that you can use in your custom responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html">Supported status codes for custom response</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute custom_response_body_key
    #   <p>References the response body that you want WAF to return to the web request
    #            client. You can define a custom response for a rule action or a default web ACL action that
    #            is set to block. To do this, you first define the response body key and value in the
    #               <code>CustomResponseBodies</code> setting for the <a>WebACL</a> or <a>RuleGroup</a> where you want to use it. Then, in the rule action or web ACL
    #            default action <code>BlockAction</code> setting, you reference the response body using this
    #            key. </p>
    #   @return [String]
    # @!attribute response_headers
    #   <p>The HTTP headers to use in the response. You can specify any header name except for <code>content-type</code>. Duplicate header names are not allowed.</p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Array<Types::CustomHTTPHeader>]
    class CustomResponse < Struct.new(
      nil,
      :response_code,
      :custom_response_body_key,
      :response_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response body to use in a custom response to a web request. This is referenced by
    #          key from <a>CustomResponse</a>
    #             <code>CustomResponseBodyKey</code>.</p>
    # @!attribute content_type
    #   <p>The type of content in the payload that you are defining in the <code>Content</code>
    #            string.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The payload of the custom response. </p>
    #            <p>You can use JSON escape strings in JSON content. To do this, you must specify JSON
    #            content in the <code>ContentType</code> setting. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [String]
    class CustomResponseBody < Struct.new(
      nil,
      :content_type,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single data point in a revenue time series, representing aggregated monetization metrics for a specific time interval.</p>
    # @!attribute date
    #   <p>The timestamp for this data point.</p>
    #   @return [Time]
    # @!attribute monetize_served_count
    #   <p>The number of HTTP 402 Payment Required responses served during this interval.</p>
    #   @return [Integer]
    # @!attribute settled_count
    #   <p>The number of successfully settled payments during this interval.</p>
    #   @return [Integer]
    # @!attribute total_amount
    #   <p>The total revenue amount during this interval in the specified currency.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The bot category for this data point, when grouped by category.</p>
    #   @return [String]
    # @!attribute intent
    #   <p>The intent classification for this data point, when grouped by intent.</p>
    #   @return [String]
    # @!attribute group_by_value
    #   <p>The group-by dimension value for this data point.</p>
    #   @return [String]
    class DataPointEntry < Struct.new(
      nil,
      :date,
      :monetize_served_count,
      :settled_count,
      :total_amount,
      :category,
      :intent,
      :group_by_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:monetize_served_count] = 0 unless options.key?(:monetize_served_count)
        options[:settled_count] = 0 unless options.key?(:settled_count)
        super
      end
    end

    # <p>Specifies the protection behavior for a field type. This is part of the data protection configuration for a web ACL. </p>
    # @!attribute field
    #   <p>Specifies the field type and optional keys to apply the protection behavior to. </p>
    #   @return [Types::FieldToProtect]
    # @!attribute action
    #   <p>Specifies how to protect the field. WAF can apply a one-way hash to the field or hard code a string substitution. </p>
    #            <ul>
    #               <li>
    #                  <p>One-way hash example: <code>ade099751dEXAMPLEHASH2ea9f3393f80dd5d3bEXAMPLEHASH966ae0d3cd5a1e</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Substitution example: <code>REDACTED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute exclude_rule_match_details
    #   <p>Specifies whether to also exclude any rule match details from the data protection you have enabled for a given field.  WAF logs these details for non-terminating
    #              matching rules and for the terminating matching rule. For additional information, see
    #               <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields for web ACL traffic</a> in the
    #               <i>WAF Developer Guide</i>.</p>
    #            <p>Default: <code>FALSE</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute exclude_rate_based_details
    #   <p>Specifies whether to also exclude any rate-based rule details from the data protection you have enabled for a given field. If you specify this exception, RateBasedDetails will show the value of the field.
    #              For additional information, see the log field <code>rateBasedRuleList</code> at
    #               <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields for web ACL traffic</a> in the
    #               <i>WAF Developer Guide</i>.</p>
    #            <p>Default: <code>FALSE</code>
    #            </p>
    #   @return [Boolean]
    class DataProtection < Struct.new(
      nil,
      :field,
      :action,
      :exclude_rule_match_details,
      :exclude_rate_based_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exclude_rule_match_details] = false unless options.key?(:exclude_rule_match_details)
        options[:exclude_rate_based_details] = false unless options.key?(:exclude_rate_based_details)
        super
      end
    end

    # <p>Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. </p>
    #          <p>The data protection that you configure for the web ACL alters the data that's available for any other data collection activity,
    #   including your WAF logging destinations, web ACL request sampling, and Amazon Security Lake data collection and management. Your other option for data protection is in the logging configuration, which only affects logging. </p>
    #          <p>This is part of the data protection configuration for a web ACL. </p>
    # @!attribute data_protections
    #   <p>An array of data protection configurations for specific web request field types. This is defined for each
    #              web ACL. WAF applies the specified protection to all web requests that the web ACL inspects.  </p>
    #   @return [Array<Types::DataProtection>]
    class DataProtectionConfig < Struct.new(
      nil,
      :data_protections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>In a <a>WebACL</a>, this is the action that you want WAF to perform
    #          when a web request doesn't match any of the rules in the <code>WebACL</code>. The default
    #          action must be a terminating action.</p>
    # @!attribute block
    #   <p>Specifies that WAF should block requests by default. </p>
    #   @return [Types::BlockAction]
    # @!attribute allow
    #   <p>Specifies that WAF should allow requests by default.</p>
    #   @return [Types::AllowAction]
    class DefaultAction < Struct.new(
      nil,
      :block,
      :allow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute api_key
    #   <p>The encrypted API key that you want to delete. </p>
    #   @return [String]
    class DeleteAPIKeyRequest < Struct.new(
      nil,
      :scope,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAPIKeyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    #   @return [String]
    # @!attribute web_acl_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class DeleteFirewallManagerRuleGroupsRequest < Struct.new(
      nil,
      :web_acl_arn,
      :web_acl_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_web_acl_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class DeleteFirewallManagerRuleGroupsResponse < Struct.new(
      nil,
      :next_web_acl_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class DeleteIPSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIPSetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>
    #   @return [String]
    # @!attribute log_type
    #   <p>Used to distinguish between various logging options. Currently, there is one option.</p>
    #            <p>Default: <code>WAF_LOGS</code>
    #            </p>
    #   @return [String]
    # @!attribute log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>The log scope <code>CLOUDWATCH_TELEMETRY_RULE_MANAGED</code> indicates a configuration that is managed through Amazon CloudWatch Logs for telemetry data collection and analysis. For information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch Logs ?</a>
    #          in the <i>Amazon CloudWatch Logs user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    #   @return [String]
    class DeleteLoggingConfigurationRequest < Struct.new(
      nil,
      :resource_arn,
      :log_type,
      :log_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLoggingConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group from which you want to delete the
    #            policy.</p>
    #            <p>You must be the owner of the rule group to perform this operation.</p>
    #   @return [String]
    class DeletePermissionPolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePermissionPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class DeleteRegexPatternSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRegexPatternSetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class DeleteRuleGroupRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRuleGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class DeleteWebACLRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWebACLResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeAllManagedProductsRequest < Struct.new(
      nil,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_products
    #   <p>High-level information for the Amazon Web Services Managed Rules rule groups and Amazon Web Services Marketplace managed rule groups. </p>
    #   @return [Array<Types::ManagedProductDescriptor>]
    class DescribeAllManagedProductsResponse < Struct.new(
      nil,
      :managed_products,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeManagedProductsByVendorRequest < Struct.new(
      nil,
      :vendor_name,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_products
    #   <p>High-level information for the managed rule groups owned by the specified vendor.  </p>
    #   @return [Array<Types::ManagedProductDescriptor>]
    class DescribeManagedProductsByVendorResponse < Struct.new(
      nil,
      :managed_products,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version_name
    #   <p>The version of the rule group. You can only use a version that is not scheduled for
    #            expiration. If you don't provide this, WAF uses the vendor's default version. </p>
    #   @return [String]
    class DescribeManagedRuleGroupRequest < Struct.new(
      nil,
      :vendor_name,
      :name,
      :scope,
      :version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_name
    #   <p>The managed rule group's version. </p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon resource name (ARN) of the Amazon Simple Notification Service SNS topic that's used to provide notification of changes
    #            to the managed rule group. You can subscribe to the SNS topic to receive notifications when
    #            the managed rule group is modified, such as for new versions and for version expiration.
    #            For more information, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon Simple Notification Service Developer Guide</a>.</p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute rules
    #   <p></p>
    #   @return [Array<Types::RuleSummary>]
    # @!attribute label_namespace
    #   <p>The label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
    #                  <p>
    #                     <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute available_labels
    #   <p>The labels that one or more rules in this rule group add to matching web requests. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>.</p>
    #   @return [Array<Types::LabelSummary>]
    # @!attribute consumed_labels
    #   <p>The labels that one or more rules in this rule group match against in label match statements. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
    #   @return [Array<Types::LabelSummary>]
    class DescribeManagedRuleGroupResponse < Struct.new(
      nil,
      :version_name,
      :sns_topic_arn,
      :capacity,
      :rules,
      :label_namespace,
      :available_labels,
      :consumed_labels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A WAF feature that is not supported by the CloudFront pricing plan associated with the web ACL.</p>
    # @!attribute feature
    #   <p>The name of the disallowed WAF feature.</p>
    #   @return [String]
    # @!attribute required_pricing_plan
    #   <p>The name of the CloudFront pricing plan required to use the WAF feature.</p>
    #   @return [String]
    class DisallowedFeature < Struct.new(
      nil,
      :feature,
      :required_pricing_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to disassociate from the web ACL. </p>
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:<i>partition</i>:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:<i>partition</i>:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:<i>partition</i>:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Cognito user pool: <code>arn:<i>partition</i>:cognito-idp:<i>region</i>:<i>account-id</i>:userpool/<i>user-pool-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an App Runner service: <code>arn:<i>partition</i>:apprunner:<i>region</i>:<i>account-id</i>:service/<i>apprunner-service-name</i>/<i>apprunner-service-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Verified Access instance: <code>arn:<i>partition</i>:ec2:<i>region</i>:<i>account-id</i>:verified-access-instance/<i>instance-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amplify application: <code>arn:<i>partition</i>:amplify:<i>region</i>:<i>account-id</i>:apps/<i>app-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Bedrock AgentCore Gateway: <code>arn:<i>partition</i>:bedrock-agentcore:<i>region</i>:<i>account-id</i>:gateway/<i>gateway-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DisassociateWebACLRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWebACLResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the field in the request payload that contains your customer's email. </p>
    #          <p>This data type is used in the <code>RequestInspectionACFP</code> data type. </p>
    # @!attribute identifier
    #   <p>The name of the email field. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "email": "THE_EMAIL" } }</code>,
    #                    the email field specification is <code>/form/email</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>email1</code>, the email field specification is <code>email1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class EmailField < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a single rule in a rule group whose action you want to override to <code>Count</code>. </p>
    #          <note>
    #             <p>Instead of this option, use <code>RuleActionOverrides</code>. It accepts any valid action setting, including <code>Count</code>.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the rule whose action you want to override to <code>Count</code>.</p>
    #   @return [String]
    class ExcludedRule < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a web request component to be used in a rule match statement or in a logging configuration. </p>
    #          <ul>
    #             <li>
    #                <p>In a rule statement, this is the part of the web request that you want WAF to inspect. Include the single
    #                     <code>FieldToMatch</code> type that you want to inspect, with additional specifications
    #                  as needed, according to the type. You specify a single request component in
    #                     <code>FieldToMatch</code> for each rule statement that requires it. To inspect more than
    #                  one component of the web request, create a separate rule statement for each
    #                  component.</p>
    #                <p>Example JSON for a <code>QueryString</code> field to match: </p>
    #                <p>
    #                   <code> "FieldToMatch": { "QueryString": {} }</code>
    #                </p>
    #                <p>Example JSON for a <code>Method</code> field to match specification:</p>
    #                <p>
    #                   <code> "FieldToMatch": { "Method": { "Name": "DELETE" } }</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>In a logging configuration, this is used in the <code>RedactedFields</code> property to specify a field to
    #               redact from the logging records. For this use case, note the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>Even though all <code>FieldToMatch</code> settings
    #                   are available, the only valid settings for field redaction are <code>UriPath</code>, <code>QueryString</code>, <code>SingleHeader</code>, and <code>Method</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>In this documentation, the descriptions of the individual fields talk about specifying the web request component to inspect,
    #                       but for field redaction, you are specifying the component type to redact from the logs. </p>
    #                   </li>
    #                   <li>
    #                      <p>If you have request sampling enabled, the redacted fields configuration for logging has no impact on sampling.
    #                         You can only exclude fields from request sampling by disabling sampling in the web ACL visibility configuration
    #                       or by configuring data protection for the web ACL.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @!attribute single_header
    #   <p>Inspect a single header. Provide the name of the header to inspect, for example,
    #               <code>User-Agent</code> or <code>Referer</code>. This setting isn't case
    #            sensitive.</p>
    #            <p>Example JSON: <code>"SingleHeader": { "Name": "haystack" }</code>
    #            </p>
    #            <p>Alternately, you can filter and inspect all headers with the <code>Headers</code>
    #               <code>FieldToMatch</code> setting. </p>
    #   @return [Types::SingleHeader]
    # @!attribute single_query_argument
    #   <p>Inspect a single query argument. Provide the name of the query argument to inspect, such
    #            as <i>UserName</i> or <i>SalesRegion</i>. The name can be up to
    #            30 characters long and isn't case sensitive. </p>
    #            <p>Example JSON: <code>"SingleQueryArgument": { "Name": "myArgument" }</code>
    #            </p>
    #   @return [Types::SingleQueryArgument]
    # @!attribute all_query_arguments
    #   <p>Inspect all query arguments. </p>
    #   @return [Types::AllQueryArguments]
    # @!attribute uri_path
    #   <p>Inspect the request URI path. This is the part of the web request that identifies a
    #            resource, for example, <code>/images/daily-ad.jpg</code>.</p>
    #   @return [Types::UriPath]
    # @!attribute query_string
    #   <p>Inspect the query string. This is the part of a URL that appears after a <code>?</code>
    #            character, if any.</p>
    #   @return [Types::QueryString]
    # @!attribute body
    #   <p>Inspect the request body as plain text. The request body immediately follows the request
    #            headers. This is the part of a request that contains any additional data that you want to
    #            send to your web server as the HTTP request body, such as data from a form. </p>
    #            <p>WAF does not support inspecting the entire contents of the web request body if the body
    #       exceeds the limit for the resource type. When a web request body is larger than the limit, the underlying host service
    #       only forwards the contents that are within the limit to WAF for inspection. </p>
    #            <ul>
    #               <li>
    #                  <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #               </li>
    #               <li>
    #                  <p>For CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access, the default limit is 16 KB (16,384 bytes), and
    #             you can increase the limit for each resource type in the web ACL <code>AssociationConfig</code>, for additional processing fees. </p>
    #               </li>
    #               <li>
    #                  <p>For Amplify, use the CloudFront limit.</p>
    #               </li>
    #            </ul>
    #            <p>For information about how to handle oversized
    #            request bodies, see the <code>Body</code> object configuration. </p>
    #   @return [Types::Body]
    # @!attribute method
    #   <p>Inspect the HTTP method. The method indicates the type of operation that the request is
    #            asking the origin to perform. </p>
    #   @return [Types::Method]
    # @!attribute json_body
    #   <p>Inspect the request body as JSON. The request body immediately follows the request
    #            headers. This is the part of a request that contains any additional data that you want to
    #            send to your web server as the HTTP request body, such as data from a form. </p>
    #            <p>WAF does not support inspecting the entire contents of the web request body if the body
    #       exceeds the limit for the resource type. When a web request body is larger than the limit, the underlying host service
    #       only forwards the contents that are within the limit to WAF for inspection. </p>
    #            <ul>
    #               <li>
    #                  <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #               </li>
    #               <li>
    #                  <p>For CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access, the default limit is 16 KB (16,384 bytes), and
    #             you can increase the limit for each resource type in the web ACL <code>AssociationConfig</code>, for additional processing fees. </p>
    #               </li>
    #               <li>
    #                  <p>For Amplify, use the CloudFront limit.</p>
    #               </li>
    #            </ul>
    #            <p>For information about how to handle oversized
    #            request bodies, see the <code>JsonBody</code> object configuration. </p>
    #   @return [Types::JsonBody]
    # @!attribute headers
    #   <p>Inspect the request headers. You must configure scope and pattern matching filters in
    #            the <code>Headers</code> object, to define the set of headers to and the parts of the
    #            headers that WAF inspects. </p>
    #            <p>Only the first 8 KB (8192 bytes) of a request's headers and only the first 200 headers
    #            are forwarded to WAF for inspection by the underlying host service. You must
    #            configure how to handle any oversize header content in the <code>Headers</code> object.
    #            WAF applies the pattern matching filters to the headers that it receives from the
    #            underlying host service. </p>
    #   @return [Types::Headers]
    # @!attribute cookies
    #   <p>Inspect the request cookies. You must configure scope and pattern matching filters in
    #            the <code>Cookies</code> object, to define the set of cookies and the parts of the cookies
    #            that WAF inspects. </p>
    #            <p>Only the first 8 KB (8192 bytes) of a request's cookies and only the first 200 cookies
    #            are forwarded to WAF for inspection by the underlying host service. You must
    #            configure how to handle any oversize cookie content in the <code>Cookies</code> object.
    #            WAF applies the pattern matching filters to the cookies that it receives from the
    #            underlying host service. </p>
    #   @return [Types::Cookies]
    # @!attribute header_order
    #   <p>Inspect a string containing the list of the request's header names, ordered as they appear in the web request
    #   that WAF receives for inspection.
    #              WAF generates the string and then uses that as the field to match component in its inspection.
    #       WAF separates the header names in the string using colons and no added spaces, for example <code>host:user-agent:accept:authorization:referer</code>.</p>
    #   @return [Types::HeaderOrder]
    # @!attribute ja3_fingerprint
    #   <p>Available for use with Amazon CloudFront distributions and Application Load Balancers. Match against the request's JA3 fingerprint. The JA3 fingerprint is a 32-character hash derived from the TLS Client Hello of an incoming request. This fingerprint serves as a unique identifier for the client's TLS configuration. WAF calculates and logs this fingerprint for each
    #   						request that has enough TLS Client Hello information for the calculation. Almost
    #                           all web requests include this information.</p>
    #            <note>
    #               <p>You can use this choice only with a string match <code>ByteMatchStatement</code> with the <code>PositionalConstraint</code> set to
    #          <code>EXACTLY</code>.  </p>
    #            </note>
    #            <p>You can obtain the JA3 fingerprint for client requests from the web ACL logs.
    #   						If WAF is able to calculate the fingerprint, it includes it in the logs.
    #   						For information about the logging fields,
    #   see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields</a> in the <i>WAF Developer Guide</i>. </p>
    #            <p>Provide the JA3 fingerprint string from the logs in your string match statement
    #   							specification, to match with any future requests that have the same TLS configuration.</p>
    #   @return [Types::JA3Fingerprint]
    # @!attribute ja4_fingerprint
    #   <p>Available for use with Amazon CloudFront distributions and Application Load Balancers. Match against the request's JA4 fingerprint. The JA4 fingerprint is a 36-character hash derived from the TLS Client Hello of an incoming request. This fingerprint serves as a unique identifier for the client's TLS configuration. WAF calculates and logs this fingerprint for each
    #   						request that has enough TLS Client Hello information for the calculation. Almost
    #                           all web requests include this information.</p>
    #            <note>
    #               <p>You can use this choice only with a string match <code>ByteMatchStatement</code> with the <code>PositionalConstraint</code> set to
    #          <code>EXACTLY</code>.  </p>
    #            </note>
    #            <p>You can obtain the JA4 fingerprint for client requests from the web ACL logs.
    #   						If WAF is able to calculate the fingerprint, it includes it in the logs.
    #   						For information about the logging fields,
    #   see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields</a> in the <i>WAF Developer Guide</i>. </p>
    #            <p>Provide the JA4 fingerprint string from the logs in your string match statement
    #   							specification, to match with any future requests that have the same TLS configuration.</p>
    #   @return [Types::JA4Fingerprint]
    # @!attribute uri_fragment
    #   <p>Inspect fragments of the request URI. You must configure scope and pattern matching filters in
    #            the <code>UriFragment</code> object, to define the fragment of a URI that WAF inspects. </p>
    #            <p>Only the first 8 KB (8192 bytes) of a request's URI fragments and only the first 200 URI fragments
    #            are forwarded to WAF for inspection by the underlying host service. You must
    #            configure how to handle any oversize URI fragment content in the <code>UriFragment</code> object.
    #            WAF applies the pattern matching filters to the cookies that it receives from the
    #            underlying host service. </p>
    #   @return [Types::UriFragment]
    class FieldToMatch < Struct.new(
      nil,
      :single_header,
      :single_query_argument,
      :all_query_arguments,
      :uri_path,
      :query_string,
      :body,
      :method,
      :json_body,
      :headers,
      :cookies,
      :header_order,
      :ja3_fingerprint,
      :ja4_fingerprint,
      :uri_fragment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a field type and keys to protect in stored web request data. This is part of the data protection configuration for a web ACL. </p>
    # @!attribute field_type
    #   <p>Specifies the web request component type to protect.  </p>
    #   @return [String]
    # @!attribute field_keys
    #   <p>Specifies the keys to protect for the specified field type.</p>
    #            <p>Required for <code>SINGLE_HEADER</code>, <code>SINGLE_COOKIE</code>, and
    #            <code>SINGLE_QUERY_ARGUMENT</code>: provide a non-empty array naming the specific headers,
    #            cookies, or query arguments to protect. There is no option to protect all keys of these
    #            field types, so enumerate each key you intend to protect.</p>
    #            <p>Must be omitted for <code>QUERY_STRING</code> and <code>BODY</code>: the entire
    #            component is protected and these field types take no keys. Supplying
    #            <code>FieldKeys</code> for them is rejected.</p>
    #   @return [Array<String>]
    class FieldToProtect < Struct.new(
      nil,
      :field_type,
      :field_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single logging filter, used in <a>LoggingFilter</a>. </p>
    # @!attribute behavior
    #   <p>How to handle logs that satisfy the filter's conditions and requirement. </p>
    #   @return [String]
    # @!attribute requirement
    #   <p>Logic to apply to the filtering conditions. You can specify that, in order to satisfy
    #            the filter, a log must match all conditions or must match at least one condition.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>Match conditions for the filter.</p>
    #   @return [Array<Types::Condition>]
    class Filter < Struct.new(
      nil,
      :behavior,
      :requirement,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the bot filter that was applied to the request. This structure is populated in the response when you filter by bot category, organization, or name.</p>
    # @!attribute bot_category
    #   <p>The bot category that was used to filter the results. For example, <code>ai</code> or <code>search_engine</code>.</p>
    #   @return [String]
    # @!attribute bot_organization
    #   <p>The bot organization that was used to filter the results. For example, <code>OpenAI</code> or <code>Google</code>.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The bot name that was used to filter the results. For example, <code>gptbot</code> or <code>googlebot</code>.</p>
    #   @return [String]
    class FilterSource < Struct.new(
      nil,
      :bot_category,
      :bot_organization,
      :bot_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule group that's defined for an Firewall Manager WAF policy.</p>
    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>If you define more than one rule group in the first or last Firewall Manager rule groups, WAF
    #            evaluates each request against the rule groups in order, starting from the lowest priority
    #            setting. The priorities don't need to be consecutive, but they must all be
    #            different.</p>
    #   @return [Integer]
    # @!attribute firewall_manager_statement
    #   <p>The processing guidance for an Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>
    #   @return [Types::FirewallManagerStatement]
    # @!attribute override_action
    #   <p>The action to use in the place of the action that results from the rule group evaluation. Set the override action to none to leave the result of the rule group alone. Set it to count to override the result to count only. </p>
    #            <p>You can only use this for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #            <note>
    #               <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #     matches, do not use this and instead use the rule action override option, with <code>Count</code> action, in your rule group reference statement settings. </p>
    #            </note>
    #   @return [Types::OverrideAction]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    class FirewallManagerRuleGroup < Struct.new(
      nil,
      :name,
      :priority,
      :firewall_manager_statement,
      :override_action,
      :visibility_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # <p>The processing guidance for an Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a single rule group reference.</p>
    # @!attribute managed_rule_group_statement
    #   <p>A statement used by Firewall Manager to run the rules that are defined in a managed rule group. This is managed by Firewall Manager for an Firewall Manager WAF policy.</p>
    #   @return [Types::ManagedRuleGroupStatement]
    # @!attribute rule_group_reference_statement
    #   <p>A statement used by Firewall Manager to run the rules that are defined in a rule group. This is managed by Firewall Manager for an Firewall Manager WAF policy.</p>
    #   @return [Types::RuleGroupReferenceStatement]
    class FirewallManagerStatement < Struct.new(
      nil,
      :managed_rule_group_statement,
      :rule_group_reference_statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #          <note>
    #             <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #          </note>
    #          <p>This configuration is used for <a>GeoMatchStatement</a>, <a>AsnMatchStatement</a>, and
    #          <a>RateBasedStatement</a>. For <a>IPSetReferenceStatement</a>, use <a>IPSetForwardedIPConfig</a> instead. </p>
    #          <p>WAF only evaluates the first IP address found in the specified HTTP header.
    #       </p>
    # @!attribute header_name
    #   <p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #   @return [String]
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ForwardedIPConfig < Struct.new(
      nil,
      :header_name,
      :fallback_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform
    #   <p>The device platform.</p>
    #   @return [String]
    # @!attribute release_version
    #   <p>The release version. For the latest available version, specify
    #            <code>LATEST</code>.</p>
    #   @return [String]
    class GenerateMobileSdkReleaseUrlRequest < Struct.new(
      nil,
      :platform,
      :release_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The presigned download URL for the specified SDK release.</p>
    #   @return [String]
    class GenerateMobileSdkReleaseUrlResponse < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement that labels web requests by country and region and that matches against web requests based on country code. A geo match rule labels every request that it inspects regardless of whether it finds a match.</p>
    #          <ul>
    #             <li>
    #                <p>To manage requests only by country, you can use this statement by itself and specify the countries that you want to match against in the <code>CountryCodes</code> array. </p>
    #             </li>
    #             <li>
    #                <p>Otherwise, configure your geo match rule with Count action so that it only labels requests. Then, add one or more label match rules to run after the geo match rule and configure them to match against the geographic labels and handle the requests as needed. </p>
    #             </li>
    #          </ul>
    #          <p>WAF labels requests using the alpha-2 country and region codes from the International Organization for Standardization (ISO) 3166 standard. WAF determines the codes using either the IP address in the web request origin or, if you specify it, the address in the geo match <code>ForwardedIPConfig</code>. </p>
    #          <p>If you use the web request origin, the label formats are <code>awswaf:clientip:geo:region:<ISO country code>-<ISO region code></code> and <code>awswaf:clientip:geo:country:<ISO country code></code>.</p>
    #          <p>If you use a forwarded IP address, the label formats are <code>awswaf:forwardedip:geo:region:<ISO country code>-<ISO region code></code> and <code>awswaf:forwardedip:geo:country:<ISO country code></code>.</p>
    #          <p>For additional details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-type-geo-match.html">Geographic match rule statement</a> in the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    # @!attribute country_codes
    #   <p>An array of two-character country codes that you want to match against, for example, <code>[ "US", "CN" ]</code>, from
    #            the alpha-2 country ISO codes of the ISO 3166 international standard. </p>
    #            <p>When you use a geo match statement just for the region and country labels that it adds to requests, you still have to supply a country code for the rule to evaluate. In this case, you configure the rule to only count matching requests, but it will still generate logging and count metrics for any matches. You can reduce the logging and metrics that the rule produces by specifying a country that's unlikely to be a source of traffic to your site.</p>
    #   @return [Array<String>]
    # @!attribute forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #   @return [Types::ForwardedIPConfig]
    class GeoMatchStatement < Struct.new(
      nil,
      :country_codes,
      :forwarded_ip_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute api_key
    #   <p>The encrypted API key. </p>
    #   @return [String]
    class GetDecryptedAPIKeyRequest < Struct.new(
      nil,
      :scope,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_domains
    #   <p>The token domains that are defined in this API key. </p>
    #   @return [Array<String>]
    # @!attribute creation_timestamp
    #   <p>The date and time that the key was created. </p>
    #   @return [Time]
    class GetDecryptedAPIKeyResponse < Struct.new(
      nil,
      :token_domains,
      :creation_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    class GetIPSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_set
    #   <p></p>
    #   @return [Types::IPSet]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class GetIPSetResponse < Struct.new(
      nil,
      :ip_set,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>
    #   @return [String]
    # @!attribute log_type
    #   <p>Used to distinguish between various logging options. Currently, there is one option.</p>
    #            <p>Default: <code>WAF_LOGS</code>
    #            </p>
    #   @return [String]
    # @!attribute log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>The log scope <code>CLOUDWATCH_TELEMETRY_RULE_MANAGED</code> indicates a configuration that is managed through Amazon CloudWatch Logs for telemetry data collection and analysis. For information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch Logs ?</a>
    #          in the <i>Amazon CloudWatch Logs user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    #   @return [String]
    class GetLoggingConfigurationRequest < Struct.new(
      nil,
      :resource_arn,
      :log_type,
      :log_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_configuration
    #   <p>The <a>LoggingConfiguration</a> for the specified web ACL.</p>
    #   @return [Types::LoggingConfiguration]
    class GetLoggingConfigurationResponse < Struct.new(
      nil,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #   @return [String]
    class GetManagedRuleSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_rule_set
    #   <p>The managed rule set that you requested. </p>
    #   @return [Types::ManagedRuleSet]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class GetManagedRuleSetResponse < Struct.new(
      nil,
      :managed_rule_set,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform
    #   <p>The device platform.</p>
    #   @return [String]
    # @!attribute release_version
    #   <p>The release version. For the latest available version, specify
    #            <code>LATEST</code>.</p>
    #   @return [String]
    class GetMobileSdkReleaseRequest < Struct.new(
      nil,
      :platform,
      :release_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mobile_sdk_release
    #   <p>Information for a specified SDK release, including release notes and tags.</p>
    #   @return [Types::MobileSdkRelease]
    class GetMobileSdkReleaseResponse < Struct.new(
      nil,
      :mobile_sdk_release,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group for which you want to get the
    #            policy.</p>
    #   @return [String]
    class GetPermissionPolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The IAM policy that is attached to the specified rule group.</p>
    #   @return [String]
    class GetPermissionPolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute web_acl_name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute web_acl_id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute rule_group_rule_name
    #   <p>The name of the rule group reference statement in your web ACL. This is required only
    #            when you have the rate-based rule nested inside a rule group. </p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rate-based rule to get the keys for. If you have the rule defined inside
    #            a rule group that you're using in your web ACL, also provide the name of the rule group
    #            reference statement in the request parameter <code>RuleGroupRuleName</code>.</p>
    #   @return [String]
    class GetRateBasedStatementManagedKeysRequest < Struct.new(
      nil,
      :scope,
      :web_acl_name,
      :web_acl_id,
      :rule_group_rule_name,
      :rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_keys_ipv4
    #   <p>The keys that are of Internet Protocol version 4 (IPv4). </p>
    #   @return [Types::RateBasedStatementManagedKeysIPSet]
    # @!attribute managed_keys_ipv6
    #   <p>The keys that are of Internet Protocol version 6 (IPv6). </p>
    #   @return [Types::RateBasedStatementManagedKeysIPSet]
    class GetRateBasedStatementManagedKeysResponse < Struct.new(
      nil,
      :managed_keys_ipv4,
      :managed_keys_ipv6,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    class GetRegexPatternSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regex_pattern_set
    #   <p></p>
    #   @return [Types::RegexPatternSet]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class GetRegexPatternSetResponse < Struct.new(
      nil,
      :regex_pattern_set,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistic_type
    #   <p>
    #               <code>TOP_SOURCES_BY_REVENUE</code> ranks revenue from AI bot traffic, grouped by the dimension you specify in the <code>GroupBy</code> parameter (<code>NAME</code>, <code>CATEGORY</code>, <code>INTENT</code>, <code>ORGANIZATION</code>, or <code>WEBACL</code>); <code>GroupBy</code> is required for this statistic type. <code>TOP_PATHS_BY_REVENUE</code> ranks revenue by path.</p>
    #   @return [String]
    # @!attribute time_window
    #   <p>The time range for the query. Specify start and end timestamps.</p>
    #   @return [Types::TimeWindow]
    # @!attribute scope
    #   <p>Specifies whether this is for a Amazon CloudFront distribution (<code>CLOUDFRONT</code>) or for a regional application (<code>REGIONAL</code>).</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency for the revenue amounts in the response.</p>
    #   @return [String]
    # @!attribute group_by
    #   <p>The dimension to group results by: <code>NAME</code>, <code>CATEGORY</code>, <code>INTENT</code>, <code>ORGANIZATION</code>, or <code>WEBACL</code>. Required when <code>StatisticType</code> is <code>TOP_SOURCES_BY_REVENUE</code>. Not required for <code>TOP_PATHS_BY_REVENUE</code>, where results are grouped by content path. If <code>StatisticType</code> is <code>TOP_SOURCES_BY_REVENUE</code> and <code>GroupBy</code> is omitted, the request is rejected with a <code>WAFInvalidParameterException</code>.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Optional filters to narrow the results.</p>
    #   @return [Array<Types::MonetizationFilter>]
    # @!attribute next_marker
    #   <p>When you get a paginated response, this marker indicates that additional results are available. Use it in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>The field to sort results by: <code>REVENUE</code>, <code>PERCENTAGE</code>, or <code>NAME</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order: <code>ASC</code> for ascending or <code>DESC</code> for descending.</p>
    #   @return [String]
    class GetRevenueStatisticsRequest < Struct.new(
      nil,
      :statistic_type,
      :time_window,
      :scope,
      :currency,
      :group_by,
      :filters,
      :next_marker,
      :limit,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_statistics
    #   <p>Statistics for top revenue sources (AI bots). Populated when <code>StatisticType</code> is <code>TOP_SOURCES_BY_REVENUE</code>.</p>
    #   @return [Array<Types::SourceStatistics>]
    # @!attribute revenue_path_statistics
    #   <p>Statistics for top revenue paths. Populated when <code>StatisticType</code> is <code>TOP_PATHS_BY_REVENUE</code>.</p>
    #   @return [Array<Types::RevenuePathStatistics>]
    # @!attribute next_marker
    #   <p>When you get a paginated response, this marker indicates that additional results are available.</p>
    #   @return [String]
    class GetRevenueStatisticsResponse < Struct.new(
      nil,
      :source_statistics,
      :revenue_path_statistics,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_window
    #   <p>The time range for the revenue summary query. Specify start and end timestamps.</p>
    #   @return [Types::TimeWindow]
    # @!attribute scope
    #   <p>Specifies whether this is for a Amazon CloudFront distribution (<code>CLOUDFRONT</code>) or for a regional application (<code>REGIONAL</code>). AI bot monetization is only available for <code>CLOUDFRONT</code> scope.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency for the revenue amounts in the response. Currently only <code>USDC</code> is supported.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Optional filters to narrow the results. You can filter by source name, category, organization, intent, verified status, content path, web ACL ARN, or currency mode.</p>
    #   @return [Array<Types::MonetizationFilter>]
    class GetRevenueStatisticsSummaryRequest < Struct.new(
      nil,
      :time_window,
      :scope,
      :currency,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revenue_breakdown
    #   <p>The revenue breakdown summary for the specified time window and filters.</p>
    #   @return [Types::RevenueBreakdown]
    class GetRevenueStatisticsSummaryResponse < Struct.new(
      nil,
      :revenue_breakdown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistic_type
    #   <p>The type of time series data to retrieve: <code>DATE_HISTOGRAM</code> for revenue over time, or <code>PAYMENT_TRAFFIC</code> for payment traffic patterns.</p>
    #   @return [String]
    # @!attribute time_window
    #   <p>The time range for the query. Specify start and end timestamps.</p>
    #   @return [Types::TimeWindow]
    # @!attribute scope
    #   <p>Specifies whether this is for a Amazon CloudFront distribution (<code>CLOUDFRONT</code>) or for a regional application (<code>REGIONAL</code>).</p>
    #   @return [String]
    # @!attribute interval
    #   <p>The time interval for aggregating data points: <code>MINUTELY</code>, <code>FIVE_MINUTELY</code>, <code>HOURLY</code>, or <code>DAILY</code>.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency for the amounts in the response.</p>
    #   @return [String]
    # @!attribute group_by
    #   <p>The dimension to group results by.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Optional filters to narrow the results.</p>
    #   @return [Array<Types::MonetizationFilter>]
    # @!attribute limit
    #   <p>The maximum number of data points to return. Minimum: 1. Maximum: 10000.</p>
    #   @return [Integer]
    # @!attribute next_marker
    #   <p>When you get a paginated response, this marker indicates that additional results are available.</p>
    #   @return [String]
    class GetRevenueStatisticsTimeSeriesRequest < Struct.new(
      nil,
      :statistic_type,
      :time_window,
      :scope,
      :interval,
      :currency,
      :group_by,
      :filters,
      :limit,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_points
    #   <p>The list of time series data points.</p>
    #   @return [Array<Types::DataPointEntry>]
    # @!attribute next_marker
    #   <p>When you get a paginated response, this marker indicates that additional results are available.</p>
    #   @return [String]
    class GetRevenueStatisticsTimeSeriesResponse < Struct.new(
      nil,
      :data_points,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    class GetRuleGroupRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group
    #   <p></p>
    #   @return [Types::RuleGroup]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class GetRuleGroupResponse < Struct.new(
      nil,
      :rule_group,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon resource name (ARN) of the <code>WebACL</code> for which you want a sample of
    #            requests.</p>
    #   @return [String]
    # @!attribute rule_metric_name
    #   <p>The metric name assigned to the <code>Rule</code> or <code>RuleGroup</code> dimension for which
    #            you want a sample of requests.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute time_window
    #   <p>The start date and time and the end date and time of the range for which you want
    #               <code>GetSampledRequests</code> to return a sample of requests. You must specify the
    #            times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #            designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify
    #            any time range in the previous three hours. If you specify a start time that's earlier than
    #            three hours ago, WAF sets it to three hours ago.</p>
    #   @return [Types::TimeWindow]
    # @!attribute max_items
    #   <p>The number of requests that you want WAF to return from among the first 5,000
    #            requests that your Amazon Web Services resource received during the time range. If your resource received
    #            fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code>
    #            returns information about all of them. </p>
    #   @return [Integer]
    class GetSampledRequestsRequest < Struct.new(
      nil,
      :web_acl_arn,
      :rule_metric_name,
      :scope,
      :time_window,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampled_requests
    #   <p>A complex type that contains detailed information about each of the requests in the
    #            sample.</p>
    #   @return [Array<Types::SampledHTTPRequest>]
    # @!attribute population_size
    #   <p>The total number of requests from which <code>GetSampledRequests</code> got a sample of
    #               <code>MaxItems</code> requests. If <code>PopulationSize</code> is less than
    #               <code>MaxItems</code>, the sample includes every request that your Amazon Web Services resource
    #            received during the specified time range.</p>
    #   @return [Integer]
    # @!attribute time_window
    #   <p>Usually, <code>TimeWindow</code> is the time range that you specified in the
    #               <code>GetSampledRequests</code> request. However, if your Amazon Web Services resource received more
    #            than 5,000 requests during the time range that you specified in the request,
    #               <code>GetSampledRequests</code> returns the time range for the first 5,000 requests.
    #            Times are in Coordinated Universal Time (UTC) format.</p>
    #   @return [Types::TimeWindow]
    class GetSampledRequestsResponse < Struct.new(
      nil,
      :sampled_requests,
      :population_size,
      :time_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:population_size] = 0 unless options.key?(:population_size)
        super
      end
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to retrieve path statistics.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether the web ACL is for an Amazon Web Services CloudFront distribution or for a regional application.
    #            A regional application can be an Application Load Balancer, an AppSync GraphQL API, an Amazon Cognito user pool,
    #            an Amazon Web Services App Runner service, or an Amazon Web Services Verified Access instance.</p>
    #   @return [String]
    # @!attribute uri_path_prefix
    #   <p>A URI path prefix to filter the results. When you specify this parameter, the operation returns statistics for individual URIs within the specified path prefix.
    #            For example, if you specify <code>/api</code>, the response includes statistics for paths like <code>/api/v1/users</code> and <code>/api/v2/orders</code>.
    #            If you don't specify this parameter, the operation returns top-level path statistics.</p>
    #   @return [String]
    # @!attribute time_window
    #   <p>The time window for which you want to retrieve path statistics. The time window must be within the data retention period for your web ACL.</p>
    #   @return [Types::TimeWindow]
    # @!attribute bot_category
    #   <p>Filters the results to include only traffic from bots in the specified category. For example, you can filter by <code>ai</code>
    #            to see only AI crawler traffic, or <code>search_engine</code> to see only search engine bot traffic.
    #            When you apply this filter, the <code>Source</code> field is populated in the response.</p>
    #   @return [String]
    # @!attribute bot_organization
    #   <p>Filters the results to include only traffic from bots belonging to the specified organization. For example, you can filter by <code>openai</code> or <code>google</code>.
    #            When you apply this filter, the <code>Source</code> field is populated in the response.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>Filters the results to include only traffic from the specified bot. For example, you can filter by <code>gptbot</code> or <code>googlebot</code>.
    #            When you apply this filter, the <code>Source</code> field is populated in the response.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of path statistics to return. Valid values are 1 to 100.</p>
    #   @return [Integer]
    # @!attribute number_of_top_traffic_bots_per_path
    #   <p>The maximum number of top bots to include in the statistics for each path. Valid values are 1 to 10.</p>
    #   @return [Integer]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, WAF
    #            returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects,
    #            provide the marker from the prior call in your next request.</p>
    #   @return [String]
    class GetTopPathStatisticsByTrafficRequest < Struct.new(
      nil,
      :web_acl_arn,
      :scope,
      :uri_path_prefix,
      :time_window,
      :bot_category,
      :bot_organization,
      :bot_name,
      :limit,
      :number_of_top_traffic_bots_per_path,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path_statistics
    #   <p>The list of path statistics, ordered by request count. Each entry includes the path, request count,
    #            percentage of total traffic, and the top bots accessing that path.</p>
    #   @return [Array<Types::PathStatistics>]
    # @!attribute total_request_count
    #   <p>The total number of requests that match the query criteria within the specified time window.</p>
    #   @return [Integer]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that
    #            are still available for retrieval exceeds the limit, WAF returns a <code>NextMarker</code> value in the response.
    #            To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute top_categories
    #   <p>Category-level aggregations for visualizing bot category to path relationships. This field is only populated when no bot filters are applied to the request.
    #            Each entry includes the bot category and the paths accessed by bots in that category.</p>
    #   @return [Array<Types::PathStatistics>]
    class GetTopPathStatisticsByTrafficResponse < Struct.new(
      nil,
      :path_statistics,
      :total_request_count,
      :next_marker,
      :top_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_request_count] = 0 unless options.key?(:total_request_count)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose web ACL you want to retrieve. </p>
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:<i>partition</i>:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:<i>partition</i>:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:<i>partition</i>:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Cognito user pool: <code>arn:<i>partition</i>:cognito-idp:<i>region</i>:<i>account-id</i>:userpool/<i>user-pool-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an App Runner service: <code>arn:<i>partition</i>:apprunner:<i>region</i>:<i>account-id</i>:service/<i>apprunner-service-name</i>/<i>apprunner-service-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Verified Access instance: <code>arn:<i>partition</i>:ec2:<i>region</i>:<i>account-id</i>:verified-access-instance/<i>instance-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amplify application: <code>arn:<i>partition</i>:amplify:<i>region</i>:<i>account-id</i>:apps/<i>app-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Bedrock AgentCore Gateway: <code>arn:<i>partition</i>:bedrock-agentcore:<i>region</i>:<i>account-id</i>:gateway/<i>gateway-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetWebACLForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl
    #   <p>The web ACL that is associated with the resource. If there is no associated resource,
    #            WAF returns a null web ACL.</p>
    #   @return [Types::WebACL]
    class GetWebACLForResourceResponse < Struct.new(
      nil,
      :web_acl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to retrieve. </p>
    #   @return [String]
    class GetWebACLRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl
    #   <p>The web ACL specification. You can modify the settings in this web ACL and use it to
    #            update this web ACL or create a new one.</p>
    #   @return [Types::WebACL]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute application_integration_url
    #   <p>The URL to use in SDK integrations with Amazon Web Services managed rule groups. For example, you can use the integration SDKs with the account takeover prevention managed rule group <code>AWSManagedRulesATPRuleSet</code> and the account creation fraud prevention managed rule group <code>AWSManagedRulesACFPRuleSet</code>. This is only populated if you are using a rule group in your web ACL that integrates with your applications in this way. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a>
    #   in the <i>WAF Developer Guide</i>.</p>
    #   @return [String]
    class GetWebACLResponse < Struct.new(
      nil,
      :web_acl,
      :lock_token,
      :application_integration_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Part of the response from <a>GetSampledRequests</a>. This is a complex type
    #          that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code>
    #          contains the names and values of all of the headers that appear in one of the web requests.
    #       </p>
    # @!attribute name
    #   <p>The name of the HTTP header.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the HTTP header.</p>
    #   @return [String]
    class HTTPHeader < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Part of the response from <a>GetSampledRequests</a>. This is a complex type
    #          that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code>
    #          contains information about one of the web requests. </p>
    # @!attribute client_ip
    #   <p>The IP address that the request originated from. If the web ACL is associated with a
    #            CloudFront distribution, this is the value of one of the following fields in CloudFront access
    #            logs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send
    #                  the request</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer
    #                  to send the request</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute country
    #   <p>The two-letter country code for the country that the request originated from. For a
    #            current list of country codes, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #            alpha-2</a>.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI path of the request, which identifies the resource, for example,
    #               <code>/images/daily-ad.jpg</code>.</p>
    #   @return [String]
    # @!attribute method
    #   <p>The HTTP method specified in the sampled web request. </p>
    #   @return [String]
    # @!attribute http_version
    #   <p>The HTTP version specified in the sampled web request, for example,
    #               <code>HTTP/1.1</code>.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A complex type that contains the name and value for each header in the sampled web
    #            request.</p>
    #   @return [Array<Types::HTTPHeader>]
    class HTTPRequest < Struct.new(
      nil,
      :client_ip,
      :country,
      :uri,
      :method,
      :http_version,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter to use to identify the subset of headers to inspect in a web request. </p>
    #          <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedHeaders</code>, or <code>ExcludedHeaders</code>.</p>
    #          <p>Example JSON: <code>"MatchPattern": { "ExcludedHeaders": [ "KeyToExclude1", "KeyToExclude2" ] }</code>
    #          </p>
    # @!attribute all
    #   <p>Inspect all headers. </p>
    #   @return [Types::All]
    # @!attribute included_headers
    #   <p>Inspect only the headers that have a key that matches one of the strings specified here.
    #         </p>
    #   @return [Array<String>]
    # @!attribute excluded_headers
    #   <p>Inspect only the headers whose keys don't match any of the strings specified here.
    #         </p>
    #   @return [Array<String>]
    class HeaderMatchPattern < Struct.new(
      nil,
      :all,
      :included_headers,
      :excluded_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect a string containing the list of the request's header names, ordered as they appear in the web request
    # that WAF receives for inspection.
    #            WAF generates the string and then uses that as the field to match component in its inspection.
    #     WAF separates the header names in the string using colons and no added spaces, for example <code>host:user-agent:accept:authorization:referer</code>.</p>
    # @!attribute oversize_handling
    #   <p>What WAF should do if the headers determined by your match scope are more numerous or larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of request headers
    #         when they exceed 8 KB (8192 bytes) or 200 total headers. The underlying host service forwards a maximum of 200 headers
    #         and at most 8 KB of header contents to WAF. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the available headers normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class HeaderOrder < Struct.new(
      nil,
      :oversize_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect all headers in the web request. You can specify the parts of the headers to
    #          inspect and you can narrow the set of headers to inspect by including or excluding specific
    #          keys.</p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>If you want to inspect just the value of a single header, use the
    #             <code>SingleHeader</code>
    #             <code>FieldToMatch</code> setting instead.</p>
    #          <p>Example JSON: <code>"Headers": { "MatchPattern": { "All": {} }, "MatchScope": "KEY",
    #             "OversizeHandling": "MATCH" }</code>
    #          </p>
    # @!attribute match_pattern
    #   <p>The filter to use to identify the subset of headers to inspect in a web request. </p>
    #            <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedHeaders</code>, or <code>ExcludedHeaders</code>.</p>
    #            <p>Example JSON: <code>"MatchPattern": { "ExcludedHeaders": [ "KeyToExclude1", "KeyToExclude2" ] }</code>
    #            </p>
    #   @return [Types::HeaderMatchPattern]
    # @!attribute match_scope
    #   <p>The parts of the headers to match with the rule inspection criteria. If you specify
    #               <code>ALL</code>, WAF inspects both keys and values. </p>
    #            <p>
    #               <code>All</code> does not require a match to be found in the keys
    #    and a match to be found in the values. It requires a match to be found in the keys
    #    or the values or both. To require a match in the keys and in the values, use a logical <code>AND</code> statement
    #    to combine two match rules, one that inspects the keys and another that inspects the values. </p>
    #   @return [String]
    # @!attribute oversize_handling
    #   <p>What WAF should do if the headers determined by your match scope are more numerous or larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of request headers
    #         when they exceed 8 KB (8192 bytes) or 200 total headers. The underlying host service forwards a maximum of 200 headers
    #         and at most 8 KB of header contents to WAF. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the available headers normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Headers < Struct.new(
      nil,
      :match_pattern,
      :match_scope,
      :oversize_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains zero or more IP addresses or blocks of IP addresses specified in Classless
    #          Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges
    #          except for /0. For information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #             Inter-Domain Routing</a>. </p>
    #          <p>WAF assigns an ARN to each <code>IPSet</code> that you create. To use an IP set in a
    #          rule, you provide the ARN to the <a>Rule</a> statement <a>IPSetReferenceStatement</a>. </p>
    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #   @return [String]
    # @!attribute ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #   @return [String]
    # @!attribute addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses that you want WAF to inspect for in incoming requests. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for <code>/0</code>. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>For requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class IPSet < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :description,
      :ip_address_version,
      :addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #          <note>
    #             <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #          </note>
    #          <p>This configuration is used only for <a>IPSetReferenceStatement</a>. For <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>, use <a>ForwardedIPConfig</a> instead. </p>
    # @!attribute header_name
    #   <p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #   @return [String]
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute position
    #   <p>The position in the header to search for the IP address. The header can contain IP
    #            addresses of the original client and also of proxies. For example, the header value could
    #            be <code>10.1.1.1, 127.0.0.0, 10.10.10.10</code> where the first IP address identifies the
    #            original client and the rest identify proxies that the request went through. </p>
    #            <p>The options for this setting are the following: </p>
    #            <ul>
    #               <li>
    #                  <p>FIRST - Inspect the first IP address in the list of IP addresses in the
    #                  header. This is usually the client's original IP.</p>
    #               </li>
    #               <li>
    #                  <p>LAST - Inspect the last IP address in the list of IP addresses in the
    #                  header.</p>
    #               </li>
    #               <li>
    #                  <p>ANY - Inspect all IP addresses in the header for a match. If the header
    #                  contains more than 10 IP addresses, WAF inspects the last 10.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class IPSetForwardedIPConfig < Struct.new(
      nil,
      :header_name,
      :fallback_behavior,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p>
    #          <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <a>IPSet</a> that this statement
    #            references.</p>
    #   @return [String]
    # @!attribute ip_set_forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #   @return [Types::IPSetForwardedIPConfig]
    class IPSetReferenceStatement < Struct.new(
      nil,
      :arn,
      :ip_set_forwarded_ip_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>
    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    class IPSetSummary < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used for CAPTCHA and challenge token settings. Determines
    #        how long a <code>CAPTCHA</code> or challenge timestamp remains valid after WAF updates it for a successful <code>CAPTCHA</code> or challenge response. </p>
    # @!attribute immunity_time
    #   <p>The amount of time, in seconds, that a <code>CAPTCHA</code> or challenge timestamp is considered valid by WAF. The default
    #             setting is 300. </p>
    #            <p>For the Challenge action, the minimum setting is 300. </p>
    #   @return [Integer]
    class ImmunityTimeProperty < Struct.new(
      nil,
      :immunity_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Available for use with Amazon CloudFront distributions and Application Load Balancers. Match against the request's JA3 fingerprint. The JA3 fingerprint is a 32-character hash derived from the TLS Client Hello of an incoming request. This fingerprint serves as a unique identifier for the client's TLS configuration. WAF calculates and logs this fingerprint for each
    # 						request that has enough TLS Client Hello information for the calculation. Almost
    #                         all web requests include this information.</p>
    #          <note>
    #             <p>You can use this choice only with a string match <code>ByteMatchStatement</code> with the <code>PositionalConstraint</code> set to
    #        <code>EXACTLY</code>.  </p>
    #          </note>
    #          <p>You can obtain the JA3 fingerprint for client requests from the web ACL logs.
    # 						If WAF is able to calculate the fingerprint, it includes it in the logs.
    # 						For information about the logging fields,
    # see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields</a> in the <i>WAF Developer Guide</i>. </p>
    #          <p>Provide the JA3 fingerprint string from the logs in your string match statement
    # 							specification, to match with any future requests that have the same TLS configuration.</p>
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if the request doesn't have a JA3 fingerprint. </p>
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class JA3Fingerprint < Struct.new(
      nil,
      :fallback_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Available for use with Amazon CloudFront distributions and Application Load Balancers. Match against the request's JA4 fingerprint. The JA4 fingerprint is a 36-character hash derived from the TLS Client Hello of an incoming request. This fingerprint serves as a unique identifier for the client's TLS configuration. WAF calculates and logs this fingerprint for each
    # 						request that has enough TLS Client Hello information for the calculation. Almost
    #                         all web requests include this information.</p>
    #          <note>
    #             <p>You can use this choice only with a string match <code>ByteMatchStatement</code> with the <code>PositionalConstraint</code> set to
    #        <code>EXACTLY</code>.  </p>
    #          </note>
    #          <p>You can obtain the JA4 fingerprint for client requests from the web ACL logs.
    # 						If WAF is able to calculate the fingerprint, it includes it in the logs.
    # 						For information about the logging fields,
    # see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging-fields.html">Log fields</a> in the <i>WAF Developer Guide</i>. </p>
    #          <p>Provide the JA4 fingerprint string from the logs in your string match statement
    # 							specification, to match with any future requests that have the same TLS configuration.</p>
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if the request doesn't have a JA4 fingerprint. </p>
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class JA4Fingerprint < Struct.new(
      nil,
      :fallback_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect the body of the web request as JSON. The body immediately follows the request
    #          headers. </p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Use the specifications in this object to indicate which parts of the JSON body to
    #          inspect using the rule's inspection criteria. WAF inspects only the parts of the JSON
    #          that result from the matches that you indicate. </p>
    #          <p>Example JSON: <code>"JsonBody": { "MatchPattern": { "All": {} }, "MatchScope": "ALL"
    #             }</code>
    #          </p>
    #          <p>For additional information about this request component option, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-fields-list.html#waf-rule-statement-request-component-json-body">JSON body</a>
    #               in the <i>WAF Developer Guide</i>.</p>
    # @!attribute match_pattern
    #   <p>The patterns to look for in the JSON body. WAF inspects the results of these
    #            pattern matches against the rule inspection criteria. </p>
    #   @return [Types::JsonMatchPattern]
    # @!attribute match_scope
    #   <p>The parts of the JSON to match against using the <code>MatchPattern</code>. If you
    #            specify <code>ALL</code>, WAF matches against keys and values. </p>
    #            <p>
    #               <code>All</code> does not require a match to be found in the keys
    #    and a match to be found in the values. It requires a match to be found in the keys
    #    or the values or both. To require a match in the keys and in the values, use a logical <code>AND</code> statement
    #    to combine two match rules, one that inspects the keys and another that inspects the values. </p>
    #   @return [String]
    # @!attribute invalid_fallback_behavior
    #   <p>What WAF should do if it fails to completely parse the JSON body. The options are
    #            the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EVALUATE_AS_STRING</code> - Inspect the body as plain text. WAF
    #                  applies the text transformations and inspection criteria that you defined for the
    #                  JSON inspection to the body text string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement.
    #                  WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't provide this setting, WAF parses and evaluates the content only up to the
    #            first parsing failure that it encounters. </p>
    #            <note>
    #               <p>WAF parsing doesn't fully validate the input JSON string, so parsing can succeed even for invalid JSON. When
    #        parsing succeeds, WAF doesn't apply the fallback behavior. For more information,
    #             see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-fields-list.html#waf-rule-statement-request-component-json-body">JSON body</a>
    #                 in the <i>WAF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute oversize_handling
    #   <p>What WAF should do if the body is larger than WAF can inspect. </p>
    #            <p>WAF does not support inspecting the entire contents of the web request body if the body
    #       exceeds the limit for the resource type. When a web request body is larger than the limit, the underlying host service
    #       only forwards the contents that are within the limit to WAF for inspection. </p>
    #            <ul>
    #               <li>
    #                  <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #               </li>
    #               <li>
    #                  <p>For CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access, the default limit is 16 KB (16,384 bytes), and
    #             you can increase the limit for each resource type in the web ACL <code>AssociationConfig</code>, for additional processing fees. </p>
    #               </li>
    #               <li>
    #                  <p>For Amplify, use the CloudFront limit.</p>
    #               </li>
    #            </ul>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the available body contents normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #            <p>You can combine the <code>MATCH</code> or <code>NO_MATCH</code>
    #         settings for oversize handling with your rule and web ACL action settings, so that you block any request whose body is over the limit. </p>
    #            <p>Default: <code>CONTINUE</code>
    #            </p>
    #   @return [String]
    class JsonBody < Struct.new(
      nil,
      :match_pattern,
      :match_scope,
      :invalid_fallback_behavior,
      :oversize_handling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The patterns to look for in the JSON body. WAF inspects the results of these
    #          pattern matches against the rule inspection criteria. This is used with the <a>FieldToMatch</a> option <code>JsonBody</code>. </p>
    # @!attribute all
    #   <p>Match all of the elements. See also
    #               <code>MatchScope</code>
    #            in <a>JsonBody</a>. </p>
    #            <p>You must specify either this setting or the <code>IncludedPaths</code> setting, but not
    #            both.</p>
    #   @return [Types::All]
    # @!attribute included_paths
    #   <p>Match only the specified include paths. See also
    #               <code>MatchScope</code>
    #            in <a>JsonBody</a>. </p>
    #            <p>Provide the include paths using JSON Pointer syntax. For example, <code>"IncludedPaths":
    #               ["/dogs/0/name", "/dogs/1/name"]</code>. For information about this syntax, see the
    #            Internet Engineering Task Force (IETF) documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript Object Notation (JSON)
    #               Pointer</a>. </p>
    #            <p>You must specify either this setting or the <code>All</code> setting, but not
    #            both.</p>
    #            <note>
    #               <p>Don't use this option to include all paths. Instead, use the <code>All</code>
    #               setting. </p>
    #            </note>
    #   @return [Array<String>]
    class JsonMatchPattern < Struct.new(
      nil,
      :all,
      :included_paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single label container. This is used as an element of a label array in multiple
    #          contexts, for example, in <code>RuleLabels</code> inside a <a>Rule</a> and in
    #             <code>Labels</code> inside a <a>SampledHTTPRequest</a>. </p>
    # @!attribute name
    #   <p>The label string. </p>
    #   @return [String]
    class Label < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement to match against labels that have been added to the web request by rules that have already run in the web ACL. </p>
    #          <p>The label match statement provides the label or namespace string to search for. The label string can represent a part or all of the fully qualified label name that had been added to the web request. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  If you do not provide the fully qualified name in your label match string, WAF performs the search for labels that were added in the same context as the label match statement. </p>
    # @!attribute scope
    #   <p>Specify whether you want to match using the label name or just the namespace. </p>
    #   @return [String]
    # @!attribute key
    #   <p>The string to match against. The setting you provide for this depends on the match
    #            statement's <code>Scope</code> setting: </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>Scope</code> indicates <code>LABEL</code>, then this specification
    #                  must include the name and can include any number of preceding namespace
    #                  specifications and prefix up to providing the fully qualified label name. </p>
    #               </li>
    #               <li>
    #                  <p>If the <code>Scope</code> indicates <code>NAMESPACE</code>, then this
    #                  specification can include any number of contiguous namespace strings, and can include
    #                  the entire label namespace prefix from the rule group or web ACL where the label
    #                  originates.</p>
    #               </li>
    #            </ul>
    #            <p>Labels are case sensitive and components of a label must be separated by colon, for
    #            example <code>NS1:NS2:name</code>.</p>
    #   @return [String]
    class LabelMatchStatement < Struct.new(
      nil,
      :scope,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single label name condition for a <a>Condition</a> in a logging
    #          filter.</p>
    # @!attribute label_name
    #   <p>The label name that a log record must contain in order to meet the condition. This must
    #            be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  </p>
    #   @return [String]
    class LabelNameCondition < Struct.new(
      nil,
      :label_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of labels used by one or more of the rules of a <a>RuleGroup</a>. This
    #          summary object is used for the following rule group lists: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AvailableLabels</code> - Labels that rules add to matching requests.
    #                These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ConsumedLabels</code> - Labels that rules match against.
    #                These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>An individual label specification.</p>
    #   @return [String]
    class LabelSummary < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListAPIKeysRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute api_key_summaries
    #   <p>The array of key summaries. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::APIKeySummary>]
    # @!attribute application_integration_url
    #   <p>The CAPTCHA application integration URL, for use in your JavaScript implementation. </p>
    #   @return [String]
    class ListAPIKeysResponse < Struct.new(
      nil,
      :next_marker,
      :api_key_summaries,
      :application_integration_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListAvailableManagedRuleGroupVersionsRequest < Struct.new(
      nil,
      :vendor_name,
      :name,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>The versions that are currently available for the specified managed rule group. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::ManagedRuleGroupVersion>]
    # @!attribute current_default_version
    #   <p>The name of the version that's currently set as the default. </p>
    #   @return [String]
    class ListAvailableManagedRuleGroupVersionsResponse < Struct.new(
      nil,
      :next_marker,
      :versions,
      :current_default_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListAvailableManagedRuleGroupsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute managed_rule_groups
    #   <p>Array of managed rule groups that you can use. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::ManagedRuleGroupSummary>]
    class ListAvailableManagedRuleGroupsResponse < Struct.new(
      nil,
      :next_marker,
      :managed_rule_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListIPSetsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute ip_sets
    #   <p>Array of IPSets. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::IPSetSummary>]
    class ListIPSetsResponse < Struct.new(
      nil,
      :next_marker,
      :ip_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>The log scope <code>CLOUDWATCH_TELEMETRY_RULE_MANAGED</code> indicates a configuration that is managed through Amazon CloudWatch Logs for telemetry data collection and analysis. For information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch Logs ?</a>
    #          in the <i>Amazon CloudWatch Logs user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    #   @return [String]
    class ListLoggingConfigurationsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      :log_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_configurations
    #   <p>Array of logging configurations. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::LoggingConfiguration>]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    class ListLoggingConfigurationsResponse < Struct.new(
      nil,
      :logging_configurations,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListManagedRuleSetsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute managed_rule_sets
    #   <p>Your managed rule sets. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::ManagedRuleSetSummary>]
    class ListManagedRuleSetsResponse < Struct.new(
      nil,
      :next_marker,
      :managed_rule_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform
    #   <p>The device platform to retrieve the list for.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListMobileSdkReleasesRequest < Struct.new(
      nil,
      :platform,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute release_summaries
    #   <p>The high level information for the available SDK releases. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::ReleaseSummary>]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    class ListMobileSdkReleasesResponse < Struct.new(
      nil,
      :release_summaries,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListRegexPatternSetsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute regex_pattern_sets
    #   <p>Array of regex pattern sets. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::RegexPatternSetSummary>]
    class ListRegexPatternSetsResponse < Struct.new(
      nil,
      :next_marker,
      :regex_pattern_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Retrieves the web ACLs that are used by the specified resource type. </p>
    #            <p>For Amazon CloudFront, don't use this call. Instead, use the CloudFront call
    #             <code>ListDistributionsByWebACLId</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html">ListDistributionsByWebACLId</a>
    #             in the <i>Amazon CloudFront API Reference</i>. </p>
    #            <note>
    #               <p>If you don't provide a resource type, the call uses the resource type <code>APPLICATION_LOAD_BALANCER</code>. </p>
    #            </note>
    #            <p>Default: <code>APPLICATION_LOAD_BALANCER</code>
    #            </p>
    #   @return [String]
    class ListResourcesForWebACLRequest < Struct.new(
      nil,
      :web_acl_arn,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>The array of Amazon Resource Names (ARNs) of the associated resources.</p>
    #   @return [Array<String>]
    class ListResourcesForWebACLResponse < Struct.new(
      nil,
      :resource_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListRuleGroupsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute rule_groups
    #   <p>Array of rule groups. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::RuleGroupSummary>]
    class ListRuleGroupsResponse < Struct.new(
      nil,
      :next_marker,
      :rule_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_window
    #   <p>The time range for the query. Specify start and end timestamps.</p>
    #   @return [Types::TimeWindow]
    # @!attribute scope
    #   <p>Specifies whether this is for a Amazon CloudFront distribution (<code>CLOUDFRONT</code>) or for a regional application (<code>REGIONAL</code>).</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency for the amounts in the response.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Optional filters to narrow the results. You can filter by payer address, status, source name, network, or other settlement fields.</p>
    #   @return [Array<Types::MonetizationFilter>]
    # @!attribute sort_by
    #   <p>The field to sort settlement records by: <code>TIMESTAMP</code>, <code>AMOUNT</code>, <code>NAME</code>, or <code>STATUS</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order: <code>ASC</code> for ascending or <code>DESC</code> for descending.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of settlement records to return. Minimum: 1. Maximum: 100.</p>
    #   @return [Integer]
    # @!attribute next_marker
    #   <p>When you get a paginated response, this marker indicates that additional results are available.</p>
    #   @return [String]
    class ListSettlementRecordsRequest < Struct.new(
      nil,
      :time_window,
      :scope,
      :currency,
      :filters,
      :sort_by,
      :sort_order,
      :limit,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute settlements
    #   <p>The list of settlement records.</p>
    #   @return [Array<Types::SettlementRecord>]
    # @!attribute next_marker
    #   <p>When you get a paginated response, this marker indicates that additional results are available.</p>
    #   @return [String]
    class ListSettlementRecordsResponse < Struct.new(
      nil,
      :settlements,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :next_marker,
      :limit,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute tag_info_for_resource
    #   <p>The collection of tagging definitions for the resource. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Types::TagInfoForResource]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :next_marker,
      :tag_info_for_resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListWebACLsRequest < Struct.new(
      nil,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute web_ac_ls
    #   <p>Array of web ACLs. If you specified a <code>Limit</code> in your request, this might not be the full list. </p>
    #   @return [Array<Types::WebACLSummary>]
    class ListWebACLsResponse < Struct.new(
      nil,
      :next_marker,
      :web_ac_ls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an association between logging destinations and a web ACL resource, for logging
    #          from WAF. As part of the association, you can specify parts of the standard logging
    #          fields to keep out of the logs and you can specify filters so that you log only a subset of
    #          the logging records. </p>
    #          <p>If you configure data protection for the web ACL, the protection applies to the data that WAF sends to the logs. </p>
    #          <note>
    #             <p>You can define one logging destination per web ACL.</p>
    #          </note>
    #          <p>You can access information about the traffic that WAF inspects using the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create your logging destination. You can use an Amazon CloudWatch Logs log group, an Amazon Simple Storage Service (Amazon S3) bucket, or an Amazon Kinesis Data Firehose. </p>
    #                <p>The name that you give the destination must start with <code>aws-waf-logs-</code>. Depending on the type of destination, you might need to configure additional settings or permissions. </p>
    #                <p>For configuration requirements and pricing information for each destination type, see
    #                  <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Associate your logging destination to your web ACL using a
    #                   <code>PutLoggingConfiguration</code> request.</p>
    #             </li>
    #          </ol>
    #          <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code>
    #           request, WAF creates an additional role or policy that is required to write
    #               logs to the logging destination. For an Amazon CloudWatch Logs log group, WAF creates a resource policy on the log group.
    #           For an Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis Data Firehose, WAF creates a service-linked role.</p>
    #          <p>For additional information about web ACL logging, see
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a>
    #                in the <i>WAF Developer Guide</i>.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with
    #               <code>LogDestinationConfigs</code>.</p>
    #   @return [String]
    # @!attribute log_destination_configs
    #   <p>The logging destination configuration that you want to associate with the web
    #            ACL.</p>
    #            <note>
    #               <p>You can associate one logging destination to a web ACL.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute redacted_fields
    #   <p>The parts of the request that you want to keep out of the logs.</p>
    #            <p>For example, if you
    #            redact the <code>SingleHeader</code> field, the <code>HEADER</code> field in the logs will
    #            be <code>REDACTED</code> for all rules that use the <code>SingleHeader</code>
    #               <code>FieldToMatch</code> setting. </p>
    #            <p>If you configure data protection for the web ACL, the protection applies to the data that WAF sends to the logs. </p>
    #            <p>Redaction applies only to the component that's specified in the rule's <code>FieldToMatch</code> setting, so the <code>SingleHeader</code> redaction
    #            doesn't apply to rules that use the <code>Headers</code>
    #               <code>FieldToMatch</code>.</p>
    #            <note>
    #               <p>You can specify only the following fields for redaction: <code>UriPath</code>,
    #            <code>QueryString</code>, <code>SingleHeader</code>, and <code>Method</code>.</p>
    #            </note>
    #            <note>
    #               <p>This setting has no impact on request sampling. You can only exclude fields from request sampling by disabling sampling in the web ACL visibility configuration
    #                         or by configuring data protection for the web ACL.</p>
    #            </note>
    #   @return [Array<Types::FieldToMatch>]
    # @!attribute managed_by_firewall_manager
    #   <p>Indicates whether the logging configuration was created by Firewall Manager, as part of an
    #            WAF policy configuration. If true, only Firewall Manager can modify or delete the
    #         configuration. </p>
    #            <p>The logging configuration can be created by Firewall Manager for use with any web ACL that Firewall Manager is using for an WAF policy.
    #          Web ACLs that Firewall Manager creates and uses have their <code>ManagedByFirewallManager</code> property set to true. Web ACLs that were created
    #              by a customer account and then retrofitted by Firewall Manager for use by a policy have their <code>RetrofittedByFirewallManager</code> property set to true.
    #          For either case, any corresponding logging configuration will indicate <code>ManagedByFirewallManager</code>.</p>
    #   @return [Boolean]
    # @!attribute logging_filter
    #   <p>Filtering that specifies which web requests are kept in the logs and which are dropped.
    #            You can filter on the rule action and on the web request labels that were applied by
    #            matching rules during web ACL evaluation. </p>
    #   @return [Types::LoggingFilter]
    # @!attribute log_type
    #   <p>Used to distinguish between various logging options. Currently, there is one option.</p>
    #            <p>Default: <code>WAF_LOGS</code>
    #            </p>
    #   @return [String]
    # @!attribute log_scope
    #   <p>The owner of the logging configuration, which must be set to <code>CUSTOMER</code> for the configurations that you manage. </p>
    #            <p>The log scope <code>SECURITY_LAKE</code> indicates a configuration that is managed through Amazon Security Lake. You can use Security Lake to collect log and event data from various sources for normalization, analysis, and management. For information, see
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Collecting data from Amazon Web Services services</a>
    #          in the <i>Amazon Security Lake user guide</i>. </p>
    #            <p>The log scope <code>CLOUDWATCH_TELEMETRY_RULE_MANAGED</code> indicates a configuration that is managed through Amazon CloudWatch Logs for telemetry data collection and analysis. For information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch Logs ?</a>
    #          in the <i>Amazon CloudWatch Logs user guide</i>. </p>
    #            <p>Default: <code>CUSTOMER</code>
    #            </p>
    #   @return [String]
    class LoggingConfiguration < Struct.new(
      nil,
      :resource_arn,
      :log_destination_configs,
      :redacted_fields,
      :managed_by_firewall_manager,
      :logging_filter,
      :log_type,
      :log_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:managed_by_firewall_manager] = false unless options.key?(:managed_by_firewall_manager)
        super
      end
    end

    # <p>Filtering that specifies which web requests are kept in the logs and which are dropped,
    #          defined for a web ACL's <a>LoggingConfiguration</a>. </p>
    #          <p>You can filter on the rule action and on the web request labels that were applied by
    #          matching rules during web ACL evaluation. </p>
    # @!attribute filters
    #   <p>The filters that you want to apply to the logs. </p>
    #   @return [Array<Types::Filter>]
    # @!attribute default_behavior
    #   <p>Default handling for logs that don't match any of the specified filtering conditions.
    #         </p>
    #   @return [String]
    class LoggingFilter < Struct.new(
      nil,
      :filters,
      :default_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a managed product, such as an Amazon Web Services Managed Rules rule group or an Amazon Web Services Marketplace managed rule group. </p>
    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    #   @return [String]
    # @!attribute managed_rule_set_name
    #   <p>The name of the managed rule group. For example, <code>AWSManagedRulesAnonymousIpList</code> or <code>AWSManagedRulesATPRuleSet</code>.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute product_link
    #   <p>For Amazon Web Services Marketplace managed rule groups only, the link to the rule group product page. </p>
    #   @return [String]
    # @!attribute product_title
    #   <p>The display name for the managed rule group. For example, <code>Anonymous IP list</code> or <code>Account takeover prevention</code>.</p>
    #   @return [String]
    # @!attribute product_description
    #   <p>A short description of the managed rule group.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon resource name (ARN) of the Amazon Simple Notification Service SNS topic that's used to provide notification of changes
    #            to the managed rule group. You can subscribe to the SNS topic to receive notifications when
    #            the managed rule group is modified, such as for new versions and for version expiration.
    #            For more information, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon Simple Notification Service Developer Guide</a>.</p>
    #   @return [String]
    # @!attribute is_versioning_supported
    #   <p>Indicates whether the rule group is versioned. </p>
    #   @return [Boolean]
    # @!attribute is_advanced_managed_rule_set
    #   <p>Indicates whether the rule group provides an advanced set of protections, such as the the Amazon Web Services Managed Rules rule groups that
    #              are used for WAF intelligent threat mitigation.  </p>
    #   @return [Boolean]
    class ManagedProductDescriptor < Struct.new(
      nil,
      :vendor_name,
      :managed_rule_set_name,
      :product_id,
      :product_link,
      :product_title,
      :product_description,
      :sns_topic_arn,
      :is_versioning_supported,
      :is_advanced_managed_rule_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_versioning_supported] = false unless options.key?(:is_versioning_supported)
        options[:is_advanced_managed_rule_set] = false unless options.key?(:is_advanced_managed_rule_set)
        super
      end
    end

    # <p>Additional information that's used by a managed rule group. Many managed rule groups don't require this.</p>
    #          <p>The rule groups used for intelligent threat mitigation require additional configuration: </p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>AWSManagedRulesACFPRuleSet</code> configuration object to configure the account creation fraud prevention managed rule group. The configuration includes the registration and sign-up pages of your application and the locations in the account creation request payload of data, such as the user email and phone number fields. </p>
    #             </li>
    #             <li>
    #                <p>Use the <code>AWSManagedRulesAntiDDoSRuleSet</code> configuration object to configure the anti-DDoS managed rule group. The configuration includes the sensitivity levels to use in the rules that typically block and challenge requests that might be participating in DDoS attacks and the specification to use to indicate whether a request can handle a silent browser challenge. </p>
    #             </li>
    #             <li>
    #                <p>Use the <code>AWSManagedRulesATPRuleSet</code> configuration object to configure the account takeover prevention managed rule group. The configuration includes the sign-in page of your application and the locations in the login request payload of data such as the username and password. </p>
    #             </li>
    #             <li>
    #                <p>Use the <code>AWSManagedRulesBotControlRuleSet</code> configuration object to configure the
    #        protection level that you want the Bot Control rule group to use. </p>
    #             </li>
    #          </ul>
    #          <p>For example specifications, see the examples section of <a>CreateWebACL</a>.</p>
    # @!attribute login_path
    #   <note>
    #               <p>Instead of this setting, provide your configuration under <code>AWSManagedRulesATPRuleSet</code>. </p>
    #            </note>
    #   @deprecated
    #     Deprecated. Use AWSManagedRulesATPRuleSet LoginPath
    #   @return [String]
    # @!attribute payload_type
    #   <note>
    #               <p>Instead of this setting, provide your configuration under the request inspection configuration for <code>AWSManagedRulesATPRuleSet</code> or <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #            </note>
    #   @deprecated
    #     Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection PayloadType
    #   @return [String]
    # @!attribute username_field
    #   <note>
    #               <p>Instead of this setting, provide your configuration under the request inspection configuration for <code>AWSManagedRulesATPRuleSet</code> or <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #            </note>
    #   @deprecated
    #     Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection UsernameField
    #   @return [Types::UsernameField]
    # @!attribute password_field
    #   <note>
    #               <p>Instead of this setting, provide your configuration under the request inspection configuration for <code>AWSManagedRulesATPRuleSet</code> or <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #            </note>
    #   @deprecated
    #     Deprecated. Use AWSManagedRulesATPRuleSet RequestInspection PasswordField
    #   @return [Types::PasswordField]
    # @!attribute aws_managed_rules_bot_control_rule_set
    #   <p>Additional configuration for using the Bot Control managed rule group. Use this to specify the
    #          inspection level that you want to use. For information
    #          about using the Bot Control managed rule group, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html">WAF Bot Control rule group</a>
    #                  and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-bot-control.html">WAF Bot Control</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #   @return [Types::AWSManagedRulesBotControlRuleSet]
    # @!attribute aws_managed_rules_atp_rule_set
    #   <p>Additional configuration for using the account takeover prevention (ATP) managed rule group, <code>AWSManagedRulesATPRuleSet</code>.
    #          Use this to provide login request information to the rule group. For web ACLs that protect CloudFront distributions, use this to also provide
    #              the information about how your distribution responds to login requests. </p>
    #            <p>This configuration replaces the individual configuration fields in <code>ManagedRuleGroupConfig</code> and provides additional feature configuration. </p>
    #            <p>For information
    #          about using the ATP managed rule group, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-atp.html">WAF Fraud Control account takeover prevention (ATP) rule group</a>
    #                  and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-atp.html">WAF Fraud Control account takeover prevention (ATP)</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #   @return [Types::AWSManagedRulesATPRuleSet]
    # @!attribute aws_managed_rules_acfp_rule_set
    #   <p>Additional configuration for using the account creation fraud prevention (ACFP) managed rule group, <code>AWSManagedRulesACFPRuleSet</code>.
    #          Use this to provide account creation request information to the rule group. For web ACLs that protect CloudFront distributions, use this to also provide
    #              the information about how your distribution responds to account creation requests. </p>
    #            <p>For information
    #          about using the ACFP managed rule group, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-acfp.html">WAF Fraud Control account creation fraud prevention (ACFP) rule group</a>
    #                  and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-acfp.html">WAF Fraud Control account creation fraud prevention (ACFP)</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #   @return [Types::AWSManagedRulesACFPRuleSet]
    # @!attribute aws_managed_rules_anti_d_do_s_rule_set
    #   <p>Additional configuration for using the anti-DDoS managed rule group, <code>AWSManagedRulesAntiDDoSRuleSet</code>.
    #          Use this to configure anti-DDoS behavior for the rule group. </p>
    #            <p>For information
    #          about using the anti-DDoS managed rule group, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-anti-ddos.html">WAF Anti-DDoS rule group</a>
    #                  and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-anti-ddos.html">Distributed Denial of Service (DDoS) prevention</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #   @return [Types::AWSManagedRulesAntiDDoSRuleSet]
    class ManagedRuleGroupConfig < Struct.new(
      nil,
      :login_path,
      :payload_type,
      :username_field,
      :password_field,
      :aws_managed_rules_bot_control_rule_set,
      :aws_managed_rules_atp_rule_set,
      :aws_managed_rules_acfp_rule_set,
      :aws_managed_rules_anti_d_do_s_rule_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p>
    #          <p>You cannot nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You cannot use a managed rule group
    #       inside another rule group. You can only reference a managed rule group as a top-level statement within a rule that you define in a web ACL.</p>
    #          <note>
    #             <p>You are charged additional fees when you use the WAF Bot Control managed rule group <code>AWSManagedRulesBotControlRuleSet</code>, the WAF Fraud Control account takeover prevention (ATP) managed rule group <code>AWSManagedRulesATPRuleSet</code>, or the WAF Fraud Control account creation fraud prevention (ACFP) managed rule group <code>AWSManagedRulesACFPRuleSet</code>. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #          </note>
    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the managed rule group to use. If you specify this, the version setting
    #            is fixed until you change it. If you don't specify this, WAF uses the vendor's
    #            default version, and then keeps the version at the vendor's default when the vendor updates
    #            the managed rule group settings. </p>
    #   @return [String]
    # @!attribute excluded_rules
    #   <p>Rules in the referenced rule group whose actions are set to <code>Count</code>. </p>
    #            <note>
    #               <p>Instead of this option, use <code>RuleActionOverrides</code>. It accepts any valid action setting, including <code>Count</code>.</p>
    #            </note>
    #   @return [Array<Types::ExcludedRule>]
    # @!attribute scope_down_statement
    #   <p>An optional nested statement that narrows the scope of the web requests that are
    #            evaluated by the managed rule group. Requests are only evaluated by the rule group if they
    #            match the scope-down statement. You can use any nestable <a>Statement</a> in the
    #            scope-down statement, and you can nest statements at any level, the same as you can for a
    #            rule statement. </p>
    #   @return [Types::Statement]
    # @!attribute managed_rule_group_configs
    #   <p>Additional information that's used by a managed rule group. Many managed rule groups don't require this.</p>
    #            <p>The rule groups used for intelligent threat mitigation require additional configuration: </p>
    #            <ul>
    #               <li>
    #                  <p>Use the <code>AWSManagedRulesACFPRuleSet</code> configuration object to configure the account creation fraud prevention managed rule group. The configuration includes the registration and sign-up pages of your application and the locations in the account creation request payload of data, such as the user email and phone number fields. </p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>AWSManagedRulesAntiDDoSRuleSet</code> configuration object to configure the anti-DDoS managed rule group. The configuration includes the sensitivity levels to use in the rules that typically block and challenge requests that might be participating in DDoS attacks and the specification to use to indicate whether a request can handle a silent browser challenge. </p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>AWSManagedRulesATPRuleSet</code> configuration object to configure the account takeover prevention managed rule group. The configuration includes the sign-in page of your application and the locations in the login request payload of data such as the username and password. </p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>AWSManagedRulesBotControlRuleSet</code> configuration object to configure the
    #          protection level that you want the Bot Control rule group to use. </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ManagedRuleGroupConfig>]
    # @!attribute rule_action_overrides
    #   <p>Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. </p>
    #            <note>
    #               <p>Verify the rule names in your overrides carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.</p>
    #            </note>
    #            <p>You can use overrides for testing, for example you can override all of rule actions to <code>Count</code> and then monitor the resulting count metrics to understand how the rule group would handle your web traffic. You can also permanently override some or all actions, to modify how the rule group manages your web traffic.</p>
    #   @return [Array<Types::RuleActionOverride>]
    class ManagedRuleGroupStatement < Struct.new(
      nil,
      :vendor_name,
      :name,
      :version,
      :excluded_rules,
      :scope_down_statement,
      :managed_rule_group_configs,
      :rule_action_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a managed rule group, returned by <a>ListAvailableManagedRuleGroups</a>. This provides information like the name and vendor name, that you provide when you add a <a>ManagedRuleGroupStatement</a> to a web ACL. Managed rule groups include Amazon Web Services Managed Rules rule groups and Amazon Web Services Marketplace managed rule groups. To use any Amazon Web Services Marketplace managed rule group, first subscribe to the rule group through Amazon Web Services Marketplace. </p>
    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify a rule group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #   @return [String]
    # @!attribute versioning_supported
    #   <p>Indicates whether the managed rule group is versioned. If it is, you can retrieve the
    #            versions list by calling <a>ListAvailableManagedRuleGroupVersions</a>. </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the managed rule group, provided by Amazon Web Services Managed Rules or the Amazon Web Services Marketplace seller who manages it.</p>
    #   @return [String]
    class ManagedRuleGroupSummary < Struct.new(
      nil,
      :vendor_name,
      :name,
      :versioning_supported,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:versioning_supported] = false unless options.key?(:versioning_supported)
        super
      end
    end

    # <p>Describes a single version of a managed rule group. </p>
    # @!attribute name
    #   <p>The version name. </p>
    #   @return [String]
    # @!attribute last_update_timestamp
    #   <p>The date and time that the managed rule group owner updated the rule group version
    #            information. </p>
    #   @return [Time]
    class ManagedRuleGroupVersion < Struct.new(
      nil,
      :name,
      :last_update_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of rules that is managed by Amazon Web Services and Amazon Web Services Marketplace sellers to provide versioned managed
    #          rule groups for customers of WAF.</p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #   @return [String]
    # @!attribute published_versions
    #   <p>The versions of this managed rule set that are available for use by customers. </p>
    #   @return [Hash<String, Types::ManagedRuleSetVersion>]
    # @!attribute recommended_version
    #   <p>The version that you would like your customers to use.</p>
    #   @return [String]
    # @!attribute label_namespace
    #   <p>The label namespace prefix for the managed rule groups that are offered to customers from this managed rule set. All labels that are added by rules in the managed rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
    #                  <p>
    #                     <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ManagedRuleSet < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :description,
      :published_versions,
      :recommended_version,
      :label_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information for a managed rule set. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute label_namespace
    #   <p>The label namespace prefix for the managed rule groups that are offered to customers from this managed rule set. All labels that are added by rules in the managed rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
    #                  <p>
    #                     <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ManagedRuleSetSummary < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      :label_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information for a single version of a managed rule set. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @!attribute associated_rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the vendor rule group that's used to define the
    #            published version of your managed rule group. </p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute forecasted_lifetime
    #   <p>The amount of time you expect this version of your managed rule group to last, in days.
    #         </p>
    #   @return [Integer]
    # @!attribute publish_timestamp
    #   <p>The time that you first published this version. </p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #   @return [Time]
    # @!attribute last_update_timestamp
    #   <p>The last time that you updated this version. </p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #   @return [Time]
    # @!attribute expiry_timestamp
    #   <p>The time that this version is set to expire.</p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #   @return [Time]
    class ManagedRuleSetVersion < Struct.new(
      nil,
      :associated_rule_group_arn,
      :capacity,
      :forecasted_lifetime,
      :publish_timestamp,
      :last_update_timestamp,
      :expiry_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect the HTTP method of the web request. The method indicates the type of operation
    #          that the request is asking the origin to perform. </p>
    #          <p>This is used in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"Method": {}</code>
    #          </p>
    class Method < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information for a release of the mobile SDK, including release notes and tags.</p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    # @!attribute release_version
    #   <p>The release version. </p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the release. </p>
    #   @return [Time]
    # @!attribute release_notes
    #   <p>Notes describing the release.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that are associated with the release. </p>
    #   @return [Array<Types::Tag>]
    class MobileSdkRelease < Struct.new(
      nil,
      :release_version,
      :timestamp,
      :release_notes,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The monetization configuration for a web ACL or rule group. Specifies the cryptocurrency payment networks and currency mode for AI bot monetization. You must provide this configuration when any rule in the web ACL or rule group uses the <code>Monetize</code> action.</p>
    # @!attribute crypto_config
    #   <p>The cryptocurrency payment configuration, including the blockchain networks and wallet addresses where you receive payments.</p>
    #   @return [Types::CryptoConfig]
    # @!attribute currency_mode
    #   <p>Specifies whether the configuration uses real or test currency. Set to <code>REAL</code> to settle payments in USDC on production blockchain networks (Base, Solana). Set to <code>TEST</code> to settle on testnet networks (Base Sepolia, Solana Devnet) with tokens that have no monetary value. If not specified, defaults to <code>REAL</code>.</p>
    #   @return [String]
    class MonetizationConfig < Struct.new(
      nil,
      :crypto_config,
      :currency_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for narrowing monetization statistics and settlement record results. Specify a filter name and one or more values to match.</p>
    #          <p>Filter behavior:</p>
    #          <ul>
    #             <li>
    #                <p>Multiple values within one filter: OR (match any)</p>
    #             </li>
    #             <li>
    #                <p>Multiple filters: AND (all must match)</p>
    #             </li>
    #             <li>
    #                <p>No duplicate filter names allowed (rejected with error)</p>
    #             </li>
    #             <li>
    #                <p>Duplicate values within a filter are silently deduplicated</p>
    #             </li>
    #             <li>
    #                <p>If no <code>CurrencyMode</code> filter is specified, defaults to <code>REAL</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The filter name. Format: Key is a string, Value is a list of strings.</p>
    #            <p>Enum-restricted (invalid values rejected):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CurrencyMode</code>: <code>REAL</code>, <code>TEST</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ChainName</code>: <code>BASE</code>, <code>SOLANA</code>, <code>BASE_SEPOLIA</code>, <code>SOLANA_DEVNET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SettlementStatus</code>: <code>SETTLED</code>, <code>PENDING</code>, <code>FAILED</code>, <code>SERVICE_ERROR</code>, <code>SKIPPED_ORIGIN_ERROR</code>, <code>DUPLICATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HttpSourceName</code>: <code>CF</code>, <code>ALB</code>, <code>APIGW</code>, <code>APPRUNNER</code>, <code>COGNITO</code>, <code>VERIFIED_ACCESS</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>ARN-validated:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WebACLArn</code>: valid WAFv2 web ACL ARN</p>
    #               </li>
    #            </ul>
    #            <p>Free-text (any string up to 256 chars):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SourceName</code>: The name of the bot. Populated from Bot Control verified bot labels.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SourceCategory</code>: The category classification of the bot. From Bot Control categorization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Intent</code>: The declared intent of the bot request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Organization</code>: The organization operating the bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UriPathPrefix</code>: The URI path of the request that was monetized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RequestId</code>: The WAF request ID associated with the transaction. Matches the requestId in WAF logs. Pattern: <code>^[a-zA-Z0-9:._\-=+/]+$</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TransactionId</code>: The blockchain transaction identifier. Pattern: <code>^[a-zA-Z0-9:._\-=+/]+$</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TerminatingRuleName</code>: The name of the WAF rule that triggered the Monetize action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PayerAddress</code>: The blockchain wallet address of the paying client. Pattern: <code>^[a-zA-Z0-9:._\-=+/]+$</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HttpSourceId</code>: The identifier of the Amazon Web Services resource associated with the web ACL (for example, CloudFront distribution ID).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>The values to filter on. Specify as a list of strings. Results match any of the specified values (OR logic). Duplicate values are silently deduplicated. Maximum: 20 values per filter.</p>
    #   @return [Array<String>]
    class MonetizationFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the monetize action settings for a rule. When WAF applies this action, it returns an HTTP 402 Payment Required response containing pricing information that the requesting client uses to complete payment and gain access to the resource. This is a terminating action-if the client does not complete the 402 payment flow, the request is blocked. This action is available only for web ACLs associated with Amazon CloudFront distributions. You must configure a <code>MonetizationConfig</code> on the web ACL or rule group before adding rules that use this action. You cannot use the Monetize action for rate-based rules.</p>
    # @!attribute price_multiplier
    #   <p>An integer multiplier applied to the base price defined in the web ACL's <code>MonetizationConfig</code>. The effective price for the request is the base price multiplied by this value. Specify as a string. Valid values: 1 to 100.</p>
    #   @return [String]
    class MonetizeAction < Struct.new(
      nil,
      :price_multiplier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that WAF should do nothing. This is used for the
    #             <code>OverrideAction</code> setting on a <a>Rule</a> when the rule uses a
    #          rule group reference statement. </p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    #          <p>JSON specification: <code>"None": {}</code>
    #          </p>
    class NoneAction < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>
    # @!attribute statement
    #   <p>The statement to negate. You can use any statement that can be nested.</p>
    #   @return [Types::Statement]
    class NotStatement < Struct.new(
      nil,
      :statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the level of DDoS protection that applies to web ACLs associated with Application Load Balancers.</p>
    # @!attribute alb_low_reputation_mode
    #   <p>The level of DDoS protection that applies to web ACLs associated with Application Load Balancers. <code>ACTIVE_UNDER_DDOS</code> protection is enabled by default whenever a web ACL is associated with an Application Load Balancer.
    #            In the event that an Application Load Balancer experiences high-load conditions or suspected DDoS attacks, the <code>ACTIVE_UNDER_DDOS</code> protection automatically rate limits traffic from known low reputation sources without disrupting Application Load Balancer availability.
    #         <code>ALWAYS_ON</code> protection provides constant, always-on monitoring of known low reputation sources for suspected DDoS attacks. While this provides a higher level of protection, there may be potential impacts on legitimate traffic.</p>
    #   @return [String]
    class OnSourceDDoSProtectionConfig < Struct.new(
      nil,
      :alb_low_reputation_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>
    # @!attribute statements
    #   <p>The statements to combine with OR logic. You can use any statements that can be
    #            nested.</p>
    #   @return [Array<Types::Statement>]
    class OrStatement < Struct.new(
      nil,
      :statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action to use in the place of the action that results from the rule group evaluation. Set the override action to none to leave the result of the rule group alone. Set it to count to override the result to count only. </p>
    #          <p>You can only use this for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #          <note>
    #             <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #   matches, do not use this and instead use the rule action override option, with <code>Count</code> action, in your rule group reference statement settings. </p>
    #          </note>
    # @!attribute count
    #   <p>Override the rule group evaluation result to count only. </p>
    #            <note>
    #               <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #     matches, do not use this and instead use the rule action override option, with <code>Count</code> action, in your rule group reference statement settings. </p>
    #            </note>
    #   @return [Types::CountAction]
    # @!attribute none
    #   <p>Don't override the rule group evaluation result. This is the most common setting.</p>
    #   @return [Types::NoneAction]
    class OverrideAction < Struct.new(
      nil,
      :count,
      :none,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the field in the request payload that contains your customer's password. </p>
    #          <p>This data type is used in the <code>RequestInspection</code> and <code>RequestInspectionACFP</code> data types. </p>
    # @!attribute identifier
    #   <p>The name of the password field. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "password": "THE_PASSWORD" } }</code>,
    #                    the password field specification is <code>/form/password</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>password1</code>, the password field specification is <code>password1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PasswordField < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics about bot traffic to a specific URI path, including the path, request count, percentage of total traffic, and the top bots accessing that path.</p>
    # @!attribute source
    #   <p>Information about the bot filter that was applied to generate these statistics. This field is only populated when you filter by bot category, organization, or name.</p>
    #   @return [Types::FilterSource]
    # @!attribute path
    #   <p>The URI path. For example, <code>/api/</code> or <code>/api/v1/users</code>.</p>
    #   @return [String]
    # @!attribute request_count
    #   <p>The number of requests to this path within the specified time window.</p>
    #   @return [Integer]
    # @!attribute percentage
    #   <p>The percentage of total requests that were made to this path.</p>
    #   @return [Float]
    # @!attribute top_bots
    #   <p>The list of top bots accessing this path, ordered by request count. The number of bots included is determined by the
    #            <code>NumberOfTopTrafficBotsPerPath</code> parameter in the request.</p>
    #   @return [Array<Types::BotStatistics>]
    class PathStatistics < Struct.new(
      nil,
      :source,
      :path,
      :request_count,
      :percentage,
      :top_bots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_count] = 0 unless options.key?(:request_count)
        options[:percentage] = 0 unless options.key?(:percentage)
        super
      end
    end

    # <p>A blockchain payment network configuration for receiving AI bot monetization payments. Specifies the blockchain chain, your wallet address on that chain, and the price per request.</p>
    # @!attribute chain
    #   <p>The blockchain network for receiving payments. Production networks: <code>BASE</code> (Base mainnet), <code>SOLANA</code> (Solana mainnet). Test networks: <code>BASE_SEPOLIA</code> (Base Sepolia testnet), <code>SOLANA_DEVNET</code> (Solana Devnet).</p>
    #   @return [String]
    # @!attribute wallet_address
    #   <p>Your wallet address on the specified blockchain where payments are sent. For EVM chains (Base, Base Sepolia), provide a valid Ethereum address (42 characters including 0x prefix). For Solana chains, provide a valid Base58-encoded public key (32-44 characters).</p>
    #            <p>For EVM addresses, WAF performs EIP-55 checksum validation for typo detection when the address uses a mix of lower and upper case letters. You can bypass this validation by providing the address in all lowercase or all uppercase.</p>
    #   @return [String]
    # @!attribute prices
    #   <p>The price configuration for this payment network. Currently supports a single price entry in USDC.</p>
    #   @return [Array<Types::Price>]
    class PaymentNetwork < Struct.new(
      nil,
      :chain,
      :wallet_address,
      :prices,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of a field in the request payload that contains part or all of your customer's primary phone number. </p>
    #          <p>This data type is used in the <code>RequestInspectionACFP</code> data type. </p>
    # @!attribute identifier
    #   <p>The name of a single primary phone number field. </p>
    #            <p>How you specify the phone number fields depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field identifiers in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "primaryphoneline1": "THE_PHONE1", "primaryphoneline2": "THE_PHONE2", "primaryphoneline3": "THE_PHONE3" } }</code>,
    #                    the phone number field identifiers are <code>/form/primaryphoneline1</code>, <code>/form/primaryphoneline2</code>, and <code>/form/primaryphoneline3</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with input elements
    #                      named <code>primaryphoneline1</code>, <code>primaryphoneline2</code>, and <code>primaryphoneline3</code>, the phone number field identifiers are <code>primaryphoneline1</code>, <code>primaryphoneline2</code>, and <code>primaryphoneline3</code>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PhoneNumberField < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pre-parse text transformation that normalizes the raw query string before WAF parses
    #          it into individual query arguments. Pre-parse text transformations are only supported when
    #          <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or <code>AllQueryArguments</code>. </p>
    # @!attribute priority
    #   <p>Sets the relative processing order for the pre-parse text transformations that you define.
    #            WAF processes all transformations, from lowest priority value to highest,
    #            before inspecting the transformed content. </p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of pre-parse text transformation to apply to the raw query string.</p>
    #   @return [String]
    class PreParseTextTransformation < Struct.new(
      nil,
      :priority,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # <p>The price per request for a payment network, specifying the amount and cryptocurrency.</p>
    # @!attribute amount
    #   <p>The price per request as a decimal string in the specified currency. Minimum: 0.001. Maximum: 999999999.999. Supports up to 3 decimal places.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The cryptocurrency for payment. Currently only <code>USDC</code> is supported.</p>
    #   @return [String]
    class Price < Struct.new(
      nil,
      :amount,
      :currency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_configuration
    #   <p></p>
    #   @return [Types::LoggingConfiguration]
    class PutLoggingConfigurationRequest < Struct.new(
      nil,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_configuration
    #   <p></p>
    #   @return [Types::LoggingConfiguration]
    class PutLoggingConfigurationResponse < Struct.new(
      nil,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute recommended_version
    #   <p>The version of the named managed rule group that you'd like your customers to choose,
    #            from among your version offerings. </p>
    #   @return [String]
    # @!attribute versions_to_publish
    #   <p>The versions of the named managed rule group that you want to offer to your customers.
    #         </p>
    #   @return [Hash<String, Types::VersionToPublish>]
    class PutManagedRuleSetVersionsRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :lock_token,
      :recommended_version,
      :versions_to_publish,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class PutManagedRuleSetVersionsResponse < Struct.new(
      nil,
      :next_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>RuleGroup</a> to which you want to
    #            attach the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to attach to the specified rule group. </p>
    #            <p>The policy specifications must conform to the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The policy must be composed using IAM Policy version 2012-10-17.</p>
    #               </li>
    #               <li>
    #                  <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Effect</code> must specify <code>Allow</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and
    #                <code>wafv2:PutFirewallManagerRuleGroups</code> and may optionally specify <code>wafv2:GetRuleGroup</code>.
    #                    WAF rejects any extra actions or wildcard actions in the policy.</p>
    #               </li>
    #               <li>
    #                  <p>The policy must not include a <code>Resource</code> parameter.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>
    #   @return [String]
    class PutPermissionPolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutPermissionPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect the query string of the web request. This is the part of a URL that appears
    #          after a <code>?</code> character, if any.</p>
    #          <p>This is used in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"QueryString": {}</code>
    #          </p>
    class QueryString < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rate-based rule counts incoming requests and rate limits requests when they are coming at too fast a rate. The rule categorizes requests according to your aggregation criteria, collects them into aggregation instances, and counts and rate limits the requests for each instance. </p>
    #          <note>
    #             <p>If you change any of these settings in a rule that's currently in use, the change resets the rule's rate limiting counts. This can pause the rule's rate limiting activities for up to a minute. </p>
    #          </note>
    #          <p>You can specify individual aggregation keys, like IP address or HTTP method. You can also specify aggregation key combinations, like IP address and HTTP method, or HTTP method, query argument, and cookie. </p>
    #          <p>Each unique set of values for the aggregation keys that you specify is a separate aggregation instance, with the value from each key contributing to the aggregation instance definition. </p>
    #          <p>For example, assume the rule evaluates web requests with the following IP address and HTTP method values: </p>
    #          <ul>
    #             <li>
    #                <p>IP address 10.1.1.1, HTTP method POST</p>
    #             </li>
    #             <li>
    #                <p>IP address 10.1.1.1, HTTP method GET</p>
    #             </li>
    #             <li>
    #                <p>IP address 127.0.0.0, HTTP method POST</p>
    #             </li>
    #             <li>
    #                <p>IP address 10.1.1.1, HTTP method GET</p>
    #             </li>
    #          </ul>
    #          <p>The rule would create different aggregation instances according to your aggregation criteria, for example: </p>
    #          <ul>
    #             <li>
    #                <p>If the aggregation criteria is just the IP address, then each individual address is an aggregation instance, and WAF counts requests separately for each. The aggregation instances and request counts for our example would be the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>IP address 10.1.1.1: count 3</p>
    #                   </li>
    #                   <li>
    #                      <p>IP address 127.0.0.0: count 1</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>If the aggregation criteria is HTTP method, then each individual HTTP method is an aggregation instance. The aggregation instances and request counts for our example would be the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>HTTP method POST: count 2</p>
    #                   </li>
    #                   <li>
    #                      <p>HTTP method GET: count 2</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>If the aggregation criteria is IP address and HTTP method, then each IP address and each HTTP method would contribute to the combined aggregation instance. The aggregation instances and request counts for our example would be the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>IP address 10.1.1.1, HTTP method POST: count 1</p>
    #                   </li>
    #                   <li>
    #                      <p>IP address 10.1.1.1, HTTP method GET: count 2</p>
    #                   </li>
    #                   <li>
    #                      <p>IP address 127.0.0.0, HTTP method POST: count 1</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For any n-tuple of aggregation keys, each unique combination of values for the keys defines a separate aggregation instance, which WAF counts and rate-limits individually. </p>
    #          <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts and rate limits requests that match the nested statement. You can use this nested scope-down statement in conjunction with your aggregation key specifications or you can just count and rate limit all requests that match the scope-down statement, without additional aggregation. When you choose to just manage all requests that match a scope-down statement, the aggregation instance is singular for the rule. </p>
    #          <p>You cannot nest a <code>RateBasedStatement</code> inside another statement, for example inside a <code>NotStatement</code> or <code>OrStatement</code>. You can define a <code>RateBasedStatement</code> inside a web ACL and inside a rule group. </p>
    #          <p>For additional information about the options, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rate-based-rules.html">Rate limiting web requests using rate-based rules</a>
    #     in the <i>WAF Developer Guide</i>. </p>
    #          <p>If you only aggregate on the individual IP address or forwarded IP address, you can retrieve the list of IP addresses that WAF
    #           is currently rate limiting for a rule through the API call <code>GetRateBasedStatementManagedKeys</code>. This option is not available
    #       for other aggregation configurations.</p>
    #          <p>WAF tracks and manages web requests separately for each instance of a rate-based rule that you use. For example, if you provide the same rate-based rule settings in two web ACLs, each of the two rule statements represents a separate instance of the rate-based rule and gets its own tracking and management by WAF. If you define a rate-based rule inside a rule group, and then use that rule group in multiple places, each use creates a separate instance of the rate-based rule that gets its own tracking and management by WAF. </p>
    # @!attribute limit
    #   <p>The limit on requests during the specified evaluation window for a single aggregation instance for the rate-based rule.
    #          If the rate-based statement includes a <code>ScopeDownStatement</code>, this limit is applied only to the
    #            requests that match the statement.</p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>If you aggregate on just the IP address, this is the limit on requests from any single IP address. </p>
    #               </li>
    #               <li>
    #                  <p>If you aggregate on the HTTP method and the query argument name "city", then this is the limit on
    #                requests for any single method, city pair. </p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute evaluation_window_sec
    #   <p>The amount of time, in seconds, that WAF
    #               should include in its request counts, looking back from the current time. For example,
    #               for a setting of 120, when WAF checks the rate, it counts the requests for the 2 minutes immediately preceding
    #               the current time. Valid settings are 60, 120, 300, and 600. </p>
    #            <p>This setting doesn't determine how often WAF checks the rate, but how far back it looks each
    #               time it checks. WAF checks the rate about every 10 seconds.</p>
    #            <p>Default: <code>300</code> (5 minutes)</p>
    #   @return [Integer]
    # @!attribute aggregate_key_type
    #   <p>Setting that indicates how to aggregate the request counts. </p>
    #            <note>
    #               <p>Web requests that are missing any of the components specified in the aggregation keys
    #                   are omitted from the rate-based rule evaluation and handling. </p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONSTANT</code> - Count and limit the requests that match the rate-based rule's scope-down
    #                statement. With this option, the counted requests aren't further aggregated. The scope-down statement
    #                    is the only specification used. When the count of all requests that satisfy the scope-down statement
    #                    goes over the limit, WAF applies the rule action to all requests that satisfy the scope-down statement. </p>
    #                  <p>With this option, you must configure the <code>ScopeDownStatement</code> property. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_KEYS</code> - Aggregate the request counts using one or more web request components as the aggregate keys.</p>
    #                  <p>With this option, you must specify the aggregate keys in the <code>CustomKeys</code> property. </p>
    #                  <p>To aggregate on only the IP address or only the forwarded IP address, don't use custom keys. Instead, set the aggregate
    #                    key type to <code>IP</code> or <code>FORWARDED_IP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORWARDED_IP</code> - Aggregate the request counts on the first IP address in an HTTP header. </p>
    #                  <p>With this option, you must specify the header to use in the <code>ForwardedIPConfig</code> property. </p>
    #                  <p>To aggregate on a combination of the forwarded IP address with other aggregate keys, use <code>CUSTOM_KEYS</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IP</code> - Aggregate the request counts on the IP address from the web request
    #                  origin.</p>
    #                  <p>To aggregate on a combination of the IP address with other aggregate keys, use <code>CUSTOM_KEYS</code>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scope_down_statement
    #   <p>An optional nested statement that narrows the scope of the web requests that are
    #         evaluated and managed by the rate-based statement. When you use a scope-down statement,
    #         the rate-based rule only tracks and rate limits
    #         requests that match the scope-down statement. You can use any nestable <a>Statement</a> in the scope-down statement, and you can nest statements at any
    #            level, the same as you can for a rule statement. </p>
    #   @return [Types::Statement]
    # @!attribute forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #            <p>This is required if you specify a forwarded IP in the rule's aggregate key settings. </p>
    #   @return [Types::ForwardedIPConfig]
    # @!attribute custom_keys
    #   <p>Specifies the aggregate keys to use in a rate-base rule. </p>
    #   @return [Array<Types::RateBasedStatementCustomKey>]
    class RateBasedStatement < Struct.new(
      nil,
      :limit,
      :evaluation_window_sec,
      :aggregate_key_type,
      :scope_down_statement,
      :forwarded_ip_config,
      :custom_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_window_sec] = 0 unless options.key?(:evaluation_window_sec)
        super
      end
    end

    # <p>Specifies a single custom aggregate key for a rate-base rule. </p>
    #          <note>
    #             <p>Web requests that are missing any of the components specified in the aggregation keys
    #                 are omitted from the rate-based rule evaluation and handling. </p>
    #          </note>
    # @!attribute header
    #   <p>Use the value of a header in the request as an aggregate key. Each distinct value in the header contributes to the aggregation instance. If you use a single
    #         header as your custom key, then each value fully defines an aggregation instance. </p>
    #   @return [Types::RateLimitHeader]
    # @!attribute cookie
    #   <p>Use the value of a cookie in the request as an aggregate key. Each distinct value in the cookie contributes to the aggregation instance. If you use a single
    #       cookie as your custom key, then each value fully defines an aggregation instance. </p>
    #   @return [Types::RateLimitCookie]
    # @!attribute query_argument
    #   <p>Use the specified query argument as an aggregate key. Each distinct value for the named query argument contributes to the aggregation instance. If you
    #         use a single query argument as your custom key, then each value fully defines an aggregation instance.  </p>
    #   @return [Types::RateLimitQueryArgument]
    # @!attribute query_string
    #   <p>Use the request's query string as an aggregate key. Each distinct string contributes to the aggregation instance. If you use just the
    #       query string as your custom key, then each string fully defines an aggregation instance.  </p>
    #   @return [Types::RateLimitQueryString]
    # @!attribute http_method
    #   <p>Use the request's HTTP method as an aggregate key. Each distinct HTTP method contributes to the aggregation instance. If you use just the HTTP method
    #       as your custom key, then each method fully defines an aggregation instance.  </p>
    #   @return [Types::RateLimitHTTPMethod]
    # @!attribute forwarded_ip
    #   <p>Use the first IP address in an HTTP header as an aggregate key. Each distinct forwarded IP address contributes to the aggregation instance.</p>
    #            <p>When you specify an IP or forwarded IP in the custom key settings, you must also specify at least one other key to use.
    #          You can aggregate on only the forwarded IP address by specifying <code>FORWARDED_IP</code> in your rate-based statement's <code>AggregateKeyType</code>. </p>
    #            <p>With this option, you must specify the header to use in the rate-based rule's <code>ForwardedIPConfig</code> property. </p>
    #   @return [Types::RateLimitForwardedIP]
    # @!attribute ip
    #   <p>Use the request's originating IP address as an aggregate key. Each distinct IP address contributes to the aggregation instance.</p>
    #            <p>When you specify an IP or forwarded IP in the custom key settings, you must also specify at least one other key to use.
    #          You can aggregate on only the IP address by specifying <code>IP</code> in your rate-based statement's <code>AggregateKeyType</code>. </p>
    #   @return [Types::RateLimitIP]
    # @!attribute label_namespace
    #   <p>Use the specified label namespace as an aggregate key. Each distinct fully qualified label name that has the specified label namespace contributes to the aggregation instance. If you use just one label namespace as your custom key, then each label name fully defines an aggregation instance.  </p>
    #            <p>This uses only labels that have been added to the request by rules that are evaluated before this rate-based rule in the web ACL. </p>
    #            <p>For information about label namespaces and names, see
    #              <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-label-requirements.html">Label syntax and naming requirements</a> in the <i>WAF Developer Guide</i>.</p>
    #   @return [Types::RateLimitLabelNamespace]
    # @!attribute uri_path
    #   <p>Use the request's URI path as an aggregate key. Each distinct URI path contributes to the aggregation instance. If you use just the
    #       URI path as your custom key, then each URI path fully defines an aggregation instance.  </p>
    #   @return [Types::RateLimitUriPath]
    # @!attribute ja3_fingerprint
    #   <p>
    #            Use the request's JA3 fingerprint as an aggregate key. If you use a single
    #       JA3 fingerprint as your custom key, then each value fully defines an aggregation instance.
    #         </p>
    #   @return [Types::RateLimitJA3Fingerprint]
    # @!attribute ja4_fingerprint
    #   <p>Use the request's JA4 fingerprint as an aggregate key. If you use a single
    #       JA4 fingerprint as your custom key, then each value fully defines an aggregation instance. </p>
    #   @return [Types::RateLimitJA4Fingerprint]
    # @!attribute asn
    #   <p>Use an Autonomous System Number (ASN) derived from the request's originating or forwarded IP address as an aggregate key.
    #            Each distinct ASN contributes to the aggregation instance. </p>
    #   @return [Types::RateLimitAsn]
    class RateBasedStatementCustomKey < Struct.new(
      nil,
      :header,
      :cookie,
      :query_argument,
      :query_string,
      :http_method,
      :forwarded_ip,
      :ip,
      :label_namespace,
      :uri_path,
      :ja3_fingerprint,
      :ja4_fingerprint,
      :asn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of IP addresses that are currently blocked for a <a>RateBasedStatement</a>. This is only available for rate-based rules
    #           that aggregate on just the IP address, with the <code>AggregateKeyType</code> set to <code>IP</code> or <code>FORWARDED_IP</code>.</p>
    #          <p>A rate-based rule applies its rule action to requests from IP addresses that are in the rule's managed keys list and that match the rule's scope-down statement. When a rule has no scope-down statement, it applies the action to all requests from the IP addresses that are in the list. The rule applies its rule action to rate limit the matching requests. The action is usually Block but it can be any valid rule action except for Allow. </p>
    #          <p>The maximum number of IP addresses that can be rate limited by a single rate-based rule instance is 10,000. If more than 10,000 addresses exceed the rate limit, WAF limits those with the highest rates. </p>
    # @!attribute ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #   @return [String]
    # @!attribute addresses
    #   <p>The IP addresses that are currently blocked.</p>
    #   @return [Array<String>]
    class RateBasedStatementManagedKeysIPSet < Struct.new(
      nil,
      :ip_address_version,
      :addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Autonomous System Number (ASN) derived from the request's originating or forwarded IP address as an aggregate key for a rate-based rule.
    #          Each distinct ASN contributes to the aggregation instance.
    #          If you use a single ASN as your custom key, then each ASN fully defines an aggregation instance. </p>
    class RateLimitAsn < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a cookie as an aggregate key for a rate-based rule. Each distinct value in the cookie contributes to the aggregation instance. If you use a single
    #     cookie as your custom key, then each value fully defines an aggregation instance.  </p>
    # @!attribute name
    #   <p>The name of the cookie to use. </p>
    #   @return [String]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    class RateLimitCookie < Struct.new(
      nil,
      :name,
      :text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the first IP address in an HTTP header as an aggregate key for a rate-based rule. Each distinct forwarded IP address contributes to the aggregation instance.</p>
    #          <p>This setting is used only in the <code>RateBasedStatementCustomKey</code> specification of a rate-based rule statement.
    #        When you specify an IP or forwarded IP in the custom key settings, you must also specify at least one other key to use.
    #        You can aggregate on only the forwarded IP address by specifying <code>FORWARDED_IP</code> in your rate-based statement's <code>AggregateKeyType</code>. </p>
    #          <p>This data type supports using the forwarded IP address in the web request aggregation for a rate-based rule, in <code>RateBasedStatementCustomKey</code>. The JSON specification for using the forwarded IP address doesn't explicitly use this data type. </p>
    #          <p>JSON specification: <code>"ForwardedIP": {}</code>
    #          </p>
    #          <p>When you use this specification, you must also configure the forwarded IP address in the rate-based statement's <code>ForwardedIPConfig</code>. </p>
    class RateLimitForwardedIP < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the request's HTTP method as an aggregate key for a rate-based rule. Each distinct HTTP method contributes to the aggregation instance. If you use just the HTTP method
    #     as your custom key, then each method fully defines an aggregation instance. </p>
    #          <p>JSON specification: <code>"RateLimitHTTPMethod": {}</code>
    #          </p>
    class RateLimitHTTPMethod < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a header as an aggregate key for a rate-based rule. Each distinct value in the header contributes to the aggregation instance. If you use a single
    #       header as your custom key, then each value fully defines an aggregation instance.  </p>
    # @!attribute name
    #   <p>The name of the header to use. </p>
    #   @return [String]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    class RateLimitHeader < Struct.new(
      nil,
      :name,
      :text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the IP address in the web request as an aggregate key for a rate-based rule. Each distinct IP address contributes to the aggregation instance. </p>
    #          <p>This setting is used only in the <code>RateBasedStatementCustomKey</code> specification of a rate-based rule statement.
    #        To use this in the custom key settings, you must specify at least one other key to use, along with the IP address.
    #        To aggregate on only the IP address, in your rate-based statement's <code>AggregateKeyType</code>, specify <code>IP</code>.</p>
    #          <p>JSON specification: <code>"RateLimitIP": {}</code>
    #          </p>
    class RateLimitIP < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Use the request's JA3 fingerprint derived from the TLS Client Hello of an incoming request as an aggregate key. If you use a single
    #     JA3 fingerprint as your custom key, then each value fully defines an aggregation instance.
    #       </p>
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint.</p>
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class RateLimitJA3Fingerprint < Struct.new(
      nil,
      :fallback_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use the request's JA4 fingerprint derived from the TLS Client Hello of an incoming request as an aggregate key. If you use a single
    #     JA4 fingerprint as your custom key, then each value fully defines an aggregation instance.</p>
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA4 fingerprint.</p>
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class RateLimitJA4Fingerprint < Struct.new(
      nil,
      :fallback_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a label namespace to use as an aggregate key for a rate-based rule. Each distinct fully qualified label name that has the specified label namespace contributes to the aggregation instance. If you use just one label namespace as your custom key, then each label name fully defines an aggregation instance.  </p>
    #          <p>This uses only labels that have been added to the request by rules that are evaluated before this rate-based rule in the web ACL. </p>
    #          <p>For information about label namespaces and names, see
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-label-requirements.html">Label syntax and naming requirements</a> in the <i>WAF Developer Guide</i>.</p>
    # @!attribute namespace
    #   <p>The namespace to use for aggregation. </p>
    #   @return [String]
    class RateLimitLabelNamespace < Struct.new(
      nil,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a query argument in the request as an aggregate key for a rate-based rule. Each distinct value for the named query argument contributes to the aggregation instance. If you
    #       use a single query argument as your custom key, then each value fully defines an aggregation instance.  </p>
    # @!attribute name
    #   <p>The name of the query argument to use. </p>
    #   @return [String]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    class RateLimitQueryArgument < Struct.new(
      nil,
      :name,
      :text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the request's query string as an aggregate key for a rate-based rule. Each distinct string contributes to the aggregation instance. If you use just the
    #     query string as your custom key, then each string fully defines an aggregation instance.  </p>
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    class RateLimitQueryString < Struct.new(
      nil,
      :text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the request's URI path as an aggregate key for a rate-based rule. Each distinct URI path contributes to the aggregation instance. If you use just the
    #     URI path as your custom key, then each URI path fully defines an aggregation instance.  </p>
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    class RateLimitUriPath < Struct.new(
      nil,
      :text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single regular expression. This is used in a <a>RegexPatternSet</a> and
    #            also in the configuration for the Amazon Web Services Managed Rules rule group <code>AWSManagedRulesAntiDDoSRuleSet</code>.</p>
    # @!attribute regex_string
    #   <p>The string representing the regular expression. WAF enforces a quota on the maximum number of characters in a regex pattern. For the current limit, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the <i>WAF Developer Guide</i>.</p>
    #   @return [String]
    class Regex < Struct.new(
      nil,
      :regex_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement used to search web request components for a match against a single regular expression. </p>
    # @!attribute regex_string
    #   <p>The string representing the regular expression. WAF enforces a quota on the maximum number of characters in a regex pattern. For the current limit, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the <i>WAF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. </p>
    #   @return [Types::FieldToMatch]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    # @!attribute pre_parse_text_transformations
    #   <p>Pre-parse text transformations normalize the raw query string before WAF parses it into individual
    #            query arguments. They are applied before the standard text transformations. Pre-parse text transformations
    #            are only supported when <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or
    #            <code>AllQueryArguments</code>. You can specify up to 10 pre-parse text transformations per rule statement.</p>
    #   @return [Array<Types::PreParseTextTransformation>]
    class RegexMatchStatement < Struct.new(
      nil,
      :regex_string,
      :field_to_match,
      :text_transformations,
      :pre_parse_text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains one or more regular expressions. </p>
    #          <p>WAF assigns an ARN to each <code>RegexPatternSet</code> that you create. To use a
    #          set in a rule, you provide the ARN to the <a>Rule</a> statement <a>RegexPatternSetReferenceStatement</a>. </p>
    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #   @return [String]
    # @!attribute regular_expression_list
    #   <p>The regular expression patterns in the set.</p>
    #   @return [Array<Types::Regex>]
    class RegexPatternSet < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :description,
      :regular_expression_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p>
    #          <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <a>RegexPatternSet</a> that this
    #            statement references.</p>
    #   @return [String]
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. </p>
    #   @return [Types::FieldToMatch]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    # @!attribute pre_parse_text_transformations
    #   <p>Pre-parse text transformations normalize the raw query string before WAF parses it into individual
    #            query arguments. They are applied before the standard text transformations. Pre-parse text transformations
    #            are only supported when <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or
    #            <code>AllQueryArguments</code>. You can specify up to 10 pre-parse text transformations per rule statement.</p>
    #   @return [Array<Types::PreParseTextTransformation>]
    class RegexPatternSetReferenceStatement < Struct.new(
      nil,
      :arn,
      :field_to_match,
      :text_transformations,
      :pre_parse_text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>
    # @!attribute name
    #   <p>The name of the data type instance. You cannot change the name after you create the instance.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    class RegexPatternSetSummary < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High level information for an SDK release. </p>
    # @!attribute release_version
    #   <p>The release version. </p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the release. </p>
    #   @return [Time]
    class ReleaseSummary < Struct.new(
      nil,
      :release_version,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Customizes the maximum size of the request body that your protected CloudFront, API Gateway, Amazon Cognito, App Runner, and Verified Access resources forward to WAF for inspection. The default size is 16 KB (16,384 bytes). You can change the setting for any of the available resource types. </p>
    #          <note>
    #             <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #          </note>
    #          <p>Example JSON: <code> {
    #     "API_GATEWAY": "KB_48",
    #     "APP_RUNNER_SERVICE": "KB_32"
    #     }</code>
    #          </p>
    #          <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #          <p>This is used in the <code>AssociationConfig</code> of the web ACL. </p>
    # @!attribute default_size_inspection_limit
    #   <p>Specifies the maximum size of the web request body component that an associated CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resource should send to WAF for inspection. This applies to statements in the web ACL that inspect the body or JSON body. </p>
    #            <p>Default: <code>16 KB (16,384 bytes)</code>
    #            </p>
    #   @return [String]
    class RequestBodyAssociatedResourceTypeConfig < Struct.new(
      nil,
      :default_size_inspection_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria for inspecting login requests, used by the ATP rule group to validate credentials usage.  </p>
    #          <p>This is part of the <code>AWSManagedRulesATPRuleSet</code> configuration in <code>ManagedRuleGroupConfig</code>.</p>
    #          <p>In these settings, you specify how your application accepts login attempts
    #            by providing the request payload type and the names of the fields
    #            within the request body where the username and password are provided. </p>
    # @!attribute payload_type
    #   <p>The payload type for your login endpoint, either JSON or form encoded.</p>
    #   @return [String]
    # @!attribute username_field
    #   <p>The name of the field in the request payload that contains your customer's username. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "username": "THE_USERNAME" } }</code>,
    #                    the username field specification is <code>/form/username</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>username1</code>, the username field specification is
    #                      <code>username1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::UsernameField]
    # @!attribute password_field
    #   <p>The name of the field in the request payload that contains your customer's password. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "password": "THE_PASSWORD" } }</code>,
    #                    the password field specification is <code>/form/password</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>password1</code>, the password field specification is <code>password1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Types::PasswordField]
    class RequestInspection < Struct.new(
      nil,
      :payload_type,
      :username_field,
      :password_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria for inspecting account creation requests, used by the ACFP rule group to validate and track account creation attempts.  </p>
    #          <p>This is part of the <code>AWSManagedRulesACFPRuleSet</code> configuration in <code>ManagedRuleGroupConfig</code>.</p>
    #          <p>In these settings, you specify how your application accepts account creation attempts
    #            by providing the request payload type and the names of the fields
    #            within the request body where the username, password, email, and primary address and phone number fields are provided. </p>
    # @!attribute payload_type
    #   <p>The payload type for your account creation endpoint, either JSON or form encoded.</p>
    #   @return [String]
    # @!attribute username_field
    #   <p>The name of the field in the request payload that contains your customer's username. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "username": "THE_USERNAME" } }</code>,
    #                    the username field specification is <code>/form/username</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>username1</code>, the username field specification is
    #                      <code>username1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::UsernameField]
    # @!attribute password_field
    #   <p>The name of the field in the request payload that contains your customer's password. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "password": "THE_PASSWORD" } }</code>,
    #                    the password field specification is <code>/form/password</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>password1</code>, the password field specification is <code>password1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Types::PasswordField]
    # @!attribute email_field
    #   <p>The name of the field in the request payload that contains your customer's email. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "email": "THE_EMAIL" } }</code>,
    #                    the email field specification is <code>/form/email</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>email1</code>, the email field specification is <code>email1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Types::EmailField]
    # @!attribute phone_number_fields
    #   <p>The names of the fields in the request payload that contain your customer's primary phone number. </p>
    #            <p>Order the phone number fields in the array exactly as they are ordered in the request payload. </p>
    #            <p>How you specify the phone number fields depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field identifiers in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "primaryphoneline1": "THE_PHONE1", "primaryphoneline2": "THE_PHONE2", "primaryphoneline3": "THE_PHONE3" } }</code>,
    #                    the phone number field identifiers are <code>/form/primaryphoneline1</code>, <code>/form/primaryphoneline2</code>, and <code>/form/primaryphoneline3</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with input elements
    #                      named <code>primaryphoneline1</code>, <code>primaryphoneline2</code>, and <code>primaryphoneline3</code>, the phone number field identifiers are <code>primaryphoneline1</code>, <code>primaryphoneline2</code>, and <code>primaryphoneline3</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::PhoneNumberField>]
    # @!attribute address_fields
    #   <p>The names of the fields in the request payload that contain your customer's primary physical address. </p>
    #            <p>Order the address fields in the array exactly as they are ordered in the request payload. </p>
    #            <p>How you specify the address fields depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field identifiers in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "primaryaddressline1": "THE_ADDRESS1", "primaryaddressline2": "THE_ADDRESS2", "primaryaddressline3": "THE_ADDRESS3" } }</code>,
    #                    the address field idenfiers are <code>/form/primaryaddressline1</code>, <code>/form/primaryaddressline2</code>, and <code>/form/primaryaddressline3</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with input elements
    #                      named <code>primaryaddressline1</code>, <code>primaryaddressline2</code>, and <code>primaryaddressline3</code>, the address fields identifiers are <code>primaryaddressline1</code>, <code>primaryaddressline2</code>, and <code>primaryaddressline3</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AddressField>]
    class RequestInspectionACFP < Struct.new(
      nil,
      :payload_type,
      :username_field,
      :password_field,
      :email_field,
      :phone_number_fields,
      :address_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria for inspecting responses to login requests and account creation requests, used by the ATP and ACFP rule groups to track login and account creation success and failure rates. </p>
    #          <note>
    #             <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #          </note>
    #          <p>The rule groups evaluates the responses that your protected resources send back to client login and account creation attempts, keeping count of successful and failed attempts from each IP address and client session. Using this information, the rule group labels
    #                and mitigates requests from client sessions and IP addresses with too much suspicious activity in a short amount of time. </p>
    #          <p>This is part of the <code>AWSManagedRulesATPRuleSet</code> and <code>AWSManagedRulesACFPRuleSet</code> configurations in <code>ManagedRuleGroupConfig</code>.</p>
    #          <p>Enable response inspection by configuring exactly one component of the response to inspect, for example, <code>Header</code> or <code>StatusCode</code>. You can't configure more than one component for inspection. If you don't configure any of the response inspection options, response inspection is disabled. </p>
    # @!attribute status_code
    #   <p>Configures inspection of the response status code for success and failure indicators. </p>
    #   @return [Types::ResponseInspectionStatusCode]
    # @!attribute header
    #   <p>Configures inspection of the response header for success and failure indicators. </p>
    #   @return [Types::ResponseInspectionHeader]
    # @!attribute body_contains
    #   <p>Configures inspection of the response body for success and failure indicators. WAF can inspect the first 65,536 bytes (64 KB) of the response body. </p>
    #   @return [Types::ResponseInspectionBodyContains]
    # @!attribute json
    #   <p>Configures inspection of the response JSON for success and failure indicators. WAF can inspect the first 65,536 bytes (64 KB) of the response JSON. </p>
    #   @return [Types::ResponseInspectionJson]
    class ResponseInspection < Struct.new(
      nil,
      :status_code,
      :header,
      :body_contains,
      :json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures inspection of the response body. WAF can inspect the first 65,536 bytes (64 KB) of the response body.
    #            This is part of the <code>ResponseInspection</code> configuration for <code>AWSManagedRulesATPRuleSet</code> and  <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #          <note>
    #             <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #          </note>
    # @!attribute success_strings
    #   <p>Strings in the body of the response that indicate a successful login or account creation attempt. To be counted as a success, the string can be anywhere in the body and must be an exact match, including case. Each string must be unique among the success and failure strings. </p>
    #            <p>JSON examples: <code>"SuccessStrings": [ "Login successful" ]</code> and <code>"SuccessStrings": [ "Account creation successful", "Welcome to our site!" ]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute failure_strings
    #   <p>Strings in the body of the response that indicate a failed login or account creation attempt. To be counted as a failure, the string can be anywhere in the body and must be an exact match, including case. Each string must be unique among the success and failure strings. </p>
    #            <p>JSON example: <code>"FailureStrings": [ "Request failed" ]</code>
    #            </p>
    #   @return [Array<String>]
    class ResponseInspectionBodyContains < Struct.new(
      nil,
      :success_strings,
      :failure_strings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures inspection of the response header.
    #            This is part of the <code>ResponseInspection</code> configuration for <code>AWSManagedRulesATPRuleSet</code> and  <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #          <note>
    #             <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the header to match against. The name must be an exact match, including case.</p>
    #            <p>JSON example: <code>"Name": [ "RequestResult" ]</code>
    #            </p>
    #   @return [String]
    # @!attribute success_values
    #   <p>Values in the response header with the specified name that indicate a successful login or account creation attempt. To be counted as a success, the value must be an exact match, including case. Each value must be unique among the success and failure values. </p>
    #            <p>JSON examples: <code>"SuccessValues": [ "LoginPassed", "Successful login" ]</code> and <code>"SuccessValues": [ "AccountCreated", "Successful account creation" ]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute failure_values
    #   <p>Values in the response header with the specified name that indicate a failed login or account creation attempt. To be counted as a failure, the value must be an exact match, including case. Each value must be unique among the success and failure values. </p>
    #            <p>JSON examples: <code>"FailureValues": [ "LoginFailed", "Failed login" ]</code> and <code>"FailureValues": [ "AccountCreationFailed" ]</code>
    #            </p>
    #   @return [Array<String>]
    class ResponseInspectionHeader < Struct.new(
      nil,
      :name,
      :success_values,
      :failure_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures inspection of the response JSON. WAF can inspect the first 65,536 bytes (64 KB) of the response JSON.
    #            This is part of the <code>ResponseInspection</code> configuration for <code>AWSManagedRulesATPRuleSet</code> and  <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #          <note>
    #             <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #          </note>
    # @!attribute identifier
    #   <p>The identifier for the value to match against in the JSON. The identifier must be an exact match, including case.</p>
    #            <p>JSON examples: <code>"Identifier": [ "/login/success" ]</code> and <code>"Identifier": [ "/sign-up/success" ]</code>
    #            </p>
    #   @return [String]
    # @!attribute success_values
    #   <p>Values for the specified identifier in the response JSON that indicate a successful login or account creation attempt. To be counted as a success, the value must be an exact match, including case. Each value must be unique among the success and failure values. </p>
    #            <p>JSON example: <code>"SuccessValues": [ "True", "Succeeded" ]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute failure_values
    #   <p>Values for the specified identifier in the response JSON that indicate a failed login or account creation attempt. To be counted as a failure, the value must be an exact match, including case. Each value must be unique among the success and failure values. </p>
    #            <p>JSON example: <code>"FailureValues": [ "False", "Failed" ]</code>
    #            </p>
    #   @return [Array<String>]
    class ResponseInspectionJson < Struct.new(
      nil,
      :identifier,
      :success_values,
      :failure_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures inspection of the response status code.
    #            This is part of the <code>ResponseInspection</code> configuration for <code>AWSManagedRulesATPRuleSet</code> and  <code>AWSManagedRulesACFPRuleSet</code>. </p>
    #          <note>
    #             <p>Response inspection is available only in web ACLs that protect Amazon CloudFront distributions.</p>
    #          </note>
    # @!attribute success_codes
    #   <p>Status codes in the response that indicate a successful login or account creation attempt. To be counted as a success, the response status code must match one of these. Each code must be unique among the success and failure status codes. </p>
    #            <p>JSON example: <code>"SuccessCodes": [ 200, 201 ]</code>
    #            </p>
    #   @return [Array<Integer>]
    # @!attribute failure_codes
    #   <p>Status codes in the response that indicate a failed login or account creation attempt. To be counted as a failure, the response status code must match one of these. Each code must be unique among the success and failure status codes. </p>
    #            <p>JSON example: <code>"FailureCodes": [ 400, 404 ]</code>
    #            </p>
    #   @return [Array<Integer>]
    class ResponseInspectionStatusCode < Struct.new(
      nil,
      :success_codes,
      :failure_codes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of AI bot monetization revenue, including total revenue, revenue by verification tier, and request counts.</p>
    # @!attribute total_amount
    #   <p>The total revenue amount in the specified currency.</p>
    #   @return [String]
    # @!attribute verified_amount
    #   <p>The revenue amount from verified AI bots.</p>
    #   @return [String]
    # @!attribute unverified_amount
    #   <p>The revenue amount from unverified AI bots.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency of the revenue amounts.</p>
    #   @return [String]
    # @!attribute total_settled
    #   <p>The total number of successfully settled payment transactions.</p>
    #   @return [Integer]
    # @!attribute total_monetize_served
    #   <p>The total number of HTTP 402 Payment Required responses served to AI agents.</p>
    #   @return [Integer]
    class RevenueBreakdown < Struct.new(
      nil,
      :total_amount,
      :verified_amount,
      :unverified_amount,
      :currency,
      :total_settled,
      :total_monetize_served,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_settled] = 0 unless options.key?(:total_settled)
        options[:total_monetize_served] = 0 unless options.key?(:total_monetize_served)
        super
      end
    end

    # <p>Revenue statistics for a single content path, including the path, revenue amount, and request count.</p>
    # @!attribute path
    #   <p>The URI path.</p>
    #   @return [String]
    # @!attribute percentage
    #   <p>The percentage of total revenue from this path.</p>
    #   @return [Float]
    # @!attribute amount
    #   <p>The total revenue amount from this path in the specified currency.</p>
    #   @return [String]
    # @!attribute request_count
    #   <p>The number of monetized requests to this path.</p>
    #   @return [Integer]
    class RevenuePathStatistics < Struct.new(
      nil,
      :path,
      :percentage,
      :amount,
      :request_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percentage] = 0 unless options.key?(:percentage)
        options[:request_count] = 0 unless options.key?(:request_count)
        super
      end
    end

    # <p>A single rule, which you can use in a <a>WebACL</a> or <a>RuleGroup</a> to identify web requests that you want to manage in some way.
    #       Each rule includes one top-level <a>Statement</a> that WAF uses to
    #          identify matching web requests, and parameters that govern how WAF handles them. </p>
    # @!attribute name
    #   <p>The name of the rule. </p>
    #            <p>If you change the name of a <code>Rule</code> after you create
    #              it and you want the rule's metric name to reflect the change, update the metric name in the rule's <code>VisibilityConfig</code> settings. WAF
    #             doesn't automatically update the metric name when you update the rule name. </p>
    #   @return [String]
    # @!attribute priority
    #   <p>If you define more than one <code>Rule</code> in a <code>WebACL</code>, WAF
    #            evaluates each request against the <code>Rules</code> in order based on the value of
    #               <code>Priority</code>. WAF processes rules with lower priority first. The priorities
    #            don't need to be consecutive, but they must all be different.</p>
    #   @return [Integer]
    # @!attribute statement
    #   <p>The WAF processing statement for the rule, for example <a>ByteMatchStatement</a> or <a>SizeConstraintStatement</a>. </p>
    #   @return [Types::Statement]
    # @!attribute action
    #   <p>The action that WAF should take on a web request when it matches the rule statement. Settings at the web ACL level can override the rule action setting. </p>
    #            <p>This is used only for rules whose statements do not reference a rule group. Rule statements that reference a rule group include <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #            <p>You must specify either this <code>Action</code> setting or the rule <code>OverrideAction</code> setting, but not both:</p>
    #            <ul>
    #               <li>
    #                  <p>If the rule statement does not reference a rule group, use this rule action setting and not the rule override action setting. </p>
    #               </li>
    #               <li>
    #                  <p>If the rule statement references a rule group, use the override action setting and not this action setting.  </p>
    #               </li>
    #            </ul>
    #   @return [Types::RuleAction]
    # @!attribute override_action
    #   <p>The action to use in the place of the action that results from the rule group evaluation. Set the override action to none to leave the result of the rule group alone. Set it to count to override the result to count only. </p>
    #            <p>You can only use this for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #            <note>
    #               <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #     matches, do not use this and instead use the rule action override option, with <code>Count</code> action, in your rule group reference statement settings. </p>
    #            </note>
    #   @return [Types::OverrideAction]
    # @!attribute rule_labels
    #   <p>Labels to apply to web requests that match the rule match statement. WAF applies
    #            fully qualified labels to matching web requests. A fully qualified label is the
    #            concatenation of a label namespace and a rule label. The rule's rule group or web ACL
    #            defines the label namespace. </p>
    #            <note>
    #               <p>Any rule that isn't a rule group reference statement or managed rule group statement can add labels to matching web requests.</p>
    #            </note>
    #            <p>Rules that run after this rule in the web ACL can match against these labels using a
    #               <code>LabelMatchStatement</code>.</p>
    #            <p>For each label, provide a case-sensitive string containing optional namespaces and a
    #            label name, according to the following guidelines:</p>
    #            <ul>
    #               <li>
    #                  <p>Separate each component of the label with a colon. </p>
    #               </li>
    #               <li>
    #                  <p>Each namespace or name can have up to 128 characters.</p>
    #               </li>
    #               <li>
    #                  <p>You can specify up to 5 namespaces in a label.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use the following reserved words in your label specification:
    #                     <code>aws</code>, <code>waf</code>, <code>managed</code>, <code>rulegroup</code>,
    #                     <code>webacl</code>, <code>regexpatternset</code>, or <code>ipset</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>myLabelName</code> or <code>nameSpace1:nameSpace2:myLabelName</code>.
    #         </p>
    #   @return [Array<Types::Label>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #            <p>If you change the name of a <code>Rule</code> after you create
    #             it and you want the rule's metric name to reflect the change, update the metric name as well. WAF
    #             doesn't automatically update the metric name. </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations. If you don't specify this, WAF uses the <code>CAPTCHA</code> configuration that's defined for the web ACL. </p>
    #   @return [Types::CaptchaConfig]
    # @!attribute challenge_config
    #   <p>Specifies how WAF should handle <code>Challenge</code> evaluations. If you don't specify this, WAF uses the challenge configuration that's defined for the web ACL. </p>
    #   @return [Types::ChallengeConfig]
    class Rule < Struct.new(
      nil,
      :name,
      :priority,
      :statement,
      :action,
      :override_action,
      :rule_labels,
      :visibility_config,
      :captcha_config,
      :challenge_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # <p>The action that WAF should take on a web request when it matches a rule's
    #          statement. Settings at the web ACL level can override the rule action setting. </p>
    # @!attribute block
    #   <p>Instructs WAF to block the web request.</p>
    #   @return [Types::BlockAction]
    # @!attribute allow
    #   <p>Instructs WAF to allow the web request.</p>
    #   @return [Types::AllowAction]
    # @!attribute count
    #   <p>Instructs WAF to count the web request and then continue evaluating the request using the remaining rules in the web ACL.</p>
    #   @return [Types::CountAction]
    # @!attribute captcha
    #   <p>Instructs WAF to run a <code>CAPTCHA</code> check against the web request.</p>
    #   @return [Types::CaptchaAction]
    # @!attribute challenge
    #   <p>Instructs WAF to run a <code>Challenge</code> check against the web request.</p>
    #   @return [Types::ChallengeAction]
    # @!attribute monetize
    #   <p>Instructs WAF to return an HTTP 402 Payment Required response with a price manifest. The requesting client can complete payment and resubmit the request to gain access. This is a terminating action-requests that do not complete payment are blocked. This action is available only for web ACLs associated with Amazon CloudFront distributions and requires a <code>MonetizationConfig</code> on the web ACL.</p>
    #   @return [Types::MonetizeAction]
    class RuleAction < Struct.new(
      nil,
      :block,
      :allow,
      :count,
      :captcha,
      :challenge,
      :monetize,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Action setting to use in the place of a rule action that is configured inside the rule group. You specify one override for each rule whose action you want to change. </p>
    #          <note>
    #             <p>Verify the rule names in your overrides carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.</p>
    #          </note>
    #          <p>You can use overrides for testing, for example you can override all of rule actions to <code>Count</code> and then monitor the resulting count metrics to understand how the rule group would handle your web traffic. You can also permanently override some or all actions, to modify how the rule group manages your web traffic.</p>
    # @!attribute name
    #   <p>The name of the rule to override.</p>
    #            <note>
    #               <p>Verify the rule names in your overrides carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.</p>
    #            </note>
    #   @return [String]
    # @!attribute action_to_use
    #   <p>The override action to use, in place of the configured action of the rule in the rule group. </p>
    #   @return [Types::RuleAction]
    class RuleActionOverride < Struct.new(
      nil,
      :name,
      :action_to_use,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>
    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #            <p>When you create your own rule group, you define this, and you cannot change it after creation.
    #             When you add or modify the rules in a rule group, WAF enforces this limit. You can check the capacity
    #             for a set of rules using <a>CheckCapacity</a>.</p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #   @return [Array<Types::Rule>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute label_namespace
    #   <p>The label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for your rule groups is the following: </p>
    #                  <p>
    #                     <code>awswaf:<account ID>:rulegroup:<rule group name>:</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Hash<String, Types::CustomResponseBody>]
    # @!attribute available_labels
    #   <p>The labels that one or more rules in this rule group add to matching web requests. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>.</p>
    #   @return [Array<Types::LabelSummary>]
    # @!attribute consumed_labels
    #   <p>The labels that one or more rules in this rule group match against in label match statements. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
    #   @return [Array<Types::LabelSummary>]
    # @!attribute monetization_config
    #   <p>The monetization configuration for the rule group. Required when any rule in the rule group uses the <code>Monetize</code> action. When a rule group with a <code>MonetizationConfig</code> is used in a web ACL, the rule group's configuration applies to rules within that group unless overridden at the web ACL level.</p>
    #   @return [Types::MonetizationConfig]
    class RuleGroup < Struct.new(
      nil,
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
      :consumed_labels,
      :monetization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
    #          <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You cannot use a rule group
    #       reference statement inside another rule group. You can only reference a rule group as a top-level statement within a rule that you define in a web ACL.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    # @!attribute excluded_rules
    #   <p>Rules in the referenced rule group whose actions are set to <code>Count</code>. </p>
    #            <note>
    #               <p>Instead of this option, use <code>RuleActionOverrides</code>. It accepts any valid action setting, including <code>Count</code>.</p>
    #            </note>
    #   @return [Array<Types::ExcludedRule>]
    # @!attribute rule_action_overrides
    #   <p>Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. </p>
    #            <note>
    #               <p>Verify the rule names in your overrides carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.</p>
    #            </note>
    #            <p>You can use overrides for testing, for example you can override all of rule actions to <code>Count</code> and then monitor the resulting count metrics to understand how the rule group would handle your web traffic. You can also permanently override some or all actions, to modify how the rule group manages your web traffic.</p>
    #   @return [Array<Types::RuleActionOverride>]
    class RuleGroupReferenceStatement < Struct.new(
      nil,
      :arn,
      :excluded_rules,
      :rule_action_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    # @!attribute name
    #   <p>The name of the data type instance. You cannot change the name after you create the instance.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    class RuleGroupSummary < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a <a>Rule</a>, returned by operations like <a>DescribeManagedRuleGroup</a>. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    # @!attribute name
    #   <p>The name of the rule. </p>
    #   @return [String]
    # @!attribute action
    #   <p>The action that WAF should take on a web request when it matches a rule's
    #            statement. Settings at the web ACL level can override the rule action setting. </p>
    #   @return [Types::RuleAction]
    class RuleSummary < Struct.new(
      nil,
      :name,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single sampled web request. The response from <a>GetSampledRequests</a> includes a <code>SampledHTTPRequests</code> complex type
    #          that appears as <code>SampledRequests</code> in the response syntax.
    #             <code>SampledHTTPRequests</code> contains an array of <code>SampledHTTPRequest</code>
    #          objects.</p>
    # @!attribute request
    #   <p>A complex type that contains detailed information about the request.</p>
    #   @return [Types::HTTPRequest]
    # @!attribute weight
    #   <p>A value that indicates how one result in the response relates proportionally to other
    #            results in the response. For example, a result that has a weight of <code>2</code>
    #            represents roughly twice as many web requests as a result that has a weight of
    #               <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute timestamp
    #   <p>The time at which WAF received the request from your Amazon Web Services resource, in Unix time
    #            format (in seconds).</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action that WAF applied to the request.</p>
    #   @return [String]
    # @!attribute rule_name_within_rule_group
    #   <p>The name of the <code>Rule</code> that the request matched. For managed rule groups, the
    #            format for this name is <code><vendor name>#<managed rule group name>#<rule
    #               name></code>. For your own rule groups, the format for this name is <code><rule
    #               group name>#<rule name></code>. If the rule is not in a rule group, this field
    #            is absent. </p>
    #   @return [String]
    # @!attribute request_headers_inserted
    #   <p>Custom request headers inserted by WAF into the request, according to the custom
    #            request configuration for the matching rule action.</p>
    #   @return [Array<Types::HTTPHeader>]
    # @!attribute response_code_sent
    #   <p>The response code that was sent for the request.</p>
    #   @return [Integer]
    # @!attribute labels
    #   <p>Labels applied to the web request by matching rules. WAF applies fully qualified
    #            labels to matching web requests. A fully qualified label is the concatenation of a label
    #            namespace and a rule label. The rule's rule group or web ACL defines the label namespace. </p>
    #            <p>For example,
    #               <code>awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA</code> or
    #               <code>awswaf:managed:aws:managed-rule-set:header:encoding:utf8</code>. </p>
    #   @return [Array<Types::Label>]
    # @!attribute captcha_response
    #   <p>The <code>CAPTCHA</code> response for the request.</p>
    #   @return [Types::CaptchaResponse]
    # @!attribute challenge_response
    #   <p>The <code>Challenge</code> response for the request.</p>
    #   @return [Types::ChallengeResponse]
    # @!attribute overridden_action
    #   <p>Used only for rule group rules that have a rule action override in place in the web ACL. This is the action that the rule group rule is configured for, and not the action that was applied to the request. The action that WAF applied is the <code>Action</code> value. </p>
    #   @return [String]
    class SampledHTTPRequest < Struct.new(
      nil,
      :request,
      :weight,
      :timestamp,
      :action,
      :rule_name_within_rule_group,
      :request_headers_inserted,
      :response_code_sent,
      :labels,
      :captcha_response,
      :challenge_response,
      :overridden_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

    # <p>A single settlement transaction record for AI bot monetization. Contains details about the payment including timestamp, amount, status, and the parties involved.</p>
    # @!attribute timestamp
    #   <p>The timestamp when the settlement was recorded.</p>
    #   @return [Time]
    # @!attribute payer_address
    #   <p>The blockchain wallet address of the paying AI agent.</p>
    #   @return [String]
    # @!attribute wallet_address
    #   <p>Your receiving wallet address.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the settlement. Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SETTLED</code> - The payment was successfully settled on the blockchain and the transfer from the payer's wallet to the publisher's wallet is confirmed. The <code>TransactionId</code> field contains the on-chain transaction hash. Content is served to the client.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The blockchain transaction has been submitted but not yet confirmed on-chain. This is a transient state that automatically resolves to either <code>SETTLED</code> or <code>FAILED</code>. No action is required. While pending, content is not served and the API returns a 402 response. Clients can retry the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The payment settlement was attempted but failed. Possible causes include insufficient funds, an expired payment authorization, or a reverted blockchain transaction. The <code>failureReason</code> field contains a machine-readable error code. Content is not served.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_ERROR</code> - Settlement could not be completed due to an internal service issue or an issue with the payment network. Content is not served. The client's payment authorization remains valid and the request can be retried.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED_ORIGIN_ERROR</code> - The origin returned a non-2xx response, so settlement was intentionally skipped. The client is not charged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DUPLICATE</code> - A prior request with the same payment payload has already been settled. This status typically appears when a previous attempt timed out but the payment was ultimately processed. The client is not charged again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute amount
    #   <p>The payment amount in the specified currency.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency of the payment amount.</p>
    #   @return [String]
    # @!attribute network
    #   <p>The blockchain network on which the settlement occurred.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The blockchain transaction identifier. You can use this to verify the transaction on a blockchain explorer.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The WAF request ID associated with this settlement.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p>The name of the AI bot that made the payment.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The organization associated with the AI bot.</p>
    #   @return [String]
    # @!attribute source_category
    #   <p>The category of the AI bot source.</p>
    #   @return [String]
    # @!attribute intent
    #   <p>The declared intent of the AI bot request.</p>
    #   @return [String]
    # @!attribute verified
    #   <p>Whether the AI bot's identity was verified.</p>
    #   @return [Boolean]
    # @!attribute content_path
    #   <p>The content path that was accessed.</p>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The ARN of the web ACL that processed the request.</p>
    #   @return [String]
    # @!attribute request_timestamp
    #   <p>The timestamp of the original web request.</p>
    #   @return [Time]
    class SettlementRecord < Struct.new(
      nil,
      :timestamp,
      :payer_address,
      :wallet_address,
      :status,
      :amount,
      :currency,
      :network,
      :transaction_id,
      :request_id,
      :source_name,
      :organization,
      :source_category,
      :intent,
      :verified,
      :content_path,
      :web_acl_arn,
      :request_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:verified] = false unless options.key?(:verified)
        super
      end
    end

    # <p>Inspect one of the headers in the web request, identified by name, for example,
    #             <code>User-Agent</code> or <code>Referer</code>. The name isn't case sensitive.</p>
    #          <p>You can filter and inspect all headers with the <code>FieldToMatch</code> setting
    #             <code>Headers</code>.</p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"SingleHeader": { "Name": "haystack" }</code>
    #          </p>
    # @!attribute name
    #   <p>The name of the query header to inspect.</p>
    #   @return [String]
    class SingleHeader < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect one query argument in the web request, identified by name, for example
    #             <i>UserName</i> or <i>SalesRegion</i>. The name isn't case
    #          sensitive. </p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"SingleQueryArgument": { "Name": "myArgument" }</code>
    #          </p>
    # @!attribute name
    #   <p>The name of the query argument to inspect.</p>
    #   @return [String]
    class SingleQueryArgument < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p>
    #          <p>If you configure WAF to inspect the request body, WAF inspects only the number of bytes in the body up to the limit for the web ACL and protected resource type. If you know that the request body for your web requests should never exceed the inspection limit, you can use a size constraint statement to block requests that have a larger request body size. For more information about the inspection limits, see <code>Body</code> and <code>JsonBody</code> settings for the <code>FieldToMatch</code> data type. </p>
    #          <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. </p>
    #   @return [Types::FieldToMatch]
    # @!attribute comparison_operator
    #   <p>The operator to use to compare the request part to the size setting. </p>
    #   @return [String]
    # @!attribute size
    #   <p>The size, in byte, to compare to the request part, after any transformations.</p>
    #   @return [Integer]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    # @!attribute pre_parse_text_transformations
    #   <p>Pre-parse text transformations normalize the raw query string before WAF parses it into individual
    #            query arguments. They are applied before the standard text transformations. Pre-parse text transformations
    #            are only supported when <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or
    #            <code>AllQueryArguments</code>. You can specify up to 10 pre-parse text transformations per rule statement.</p>
    #   @return [Array<Types::PreParseTextTransformation>]
    class SizeConstraintStatement < Struct.new(
      nil,
      :field_to_match,
      :comparison_operator,
      :size,
      :text_transformations,
      :pre_parse_text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        super
      end
    end

    # <p>Revenue statistics for a single AI bot source, including the bot name, revenue amount, request count, and verification status.</p>
    # @!attribute source_name
    #   <p>The name of the AI bot.</p>
    #   @return [String]
    # @!attribute percentage
    #   <p>The percentage of total revenue from this source.</p>
    #   @return [Float]
    # @!attribute amount
    #   <p>The total revenue amount from this source in the specified currency.</p>
    #   @return [String]
    # @!attribute request_count
    #   <p>The number of monetized requests from this source.</p>
    #   @return [Integer]
    # @!attribute source_category
    #   <p>The category of this AI bot source.</p>
    #   @return [String]
    # @!attribute intent
    #   <p>The declared intent of the AI bot (for example, summarize, index, or train).</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The organization associated with the AI bot.</p>
    #   @return [String]
    # @!attribute verified
    #   <p>Indicates whether the AI bot's identity was verified — for example, through a cryptographically signed request (Web Bot Auth) or another published verification method. This value is meaningful only when GroupBy is NAME, where each result represents a single, identifiable bot. For all other GroupBy values (CATEGORY, INTENT, ORGANIZATION, or WEBACL), a result aggregates multiple bots that may have different verification states, so Verified is always returned as false and should be ignored. Type and required-ness are unchanged (Boolean, optional).</p>
    #   @return [Boolean]
    # @!attribute group_by_value
    #   <p>The value for the group-by dimension, when grouping is applied.</p>
    #   @return [String]
    class SourceStatistics < Struct.new(
      nil,
      :source_name,
      :percentage,
      :amount,
      :request_count,
      :source_category,
      :intent,
      :organization,
      :verified,
      :group_by_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percentage] = 0 unless options.key?(:percentage)
        options[:request_count] = 0 unless options.key?(:request_count)
        options[:verified] = false unless options.key?(:verified)
        super
      end
    end

    # <p>A rule statement that inspects for malicious SQL code. Attackers insert malicious SQL code into web requests to do things like modify your database or extract data from it. </p>
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. </p>
    #   @return [Types::FieldToMatch]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    # @!attribute pre_parse_text_transformations
    #   <p>Pre-parse text transformations normalize the raw query string before WAF parses it into individual
    #            query arguments. They are applied before the standard text transformations. Pre-parse text transformations
    #            are only supported when <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or
    #            <code>AllQueryArguments</code>. You can specify up to 10 pre-parse text transformations per rule statement.</p>
    #   @return [Array<Types::PreParseTextTransformation>]
    # @!attribute sensitivity_level
    #   <p>The sensitivity that you want WAF to use to inspect for SQL injection attacks. </p>
    #            <p>
    #               <code>HIGH</code> detects more attacks, but might generate more false positives,
    #          especially if your web requests frequently contain unusual strings.
    #          For information about identifying and mitigating false positives, see
    #              <a href="https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-testing.html">Testing and tuning</a> in the
    #              <i>WAF Developer Guide</i>.</p>
    #            <p>
    #               <code>LOW</code> is generally a better choice for resources that already have other
    #              protections against SQL injection attacks or that have a low tolerance for false positives. </p>
    #            <p>Default: <code>LOW</code>
    #            </p>
    #   @return [String]
    class SqliMatchStatement < Struct.new(
      nil,
      :field_to_match,
      :text_transformations,
      :pre_parse_text_transformations,
      :sensitivity_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The processing guidance for a <a>Rule</a>, used by WAF to determine whether
    #          a web request matches the rule. </p>
    #          <p>For example specifications, see the examples section of <a>CreateWebACL</a>.</p>
    # @!attribute byte_match_statement
    #   <p>A rule statement that defines a string match search for WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the WAF console and the developer guide, this is called a string match statement.</p>
    #   @return [Types::ByteMatchStatement]
    # @!attribute sqli_match_statement
    #   <p>A rule statement that inspects for malicious SQL code. Attackers insert malicious SQL code into web requests to do things like modify your database or extract data from it. </p>
    #   @return [Types::SqliMatchStatement]
    # @!attribute xss_match_statement
    #   <p>A rule statement that inspects for cross-site scripting (XSS) attacks. In XSS attacks, the attacker
    #   uses vulnerabilities in a benign website as a vehicle to inject malicious client-site scripts into other legitimate web browsers. </p>
    #   @return [Types::XssMatchStatement]
    # @!attribute size_constraint_statement
    #   <p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p>
    #            <p>If you configure WAF to inspect the request body, WAF inspects only the number of bytes in the body up to the limit for the web ACL and protected resource type. If you know that the request body for your web requests should never exceed the inspection limit, you can use a size constraint statement to block requests that have a larger request body size. For more information about the inspection limits, see <code>Body</code> and <code>JsonBody</code> settings for the <code>FieldToMatch</code> data type. </p>
    #            <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
    #   @return [Types::SizeConstraintStatement]
    # @!attribute geo_match_statement
    #   <p>A rule statement that labels web requests by country and region and that matches against web requests based on country code. A geo match rule labels every request that it inspects regardless of whether it finds a match.</p>
    #            <ul>
    #               <li>
    #                  <p>To manage requests only by country, you can use this statement by itself and specify the countries that you want to match against in the <code>CountryCodes</code> array. </p>
    #               </li>
    #               <li>
    #                  <p>Otherwise, configure your geo match rule with Count action so that it only labels requests. Then, add one or more label match rules to run after the geo match rule and configure them to match against the geographic labels and handle the requests as needed. </p>
    #               </li>
    #            </ul>
    #            <p>WAF labels requests using the alpha-2 country and region codes from the International Organization for Standardization (ISO) 3166 standard. WAF determines the codes using either the IP address in the web request origin or, if you specify it, the address in the geo match <code>ForwardedIPConfig</code>. </p>
    #            <p>If you use the web request origin, the label formats are <code>awswaf:clientip:geo:region:<ISO country code>-<ISO region code></code> and <code>awswaf:clientip:geo:country:<ISO country code></code>.</p>
    #            <p>If you use a forwarded IP address, the label formats are <code>awswaf:forwardedip:geo:region:<ISO country code>-<ISO region code></code> and <code>awswaf:forwardedip:geo:country:<ISO country code></code>.</p>
    #            <p>For additional details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-type-geo-match.html">Geographic match rule statement</a> in the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #   @return [Types::GeoMatchStatement]
    # @!attribute rule_group_reference_statement
    #   <p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
    #            <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You cannot use a rule group
    #         reference statement inside another rule group. You can only reference a rule group as a top-level statement within a rule that you define in a web ACL.</p>
    #   @return [Types::RuleGroupReferenceStatement]
    # @!attribute ip_set_reference_statement
    #   <p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p>
    #            <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    #   @return [Types::IPSetReferenceStatement]
    # @!attribute regex_pattern_set_reference_statement
    #   <p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p>
    #            <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    #   @return [Types::RegexPatternSetReferenceStatement]
    # @!attribute rate_based_statement
    #   <p>A rate-based rule counts incoming requests and rate limits requests when they are coming at too fast a rate. The rule categorizes requests according to your aggregation criteria, collects them into aggregation instances, and counts and rate limits the requests for each instance. </p>
    #            <note>
    #               <p>If you change any of these settings in a rule that's currently in use, the change resets the rule's rate limiting counts. This can pause the rule's rate limiting activities for up to a minute. </p>
    #            </note>
    #            <p>You can specify individual aggregation keys, like IP address or HTTP method. You can also specify aggregation key combinations, like IP address and HTTP method, or HTTP method, query argument, and cookie. </p>
    #            <p>Each unique set of values for the aggregation keys that you specify is a separate aggregation instance, with the value from each key contributing to the aggregation instance definition. </p>
    #            <p>For example, assume the rule evaluates web requests with the following IP address and HTTP method values: </p>
    #            <ul>
    #               <li>
    #                  <p>IP address 10.1.1.1, HTTP method POST</p>
    #               </li>
    #               <li>
    #                  <p>IP address 10.1.1.1, HTTP method GET</p>
    #               </li>
    #               <li>
    #                  <p>IP address 127.0.0.0, HTTP method POST</p>
    #               </li>
    #               <li>
    #                  <p>IP address 10.1.1.1, HTTP method GET</p>
    #               </li>
    #            </ul>
    #            <p>The rule would create different aggregation instances according to your aggregation criteria, for example: </p>
    #            <ul>
    #               <li>
    #                  <p>If the aggregation criteria is just the IP address, then each individual address is an aggregation instance, and WAF counts requests separately for each. The aggregation instances and request counts for our example would be the following: </p>
    #                  <ul>
    #                     <li>
    #                        <p>IP address 10.1.1.1: count 3</p>
    #                     </li>
    #                     <li>
    #                        <p>IP address 127.0.0.0: count 1</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>If the aggregation criteria is HTTP method, then each individual HTTP method is an aggregation instance. The aggregation instances and request counts for our example would be the following: </p>
    #                  <ul>
    #                     <li>
    #                        <p>HTTP method POST: count 2</p>
    #                     </li>
    #                     <li>
    #                        <p>HTTP method GET: count 2</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>If the aggregation criteria is IP address and HTTP method, then each IP address and each HTTP method would contribute to the combined aggregation instance. The aggregation instances and request counts for our example would be the following: </p>
    #                  <ul>
    #                     <li>
    #                        <p>IP address 10.1.1.1, HTTP method POST: count 1</p>
    #                     </li>
    #                     <li>
    #                        <p>IP address 10.1.1.1, HTTP method GET: count 2</p>
    #                     </li>
    #                     <li>
    #                        <p>IP address 127.0.0.0, HTTP method POST: count 1</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>For any n-tuple of aggregation keys, each unique combination of values for the keys defines a separate aggregation instance, which WAF counts and rate-limits individually. </p>
    #            <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts and rate limits requests that match the nested statement. You can use this nested scope-down statement in conjunction with your aggregation key specifications or you can just count and rate limit all requests that match the scope-down statement, without additional aggregation. When you choose to just manage all requests that match a scope-down statement, the aggregation instance is singular for the rule. </p>
    #            <p>You cannot nest a <code>RateBasedStatement</code> inside another statement, for example inside a <code>NotStatement</code> or <code>OrStatement</code>. You can define a <code>RateBasedStatement</code> inside a web ACL and inside a rule group. </p>
    #            <p>For additional information about the options, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rate-based-rules.html">Rate limiting web requests using rate-based rules</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>If you only aggregate on the individual IP address or forwarded IP address, you can retrieve the list of IP addresses that WAF
    #             is currently rate limiting for a rule through the API call <code>GetRateBasedStatementManagedKeys</code>. This option is not available
    #         for other aggregation configurations.</p>
    #            <p>WAF tracks and manages web requests separately for each instance of a rate-based rule that you use. For example, if you provide the same rate-based rule settings in two web ACLs, each of the two rule statements represents a separate instance of the rate-based rule and gets its own tracking and management by WAF. If you define a rate-based rule inside a rule group, and then use that rule group in multiple places, each use creates a separate instance of the rate-based rule that gets its own tracking and management by WAF. </p>
    #   @return [Types::RateBasedStatement]
    # @!attribute and_statement
    #   <p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>
    #   @return [Types::AndStatement]
    # @!attribute or_statement
    #   <p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>
    #   @return [Types::OrStatement]
    # @!attribute not_statement
    #   <p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>
    #   @return [Types::NotStatement]
    # @!attribute managed_rule_group_statement
    #   <p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p>
    #            <p>You cannot nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You cannot use a managed rule group
    #         inside another rule group. You can only reference a managed rule group as a top-level statement within a rule that you define in a web ACL.</p>
    #            <note>
    #               <p>You are charged additional fees when you use the WAF Bot Control managed rule group <code>AWSManagedRulesBotControlRuleSet</code>, the WAF Fraud Control account takeover prevention (ATP) managed rule group <code>AWSManagedRulesATPRuleSet</code>, or the WAF Fraud Control account creation fraud prevention (ACFP) managed rule group <code>AWSManagedRulesACFPRuleSet</code>. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #   @return [Types::ManagedRuleGroupStatement]
    # @!attribute label_match_statement
    #   <p>A rule statement to match against labels that have been added to the web request by rules that have already run in the web ACL. </p>
    #            <p>The label match statement provides the label or namespace string to search for. The label string can represent a part or all of the fully qualified label name that had been added to the web request. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  If you do not provide the fully qualified name in your label match string, WAF performs the search for labels that were added in the same context as the label match statement. </p>
    #   @return [Types::LabelMatchStatement]
    # @!attribute regex_match_statement
    #   <p>A rule statement used to search web request components for a match against a single regular expression. </p>
    #   @return [Types::RegexMatchStatement]
    # @!attribute asn_match_statement
    #   <p>A rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address.</p>
    #            <p>For additional details, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-type-asn-match.html">ASN match rule statement</a> in the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #   @return [Types::AsnMatchStatement]
    class Statement < Struct.new(
      nil,
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
      :regex_match_statement,
      :asn_match_statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag associated with an Amazon Web Services resource. Tags are key:value pairs that you can use to
    #          categorize and manage your resources, for purposes like billing or other management.
    #          Typically, the tag key represents a category, such as "environment", and the tag value
    #          represents a specific value within that category, such as "test," "development," or
    #          "production". Or you might set the tag key to "customer" and the value to the customer name
    #          or ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    # @!attribute key
    #   <p>Part of the key:value pair that defines a tag. You can use a tag key to describe a
    #            category of information, such as "customer." Tag keys are case-sensitive.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Part of the key:value pair that defines a tag. You can use a tag value to describe a
    #            specific value within a category, such as "companyA" or "companyB." Tag values are
    #            case-sensitive.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of tagging definitions for an Amazon Web Services resource. Tags are key:value pairs
    #          that you can use to categorize and manage your resources, for purposes like billing or
    #          other management. Typically, the tag key represents a category, such as "environment", and
    #          the tag value represents a specific value within that category, such as "test,"
    #          "development," or "production". Or you might set the tag key to "customer" and the value to
    #          the customer name or ID. You can specify one or more tags to add to each Amazon Web Services resource, up
    #          to 50 tags for a resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The array of <a>Tag</a> objects defined for the resource. </p>
    #   @return [Array<Types::Tag>]
    class TagInfoForResource < Struct.new(
      nil,
      :resource_arn,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
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

    # <p>Text transformations eliminate some of the unusual formatting that attackers use in web
    #          requests in an effort to bypass detection. </p>
    # @!attribute priority
    #   <p>Sets the relative processing order for multiple transformations.
    #            WAF processes all transformations, from lowest priority to highest,
    #            before inspecting the transformed content. The priorities don't need to be consecutive, but
    #            they must all be different. </p>
    #   @return [Integer]
    # @!attribute type
    #   <p>For detailed descriptions of each of the transformation types, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-transformation.html">Text transformations</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #   @return [String]
    class TextTransformation < Struct.new(
      nil,
      :priority,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority] = 0 unless options.key?(:priority)
        super
      end
    end

    # <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and
    #             <code>EndTime</code> objects specify the time range for which you want WAF to
    #          return a sample of web requests.</p>
    #          <p>You must specify the times in Coordinated Universal Time (UTC) format. UTC format
    #          includes the special designator, <code>Z</code>. For example,
    #             <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three
    #          hours.</p>
    #          <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and
    #             <code>EndTime</code> objects specify the time range for which WAF actually returned a
    #          sample of web requests. WAF gets the specified number of requests from among the first
    #          5,000 requests that your Amazon Web Services resource receives during the specified time period. If your
    #          resource receives more than 5,000 requests during that period, WAF stops sampling after
    #          the 5,000th request. In that case, <code>EndTime</code> is the time that WAF received the
    #          5,000th request.</p>
    # @!attribute start_time
    #   <p>The beginning of the time range from which you want <code>GetSampledRequests</code> to
    #            return a sample of the requests that your Amazon Web Services resource received. You must specify the
    #            times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #            designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify
    #            any time range in the previous three hours.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time range from which you want <code>GetSampledRequests</code> to return
    #            a sample of the requests that your Amazon Web Services resource received. You must specify the times in
    #            Coordinated Universal Time (UTC) format. UTC format includes the special designator,
    #               <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify any time
    #            range in the previous three hours.</p>
    #   @return [Time]
    class TimeWindow < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>An array of keys identifying the tags to disassociate from the resource.</p>
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

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #   @return [String]
    # @!attribute addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses that you want WAF to inspect for in incoming requests. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for <code>/0</code>. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>For requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class UpdateIPSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :description,
      :addresses,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #   @return [String]
    class UpdateIPSetResponse < Struct.new(
      nil,
      :next_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute version_to_expire
    #   <p>The version that you want to remove from your list of offerings for the named managed
    #            rule group. </p>
    #   @return [String]
    # @!attribute expiry_timestamp
    #   <p>The time that you want the version to expire.</p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #   @return [Time]
    class UpdateManagedRuleSetVersionExpiryDateRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :lock_token,
      :version_to_expire,
      :expiry_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute expiring_version
    #   <p>The version that is set to expire. </p>
    #   @return [String]
    # @!attribute expiry_timestamp
    #   <p>The time that the version will expire. </p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #   @return [Time]
    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class UpdateManagedRuleSetVersionExpiryDateResponse < Struct.new(
      nil,
      :expiring_version,
      :expiry_timestamp,
      :next_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #   @return [String]
    # @!attribute regular_expression_list
    #   <p></p>
    #   @return [Array<Types::Regex>]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    class UpdateRegexPatternSetRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :description,
      :regular_expression_list,
      :lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #   @return [String]
    class UpdateRegexPatternSetResponse < Struct.new(
      nil,
      :next_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #   @return [Array<Types::Rule>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Hash<String, Types::CustomResponseBody>]
    # @!attribute monetization_config
    #   <p>The monetization configuration for the rule group. Provide this when any rule in the rule group uses the <code>Monetize</code> action.</p>
    #   @return [Types::MonetizationConfig]
    class UpdateRuleGroupRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :description,
      :rules,
      :visibility_config,
      :lock_token,
      :custom_response_bodies,
      :monetization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #   @return [String]
    class UpdateRuleGroupResponse < Struct.new(
      nil,
      :next_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Specifies whether this is for a global resource type, such as a Amazon CloudFront distribution. For an Amplify application, use <code>CLOUDFRONT</code>.</p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #   @return [Types::DefaultAction]
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #   @return [Array<Types::Rule>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute data_protection_config
    #   <p>Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. </p>
    #            <p>The data protection that you configure for the web ACL alters the data that's available for any other data collection activity,
    #     including your WAF logging destinations, web ACL request sampling, and Amazon Security Lake data collection and management. Your other option for data protection is in the logging configuration, which only affects logging. </p>
    #   @return [Types::DataProtectionConfig]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Hash<String, Types::CustomResponseBody>]
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #   @return [Types::CaptchaConfig]
    # @!attribute challenge_config
    #   <p>Specifies how WAF should handle challenge evaluations for rules that don't have
    #   their own <code>ChallengeConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>ChallengeConfig</code>. </p>
    #   @return [Types::ChallengeConfig]
    # @!attribute token_domains
    #   <p>Specifies the domains that WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When WAF provides a token, it uses the domain of the Amazon Web Services resource that the web ACL is protecting. If you don't specify a list of token domains, WAF accepts tokens only for the domain of the protected resource. With a token domain list, WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.</p>
    #            <p>Example JSON: <code>"TokenDomains": { "mywebsite.com", "myotherwebsite.com" }</code>
    #            </p>
    #            <p>Public suffixes aren't allowed. For example, you can't use <code>gov.au</code> or <code>co.uk</code> as token domains.</p>
    #   @return [Array<String>]
    # @!attribute association_config
    #   <p>Specifies custom configurations for the associations between the web ACL and protected resources.  </p>
    #            <p>Use this to customize the maximum size of the request body that your protected resources forward to WAF for inspection. You can
    #       customize this setting for CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resources. The default setting is 16 KB (16,384 bytes). </p>
    #            <note>
    #               <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #            <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #   @return [Types::AssociationConfig]
    # @!attribute on_source_d_do_s_protection_config
    #   <p>Specifies the type of DDoS protection to apply to web request data for a web ACL. For most scenarios, it is recommended to use the default protection level, <code>ACTIVE_UNDER_DDOS</code>.
    #      If a web ACL is associated with multiple Application Load Balancers, the changes you make to DDoS protection in that web ACL will apply to all associated Application Load Balancers.</p>
    #   @return [Types::OnSourceDDoSProtectionConfig]
    # @!attribute application_config
    #   <p>Configures the ability for the WAF console to store and retrieve application attributes.
    #            Application attributes help WAF give recommendations for protection packs.</p>
    #            <p>When using <code>UpdateWebACL</code>, <code>ApplicationConfig</code> follows these rules:</p>
    #            <ul>
    #               <li>
    #                  <p>If you omit <code>ApplicationConfig</code> from the request, all existing entries in the web ACL are retained.</p>
    #               </li>
    #               <li>
    #                  <p>If you include <code>ApplicationConfig</code>, entries must match the existing values exactly. Any attempt to modify existing entries will result in an error.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ApplicationConfig]
    # @!attribute monetization_config
    #   <p>The monetization configuration for the web ACL. Provide this when any rule in the web ACL uses the <code>Monetize</code> action.</p>
    #   @return [Types::MonetizationConfig]
    class UpdateWebACLRequest < Struct.new(
      nil,
      :name,
      :scope,
      :id,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :data_protection_config,
      :lock_token,
      :custom_response_bodies,
      :captcha_config,
      :challenge_config,
      :token_domains,
      :association_config,
      :on_source_d_do_s_protection_config,
      :application_config,
      :monetization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #   @return [String]
    class UpdateWebACLResponse < Struct.new(
      nil,
      :next_lock_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect fragments of the request URI. You can specify the parts of the URI fragment to
    #          inspect and you can narrow the set of URI fragments to inspect by including or excluding specific
    #          keys.
    #       </p>
    #          <p>This is used to indicate the web request component to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"UriFragment": { "MatchPattern": { "All": {} }, "MatchScope": "KEY",
    #                "OversizeHandling": "MATCH" }</code>
    #          </p>
    # @!attribute fallback_behavior
    #   <p>What WAF should do if it fails to completely parse the JSON body. The options are
    #               the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EVALUATE_AS_STRING</code> - Inspect the body as plain text. WAF
    #                     applies the text transformations and inspection criteria that you defined for the
    #                     JSON inspection to the body text string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement.
    #                     WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                     statement.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't provide this setting, WAF parses and evaluates the content only up to the
    #               first parsing failure that it encounters. </p>
    #            <p>Example JSON: <code>{ "UriFragment": { "FallbackBehavior": "MATCH"} }</code>
    #            </p>
    #            <note>
    #               <p>WAF parsing doesn't fully validate the input JSON string, so parsing can succeed even for invalid JSON. When
    #                  parsing succeeds, WAF doesn't apply the fallback behavior. For more information,
    #                  see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-fields-list.html#waf-rule-statement-request-component-json-body">JSON body</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    class UriFragment < Struct.new(
      nil,
      :fallback_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inspect the path component of the URI of the web request. This is the part of the web
    #          request that identifies a resource. For example, <code>/images/daily-ad.jpg</code>.</p>
    #          <p>This is used in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"UriPath": {}</code>
    #          </p>
    class UriPath < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the field in the request payload that contains your customer's username. </p>
    #          <p>This data type is used in the <code>RequestInspection</code> and <code>RequestInspectionACFP</code> data types. </p>
    # @!attribute identifier
    #   <p>The name of the username field. </p>
    #            <p>How you specify this depends on the request inspection payload type.</p>
    #            <ul>
    #               <li>
    #                  <p>For JSON payloads, specify the field name in JSON
    #                  pointer syntax. For information about the JSON Pointer
    #                  syntax, see the Internet Engineering Task Force (IETF)
    #                  documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript
    #                  	Object Notation (JSON) Pointer</a>. </p>
    #                  <p>For example, for the JSON payload <code>{ "form": { "username": "THE_USERNAME" } }</code>,
    #                    the username field specification is <code>/form/username</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For form encoded payload types, use the HTML form names.</p>
    #                  <p>For example, for an HTML form with the input element
    #                      named <code>username1</code>, the username field specification is
    #                      <code>username1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UsernameField < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A version of the named managed rule group, that the rule group's vendor publishes for
    #          use by customers. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    # @!attribute associated_rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the vendor's rule group that's used in the published
    #            managed rule group version. </p>
    #   @return [String]
    # @!attribute forecasted_lifetime
    #   <p>The amount of time the vendor expects this version of the managed rule group to last, in
    #            days. </p>
    #   @return [Integer]
    class VersionToPublish < Struct.new(
      nil,
      :associated_rule_group_arn,
      :forecasted_lifetime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    # @!attribute sampled_requests_enabled
    #   <p>Indicates whether WAF should store a sampling of the web requests that
    #            match the rules. You can view the sampled requests through the WAF console. </p>
    #            <p>If you configure data protection for the web ACL, the protection applies to the web ACL's sampled web request data. </p>
    #            <note>
    #               <p>Request sampling doesn't provide a field redaction option, and any field redaction that you specify in your logging configuration doesn't affect sampling.
    #                   You can only exclude fields from request sampling by disabling sampling in the web ACL visibility configuration
    #                         or by configuring data protection for the web ACL.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute cloud_watch_metrics_enabled
    #   <p>Indicates whether the associated resource sends metrics to Amazon CloudWatch. For the
    #            list of available metrics, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics">WAF
    #               Metrics</a> in the <i>WAF Developer Guide</i>.</p>
    #            <p>For web ACLs, the metrics are for web requests that have the web ACL default action applied.
    #           WAF applies the default action to web requests that pass the inspection of all rules
    #           in the web ACL without being either allowed or blocked. For more information,
    #   see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-default-action.html">The web ACL default action</a> in the <i>WAF Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute metric_name
    #   <p>A name of the Amazon CloudWatch metric dimension. The name can contain only the characters: A-Z, a-z, 0-9,
    #            - (hyphen), and _ (underscore). The name can be from one to 128 characters long. It can't
    #         contain whitespace or metric names that are reserved for WAF, for example <code>All</code> and
    #         <code>Default_Action</code>. </p>
    #   @return [String]
    class VisibilityConfig < Struct.new(
      nil,
      :sampled_requests_enabled,
      :cloud_watch_metrics_enabled,
      :metric_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sampled_requests_enabled] = false unless options.key?(:sampled_requests_enabled)
        options[:cloud_watch_metrics_enabled] = false unless options.key?(:cloud_watch_metrics_enabled)
        super
      end
    end

    # <p>WAF couldn’t perform the operation because your resource is being used by another
    #          resource or it’s associated with another resource. </p>
    # @!attribute message
    #   @return [String]
    class WAFAssociatedItemException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because you are inspecting the web request body, headers, or
    #          cookies without specifying how to handle oversize components. Rules that inspect the body
    #          must either provide an <code>OversizeHandling</code> configuration or they must be preceded
    #          by a <code>SizeConstraintStatement</code> that blocks the body content from being too
    #          large. Rules that inspect the headers or cookies must provide an
    #             <code>OversizeHandling</code> configuration. </p>
    #          <p>Provide the handling configuration and retry your operation.</p>
    #          <p>Alternately, you can suppress this warning by adding the following tag to the resource
    #          that you provide to this operation: <code>Tag</code>
    #             (key:<code>WAF:OversizeFieldsHandlingConstraintOptOut</code>,
    #          value:<code>true</code>).</p>
    # @!attribute message
    #   @return [String]
    class WAFConfigurationWarningException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t perform the operation because the resource that you tried to save is
    #          a duplicate of an existing one.</p>
    # @!attribute message
    #   @return [String]
    class WAFDuplicateItemException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because the specified version for the managed rule group has
    #          expired. You can retrieve the available versions for the managed rule group by calling
    #             <a>ListAvailableManagedRuleGroupVersions</a>.</p>
    # @!attribute message
    #   @return [String]
    class WAFExpiredManagedRuleGroupVersionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because the specified WAF feature isn't supported by the CloudFront pricing plan associated with the web ACL.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute disallowed_features
    #   <p>The names of the disallowed WAF features.</p>
    #   @return [Array<Types::DisallowedFeature>]
    class WAFFeatureNotIncludedInPricingPlanException < Struct.new(
      nil,
      :message,
      :disallowed_features,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request is valid, but WAF couldn’t perform the operation because of a system
    #          problem. Retry your request. </p>
    # @!attribute message
    #   @return [String]
    class WAFInternalErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation isn't valid. </p>
    # @!attribute message
    #   @return [String]
    class WAFInvalidOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because WAF didn't recognize a parameter in the request. For
    #          example: </p>
    #          <ul>
    #             <li>
    #                <p>You specified a parameter name or value that isn't valid.</p>
    #             </li>
    #             <li>
    #                <p>Your nested statement isn't valid. You might have tried to nest a statement that
    #                can’t be nested. </p>
    #             </li>
    #             <li>
    #                <p>You tried to update a <code>WebACL</code> with a <code>DefaultAction</code> that
    #                isn't among the types available at <a>DefaultAction</a>.</p>
    #             </li>
    #             <li>
    #                <p>Your request references an ARN that is malformed, or corresponds to a resource
    #                with which a web ACL can't be associated.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute field
    #   <p>The settings where the invalid parameter was found. </p>
    #   @return [String]
    # @!attribute parameter
    #   <p>The invalid parameter that resulted in the exception. </p>
    #   @return [String]
    # @!attribute reason
    #   <p>Additional information about the exception.</p>
    #   @return [String]
    class WAFInvalidParameterException < Struct.new(
      nil,
      :message,
      :field,
      :parameter,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because the specified policy isn't in the proper format. </p>
    #          <p>The policy specifications must conform to the following:</p>
    #          <ul>
    #             <li>
    #                <p>The policy must be composed using IAM Policy version 2012-10-17.</p>
    #             </li>
    #             <li>
    #                <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Effect</code> must specify <code>Allow</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and
    #              <code>wafv2:PutFirewallManagerRuleGroups</code> and may optionally specify <code>wafv2:GetRuleGroup</code>.
    #                  WAF rejects any extra actions or wildcard actions in the policy.</p>
    #             </li>
    #             <li>
    #                <p>The policy must not include a <code>Resource</code> parameter.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>
    # @!attribute message
    #   @return [String]
    class WAFInvalidPermissionPolicyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t perform the operation because the resource that you requested isn’t
    #          valid. Check the resource, and try again.</p>
    # @!attribute message
    #   @return [String]
    class WAFInvalidResourceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t perform the operation because you exceeded your resource limit. For
    #          example, the maximum number of <code>WebACL</code> objects that you can create for an Amazon Web Services
    #          account. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #             <i>WAF Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute source_type
    #   <p>Source type for the exception. </p>
    #   @return [String]
    class WAFLimitsExceededException < Struct.new(
      nil,
      :message,
      :source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because you don't have the permissions that your logging
    #          configuration requires. For information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a>
    #          in the <i>WAF Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class WAFLogDestinationPermissionIssueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t perform the operation because your resource doesn't exist.
    #        If you've just created a resource that you're using in this operation, you might
    #        just need to wait a few minutes. It can take from a few seconds to a number of minutes
    #        for changes to propagate. </p>
    # @!attribute message
    #   @return [String]
    class WAFNonexistentItemException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t save your changes because you tried to update or delete a resource
    #          that has changed since you last retrieved it. Get the resource again, make any changes you
    #          need to make to the new copy, and retry your operation. </p>
    # @!attribute message
    #   @return [String]
    class WAFOptimisticLockException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF is not able to access the service linked role. This can be caused by a
    #          previous <code>PutLoggingConfiguration</code> request, which can lock the service linked
    #          role for about 20 seconds. Please try your request again. The service linked role can also
    #          be locked by a previous <code>DeleteServiceLinkedRole</code> request, which can lock the
    #          role for 15 minutes or more. If you recently made a call to
    #             <code>DeleteServiceLinkedRole</code>, wait at least 15 minutes and try the request
    #          again. If you receive this same exception again, you will have to wait additional time
    #          until the role is unlocked.</p>
    # @!attribute message
    #   @return [String]
    class WAFServiceLinkedRoleErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You tried to use a managed rule group that's available by subscription, but you aren't
    #          subscribed to it yet. </p>
    # @!attribute message
    #   @return [String]
    class WAFSubscriptionNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred during the tagging operation. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    class WAFTagOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t perform your tagging operation because of an internal error. Retry
    #          your request.</p>
    # @!attribute message
    #   @return [String]
    class WAFTagOperationInternalErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WAF couldn’t retrieve a resource that you specified for this operation.
    #        If you've just created a resource that you're using in this operation, you might
    #        just need to wait a few minutes. It can take from a few seconds to a number of minutes
    #        for changes to propagate. Verify the resource specifications in your request
    #        parameters and then retry the operation.</p>
    # @!attribute message
    #   @return [String]
    class WAFUnavailableEntityException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rule that you've named doesn't aggregate solely on the IP address or solely on the forwarded IP address. This call
    #            is only available for rate-based rules with an <code>AggregateKeyType</code> setting of <code>IP</code> or <code>FORWARDED_IP</code>.</p>
    # @!attribute message
    #   @return [String]
    class WAFUnsupportedAggregateKeyTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A web ACL defines a collection of rules to use to inspect and control web requests. Each rule has a statement that defines what to look for in web requests and an action that WAF applies to requests that match the statement. In the web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a web ACL with one or more Amazon Web Services resources to protect. The resource types include Amazon CloudFront distribution, Amazon API Gateway REST API, Application Load Balancer, AppSync GraphQL API, Amazon Cognito user pool, App Runner service, Amplify application, Amazon Web Services Verified Access instance, and Amazon Bedrock AgentCore Gateway.  </p>
    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the <code>WebACL</code>. This ID is returned in the responses to
    #            create and list commands. You use this ID to do things like get, update, and delete a
    #               <code>WebACL</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with the
    #            resource.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #   @return [Types::DefaultAction]
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to manage. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #   @return [Array<Types::Rule>]
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #   @return [Types::VisibilityConfig]
    # @!attribute data_protection_config
    #   <p>Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. </p>
    #            <p>The data protection that you configure for the web ACL alters the data that's available for any other data collection activity,
    #     including your WAF logging destinations, web ACL request sampling, and Amazon Security Lake data collection and management. Your other option for data protection is in the logging configuration, which only affects logging. </p>
    #   @return [Types::DataProtectionConfig]
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) currently being used by this web ACL. </p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html">WAF web ACL capacity units (WCU)</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute pre_process_firewall_manager_rule_groups
    #   <p>The first set of rules for WAF to process in the web ACL. This is defined in an
    #            Firewall Manager WAF policy and contains only rule group references. You can't alter these. Any
    #            rules and rule groups that you define for the web ACL are prioritized after these. </p>
    #            <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run
    #            first in the web ACL and a set of rule groups to run last. Within each set, the
    #            administrator prioritizes the rule groups, to determine their relative processing
    #            order.</p>
    #   @return [Array<Types::FirewallManagerRuleGroup>]
    # @!attribute post_process_firewall_manager_rule_groups
    #   <p>The last set of rules for WAF to process in the web ACL. This is defined in an
    #            Firewall Manager WAF policy and contains only rule group references. You can't alter these. Any
    #            rules and rule groups that you define for the web ACL are prioritized before these. </p>
    #            <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run
    #            first in the web ACL and a set of rule groups to run last. Within each set, the
    #            administrator prioritizes the rule groups, to determine their relative processing
    #            order.</p>
    #   @return [Array<Types::FirewallManagerRuleGroup>]
    # @!attribute managed_by_firewall_manager
    #   <p>Indicates whether this web ACL was created by Firewall Manager and is being managed by Firewall Manager. If true, then only Firewall Manager can
    #             delete the web ACL or any Firewall Manager rule groups in the web ACL.
    #              See also the properties <code>RetrofittedByFirewallManager</code>, <code>PreProcessFirewallManagerRuleGroups</code>, and <code>PostProcessFirewallManagerRuleGroups</code>. </p>
    #   @return [Boolean]
    # @!attribute label_namespace
    #   <p>The label namespace prefix for this web ACL. All labels added by rules in this web ACL have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a web ACL is the following: </p>
    #                  <p>
    #                     <code>awswaf:<account ID>:webacl:<web ACL name>:</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses,
    #              see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a>
    #       in the <i>WAF Developer Guide</i>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a>
    #        in the <i>WAF Developer Guide</i>. </p>
    #   @return [Hash<String, Types::CustomResponseBody>]
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #   @return [Types::CaptchaConfig]
    # @!attribute challenge_config
    #   <p>Specifies how WAF should handle challenge evaluations for rules that don't have
    #   their own <code>ChallengeConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>ChallengeConfig</code>. </p>
    #   @return [Types::ChallengeConfig]
    # @!attribute token_domains
    #   <p>Specifies the domains that WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When WAF provides a token, it uses the domain of the Amazon Web Services resource that the web ACL is protecting. If you don't specify a list of token domains, WAF accepts tokens only for the domain of the protected resource. With a token domain list, WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.</p>
    #   @return [Array<String>]
    # @!attribute association_config
    #   <p>Specifies custom configurations for the associations between the web ACL and protected resources.  </p>
    #            <p>Use this to customize the maximum size of the request body that your protected resources forward to WAF for inspection. You can
    #       customize this setting for CloudFront, API Gateway, Amazon Cognito, App Runner, or Verified Access resources. The default setting is 16 KB (16,384 bytes). </p>
    #            <note>
    #               <p>You are charged additional fees when your protected resources forward body sizes that are larger than the default. For more information, see <a href="http://aws.amazon.com/waf/pricing/">WAF Pricing</a>.</p>
    #            </note>
    #            <p>For Application Load Balancer and AppSync, the limit is fixed at 8 KB (8,192 bytes).</p>
    #   @return [Types::AssociationConfig]
    # @!attribute retrofitted_by_firewall_manager
    #   <p>Indicates whether this web ACL was created by a customer account and then retrofitted by Firewall Manager. If true, then the web ACL is currently being
    #          managed by a Firewall Manager WAF policy, and only Firewall Manager can manage any Firewall Manager rule groups in the web ACL.
    #              See also the properties <code>ManagedByFirewallManager</code>, <code>PreProcessFirewallManagerRuleGroups</code>, and <code>PostProcessFirewallManagerRuleGroups</code>. </p>
    #   @return [Boolean]
    # @!attribute on_source_d_do_s_protection_config
    #   <p>Configures the level of DDoS protection that applies to web ACLs associated with Application Load Balancers.</p>
    #   @return [Types::OnSourceDDoSProtectionConfig]
    # @!attribute application_config
    #   <p>Returns a list of <code>ApplicationAttribute</code>s.</p>
    #   @return [Types::ApplicationConfig]
    # @!attribute monetization_config
    #   <p>The monetization configuration for the web ACL. Required when any rule in the web ACL uses the <code>Monetize</code> action. Specifies the cryptocurrency payment networks and currency mode for AI bot monetization.</p>
    #   @return [Types::MonetizationConfig]
    class WebACL < Struct.new(
      nil,
      :name,
      :id,
      :arn,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :data_protection_config,
      :capacity,
      :pre_process_firewall_manager_rule_groups,
      :post_process_firewall_manager_rule_groups,
      :managed_by_firewall_manager,
      :label_namespace,
      :custom_response_bodies,
      :captcha_config,
      :challenge_config,
      :token_domains,
      :association_config,
      :retrofitted_by_firewall_manager,
      :on_source_d_do_s_protection_config,
      :application_config,
      :monetization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:capacity] = 0 unless options.key?(:capacity)
        options[:managed_by_firewall_manager] = false unless options.key?(:managed_by_firewall_manager)
        options[:retrofitted_by_firewall_manager] = false unless options.key?(:retrofitted_by_firewall_manager)
        super
      end
    end

    # <p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>
    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #   @return [String]
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #   @return [String]
    class WebACLSummary < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule statement that inspects for cross-site scripting (XSS) attacks. In XSS attacks, the attacker
    # uses vulnerabilities in a benign website as a vehicle to inject malicious client-site scripts into other legitimate web browsers. </p>
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. </p>
    #   @return [Types::FieldToMatch]
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. Text transformations are used in rule match statements, to transform the <code>FieldToMatch</code> request component before inspecting it, and they're used in rate-based rule statements, to transform request components before using them as custom aggregation keys. If you specify one or more transformations to apply, WAF performs all transformations on the specified content, starting from the lowest priority setting, and then uses the transformed component contents. </p>
    #   @return [Array<Types::TextTransformation>]
    # @!attribute pre_parse_text_transformations
    #   <p>Pre-parse text transformations normalize the raw query string before WAF parses it into individual
    #            query arguments. They are applied before the standard text transformations. Pre-parse text transformations
    #            are only supported when <code>FieldToMatch</code> is <code>SingleQueryArgument</code> or
    #            <code>AllQueryArguments</code>. You can specify up to 10 pre-parse text transformations per rule statement.</p>
    #   @return [Array<Types::PreParseTextTransformation>]
    class XssMatchStatement < Struct.new(
      nil,
      :field_to_match,
      :text_transformations,
      :pre_parse_text_transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
