# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ses)

module Aws::SES
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :ses

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a receipt rule set by cloning an existing one. All receipt
    # rules and configurations are copied to the new receipt rule set and
    # are completely independent of the source rule set.
    #
    # For information about setting up rule sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the rule set to create. The name must:
    #
    #   * This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #     underscores (\_), or dashes (-).
    #
    #   * Start and end with a letter or number.
    #
    #   * Contain less than 64 characters.
    #
    # @option params [required, String] :original_rule_set_name
    #   The name of the rule set to clone.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: CloneReceiptRuleSet
    #
    #   # The following example creates a receipt rule set by cloning an existing one:
    #
    #   resp = client.clone_receipt_rule_set({
    #     original_rule_set_name: "RuleSetToClone", 
    #     rule_set_name: "RuleSetToCreate", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clone_receipt_rule_set({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     original_rule_set_name: "ReceiptRuleSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CloneReceiptRuleSet AWS API Documentation
    #
    # @overload clone_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def clone_receipt_rule_set(params = {}, options = {})
      req = build_request(:clone_receipt_rule_set, params)
      req.send_request(options)
    end

    # Creates a configuration set.
    #
    # Configuration sets enable you to publish email sending events. For
    # information about using configuration sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [required, Types::ConfigurationSet] :configuration_set
    #   A data structure that contains the name of the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set({
    #     configuration_set: { # required
    #       name: "ConfigurationSetName", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateConfigurationSet AWS API Documentation
    #
    # @overload create_configuration_set(params = {})
    # @param [Hash] params ({})
    def create_configuration_set(params = {}, options = {})
      req = build_request(:create_configuration_set, params)
      req.send_request(options)
    end

    # Creates a configuration set event destination.
    #
    # <note markdown="1"> When you create or update an event destination, you must provide one,
    # and only one, destination. The destination can be CloudWatch, Amazon
    # Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).
    #
    #  </note>
    #
    # An event destination is the AWS service to which Amazon SES publishes
    # the email sending events associated with a configuration set. For
    # information about using configuration sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that the event destination should be
    #   associated with.
    #
    # @option params [required, Types::EventDestination] :event_destination
    #   An object that describes the AWS service that email sending event
    #   information will be published to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination: { # required
    #       name: "EventDestinationName", # required
    #       enabled: false,
    #       matching_event_types: ["send"], # required, accepts send, reject, bounce, complaint, delivery, open, click, renderingFailure
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "messageTag", # required, accepts messageTag, emailHeader, linkTag
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateConfigurationSetEventDestination AWS API Documentation
    #
    # @overload create_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def create_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:create_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Creates an association between a configuration set and a custom domain
    # for open and click event tracking.
    #
    # By default, images and links used for tracking open and click events
    # are hosted on domains operated by Amazon SES. You can configure a
    # subdomain of your own to handle these events. For information about
    # using custom domains, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that the tracking options should be
    #   associated with.
    #
    # @option params [required, Types::TrackingOptions] :tracking_options
    #   A domain that is used to redirect email recipients to an Amazon
    #   SES-operated domain. This domain captures open and click events
    #   generated by Amazon SES emails.
    #
    #   For more information, see [Configuring Custom Domains to Handle Open
    #   and Click
    #   Tracking](ses/latest/DeveloperGuide/configure-custom-open-click-domains.html)
    #   in the *Amazon SES Developer Guide*.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_tracking_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: { # required
    #       custom_redirect_domain: "CustomRedirectDomain",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateConfigurationSetTrackingOptions AWS API Documentation
    #
    # @overload create_configuration_set_tracking_options(params = {})
    # @param [Hash] params ({})
    def create_configuration_set_tracking_options(params = {}, options = {})
      req = build_request(:create_configuration_set_tracking_options, params)
      req.send_request(options)
    end

    # Creates a new custom verification email template.
    #
    # For more information about custom verification email templates, see
    # [Using Custom Verification Email Templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template.
    #
    # @option params [required, String] :from_email_address
    #   The email address that the custom verification email is sent from.
    #
    # @option params [required, String] :template_subject
    #   The subject line of the custom verification email.
    #
    # @option params [required, String] :template_content
    #   The content of the custom verification email. The total size of the
    #   email must be less than 10 MB. The message body may contain HTML, with
    #   some limitations. For more information, see [Custom Verification Email
    #   Frequently Asked Questions][1] in the *Amazon SES Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq
    #
    # @option params [required, String] :success_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is successfully verified.
    #
    # @option params [required, String] :failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is not successfully verified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_verification_email_template({
    #     template_name: "TemplateName", # required
    #     from_email_address: "FromAddress", # required
    #     template_subject: "Subject", # required
    #     template_content: "TemplateContent", # required
    #     success_redirection_url: "SuccessRedirectionURL", # required
    #     failure_redirection_url: "FailureRedirectionURL", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload create_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def create_custom_verification_email_template(params = {}, options = {})
      req = build_request(:create_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Creates a new IP address filter.
    #
    # For information about setting up IP address filters, see the [Amazon
    # SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html
    #
    # @option params [required, Types::ReceiptFilter] :filter
    #   A data structure that describes the IP address filter to create, which
    #   consists of a name, an IP address range, and whether to allow or block
    #   mail from it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: CreateReceiptFilter
    #
    #   # The following example creates a new IP address filter:
    #
    #   resp = client.create_receipt_filter({
    #     filter: {
    #       ip_filter: {
    #         cidr: "1.2.3.4/24", 
    #         policy: "Allow", 
    #       }, 
    #       name: "MyFilter", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_receipt_filter({
    #     filter: { # required
    #       name: "ReceiptFilterName", # required
    #       ip_filter: { # required
    #         policy: "Block", # required, accepts Block, Allow
    #         cidr: "Cidr", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateReceiptFilter AWS API Documentation
    #
    # @overload create_receipt_filter(params = {})
    # @param [Hash] params ({})
    def create_receipt_filter(params = {}, options = {})
      req = build_request(:create_receipt_filter, params)
      req.send_request(options)
    end

    # Creates a receipt rule.
    #
    # For information about setting up receipt rules, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the rule set that the receipt rule will be added to.
    #
    # @option params [String] :after
    #   The name of an existing rule after which the new rule will be placed.
    #   If this parameter is null, the new rule will be inserted at the
    #   beginning of the rule list.
    #
    # @option params [required, Types::ReceiptRule] :rule
    #   A data structure that contains the specified rule's name, actions,
    #   recipients, domains, enabled status, scan status, and TLS policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: CreateReceiptRule
    #
    #   # The following example creates a new receipt rule:
    #
    #   resp = client.create_receipt_rule({
    #     after: "", 
    #     rule: {
    #       actions: [
    #         {
    #           s3_action: {
    #             bucket_name: "MyBucket", 
    #             object_key_prefix: "email", 
    #           }, 
    #         }, 
    #       ], 
    #       enabled: true, 
    #       name: "MyRule", 
    #       scan_enabled: true, 
    #       tls_policy: "Optional", 
    #     }, 
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_receipt_rule({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     after: "ReceiptRuleName",
    #     rule: { # required
    #       name: "ReceiptRuleName", # required
    #       enabled: false,
    #       tls_policy: "Require", # accepts Require, Optional
    #       recipients: ["Recipient"],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: "AmazonResourceName",
    #             bucket_name: "S3BucketName", # required
    #             object_key_prefix: "S3KeyPrefix",
    #             kms_key_arn: "AmazonResourceName",
    #           },
    #           bounce_action: {
    #             topic_arn: "AmazonResourceName",
    #             smtp_reply_code: "BounceSmtpReplyCode", # required
    #             status_code: "BounceStatusCode",
    #             message: "BounceMessage", # required
    #             sender: "Address", # required
    #           },
    #           workmail_action: {
    #             topic_arn: "AmazonResourceName",
    #             organization_arn: "AmazonResourceName", # required
    #           },
    #           lambda_action: {
    #             topic_arn: "AmazonResourceName",
    #             function_arn: "AmazonResourceName", # required
    #             invocation_type: "Event", # accepts Event, RequestResponse
    #           },
    #           stop_action: {
    #             scope: "RuleSet", # required, accepts RuleSet
    #             topic_arn: "AmazonResourceName",
    #           },
    #           add_header_action: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           sns_action: {
    #             topic_arn: "AmazonResourceName", # required
    #             encoding: "UTF-8", # accepts UTF-8, Base64
    #           },
    #         },
    #       ],
    #       scan_enabled: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateReceiptRule AWS API Documentation
    #
    # @overload create_receipt_rule(params = {})
    # @param [Hash] params ({})
    def create_receipt_rule(params = {}, options = {})
      req = build_request(:create_receipt_rule, params)
      req.send_request(options)
    end

    # Creates an empty receipt rule set.
    #
    # For information about setting up receipt rule sets, see the [Amazon
    # SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the rule set to create. The name must:
    #
    #   * This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #     underscores (\_), or dashes (-).
    #
    #   * Start and end with a letter or number.
    #
    #   * Contain less than 64 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: CreateReceiptRuleSet
    #
    #   # The following example creates an empty receipt rule set:
    #
    #   resp = client.create_receipt_rule_set({
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_receipt_rule_set({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateReceiptRuleSet AWS API Documentation
    #
    # @overload create_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def create_receipt_rule_set(params = {}, options = {})
      req = build_request(:create_receipt_rule_set, params)
      req.send_request(options)
    end

    # Creates an email template. Email templates enable you to send
    # personalized email to one or more destinations in a single API
    # operation. For more information, see the [Amazon SES Developer
    # Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @option params [required, Types::Template] :template
    #   The content of the email, composed of a subject line, an HTML part,
    #   and a text-only part.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     template: { # required
    #       template_name: "TemplateName", # required
    #       subject_part: "SubjectPart",
    #       text_part: "TextPart",
    #       html_part: "HtmlPart",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Deletes a configuration set. Configuration sets enable you to publish
    # email sending events. For information about using configuration sets,
    # see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteConfigurationSet AWS API Documentation
    #
    # @overload delete_configuration_set(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set(params = {}, options = {})
      req = build_request(:delete_configuration_set, params)
      req.send_request(options)
    end

    # Deletes a configuration set event destination. Configuration set event
    # destinations are associated with configuration sets, which enable you
    # to publish email sending events. For information about using
    # configuration sets, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set from which to delete the event
    #   destination.
    #
    # @option params [required, String] :event_destination_name
    #   The name of the event destination to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteConfigurationSetEventDestination AWS API Documentation
    #
    # @overload delete_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:delete_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Deletes an association between a configuration set and a custom domain
    # for open and click event tracking.
    #
    # By default, images and links used for tracking open and click events
    # are hosted on domains operated by Amazon SES. You can configure a
    # subdomain of your own to handle these events. For information about
    # using custom domains, see the [Amazon SES Developer Guide][1].
    #
    # <note markdown="1"> Deleting this kind of association will result in emails sent using the
    # specified configuration set to capture open and click events using the
    # standard, Amazon SES-operated domains.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set from which you want to delete the
    #   tracking options.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_tracking_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteConfigurationSetTrackingOptions AWS API Documentation
    #
    # @overload delete_configuration_set_tracking_options(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set_tracking_options(params = {}, options = {})
      req = build_request(:delete_configuration_set_tracking_options, params)
      req.send_request(options)
    end

    # Deletes an existing custom verification email template.
    #
    # For more information about custom verification email templates, see
    # [Using Custom Verification Email Templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_verification_email_template({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload delete_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def delete_custom_verification_email_template(params = {}, options = {})
      req = build_request(:delete_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Deletes the specified identity (an email address or a domain) from the
    # list of verified identities.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :identity
    #   The identity to be removed from the list of identities for the AWS
    #   Account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteIdentity
    #
    #   # The following example deletes an identity from the list of identities that have been submitted for verification with
    #   # Amazon SES:
    #
    #   resp = client.delete_identity({
    #     identity: "user@example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity({
    #     identity: "Identity", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteIdentity AWS API Documentation
    #
    # @overload delete_identity(params = {})
    # @param [Hash] params ({})
    def delete_identity(params = {}, options = {})
      req = build_request(:delete_identity, params)
      req.send_request(options)
    end

    # Deletes the specified sending authorization policy for the given
    # identity (an email address or a domain). This API returns successfully
    # even if a policy with the specified name does not exist.
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :identity
    #   The identity that is associated with the policy that you want to
    #   delete. You can specify the identity by using its name or by using its
    #   Amazon Resource Name (ARN). Examples: `user@example.com`,
    #   `example.com`,
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
    #
    #   To successfully call this API, you must own the identity.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteIdentityPolicy
    #
    #   # The following example deletes a sending authorization policy for an identity:
    #
    #   resp = client.delete_identity_policy({
    #     identity: "user@example.com", 
    #     policy_name: "MyPolicy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_policy({
    #     identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteIdentityPolicy AWS API Documentation
    #
    # @overload delete_identity_policy(params = {})
    # @param [Hash] params ({})
    def delete_identity_policy(params = {}, options = {})
      req = build_request(:delete_identity_policy, params)
      req.send_request(options)
    end

    # Deletes the specified IP address filter.
    #
    # For information about managing IP address filters, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html
    #
    # @option params [required, String] :filter_name
    #   The name of the IP address filter to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteReceiptFilter
    #
    #   # The following example deletes an IP address filter:
    #
    #   resp = client.delete_receipt_filter({
    #     filter_name: "MyFilter", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_receipt_filter({
    #     filter_name: "ReceiptFilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteReceiptFilter AWS API Documentation
    #
    # @overload delete_receipt_filter(params = {})
    # @param [Hash] params ({})
    def delete_receipt_filter(params = {}, options = {})
      req = build_request(:delete_receipt_filter, params)
      req.send_request(options)
    end

    # Deletes the specified receipt rule.
    #
    # For information about managing receipt rules, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set that contains the receipt rule to
    #   delete.
    #
    # @option params [required, String] :rule_name
    #   The name of the receipt rule to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteReceiptRule
    #
    #   # The following example deletes a receipt rule:
    #
    #   resp = client.delete_receipt_rule({
    #     rule_name: "MyRule", 
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_receipt_rule({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_name: "ReceiptRuleName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteReceiptRule AWS API Documentation
    #
    # @overload delete_receipt_rule(params = {})
    # @param [Hash] params ({})
    def delete_receipt_rule(params = {}, options = {})
      req = build_request(:delete_receipt_rule, params)
      req.send_request(options)
    end

    # Deletes the specified receipt rule set and all of the receipt rules it
    # contains.
    #
    # <note markdown="1"> The currently active rule set cannot be deleted.
    #
    #  </note>
    #
    # For information about managing receipt rule sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteReceiptRuleSet
    #
    #   # The following example deletes a receipt rule set:
    #
    #   resp = client.delete_receipt_rule_set({
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_receipt_rule_set({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteReceiptRuleSet AWS API Documentation
    #
    # @overload delete_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def delete_receipt_rule_set(params = {}, options = {})
      req = build_request(:delete_receipt_rule_set, params)
      req.send_request(options)
    end

    # Deletes an email template.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :template_name
    #   The name of the template to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Deprecated. Use the `DeleteIdentity` operation to delete email
    # addresses and domains.
    #
    # @option params [required, String] :email_address
    #   An email address to be removed from the list of verified addresses.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteVerifiedEmailAddress
    #
    #   # The following example deletes an email address from the list of identities that have been submitted for verification
    #   # with Amazon SES:
    #
    #   resp = client.delete_verified_email_address({
    #     email_address: "user@example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_verified_email_address({
    #     email_address: "Address", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteVerifiedEmailAddress AWS API Documentation
    #
    # @overload delete_verified_email_address(params = {})
    # @param [Hash] params ({})
    def delete_verified_email_address(params = {}, options = {})
      req = build_request(:delete_verified_email_address, params)
      req.send_request(options)
    end

    # Returns the metadata and receipt rules for the receipt rule set that
    # is currently active.
    #
    # For information about setting up receipt rule sets, see the [Amazon
    # SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html
    #
    # @return [Types::DescribeActiveReceiptRuleSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActiveReceiptRuleSetResponse#metadata #metadata} => Types::ReceiptRuleSetMetadata
    #   * {Types::DescribeActiveReceiptRuleSetResponse#rules #rules} => Array&lt;Types::ReceiptRule&gt;
    #
    #
    # @example Example: DescribeActiveReceiptRuleSet
    #
    #   # The following example returns the metadata and receipt rules for the receipt rule set that is currently active:
    #
    #   resp = client.describe_active_receipt_rule_set({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     metadata: {
    #       created_timestamp: Time.parse("2016-07-15T16:25:59.607Z"), 
    #       name: "default-rule-set", 
    #     }, 
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             s3_action: {
    #               bucket_name: "MyBucket", 
    #               object_key_prefix: "email", 
    #             }, 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         name: "MyRule", 
    #         scan_enabled: true, 
    #         tls_policy: "Optional", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.metadata.name #=> String
    #   resp.metadata.created_timestamp #=> Time
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].enabled #=> Boolean
    #   resp.rules[0].tls_policy #=> String, one of "Require", "Optional"
    #   resp.rules[0].recipients #=> Array
    #   resp.rules[0].recipients[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].s3_action.topic_arn #=> String
    #   resp.rules[0].actions[0].s3_action.bucket_name #=> String
    #   resp.rules[0].actions[0].s3_action.object_key_prefix #=> String
    #   resp.rules[0].actions[0].s3_action.kms_key_arn #=> String
    #   resp.rules[0].actions[0].bounce_action.topic_arn #=> String
    #   resp.rules[0].actions[0].bounce_action.smtp_reply_code #=> String
    #   resp.rules[0].actions[0].bounce_action.status_code #=> String
    #   resp.rules[0].actions[0].bounce_action.message #=> String
    #   resp.rules[0].actions[0].bounce_action.sender #=> String
    #   resp.rules[0].actions[0].workmail_action.topic_arn #=> String
    #   resp.rules[0].actions[0].workmail_action.organization_arn #=> String
    #   resp.rules[0].actions[0].lambda_action.topic_arn #=> String
    #   resp.rules[0].actions[0].lambda_action.function_arn #=> String
    #   resp.rules[0].actions[0].lambda_action.invocation_type #=> String, one of "Event", "RequestResponse"
    #   resp.rules[0].actions[0].stop_action.scope #=> String, one of "RuleSet"
    #   resp.rules[0].actions[0].stop_action.topic_arn #=> String
    #   resp.rules[0].actions[0].add_header_action.header_name #=> String
    #   resp.rules[0].actions[0].add_header_action.header_value #=> String
    #   resp.rules[0].actions[0].sns_action.topic_arn #=> String
    #   resp.rules[0].actions[0].sns_action.encoding #=> String, one of "UTF-8", "Base64"
    #   resp.rules[0].scan_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeActiveReceiptRuleSet AWS API Documentation
    #
    # @overload describe_active_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def describe_active_receipt_rule_set(params = {}, options = {})
      req = build_request(:describe_active_receipt_rule_set, params)
      req.send_request(options)
    end

    # Returns the details of the specified configuration set. For
    # information about using configuration sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to describe.
    #
    # @option params [Array<String>] :configuration_set_attribute_names
    #   A list of configuration set attributes to return.
    #
    # @return [Types::DescribeConfigurationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationSetResponse#configuration_set #configuration_set} => Types::ConfigurationSet
    #   * {Types::DescribeConfigurationSetResponse#event_destinations #event_destinations} => Array&lt;Types::EventDestination&gt;
    #   * {Types::DescribeConfigurationSetResponse#tracking_options #tracking_options} => Types::TrackingOptions
    #   * {Types::DescribeConfigurationSetResponse#reputation_options #reputation_options} => Types::ReputationOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     configuration_set_attribute_names: ["eventDestinations"], # accepts eventDestinations, trackingOptions, reputationOptions
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set.name #=> String
    #   resp.event_destinations #=> Array
    #   resp.event_destinations[0].name #=> String
    #   resp.event_destinations[0].enabled #=> Boolean
    #   resp.event_destinations[0].matching_event_types #=> Array
    #   resp.event_destinations[0].matching_event_types[0] #=> String, one of "send", "reject", "bounce", "complaint", "delivery", "open", "click", "renderingFailure"
    #   resp.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations #=> Array
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_name #=> String
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_value_source #=> String, one of "messageTag", "emailHeader", "linkTag"
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].default_dimension_value #=> String
    #   resp.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.tracking_options.custom_redirect_domain #=> String
    #   resp.reputation_options.sending_enabled #=> Boolean
    #   resp.reputation_options.reputation_metrics_enabled #=> Boolean
    #   resp.reputation_options.last_fresh_start #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeConfigurationSet AWS API Documentation
    #
    # @overload describe_configuration_set(params = {})
    # @param [Hash] params ({})
    def describe_configuration_set(params = {}, options = {})
      req = build_request(:describe_configuration_set, params)
      req.send_request(options)
    end

    # Returns the details of the specified receipt rule.
    #
    # For information about setting up receipt rules, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set that the receipt rule belongs to.
    #
    # @option params [required, String] :rule_name
    #   The name of the receipt rule.
    #
    # @return [Types::DescribeReceiptRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReceiptRuleResponse#rule #rule} => Types::ReceiptRule
    #
    #
    # @example Example: DescribeReceiptRule
    #
    #   # The following example returns the details of a receipt rule:
    #
    #   resp = client.describe_receipt_rule({
    #     rule_name: "MyRule", 
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rule: {
    #       actions: [
    #         {
    #           s3_action: {
    #             bucket_name: "MyBucket", 
    #             object_key_prefix: "email", 
    #           }, 
    #         }, 
    #       ], 
    #       enabled: true, 
    #       name: "MyRule", 
    #       scan_enabled: true, 
    #       tls_policy: "Optional", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_receipt_rule({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_name: "ReceiptRuleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.name #=> String
    #   resp.rule.enabled #=> Boolean
    #   resp.rule.tls_policy #=> String, one of "Require", "Optional"
    #   resp.rule.recipients #=> Array
    #   resp.rule.recipients[0] #=> String
    #   resp.rule.actions #=> Array
    #   resp.rule.actions[0].s3_action.topic_arn #=> String
    #   resp.rule.actions[0].s3_action.bucket_name #=> String
    #   resp.rule.actions[0].s3_action.object_key_prefix #=> String
    #   resp.rule.actions[0].s3_action.kms_key_arn #=> String
    #   resp.rule.actions[0].bounce_action.topic_arn #=> String
    #   resp.rule.actions[0].bounce_action.smtp_reply_code #=> String
    #   resp.rule.actions[0].bounce_action.status_code #=> String
    #   resp.rule.actions[0].bounce_action.message #=> String
    #   resp.rule.actions[0].bounce_action.sender #=> String
    #   resp.rule.actions[0].workmail_action.topic_arn #=> String
    #   resp.rule.actions[0].workmail_action.organization_arn #=> String
    #   resp.rule.actions[0].lambda_action.topic_arn #=> String
    #   resp.rule.actions[0].lambda_action.function_arn #=> String
    #   resp.rule.actions[0].lambda_action.invocation_type #=> String, one of "Event", "RequestResponse"
    #   resp.rule.actions[0].stop_action.scope #=> String, one of "RuleSet"
    #   resp.rule.actions[0].stop_action.topic_arn #=> String
    #   resp.rule.actions[0].add_header_action.header_name #=> String
    #   resp.rule.actions[0].add_header_action.header_value #=> String
    #   resp.rule.actions[0].sns_action.topic_arn #=> String
    #   resp.rule.actions[0].sns_action.encoding #=> String, one of "UTF-8", "Base64"
    #   resp.rule.scan_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeReceiptRule AWS API Documentation
    #
    # @overload describe_receipt_rule(params = {})
    # @param [Hash] params ({})
    def describe_receipt_rule(params = {}, options = {})
      req = build_request(:describe_receipt_rule, params)
      req.send_request(options)
    end

    # Returns the details of the specified receipt rule set.
    #
    # For information about managing receipt rule sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set to describe.
    #
    # @return [Types::DescribeReceiptRuleSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReceiptRuleSetResponse#metadata #metadata} => Types::ReceiptRuleSetMetadata
    #   * {Types::DescribeReceiptRuleSetResponse#rules #rules} => Array&lt;Types::ReceiptRule&gt;
    #
    #
    # @example Example: DescribeReceiptRuleSet
    #
    #   # The following example returns the metadata and receipt rules of a receipt rule set:
    #
    #   resp = client.describe_receipt_rule_set({
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     metadata: {
    #       created_timestamp: Time.parse("2016-07-15T16:25:59.607Z"), 
    #       name: "MyRuleSet", 
    #     }, 
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             s3_action: {
    #               bucket_name: "MyBucket", 
    #               object_key_prefix: "email", 
    #             }, 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         name: "MyRule", 
    #         scan_enabled: true, 
    #         tls_policy: "Optional", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_receipt_rule_set({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.name #=> String
    #   resp.metadata.created_timestamp #=> Time
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].enabled #=> Boolean
    #   resp.rules[0].tls_policy #=> String, one of "Require", "Optional"
    #   resp.rules[0].recipients #=> Array
    #   resp.rules[0].recipients[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].s3_action.topic_arn #=> String
    #   resp.rules[0].actions[0].s3_action.bucket_name #=> String
    #   resp.rules[0].actions[0].s3_action.object_key_prefix #=> String
    #   resp.rules[0].actions[0].s3_action.kms_key_arn #=> String
    #   resp.rules[0].actions[0].bounce_action.topic_arn #=> String
    #   resp.rules[0].actions[0].bounce_action.smtp_reply_code #=> String
    #   resp.rules[0].actions[0].bounce_action.status_code #=> String
    #   resp.rules[0].actions[0].bounce_action.message #=> String
    #   resp.rules[0].actions[0].bounce_action.sender #=> String
    #   resp.rules[0].actions[0].workmail_action.topic_arn #=> String
    #   resp.rules[0].actions[0].workmail_action.organization_arn #=> String
    #   resp.rules[0].actions[0].lambda_action.topic_arn #=> String
    #   resp.rules[0].actions[0].lambda_action.function_arn #=> String
    #   resp.rules[0].actions[0].lambda_action.invocation_type #=> String, one of "Event", "RequestResponse"
    #   resp.rules[0].actions[0].stop_action.scope #=> String, one of "RuleSet"
    #   resp.rules[0].actions[0].stop_action.topic_arn #=> String
    #   resp.rules[0].actions[0].add_header_action.header_name #=> String
    #   resp.rules[0].actions[0].add_header_action.header_value #=> String
    #   resp.rules[0].actions[0].sns_action.topic_arn #=> String
    #   resp.rules[0].actions[0].sns_action.encoding #=> String, one of "UTF-8", "Base64"
    #   resp.rules[0].scan_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeReceiptRuleSet AWS API Documentation
    #
    # @overload describe_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def describe_receipt_rule_set(params = {}, options = {})
      req = build_request(:describe_receipt_rule_set, params)
      req.send_request(options)
    end

    # Returns the email sending status of the Amazon SES account for the
    # current region.
    #
    # You can execute this operation no more than once per second.
    #
    # @return [Types::GetAccountSendingEnabledResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSendingEnabledResponse#enabled #enabled} => Boolean
    #
    #
    # @example Example: GetAccountSendingEnabled
    #
    #   # The following example returns if sending status for an account is enabled. (true / false):
    #
    #   resp = client.get_account_sending_enabled({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     enabled: true, 
    #   }
    #
    # @example Response structure
    #
    #   resp.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetAccountSendingEnabled AWS API Documentation
    #
    # @overload get_account_sending_enabled(params = {})
    # @param [Hash] params ({})
    def get_account_sending_enabled(params = {}, options = {})
      req = build_request(:get_account_sending_enabled, params)
      req.send_request(options)
    end

    # Returns the custom email verification template for the template name
    # you specify.
    #
    # For more information about custom verification email templates, see
    # [Using Custom Verification Email Templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template that you want to
    #   retrieve.
    #
    # @return [Types::GetCustomVerificationEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomVerificationEmailTemplateResponse#template_name #template_name} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#from_email_address #from_email_address} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#template_subject #template_subject} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#template_content #template_content} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#success_redirection_url #success_redirection_url} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#failure_redirection_url #failure_redirection_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_verification_email_template({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_name #=> String
    #   resp.from_email_address #=> String
    #   resp.template_subject #=> String
    #   resp.template_content #=> String
    #   resp.success_redirection_url #=> String
    #   resp.failure_redirection_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload get_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def get_custom_verification_email_template(params = {}, options = {})
      req = build_request(:get_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Returns the current status of Easy DKIM signing for an entity. For
    # domain name identities, this operation also returns the DKIM tokens
    # that are required for Easy DKIM signing, and whether Amazon SES has
    # successfully verified that these tokens have been published.
    #
    # This operation takes a list of identities as input and returns the
    # following information for each:
    #
    # * Whether Easy DKIM signing is enabled or disabled.
    #
    # * A set of DKIM tokens that represent the identity. If the identity is
    #   an email address, the tokens represent the domain of that address.
    #
    # * Whether Amazon SES has successfully verified the DKIM tokens
    #   published in the domain's DNS. This information is only returned
    #   for domain name identities, not for email addresses.
    #
    # This operation is throttled at one request per second and can only get
    # DKIM attributes for up to 100 identities at a time.
    #
    # For more information about creating DNS records using DKIM tokens, go
    # to the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html
    #
    # @option params [required, Array<String>] :identities
    #   A list of one or more verified identities - email addresses, domains,
    #   or both.
    #
    # @return [Types::GetIdentityDkimAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityDkimAttributesResponse#dkim_attributes #dkim_attributes} => Hash&lt;String,Types::IdentityDkimAttributes&gt;
    #
    #
    # @example Example: GetIdentityDkimAttributes
    #
    #   # The following example retrieves the Amazon SES Easy DKIM attributes for a list of identities:
    #
    #   resp = client.get_identity_dkim_attributes({
    #     identities: [
    #       "example.com", 
    #       "user@example.com", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dkim_attributes: {
    #       "example.com" => {
    #         dkim_enabled: true, 
    #         dkim_tokens: [
    #           "EXAMPLEjcs5xoyqytjsotsijas7236gr", 
    #           "EXAMPLEjr76cvoc6mysspnioorxsn6ep", 
    #           "EXAMPLEkbmkqkhlm2lyz77ppkulerm4k", 
    #         ], 
    #         dkim_verification_status: "Success", 
    #       }, 
    #       "user@example.com" => {
    #         dkim_enabled: false, 
    #         dkim_verification_status: "NotStarted", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_dkim_attributes({
    #     identities: ["Identity"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dkim_attributes #=> Hash
    #   resp.dkim_attributes["Identity"].dkim_enabled #=> Boolean
    #   resp.dkim_attributes["Identity"].dkim_verification_status #=> String, one of "Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"
    #   resp.dkim_attributes["Identity"].dkim_tokens #=> Array
    #   resp.dkim_attributes["Identity"].dkim_tokens[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityDkimAttributes AWS API Documentation
    #
    # @overload get_identity_dkim_attributes(params = {})
    # @param [Hash] params ({})
    def get_identity_dkim_attributes(params = {}, options = {})
      req = build_request(:get_identity_dkim_attributes, params)
      req.send_request(options)
    end

    # Returns the custom MAIL FROM attributes for a list of identities
    # (email addresses : domains).
    #
    # This operation is throttled at one request per second and can only get
    # custom MAIL FROM attributes for up to 100 identities at a time.
    #
    # @option params [required, Array<String>] :identities
    #   A list of one or more identities.
    #
    # @return [Types::GetIdentityMailFromDomainAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityMailFromDomainAttributesResponse#mail_from_domain_attributes #mail_from_domain_attributes} => Hash&lt;String,Types::IdentityMailFromDomainAttributes&gt;
    #
    #
    # @example Example: GetIdentityMailFromDomainAttributes
    #
    #   # The following example returns the custom MAIL FROM attributes for an identity:
    #
    #   resp = client.get_identity_mail_from_domain_attributes({
    #     identities: [
    #       "example.com", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     mail_from_domain_attributes: {
    #       "example.com" => {
    #         behavior_on_mx_failure: "UseDefaultValue", 
    #         mail_from_domain: "bounces.example.com", 
    #         mail_from_domain_status: "Success", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_mail_from_domain_attributes({
    #     identities: ["Identity"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mail_from_domain_attributes #=> Hash
    #   resp.mail_from_domain_attributes["Identity"].mail_from_domain #=> String
    #   resp.mail_from_domain_attributes["Identity"].mail_from_domain_status #=> String, one of "Pending", "Success", "Failed", "TemporaryFailure"
    #   resp.mail_from_domain_attributes["Identity"].behavior_on_mx_failure #=> String, one of "UseDefaultValue", "RejectMessage"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityMailFromDomainAttributes AWS API Documentation
    #
    # @overload get_identity_mail_from_domain_attributes(params = {})
    # @param [Hash] params ({})
    def get_identity_mail_from_domain_attributes(params = {}, options = {})
      req = build_request(:get_identity_mail_from_domain_attributes, params)
      req.send_request(options)
    end

    # Given a list of verified identities (email addresses and/or domains),
    # returns a structure describing identity notification attributes.
    #
    # This operation is throttled at one request per second and can only get
    # notification attributes for up to 100 identities at a time.
    #
    # For more information about using notifications with Amazon SES, see
    # the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html
    #
    # @option params [required, Array<String>] :identities
    #   A list of one or more identities. You can specify an identity by using
    #   its name or by using its Amazon Resource Name (ARN). Examples:
    #   `user@example.com`, `example.com`,
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
    #
    # @return [Types::GetIdentityNotificationAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityNotificationAttributesResponse#notification_attributes #notification_attributes} => Hash&lt;String,Types::IdentityNotificationAttributes&gt;
    #
    #
    # @example Example: GetIdentityNotificationAttributes
    #
    #   # The following example returns the notification attributes for an identity:
    #
    #   resp = client.get_identity_notification_attributes({
    #     identities: [
    #       "example.com", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notification_attributes: {
    #       "example.com" => {
    #         bounce_topic: "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic", 
    #         complaint_topic: "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic", 
    #         delivery_topic: "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic", 
    #         forwarding_enabled: true, 
    #         headers_in_bounce_notifications_enabled: false, 
    #         headers_in_complaint_notifications_enabled: false, 
    #         headers_in_delivery_notifications_enabled: false, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_notification_attributes({
    #     identities: ["Identity"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_attributes #=> Hash
    #   resp.notification_attributes["Identity"].bounce_topic #=> String
    #   resp.notification_attributes["Identity"].complaint_topic #=> String
    #   resp.notification_attributes["Identity"].delivery_topic #=> String
    #   resp.notification_attributes["Identity"].forwarding_enabled #=> Boolean
    #   resp.notification_attributes["Identity"].headers_in_bounce_notifications_enabled #=> Boolean
    #   resp.notification_attributes["Identity"].headers_in_complaint_notifications_enabled #=> Boolean
    #   resp.notification_attributes["Identity"].headers_in_delivery_notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityNotificationAttributes AWS API Documentation
    #
    # @overload get_identity_notification_attributes(params = {})
    # @param [Hash] params ({})
    def get_identity_notification_attributes(params = {}, options = {})
      req = build_request(:get_identity_notification_attributes, params)
      req.send_request(options)
    end

    # Returns the requested sending authorization policies for the given
    # identity (an email address or a domain). The policies are returned as
    # a map of policy names to policy contents. You can retrieve a maximum
    # of 20 policies at a time.
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :identity
    #   The identity for which the policies will be retrieved. You can specify
    #   an identity by using its name or by using its Amazon Resource Name
    #   (ARN). Examples: `user@example.com`, `example.com`,
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
    #
    #   To successfully call this API, you must own the identity.
    #
    # @option params [required, Array<String>] :policy_names
    #   A list of the names of policies to be retrieved. You can retrieve a
    #   maximum of 20 policies at a time. If you do not know the names of the
    #   policies that are attached to the identity, you can use
    #   `ListIdentityPolicies`.
    #
    # @return [Types::GetIdentityPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityPoliciesResponse#policies #policies} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: GetIdentityPolicies
    #
    #   # The following example returns a sending authorization policy for an identity:
    #
    #   resp = client.get_identity_policies({
    #     identity: "example.com", 
    #     policy_names: [
    #       "MyPolicy", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: {
    #       "MyPolicy" => "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"stmt1469123904194\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":[\"ses:SendEmail\",\"ses:SendRawEmail\"],\"Resource\":\"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com\"}]}", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_policies({
    #     identity: "Identity", # required
    #     policy_names: ["PolicyName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Hash
    #   resp.policies["PolicyName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityPolicies AWS API Documentation
    #
    # @overload get_identity_policies(params = {})
    # @param [Hash] params ({})
    def get_identity_policies(params = {}, options = {})
      req = build_request(:get_identity_policies, params)
      req.send_request(options)
    end

    # Given a list of identities (email addresses and/or domains), returns
    # the verification status and (for domain identities) the verification
    # token for each identity.
    #
    # The verification status of an email address is "Pending" until the
    # email address owner clicks the link within the verification email that
    # Amazon SES sent to that address. If the email address owner clicks the
    # link within 24 hours, the verification status of the email address
    # changes to "Success". If the link is not clicked within 24 hours,
    # the verification status changes to "Failed." In that case, if you
    # still want to verify the email address, you must restart the
    # verification process from the beginning.
    #
    # For domain identities, the domain's verification status is
    # "Pending" as Amazon SES searches for the required TXT record in the
    # DNS settings of the domain. When Amazon SES detects the record, the
    # domain's verification status changes to "Success". If Amazon SES is
    # unable to detect the record within 72 hours, the domain's
    # verification status changes to "Failed." In that case, if you still
    # want to verify the domain, you must restart the verification process
    # from the beginning.
    #
    # This operation is throttled at one request per second and can only get
    # verification attributes for up to 100 identities at a time.
    #
    # @option params [required, Array<String>] :identities
    #   A list of identities.
    #
    # @return [Types::GetIdentityVerificationAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityVerificationAttributesResponse#verification_attributes #verification_attributes} => Hash&lt;String,Types::IdentityVerificationAttributes&gt;
    #
    #
    # @example Example: GetIdentityVerificationAttributes
    #
    #   # The following example returns the verification status and the verification token for a domain identity:
    #
    #   resp = client.get_identity_verification_attributes({
    #     identities: [
    #       "example.com", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     verification_attributes: {
    #       "example.com" => {
    #         verification_status: "Success", 
    #         verification_token: "EXAMPLE3VYb9EDI2nTOQRi/Tf6MI/6bD6THIGiP1MVY=", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_verification_attributes({
    #     identities: ["Identity"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.verification_attributes #=> Hash
    #   resp.verification_attributes["Identity"].verification_status #=> String, one of "Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"
    #   resp.verification_attributes["Identity"].verification_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityVerificationAttributes AWS API Documentation
    #
    # @overload get_identity_verification_attributes(params = {})
    # @param [Hash] params ({})
    def get_identity_verification_attributes(params = {}, options = {})
      req = build_request(:get_identity_verification_attributes, params)
      req.send_request(options)
    end

    # Provides the sending limits for the Amazon SES account.
    #
    # You can execute this operation no more than once per second.
    #
    # @return [Types::GetSendQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSendQuotaResponse#max_24_hour_send #max_24_hour_send} => Float
    #   * {Types::GetSendQuotaResponse#max_send_rate #max_send_rate} => Float
    #   * {Types::GetSendQuotaResponse#sent_last_24_hours #sent_last_24_hours} => Float
    #
    #
    # @example Example: GetSendQuota
    #
    #   # The following example returns the Amazon SES sending limits for an AWS account:
    #
    #   resp = client.get_send_quota({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     max_24_hour_send: 200, 
    #     max_send_rate: 1, 
    #     sent_last_24_hours: 1, 
    #   }
    #
    # @example Response structure
    #
    #   resp.max_24_hour_send #=> Float
    #   resp.max_send_rate #=> Float
    #   resp.sent_last_24_hours #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetSendQuota AWS API Documentation
    #
    # @overload get_send_quota(params = {})
    # @param [Hash] params ({})
    def get_send_quota(params = {}, options = {})
      req = build_request(:get_send_quota, params)
      req.send_request(options)
    end

    # Provides sending statistics for the current AWS Region. The result is
    # a list of data points, representing the last two weeks of sending
    # activity. Each data point in the list contains statistics for a
    # 15-minute period of time.
    #
    # You can execute this operation no more than once per second.
    #
    # @return [Types::GetSendStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSendStatisticsResponse#send_data_points #send_data_points} => Array&lt;Types::SendDataPoint&gt;
    #
    #
    # @example Example: GetSendStatistics
    #
    #   # The following example returns Amazon SES sending statistics:
    #
    #   resp = client.get_send_statistics({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     send_data_points: [
    #       {
    #         bounces: 0, 
    #         complaints: 0, 
    #         delivery_attempts: 5, 
    #         rejects: 0, 
    #         timestamp: Time.parse("2016-07-13T22:43:00Z"), 
    #       }, 
    #       {
    #         bounces: 0, 
    #         complaints: 0, 
    #         delivery_attempts: 3, 
    #         rejects: 0, 
    #         timestamp: Time.parse("2016-07-13T23:13:00Z"), 
    #       }, 
    #       {
    #         bounces: 0, 
    #         complaints: 0, 
    #         delivery_attempts: 1, 
    #         rejects: 0, 
    #         timestamp: Time.parse("2016-07-13T21:13:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.send_data_points #=> Array
    #   resp.send_data_points[0].timestamp #=> Time
    #   resp.send_data_points[0].delivery_attempts #=> Integer
    #   resp.send_data_points[0].bounces #=> Integer
    #   resp.send_data_points[0].complaints #=> Integer
    #   resp.send_data_points[0].rejects #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetSendStatistics AWS API Documentation
    #
    # @overload get_send_statistics(params = {})
    # @param [Hash] params ({})
    def get_send_statistics(params = {}, options = {})
      req = build_request(:get_send_statistics, params)
      req.send_request(options)
    end

    # Displays the template object (which includes the Subject line, HTML
    # part and text part) for the template you specify.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :template_name
    #   The name of the template you want to retrieve.
    #
    # @return [Types::GetTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateResponse#template #template} => Types::Template
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template.template_name #=> String
    #   resp.template.subject_part #=> String
    #   resp.template.text_part #=> String
    #   resp.template.html_part #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Provides a list of the configuration sets associated with your Amazon
    # SES account in the current AWS Region. For information about using
    # configuration sets, see [Monitoring Your Amazon SES Sending
    # Activity][1] in the *Amazon SES Developer Guide.*
    #
    # You can execute this operation no more than once per second. This
    # operation will return up to 1,000 configuration sets each time it is
    # run. If your Amazon SES account has more than 1,000 configuration
    # sets, this operation will also return a NextToken element. You can
    # then execute the `ListConfigurationSets` operation again, passing the
    # `NextToken` parameter and the value of the NextToken element to
    # retrieve additional results.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListConfigurationSets` to
    #   indicate the position of the configuration set in the configuration
    #   set list.
    #
    # @option params [Integer] :max_items
    #   The number of configuration sets to return.
    #
    # @return [Types::ListConfigurationSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationSetsResponse#configuration_sets #configuration_sets} => Array&lt;Types::ConfigurationSet&gt;
    #   * {Types::ListConfigurationSetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_sets({
    #     next_token: "NextToken",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_sets #=> Array
    #   resp.configuration_sets[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListConfigurationSets AWS API Documentation
    #
    # @overload list_configuration_sets(params = {})
    # @param [Hash] params ({})
    def list_configuration_sets(params = {}, options = {})
      req = build_request(:list_configuration_sets, params)
      req.send_request(options)
    end

    # Lists the existing custom verification email templates for your
    # account in the current AWS Region.
    #
    # For more information about custom verification email templates, see
    # [Using Custom Verification Email Templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html
    #
    # @option params [String] :next_token
    #   An array the contains the name and creation time stamp for each
    #   template in your Amazon SES account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom verification email templates to return.
    #   This value must be at least 1 and less than or equal to 50. If you do
    #   not specify a value, or if you specify a value less than 1 or greater
    #   than 50, the operation will return up to 50 results.
    #
    # @return [Types::ListCustomVerificationEmailTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomVerificationEmailTemplatesResponse#custom_verification_email_templates #custom_verification_email_templates} => Array&lt;Types::CustomVerificationEmailTemplate&gt;
    #   * {Types::ListCustomVerificationEmailTemplatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_verification_email_templates({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_verification_email_templates #=> Array
    #   resp.custom_verification_email_templates[0].template_name #=> String
    #   resp.custom_verification_email_templates[0].from_email_address #=> String
    #   resp.custom_verification_email_templates[0].template_subject #=> String
    #   resp.custom_verification_email_templates[0].success_redirection_url #=> String
    #   resp.custom_verification_email_templates[0].failure_redirection_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListCustomVerificationEmailTemplates AWS API Documentation
    #
    # @overload list_custom_verification_email_templates(params = {})
    # @param [Hash] params ({})
    def list_custom_verification_email_templates(params = {}, options = {})
      req = build_request(:list_custom_verification_email_templates, params)
      req.send_request(options)
    end

    # Returns a list containing all of the identities (email addresses and
    # domains) for your AWS account in the current AWS Region, regardless of
    # verification status.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [String] :identity_type
    #   The type of the identities to list. Possible values are
    #   "EmailAddress" and "Domain". If this parameter is omitted, then
    #   all identities will be listed.
    #
    # @option params [String] :next_token
    #   The token to use for pagination.
    #
    # @option params [Integer] :max_items
    #   The maximum number of identities per page. Possible values are 1-1000
    #   inclusive.
    #
    # @return [Types::ListIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentitiesResponse#identities #identities} => Array&lt;String&gt;
    #   * {Types::ListIdentitiesResponse#next_token #next_token} => String
    #
    #
    # @example Example: ListIdentities
    #
    #   # The following example lists the email address identities that have been submitted for verification with Amazon SES:
    #
    #   resp = client.list_identities({
    #     identity_type: "EmailAddress", 
    #     max_items: 123, 
    #     next_token: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     identities: [
    #       "user@example.com", 
    #     ], 
    #     next_token: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identities({
    #     identity_type: "EmailAddress", # accepts EmailAddress, Domain
    #     next_token: "NextToken",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.identities #=> Array
    #   resp.identities[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListIdentities AWS API Documentation
    #
    # @overload list_identities(params = {})
    # @param [Hash] params ({})
    def list_identities(params = {}, options = {})
      req = build_request(:list_identities, params)
      req.send_request(options)
    end

    # Returns a list of sending authorization policies that are attached to
    # the given identity (an email address or a domain). This API returns
    # only a list. If you want the actual policy content, you can use
    # `GetIdentityPolicies`.
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :identity
    #   The identity that is associated with the policy for which the policies
    #   will be listed. You can specify an identity by using its name or by
    #   using its Amazon Resource Name (ARN). Examples: `user@example.com`,
    #   `example.com`,
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
    #
    #   To successfully call this API, you must own the identity.
    #
    # @return [Types::ListIdentityPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityPoliciesResponse#policy_names #policy_names} => Array&lt;String&gt;
    #
    #
    # @example Example: ListIdentityPolicies
    #
    #   # The following example returns a list of sending authorization policies that are attached to an identity:
    #
    #   resp = client.list_identity_policies({
    #     identity: "example.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_names: [
    #       "MyPolicy", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_policies({
    #     identity: "Identity", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_names #=> Array
    #   resp.policy_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListIdentityPolicies AWS API Documentation
    #
    # @overload list_identity_policies(params = {})
    # @param [Hash] params ({})
    def list_identity_policies(params = {}, options = {})
      req = build_request(:list_identity_policies, params)
      req.send_request(options)
    end

    # Lists the IP address filters associated with your AWS account in the
    # current AWS Region.
    #
    # For information about managing IP address filters, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html
    #
    # @return [Types::ListReceiptFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReceiptFiltersResponse#filters #filters} => Array&lt;Types::ReceiptFilter&gt;
    #
    #
    # @example Example: ListReceiptFilters
    #
    #   # The following example lists the IP address filters that are associated with an AWS account:
    #
    #   resp = client.list_receipt_filters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     filters: [
    #       {
    #         ip_filter: {
    #           cidr: "1.2.3.4/24", 
    #           policy: "Block", 
    #         }, 
    #         name: "MyFilter", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.filters #=> Array
    #   resp.filters[0].name #=> String
    #   resp.filters[0].ip_filter.policy #=> String, one of "Block", "Allow"
    #   resp.filters[0].ip_filter.cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListReceiptFilters AWS API Documentation
    #
    # @overload list_receipt_filters(params = {})
    # @param [Hash] params ({})
    def list_receipt_filters(params = {}, options = {})
      req = build_request(:list_receipt_filters, params)
      req.send_request(options)
    end

    # Lists the receipt rule sets that exist under your AWS account in the
    # current AWS Region. If there are additional receipt rule sets to be
    # retrieved, you will receive a `NextToken` that you can provide to the
    # next call to `ListReceiptRuleSets` to retrieve the additional entries.
    #
    # For information about managing receipt rule sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListReceiptRuleSets` to
    #   indicate the position in the receipt rule set list.
    #
    # @return [Types::ListReceiptRuleSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReceiptRuleSetsResponse#rule_sets #rule_sets} => Array&lt;Types::ReceiptRuleSetMetadata&gt;
    #   * {Types::ListReceiptRuleSetsResponse#next_token #next_token} => String
    #
    #
    # @example Example: ListReceiptRuleSets
    #
    #   # The following example lists the receipt rule sets that exist under an AWS account:
    #
    #   resp = client.list_receipt_rule_sets({
    #     next_token: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     rule_sets: [
    #       {
    #         created_timestamp: Time.parse("2016-07-15T16:25:59.607Z"), 
    #         name: "MyRuleSet", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_receipt_rule_sets({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_sets #=> Array
    #   resp.rule_sets[0].name #=> String
    #   resp.rule_sets[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListReceiptRuleSets AWS API Documentation
    #
    # @overload list_receipt_rule_sets(params = {})
    # @param [Hash] params ({})
    def list_receipt_rule_sets(params = {}, options = {})
      req = build_request(:list_receipt_rule_sets, params)
      req.send_request(options)
    end

    # Lists the email templates present in your Amazon SES account in the
    # current AWS Region.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListTemplates` to indicate
    #   the position in the list of email templates.
    #
    # @option params [Integer] :max_items
    #   The maximum number of templates to return. This value must be at least
    #   1 and less than or equal to 10. If you do not specify a value, or if
    #   you specify a value less than 1 or greater than 10, the operation will
    #   return up to 10 results.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#templates_metadata #templates_metadata} => Array&lt;Types::TemplateMetadata&gt;
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     next_token: "NextToken",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.templates_metadata #=> Array
    #   resp.templates_metadata[0].name #=> String
    #   resp.templates_metadata[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Deprecated. Use the `ListIdentities` operation to list the email
    # addresses and domains associated with your account.
    #
    # @return [Types::ListVerifiedEmailAddressesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVerifiedEmailAddressesResponse#verified_email_addresses #verified_email_addresses} => Array&lt;String&gt;
    #
    #
    # @example Example: ListVerifiedEmailAddresses
    #
    #   # The following example lists all email addresses that have been submitted for verification with Amazon SES:
    #
    #   resp = client.list_verified_email_addresses({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     verified_email_addresses: [
    #       "user1@example.com", 
    #       "user2@example.com", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.verified_email_addresses #=> Array
    #   resp.verified_email_addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListVerifiedEmailAddresses AWS API Documentation
    #
    # @overload list_verified_email_addresses(params = {})
    # @param [Hash] params ({})
    def list_verified_email_addresses(params = {}, options = {})
      req = build_request(:list_verified_email_addresses, params)
      req.send_request(options)
    end

    # Adds or updates a sending authorization policy for the specified
    # identity (an email address or a domain).
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :identity
    #   The identity that the policy will apply to. You can specify an
    #   identity by using its name or by using its Amazon Resource Name (ARN).
    #   Examples: `user@example.com`, `example.com`,
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
    #
    #   To successfully call this API, you must own the identity.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #
    # @option params [required, String] :policy
    #   The text of the policy in JSON format. The policy cannot exceed 4 KB.
    #
    #   For information about the syntax of sending authorization policies,
    #   see the [Amazon SES Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: PutIdentityPolicy
    #
    #   # The following example adds a sending authorization policy to an identity:
    #
    #   resp = client.put_identity_policy({
    #     identity: "example.com", 
    #     policy: "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"stmt1469123904194\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":[\"ses:SendEmail\",\"ses:SendRawEmail\"],\"Resource\":\"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com\"}]}", 
    #     policy_name: "MyPolicy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_identity_policy({
    #     identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/PutIdentityPolicy AWS API Documentation
    #
    # @overload put_identity_policy(params = {})
    # @param [Hash] params ({})
    def put_identity_policy(params = {}, options = {})
      req = build_request(:put_identity_policy, params)
      req.send_request(options)
    end

    # Reorders the receipt rules within a receipt rule set.
    #
    # <note markdown="1"> All of the rules in the rule set must be represented in this request.
    # That is, this API will return an error if the reorder request doesn't
    # explicitly position all of the rules.
    #
    #  </note>
    #
    # For information about managing receipt rule sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set to reorder.
    #
    # @option params [required, Array<String>] :rule_names
    #   A list of the specified receipt rule set's receipt rules in the order
    #   that you want to put them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: ReorderReceiptRuleSet
    #
    #   # The following example reorders the receipt rules within a receipt rule set:
    #
    #   resp = client.reorder_receipt_rule_set({
    #     rule_names: [
    #       "MyRule", 
    #       "MyOtherRule", 
    #     ], 
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reorder_receipt_rule_set({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_names: ["ReceiptRuleName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ReorderReceiptRuleSet AWS API Documentation
    #
    # @overload reorder_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def reorder_receipt_rule_set(params = {}, options = {})
      req = build_request(:reorder_receipt_rule_set, params)
      req.send_request(options)
    end

    # Generates and sends a bounce message to the sender of an email you
    # received through Amazon SES. You can only use this API on an email up
    # to 24 hours after you receive it.
    #
    # <note markdown="1"> You cannot use this API to send generic bounces for mail that was not
    # received by Amazon SES.
    #
    #  </note>
    #
    # For information about receiving email through Amazon SES, see the
    # [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html
    #
    # @option params [required, String] :original_message_id
    #   The message ID of the message to be bounced.
    #
    # @option params [required, String] :bounce_sender
    #   The address to use in the "From" header of the bounce message. This
    #   must be an identity that you have verified with Amazon SES.
    #
    # @option params [String] :explanation
    #   Human-readable text for the bounce message to explain the failure. If
    #   not specified, the text will be auto-generated based on the bounced
    #   recipient information.
    #
    # @option params [Types::MessageDsn] :message_dsn
    #   Message-related DSN fields. If not specified, Amazon SES will choose
    #   the values.
    #
    # @option params [required, Array<Types::BouncedRecipientInfo>] :bounced_recipient_info_list
    #   A list of recipients of the bounced message, including the information
    #   required to create the Delivery Status Notifications (DSNs) for the
    #   recipients. You must specify at least one `BouncedRecipientInfo` in
    #   the list.
    #
    # @option params [String] :bounce_sender_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the address in the "From" header of
    #   the bounce. For more information about sending authorization, see the
    #   [Amazon SES Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @return [Types::SendBounceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendBounceResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bounce({
    #     original_message_id: "MessageId", # required
    #     bounce_sender: "Address", # required
    #     explanation: "Explanation",
    #     message_dsn: {
    #       reporting_mta: "ReportingMta", # required
    #       arrival_date: Time.now,
    #       extension_fields: [
    #         {
    #           name: "ExtensionFieldName", # required
    #           value: "ExtensionFieldValue", # required
    #         },
    #       ],
    #     },
    #     bounced_recipient_info_list: [ # required
    #       {
    #         recipient: "Address", # required
    #         recipient_arn: "AmazonResourceName",
    #         bounce_type: "DoesNotExist", # accepts DoesNotExist, MessageTooLarge, ExceededQuota, ContentRejected, Undefined, TemporaryFailure
    #         recipient_dsn_fields: {
    #           final_recipient: "Address",
    #           action: "failed", # required, accepts failed, delayed, delivered, relayed, expanded
    #           remote_mta: "RemoteMta",
    #           status: "DsnStatus", # required
    #           diagnostic_code: "DiagnosticCode",
    #           last_attempt_date: Time.now,
    #           extension_fields: [
    #             {
    #               name: "ExtensionFieldName", # required
    #               value: "ExtensionFieldValue", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     bounce_sender_arn: "AmazonResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendBounce AWS API Documentation
    #
    # @overload send_bounce(params = {})
    # @param [Hash] params ({})
    def send_bounce(params = {}, options = {})
      req = build_request(:send_bounce, params)
      req.send_request(options)
    end

    # Composes an email message to multiple destinations. The message body
    # is created using an email template.
    #
    # In order to send email using the `SendBulkTemplatedEmail` operation,
    # your call to the API must meet the following requirements:
    #
    # * The call must refer to an existing email template. You can create
    #   email templates using the CreateTemplate operation.
    #
    # * The message must be sent from a verified email address or domain.
    #
    # * If your account is still in the Amazon SES sandbox, you may only
    #   send to verified addresses or domains, or to email addresses
    #   associated with the Amazon SES Mailbox Simulator. For more
    #   information, see [Verifying Email Addresses and Domains][1] in the
    #   *Amazon SES Developer Guide.*
    #
    # * The maximum message size is 10 MB.
    #
    # * Each `Destination` parameter must include at least one recipient
    #   email address. The recipient address can be a To: address, a CC:
    #   address, or a BCC: address. If a recipient email address is invalid
    #   (that is, it is not in the format
    #   *UserName@\[SubDomain.\]Domain.TopLevelDomain*), the entire message
    #   will be rejected, even if the message contains other recipients that
    #   are valid.
    #
    # * The message may not include more than 50 recipients, across the To:,
    #   CC: and BCC: fields. If you need to send an email message to a
    #   larger audience, you can divide your recipient list into groups of
    #   50 or fewer, and then call the `SendBulkTemplatedEmail` operation
    #   several times to send the message to each group.
    #
    # * The number of destinations you can contact in a single call to the
    #   API may be limited by your account's maximum sending rate.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    #
    # @option params [required, String] :source
    #   The email address that is sending the email. This email address must
    #   be either individually verified with Amazon SES, or from a domain that
    #   has been verified with Amazon SES. For information about verifying
    #   identities, see the [Amazon SES Developer Guide][1].
    #
    #   If you are sending on behalf of another user and have been permitted
    #   to do so by a sending authorization policy, then you must also specify
    #   the `SourceArn` parameter. For more information about sending
    #   authorization, see the [Amazon SES Developer Guide][2].
    #
    #   <note markdown="1"> Amazon SES does not support the SMTPUTF8 extension, as described in
    #   [RFC6531][3]. For this reason, the *local part* of a source email
    #   address (the part of the email address that precedes the @ sign) may
    #   only contain [7-bit ASCII characters][4]. If the *domain part* of an
    #   address (the part after the @ sign) contains non-ASCII characters,
    #   they must be encoded using Punycode, as described in [RFC3492][5]. The
    #   sender name (also known as the *friendly name*) may contain non-ASCII
    #   characters. These characters must be encoded using MIME encoded-word
    #   syntax, as described in [RFC 2047][6]. MIME encoded-word syntax uses
    #   the following form: `=?charset?encoding?encoded-text?=`.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    #   [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   [3]: https://tools.ietf.org/html/rfc6531
    #   [4]: https://en.wikipedia.org/wiki/Email_address#Local-part
    #   [5]: https://tools.ietf.org/html/rfc3492.html
    #   [6]: https://tools.ietf.org/html/rfc2047
    #
    # @option params [String] :source_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to send for the email address specified in the
    #   `Source` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to send from `user@example.com`, then
    #   you would specify the `SourceArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `Source` to be `user@example.com`.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [Array<String>] :reply_to_addresses
    #   The reply-to email address(es) for the message. If the recipient
    #   replies to the message, each reply-to address will receive the reply.
    #
    # @option params [String] :return_path
    #   The email address that bounces and complaints will be forwarded to
    #   when feedback forwarding is enabled. If the message cannot be
    #   delivered to the recipient, then an error message will be returned
    #   from the recipient's ISP; this message will then be forwarded to the
    #   email address specified by the `ReturnPath` parameter. The
    #   `ReturnPath` parameter is never overwritten. This email address must
    #   be either individually verified with Amazon SES, or from a domain that
    #   has been verified with Amazon SES.
    #
    # @option params [String] :return_path_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `ReturnPath` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to use `feedback@example.com`, then
    #   you would specify the `ReturnPathArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `ReturnPath` to be `feedback@example.com`.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use when you send an email using
    #   `SendBulkTemplatedEmail`.
    #
    # @option params [Array<Types::MessageTag>] :default_tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send to a destination using `SendBulkTemplatedEmail`.
    #
    # @option params [required, String] :template
    #   The template to use when sending this email.
    #
    # @option params [String] :template_arn
    #   The ARN of the template to use when sending this email.
    #
    # @option params [String] :default_template_data
    #   A list of replacement values to apply to the template when replacement
    #   data is not specified in a Destination object. These values act as a
    #   default or fallback option when no other data is available.
    #
    #   The template data is a JSON object, typically consisting of key-value
    #   pairs in which the keys correspond to replacement tags in the email
    #   template.
    #
    # @option params [required, Array<Types::BulkEmailDestination>] :destinations
    #   One or more `Destination` objects. All of the recipients in a
    #   `Destination` will receive the same version of the email. You can
    #   specify up to 50 `Destination` objects within a `Destinations` array.
    #
    # @return [Types::SendBulkTemplatedEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendBulkTemplatedEmailResponse#status #status} => Array&lt;Types::BulkEmailDestinationStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bulk_templated_email({
    #     source: "Address", # required
    #     source_arn: "AmazonResourceName",
    #     reply_to_addresses: ["Address"],
    #     return_path: "Address",
    #     return_path_arn: "AmazonResourceName",
    #     configuration_set_name: "ConfigurationSetName",
    #     default_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     template: "TemplateName", # required
    #     template_arn: "AmazonResourceName",
    #     default_template_data: "TemplateData",
    #     destinations: [ # required
    #       {
    #         destination: { # required
    #           to_addresses: ["Address"],
    #           cc_addresses: ["Address"],
    #           bcc_addresses: ["Address"],
    #         },
    #         replacement_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           },
    #         ],
    #         replacement_template_data: "TemplateData",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Array
    #   resp.status[0].status #=> String, one of "Success", "MessageRejected", "MailFromDomainNotVerified", "ConfigurationSetDoesNotExist", "TemplateDoesNotExist", "AccountSuspended", "AccountThrottled", "AccountDailyQuotaExceeded", "InvalidSendingPoolName", "AccountSendingPaused", "ConfigurationSetSendingPaused", "InvalidParameterValue", "TransientFailure", "Failed"
    #   resp.status[0].error #=> String
    #   resp.status[0].message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendBulkTemplatedEmail AWS API Documentation
    #
    # @overload send_bulk_templated_email(params = {})
    # @param [Hash] params ({})
    def send_bulk_templated_email(params = {}, options = {})
      req = build_request(:send_bulk_templated_email, params)
      req.send_request(options)
    end

    # Adds an email address to the list of identities for your Amazon SES
    # account in the current AWS Region and attempts to verify it. As a
    # result of executing this operation, a customized verification email is
    # sent to the specified address.
    #
    # To use this operation, you must first create a custom verification
    # email template. For more information about creating and using custom
    # verification email templates, see [Using Custom Verification Email
    # Templates][1] in the *Amazon SES Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html
    #
    # @option params [required, String] :email_address
    #   The email address to verify.
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template to use when sending
    #   the verification email.
    #
    # @option params [String] :configuration_set_name
    #   Name of a configuration set to use when sending the verification
    #   email.
    #
    # @return [Types::SendCustomVerificationEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendCustomVerificationEmailResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_custom_verification_email({
    #     email_address: "Address", # required
    #     template_name: "TemplateName", # required
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendCustomVerificationEmail AWS API Documentation
    #
    # @overload send_custom_verification_email(params = {})
    # @param [Hash] params ({})
    def send_custom_verification_email(params = {}, options = {})
      req = build_request(:send_custom_verification_email, params)
      req.send_request(options)
    end

    # Composes an email message and immediately queues it for sending. In
    # order to send email using the `SendEmail` operation, your message must
    # meet the following requirements:
    #
    # * The message must be sent from a verified email address or domain. If
    #   you attempt to send email using a non-verified address or domain,
    #   the operation will result in an "Email address not verified"
    #   error.
    #
    # * If your account is still in the Amazon SES sandbox, you may only
    #   send to verified addresses or domains, or to email addresses
    #   associated with the Amazon SES Mailbox Simulator. For more
    #   information, see [Verifying Email Addresses and Domains][1] in the
    #   *Amazon SES Developer Guide.*
    #
    # * The maximum message size is 10 MB.
    #
    # * The message must include at least one recipient email address. The
    #   recipient address can be a To: address, a CC: address, or a BCC:
    #   address. If a recipient email address is invalid (that is, it is not
    #   in the format *UserName@\[SubDomain.\]Domain.TopLevelDomain*), the
    #   entire message will be rejected, even if the message contains other
    #   recipients that are valid.
    #
    # * The message may not include more than 50 recipients, across the To:,
    #   CC: and BCC: fields. If you need to send an email message to a
    #   larger audience, you can divide your recipient list into groups of
    #   50 or fewer, and then call the `SendEmail` operation several times
    #   to send the message to each group.
    #
    # For every message that you send, the total number of recipients
    # (including each recipient in the To:, CC: and BCC: fields) is counted
    # against the maximum number of emails you can send in a 24-hour period
    # (your *sending quota*). For more information about sending quotas in
    # Amazon SES, see [Managing Your Amazon SES Sending Limits][2] in the
    # *Amazon SES Developer Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    # [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html
    #
    # @option params [required, String] :source
    #   The email address that is sending the email. This email address must
    #   be either individually verified with Amazon SES, or from a domain that
    #   has been verified with Amazon SES. For information about verifying
    #   identities, see the [Amazon SES Developer Guide][1].
    #
    #   If you are sending on behalf of another user and have been permitted
    #   to do so by a sending authorization policy, then you must also specify
    #   the `SourceArn` parameter. For more information about sending
    #   authorization, see the [Amazon SES Developer Guide][2].
    #
    #   <note markdown="1"> Amazon SES does not support the SMTPUTF8 extension, as described in
    #   [RFC6531][3]. For this reason, the *local part* of a source email
    #   address (the part of the email address that precedes the @ sign) may
    #   only contain [7-bit ASCII characters][4]. If the *domain part* of an
    #   address (the part after the @ sign) contains non-ASCII characters,
    #   they must be encoded using Punycode, as described in [RFC3492][5]. The
    #   sender name (also known as the *friendly name*) may contain non-ASCII
    #   characters. These characters must be encoded using MIME encoded-word
    #   syntax, as described in [RFC 2047][6]. MIME encoded-word syntax uses
    #   the following form: `=?charset?encoding?encoded-text?=`.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    #   [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   [3]: https://tools.ietf.org/html/rfc6531
    #   [4]: https://en.wikipedia.org/wiki/Email_address#Local-part
    #   [5]: https://tools.ietf.org/html/rfc3492.html
    #   [6]: https://tools.ietf.org/html/rfc2047
    #
    # @option params [required, Types::Destination] :destination
    #   The destination for this email, composed of To:, CC:, and BCC: fields.
    #
    # @option params [required, Types::Message] :message
    #   The message to be sent.
    #
    # @option params [Array<String>] :reply_to_addresses
    #   The reply-to email address(es) for the message. If the recipient
    #   replies to the message, each reply-to address will receive the reply.
    #
    # @option params [String] :return_path
    #   The email address that bounces and complaints will be forwarded to
    #   when feedback forwarding is enabled. If the message cannot be
    #   delivered to the recipient, then an error message will be returned
    #   from the recipient's ISP; this message will then be forwarded to the
    #   email address specified by the `ReturnPath` parameter. The
    #   `ReturnPath` parameter is never overwritten. This email address must
    #   be either individually verified with Amazon SES, or from a domain that
    #   has been verified with Amazon SES.
    #
    # @option params [String] :source_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to send for the email address specified in the
    #   `Source` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to send from `user@example.com`, then
    #   you would specify the `SourceArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `Source` to be `user@example.com`.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [String] :return_path_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `ReturnPath` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to use `feedback@example.com`, then
    #   you would specify the `ReturnPathArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `ReturnPath` to be `feedback@example.com`.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [Array<Types::MessageTag>] :tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send using `SendEmail`. Tags correspond to characteristics of
    #   the email that you define, so that you can publish email sending
    #   events.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use when you send an email using
    #   `SendEmail`.
    #
    # @return [Types::SendEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendEmailResponse#message_id #message_id} => String
    #
    #
    # @example Example: SendEmail
    #
    #   # The following example sends a formatted email:
    #
    #   resp = client.send_email({
    #     destination: {
    #       bcc_addresses: [
    #       ], 
    #       cc_addresses: [
    #         "recipient3@example.com", 
    #       ], 
    #       to_addresses: [
    #         "recipient1@example.com", 
    #         "recipient2@example.com", 
    #       ], 
    #     }, 
    #     message: {
    #       body: {
    #         html: {
    #           charset: "UTF-8", 
    #           data: "This message body contains HTML formatting. It can, for example, contain links like this one: <a class=\"ulink\" href=\"http://docs.aws.amazon.com/ses/latest/DeveloperGuide\" target=\"_blank\">Amazon SES Developer Guide</a>.", 
    #         }, 
    #         text: {
    #           charset: "UTF-8", 
    #           data: "This is the message body in text format.", 
    #         }, 
    #       }, 
    #       subject: {
    #         charset: "UTF-8", 
    #         data: "Test email", 
    #       }, 
    #     }, 
    #     reply_to_addresses: [
    #     ], 
    #     return_path: "", 
    #     return_path_arn: "", 
    #     source: "sender@example.com", 
    #     source_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message_id: "EXAMPLE78603177f-7a5433e7-8edb-42ae-af10-f0181f34d6ee-000000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email({
    #     source: "Address", # required
    #     destination: { # required
    #       to_addresses: ["Address"],
    #       cc_addresses: ["Address"],
    #       bcc_addresses: ["Address"],
    #     },
    #     message: { # required
    #       subject: { # required
    #         data: "MessageData", # required
    #         charset: "Charset",
    #       },
    #       body: { # required
    #         text: {
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         html: {
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #       },
    #     },
    #     reply_to_addresses: ["Address"],
    #     return_path: "Address",
    #     source_arn: "AmazonResourceName",
    #     return_path_arn: "AmazonResourceName",
    #     tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendEmail AWS API Documentation
    #
    # @overload send_email(params = {})
    # @param [Hash] params ({})
    def send_email(params = {}, options = {})
      req = build_request(:send_email, params)
      req.send_request(options)
    end

    # Composes an email message and immediately queues it for sending.
    #
    # This operation is more flexible than the `SendEmail` API operation.
    # When you use the `SendRawEmail` operation, you can specify the headers
    # of the message as well as its content. This flexibility is useful, for
    # example, when you want to send a multipart MIME email (such a message
    # that contains both a text and an HTML version). You can also use this
    # operation to send messages that include attachments.
    #
    # The `SendRawEmail` operation has the following requirements:
    #
    # * You can only send email from [verified email addresses or
    #   domains][1]. If you try to send email from an address that isn't
    #   verified, the operation results in an "Email address not verified"
    #   error.
    #
    # * If your account is still in the [Amazon SES sandbox][2], you can
    #   only send email to other verified addresses in your account, or to
    #   addresses that are associated with the [Amazon SES mailbox
    #   simulator][3].
    #
    # * The maximum message size, including attachments, is 10 MB.
    #
    # * Each message has to include at least one recipient address. A
    #   recipient address includes any address on the To:, CC:, or BCC:
    #   lines.
    #
    # * If you send a single message to more than one recipient address, and
    #   one of the recipient addresses isn't in a valid format (that is,
    #   it's not in the format
    #   *UserName@\[SubDomain.\]Domain.TopLevelDomain*), Amazon SES rejects
    #   the entire message, even if the other addresses are valid.
    #
    # * Each message can include up to 50 recipient addresses across the
    #   To:, CC:, or BCC: lines. If you need to send a single message to
    #   more than 50 recipients, you have to split the list of recipient
    #   addresses into groups of less than 50 recipients, and send separate
    #   messages to each group.
    #
    # * Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for
    #   MIME message parts. However, if Amazon SES has to modify the
    #   contents of your message (for example, if you use open and click
    #   tracking), 8-bit content isn't preserved. For this reason, we
    #   highly recommend that you encode all content that isn't 7-bit
    #   ASCII. For more information, see [MIME Encoding][4] in the *Amazon
    #   SES Developer Guide*.
    #
    # Additionally, keep the following considerations in mind when using the
    # `SendRawEmail` operation:
    #
    # * Although you can customize the message headers when using the
    #   `SendRawEmail` operation, Amazon SES will automatically apply its
    #   own `Message-ID` and `Date` headers; if you passed these headers
    #   when creating the message, they will be overwritten by the values
    #   that Amazon SES provides.
    #
    # * If you are using sending authorization to send on behalf of another
    #   user, `SendRawEmail` enables you to specify the cross-account
    #   identity for the email's Source, From, and Return-Path parameters
    #   in one of two ways: you can pass optional parameters `SourceArn`,
    #   `FromArn`, and/or `ReturnPathArn` to the API, or you can include the
    #   following X-headers in the header of your raw email:
    #
    #   * `X-SES-SOURCE-ARN`
    #
    #   * `X-SES-FROM-ARN`
    #
    #   * `X-SES-RETURN-PATH-ARN`
    #
    #   Do not include these X-headers in the DKIM signature; Amazon SES
    #   will remove them before sending the email.
    #
    #   For most common sending authorization scenarios, we recommend that
    #   you specify the `SourceIdentityArn` parameter and not the
    #   `FromIdentityArn` or `ReturnPathIdentityArn` parameters. If you only
    #   specify the `SourceIdentityArn` parameter, Amazon SES will set the
    #   From and Return Path addresses to the identity specified in
    #   `SourceIdentityArn`. For more information about sending
    #   authorization, see the [Using Sending Authorization with Amazon
    #   SES][5] in the *Amazon SES Developer Guide.*
    #
    # * For every message that you send, the total number of recipients
    #   (including each recipient in the To:, CC: and BCC: fields) is
    #   counted against the maximum number of emails you can send in a
    #   24-hour period (your *sending quota*). For more information about
    #   sending quotas in Amazon SES, see [Managing Your Amazon SES Sending
    #   Limits][6] in the *Amazon SES Developer Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    # [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html
    # [3]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mailbox-simulator.html
    # [4]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html#send-email-mime-encoding
    # [5]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    # [6]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html
    #
    # @option params [String] :source
    #   The identity's email address. If you do not provide a value for this
    #   parameter, you must specify a "From" address in the raw text of the
    #   message. (You can also specify both.)
    #
    #   <note markdown="1"> Amazon SES does not support the SMTPUTF8 extension, as described
    #   in[RFC6531][1]. For this reason, the *local part* of a source email
    #   address (the part of the email address that precedes the @ sign) may
    #   only contain [7-bit ASCII characters][2]. If the *domain part* of an
    #   address (the part after the @ sign) contains non-ASCII characters,
    #   they must be encoded using Punycode, as described in [RFC3492][3]. The
    #   sender name (also known as the *friendly name*) may contain non-ASCII
    #   characters. These characters must be encoded using MIME encoded-word
    #   syntax, as described in [RFC 2047][4]. MIME encoded-word syntax uses
    #   the following form: `=?charset?encoding?encoded-text?=`.
    #
    #    </note>
    #
    #   If you specify the `Source` parameter and have feedback forwarding
    #   enabled, then bounces and complaints will be sent to this email
    #   address. This takes precedence over any Return-Path header that you
    #   might include in the raw text of the message.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6531
    #   [2]: https://en.wikipedia.org/wiki/Email_address#Local-part
    #   [3]: https://tools.ietf.org/html/rfc3492.html
    #   [4]: https://tools.ietf.org/html/rfc2047
    #
    # @option params [Array<String>] :destinations
    #   A list of destinations for the message, consisting of To:, CC:, and
    #   BCC: addresses.
    #
    # @option params [required, Types::RawMessage] :raw_message
    #   The raw email message itself. The message has to meet the following
    #   criteria:
    #
    #   * The message has to contain a header and a body, separated by a blank
    #     line.
    #
    #   * All of the required header fields must be present in the message.
    #
    #   * Each part of a multipart MIME message must be formatted properly.
    #
    #   * Attachments must be of a content type that Amazon SES supports. For
    #     a list on unsupported content types, see [Unsupported Attachment
    #     Types][1] in the *Amazon SES Developer Guide*.
    #
    #   * The entire message must be base64-encoded.
    #
    #   * If any of the MIME parts in your message contain content that is
    #     outside of the 7-bit ASCII character range, we highly recommend that
    #     you encode that content. For more information, see [Sending Raw
    #     Email][2] in the *Amazon SES Developer Guide*.
    #
    #   * Per [RFC 5321][3], the maximum length of each line of text,
    #     including the &lt;CRLF&gt;, must not exceed 1,000 characters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html
    #   [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html
    #   [3]: https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6
    #
    # @option params [String] :from_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to specify a particular "From" address in
    #   the header of the raw email.
    #
    #   Instead of using this parameter, you can use the X-header
    #   `X-SES-FROM-ARN` in the raw message of the email. If you use both the
    #   `FromArn` parameter and the corresponding X-header, Amazon SES uses
    #   the value of the `FromArn` parameter.
    #
    #   <note markdown="1"> For information about when to use this parameter, see the description
    #   of `SendRawEmail` in this guide, or see the [Amazon SES Developer
    #   Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html
    #
    # @option params [String] :source_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to send for the email address specified in the
    #   `Source` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to send from `user@example.com`, then
    #   you would specify the `SourceArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `Source` to be `user@example.com`.
    #
    #   Instead of using this parameter, you can use the X-header
    #   `X-SES-SOURCE-ARN` in the raw message of the email. If you use both
    #   the `SourceArn` parameter and the corresponding X-header, Amazon SES
    #   uses the value of the `SourceArn` parameter.
    #
    #   <note markdown="1"> For information about when to use this parameter, see the description
    #   of `SendRawEmail` in this guide, or see the [Amazon SES Developer
    #   Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html
    #
    # @option params [String] :return_path_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `ReturnPath` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to use `feedback@example.com`, then
    #   you would specify the `ReturnPathArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `ReturnPath` to be `feedback@example.com`.
    #
    #   Instead of using this parameter, you can use the X-header
    #   `X-SES-RETURN-PATH-ARN` in the raw message of the email. If you use
    #   both the `ReturnPathArn` parameter and the corresponding X-header,
    #   Amazon SES uses the value of the `ReturnPathArn` parameter.
    #
    #   <note markdown="1"> For information about when to use this parameter, see the description
    #   of `SendRawEmail` in this guide, or see the [Amazon SES Developer
    #   Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html
    #
    # @option params [Array<Types::MessageTag>] :tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send using `SendRawEmail`. Tags correspond to characteristics
    #   of the email that you define, so that you can publish email sending
    #   events.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use when you send an email using
    #   `SendRawEmail`.
    #
    # @return [Types::SendRawEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendRawEmailResponse#message_id #message_id} => String
    #
    #
    # @example Example: SendRawEmail
    #
    #   # The following example sends an email with an attachment:
    #
    #   resp = client.send_raw_email({
    #     destinations: [
    #     ], 
    #     from_arn: "", 
    #     raw_message: {
    #       data: "From: sender@example.com\\nTo: recipient@example.com\\nSubject: Test email (contains an attachment)\\nMIME-Version: 1.0\\nContent-type: Multipart/Mixed; boundary=\"NextPart\"\\n\\n--NextPart\\nContent-Type: text/plain\\n\\nThis is the message body.\\n\\n--NextPart\\nContent-Type: text/plain;\\nContent-Disposition: attachment; filename=\"attachment.txt\"\\n\\nThis is the text in the attachment.\\n\\n--NextPart--", 
    #     }, 
    #     return_path_arn: "", 
    #     source: "", 
    #     source_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message_id: "EXAMPLEf3f73d99b-c63fb06f-d263-41f8-a0fb-d0dc67d56c07-000000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_raw_email({
    #     source: "Address",
    #     destinations: ["Address"],
    #     raw_message: { # required
    #       data: "data", # required
    #     },
    #     from_arn: "AmazonResourceName",
    #     source_arn: "AmazonResourceName",
    #     return_path_arn: "AmazonResourceName",
    #     tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendRawEmail AWS API Documentation
    #
    # @overload send_raw_email(params = {})
    # @param [Hash] params ({})
    def send_raw_email(params = {}, options = {})
      req = build_request(:send_raw_email, params)
      req.send_request(options)
    end

    # Composes an email message using an email template and immediately
    # queues it for sending.
    #
    # In order to send email using the `SendTemplatedEmail` operation, your
    # call to the API must meet the following requirements:
    #
    # * The call must refer to an existing email template. You can create
    #   email templates using the CreateTemplate operation.
    #
    # * The message must be sent from a verified email address or domain.
    #
    # * If your account is still in the Amazon SES sandbox, you may only
    #   send to verified addresses or domains, or to email addresses
    #   associated with the Amazon SES Mailbox Simulator. For more
    #   information, see [Verifying Email Addresses and Domains][1] in the
    #   *Amazon SES Developer Guide.*
    #
    # * The maximum message size is 10 MB.
    #
    # * Calls to the `SendTemplatedEmail` operation may only include one
    #   `Destination` parameter. A destination is a set of recipients who
    #   will receive the same version of the email. The `Destination`
    #   parameter can include up to 50 recipients, across the To:, CC: and
    #   BCC: fields.
    #
    # * The `Destination` parameter must include at least one recipient
    #   email address. The recipient address can be a To: address, a CC:
    #   address, or a BCC: address. If a recipient email address is invalid
    #   (that is, it is not in the format
    #   *UserName@\[SubDomain.\]Domain.TopLevelDomain*), the entire message
    #   will be rejected, even if the message contains other recipients that
    #   are valid.
    #
    # If your call to the `SendTemplatedEmail` operation includes all of the
    # required parameters, Amazon SES accepts it and returns a Message ID.
    # However, if Amazon SES can't render the email because the template
    # contains errors, it doesn't send the email. Additionally, because it
    # already accepted the message, Amazon SES doesn't return a message
    # stating that it was unable to send the email.
    #
    #  For these reasons, we highly recommend that you set up Amazon SES to
    # send you notifications when Rendering Failure events occur. For more
    # information, see [Sending Personalized Email Using the Amazon SES
    # API][2] in the *Amazon Simple Email Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    # [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @option params [required, String] :source
    #   The email address that is sending the email. This email address must
    #   be either individually verified with Amazon SES, or from a domain that
    #   has been verified with Amazon SES. For information about verifying
    #   identities, see the [Amazon SES Developer Guide][1].
    #
    #   If you are sending on behalf of another user and have been permitted
    #   to do so by a sending authorization policy, then you must also specify
    #   the `SourceArn` parameter. For more information about sending
    #   authorization, see the [Amazon SES Developer Guide][2].
    #
    #   <note markdown="1"> Amazon SES does not support the SMTPUTF8 extension, as described in
    #   [RFC6531][3]. For this reason, the *local part* of a source email
    #   address (the part of the email address that precedes the @ sign) may
    #   only contain [7-bit ASCII characters][4]. If the *domain part* of an
    #   address (the part after the @ sign) contains non-ASCII characters,
    #   they must be encoded using Punycode, as described in [RFC3492][5]. The
    #   sender name (also known as the *friendly name*) may contain non-ASCII
    #   characters. These characters must be encoded using MIME encoded-word
    #   syntax, as described in[RFC 2047][6]. MIME encoded-word syntax uses
    #   the following form: `=?charset?encoding?encoded-text?=`.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    #   [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   [3]: https://tools.ietf.org/html/rfc6531
    #   [4]: https://en.wikipedia.org/wiki/Email_address#Local-part
    #   [5]: https://tools.ietf.org/html/rfc3492.html
    #   [6]: https://tools.ietf.org/html/rfc2047
    #
    # @option params [required, Types::Destination] :destination
    #   The destination for this email, composed of To:, CC:, and BCC: fields.
    #   A Destination can include up to 50 recipients across these three
    #   fields.
    #
    # @option params [Array<String>] :reply_to_addresses
    #   The reply-to email address(es) for the message. If the recipient
    #   replies to the message, each reply-to address will receive the reply.
    #
    # @option params [String] :return_path
    #   The email address that bounces and complaints will be forwarded to
    #   when feedback forwarding is enabled. If the message cannot be
    #   delivered to the recipient, then an error message will be returned
    #   from the recipient's ISP; this message will then be forwarded to the
    #   email address specified by the `ReturnPath` parameter. The
    #   `ReturnPath` parameter is never overwritten. This email address must
    #   be either individually verified with Amazon SES, or from a domain that
    #   has been verified with Amazon SES.
    #
    # @option params [String] :source_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to send for the email address specified in the
    #   `Source` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to send from `user@example.com`, then
    #   you would specify the `SourceArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `Source` to be `user@example.com`.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [String] :return_path_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `ReturnPath` parameter.
    #
    #   For example, if the owner of `example.com` (which has ARN
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a
    #   policy to it that authorizes you to use `feedback@example.com`, then
    #   you would specify the `ReturnPathArn` to be
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
    #   `ReturnPath` to be `feedback@example.com`.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [Array<Types::MessageTag>] :tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send using `SendTemplatedEmail`. Tags correspond to
    #   characteristics of the email that you define, so that you can publish
    #   email sending events.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use when you send an email using
    #   `SendTemplatedEmail`.
    #
    # @option params [required, String] :template
    #   The template to use when sending this email.
    #
    # @option params [String] :template_arn
    #   The ARN of the template to use when sending this email.
    #
    # @option params [required, String] :template_data
    #   A list of replacement values to apply to the template. This parameter
    #   is a JSON object, typically consisting of key-value pairs in which the
    #   keys correspond to replacement tags in the email template.
    #
    # @return [Types::SendTemplatedEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendTemplatedEmailResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_templated_email({
    #     source: "Address", # required
    #     destination: { # required
    #       to_addresses: ["Address"],
    #       cc_addresses: ["Address"],
    #       bcc_addresses: ["Address"],
    #     },
    #     reply_to_addresses: ["Address"],
    #     return_path: "Address",
    #     source_arn: "AmazonResourceName",
    #     return_path_arn: "AmazonResourceName",
    #     tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     template: "TemplateName", # required
    #     template_arn: "AmazonResourceName",
    #     template_data: "TemplateData", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendTemplatedEmail AWS API Documentation
    #
    # @overload send_templated_email(params = {})
    # @param [Hash] params ({})
    def send_templated_email(params = {}, options = {})
      req = build_request(:send_templated_email, params)
      req.send_request(options)
    end

    # Sets the specified receipt rule set as the active receipt rule set.
    #
    # <note markdown="1"> To disable your email-receiving through Amazon SES completely, you can
    # call this API with RuleSetName set to null.
    #
    #  </note>
    #
    # For information about managing receipt rule sets, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html
    #
    # @option params [String] :rule_set_name
    #   The name of the receipt rule set to make active. Setting this value to
    #   null disables all email receiving.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetActiveReceiptRuleSet
    #
    #   # The following example sets the active receipt rule set:
    #
    #   resp = client.set_active_receipt_rule_set({
    #     rule_set_name: "RuleSetToActivate", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_active_receipt_rule_set({
    #     rule_set_name: "ReceiptRuleSetName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetActiveReceiptRuleSet AWS API Documentation
    #
    # @overload set_active_receipt_rule_set(params = {})
    # @param [Hash] params ({})
    def set_active_receipt_rule_set(params = {}, options = {})
      req = build_request(:set_active_receipt_rule_set, params)
      req.send_request(options)
    end

    # Enables or disables Easy DKIM signing of email sent from an identity:
    #
    # * If Easy DKIM signing is enabled for a domain name identity (such as
    #   `example.com`), then Amazon SES will DKIM-sign all email sent by
    #   addresses under that domain name (for example, `user@example.com`).
    #
    # * If Easy DKIM signing is enabled for an email address, then Amazon
    #   SES will DKIM-sign all email sent by that email address.
    #
    # For email addresses (for example, `user@example.com`), you can only
    # enable Easy DKIM signing if the corresponding domain (in this case,
    # `example.com`) has been set up for Easy DKIM using the AWS Console or
    # the `VerifyDomainDkim` operation.
    #
    # You can execute this operation no more than once per second.
    #
    # For more information about Easy DKIM signing, go to the [Amazon SES
    # Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #
    # @option params [required, String] :identity
    #   The identity for which DKIM signing should be enabled or disabled.
    #
    # @option params [required, Boolean] :dkim_enabled
    #   Sets whether DKIM signing is enabled for an identity. Set to `true` to
    #   enable DKIM signing for this identity; `false` to disable it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetIdentityDkimEnabled
    #
    #   # The following example configures Amazon SES to Easy DKIM-sign the email sent from an identity:
    #
    #   resp = client.set_identity_dkim_enabled({
    #     dkim_enabled: true, 
    #     identity: "user@example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_dkim_enabled({
    #     identity: "Identity", # required
    #     dkim_enabled: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityDkimEnabled AWS API Documentation
    #
    # @overload set_identity_dkim_enabled(params = {})
    # @param [Hash] params ({})
    def set_identity_dkim_enabled(params = {}, options = {})
      req = build_request(:set_identity_dkim_enabled, params)
      req.send_request(options)
    end

    # Given an identity (an email address or a domain), enables or disables
    # whether Amazon SES forwards bounce and complaint notifications as
    # email. Feedback forwarding can only be disabled when Amazon Simple
    # Notification Service (Amazon SNS) topics are specified for both
    # bounces and complaints.
    #
    # <note markdown="1"> Feedback forwarding does not apply to delivery notifications. Delivery
    # notifications are only available through Amazon SNS.
    #
    #  </note>
    #
    # You can execute this operation no more than once per second.
    #
    # For more information about using notifications with Amazon SES, see
    # the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html
    #
    # @option params [required, String] :identity
    #   The identity for which to set bounce and complaint notification
    #   forwarding. Examples: `user@example.com`, `example.com`.
    #
    # @option params [required, Boolean] :forwarding_enabled
    #   Sets whether Amazon SES will forward bounce and complaint
    #   notifications as email. `true` specifies that Amazon SES will forward
    #   bounce and complaint notifications as email, in addition to any Amazon
    #   SNS topic publishing otherwise specified. `false` specifies that
    #   Amazon SES will publish bounce and complaint notifications only
    #   through Amazon SNS. This value can only be set to `false` when Amazon
    #   SNS topics are set for both `Bounce` and `Complaint` notification
    #   types.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetIdentityFeedbackForwardingEnabled
    #
    #   # The following example configures Amazon SES to forward an identity's bounces and complaints via email:
    #
    #   resp = client.set_identity_feedback_forwarding_enabled({
    #     forwarding_enabled: true, 
    #     identity: "user@example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_feedback_forwarding_enabled({
    #     identity: "Identity", # required
    #     forwarding_enabled: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityFeedbackForwardingEnabled AWS API Documentation
    #
    # @overload set_identity_feedback_forwarding_enabled(params = {})
    # @param [Hash] params ({})
    def set_identity_feedback_forwarding_enabled(params = {}, options = {})
      req = build_request(:set_identity_feedback_forwarding_enabled, params)
      req.send_request(options)
    end

    # Given an identity (an email address or a domain), sets whether Amazon
    # SES includes the original email headers in the Amazon Simple
    # Notification Service (Amazon SNS) notifications of a specified type.
    #
    # You can execute this operation no more than once per second.
    #
    # For more information about using notifications with Amazon SES, see
    # the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html
    #
    # @option params [required, String] :identity
    #   The identity for which to enable or disable headers in notifications.
    #   Examples: `user@example.com`, `example.com`.
    #
    # @option params [required, String] :notification_type
    #   The notification type for which to enable or disable headers in
    #   notifications.
    #
    # @option params [required, Boolean] :enabled
    #   Sets whether Amazon SES includes the original email headers in Amazon
    #   SNS notifications of the specified notification type. A value of
    #   `true` specifies that Amazon SES will include headers in
    #   notifications, and a value of `false` specifies that Amazon SES will
    #   not include headers in notifications.
    #
    #   This value can only be set when `NotificationType` is already set to
    #   use a particular Amazon SNS topic.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetIdentityHeadersInNotificationsEnabled
    #
    #   # The following example configures Amazon SES to include the original email headers in the Amazon SNS bounce notifications
    #   # for an identity:
    #
    #   resp = client.set_identity_headers_in_notifications_enabled({
    #     enabled: true, 
    #     identity: "user@example.com", 
    #     notification_type: "Bounce", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_headers_in_notifications_enabled({
    #     identity: "Identity", # required
    #     notification_type: "Bounce", # required, accepts Bounce, Complaint, Delivery
    #     enabled: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityHeadersInNotificationsEnabled AWS API Documentation
    #
    # @overload set_identity_headers_in_notifications_enabled(params = {})
    # @param [Hash] params ({})
    def set_identity_headers_in_notifications_enabled(params = {}, options = {})
      req = build_request(:set_identity_headers_in_notifications_enabled, params)
      req.send_request(options)
    end

    # Enables or disables the custom MAIL FROM domain setup for a verified
    # identity (an email address or a domain).
    #
    # To send emails using the specified MAIL FROM domain, you must add an
    # MX record to your MAIL FROM domain's DNS settings. If you want your
    # emails to pass Sender Policy Framework (SPF) checks, you must also add
    # or update an SPF record. For more information, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html
    #
    # @option params [required, String] :identity
    #   The verified identity for which you want to enable or disable the
    #   specified custom MAIL FROM domain.
    #
    # @option params [String] :mail_from_domain
    #   The custom MAIL FROM domain that you want the verified identity to
    #   use. The MAIL FROM domain must 1) be a subdomain of the verified
    #   identity, 2) not be used in a "From" address if the MAIL FROM domain
    #   is the destination of email feedback forwarding (for more information,
    #   see the [Amazon SES Developer Guide][1]), and 3) not be used to
    #   receive emails. A value of `null` disables the custom MAIL FROM
    #   setting for the identity.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html
    #
    # @option params [String] :behavior_on_mx_failure
    #   The action that you want Amazon SES to take if it cannot successfully
    #   read the required MX record when you send an email. If you choose
    #   `UseDefaultValue`, Amazon SES will use amazonses.com (or a subdomain
    #   of that) as the MAIL FROM domain. If you choose `RejectMessage`,
    #   Amazon SES will return a `MailFromDomainNotVerified` error and not
    #   send the email.
    #
    #   The action specified in `BehaviorOnMXFailure` is taken when the custom
    #   MAIL FROM domain setup is in the `Pending`, `Failed`, and
    #   `TemporaryFailure` states.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetIdentityMailFromDomain
    #
    #   # The following example configures Amazon SES to use a custom MAIL FROM domain for an identity:
    #
    #   resp = client.set_identity_mail_from_domain({
    #     behavior_on_mx_failure: "UseDefaultValue", 
    #     identity: "user@example.com", 
    #     mail_from_domain: "bounces.example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_mail_from_domain({
    #     identity: "Identity", # required
    #     mail_from_domain: "MailFromDomainName",
    #     behavior_on_mx_failure: "UseDefaultValue", # accepts UseDefaultValue, RejectMessage
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityMailFromDomain AWS API Documentation
    #
    # @overload set_identity_mail_from_domain(params = {})
    # @param [Hash] params ({})
    def set_identity_mail_from_domain(params = {}, options = {})
      req = build_request(:set_identity_mail_from_domain, params)
      req.send_request(options)
    end

    # Sets an Amazon Simple Notification Service (Amazon SNS) topic to use
    # when delivering notifications. When you use this operation, you
    # specify a verified identity, such as an email address or domain. When
    # you send an email that uses the chosen identity in the Source field,
    # Amazon SES sends notifications to the topic you specified. You can
    # send bounce, complaint, or delivery notifications (or any combination
    # of the three) to the Amazon SNS topic that you specify.
    #
    # You can execute this operation no more than once per second.
    #
    # For more information about feedback notification, see the [Amazon SES
    # Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html
    #
    # @option params [required, String] :identity
    #   The identity (email address or domain) that you want to set the Amazon
    #   SNS topic for.
    #
    #   You can only specify a verified identity for this parameter.
    #
    #   You can specify an identity by using its name or by using its Amazon
    #   Resource Name (ARN). The following examples are all valid identities:
    #   `sender@example.com`, `example.com`,
    #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
    #
    # @option params [required, String] :notification_type
    #   The type of notifications that will be published to the specified
    #   Amazon SNS topic.
    #
    # @option params [String] :sns_topic
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic. If the
    #   parameter is omitted from the request or a null value is passed,
    #   `SnsTopic` is cleared and publishing is disabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetIdentityNotificationTopic
    #
    #   # The following example sets the Amazon SNS topic to which Amazon SES will publish bounce, complaint, and/or delivery
    #   # notifications for emails sent with the specified identity as the Source:
    #
    #   resp = client.set_identity_notification_topic({
    #     identity: "user@example.com", 
    #     notification_type: "Bounce", 
    #     sns_topic: "arn:aws:sns:us-west-2:111122223333:MyTopic", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_notification_topic({
    #     identity: "Identity", # required
    #     notification_type: "Bounce", # required, accepts Bounce, Complaint, Delivery
    #     sns_topic: "NotificationTopic",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityNotificationTopic AWS API Documentation
    #
    # @overload set_identity_notification_topic(params = {})
    # @param [Hash] params ({})
    def set_identity_notification_topic(params = {}, options = {})
      req = build_request(:set_identity_notification_topic, params)
      req.send_request(options)
    end

    # Sets the position of the specified receipt rule in the receipt rule
    # set.
    #
    # For information about managing receipt rules, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set that contains the receipt rule to
    #   reposition.
    #
    # @option params [required, String] :rule_name
    #   The name of the receipt rule to reposition.
    #
    # @option params [String] :after
    #   The name of the receipt rule after which to place the specified
    #   receipt rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: SetReceiptRulePosition
    #
    #   # The following example sets the position of a receipt rule in a receipt rule set:
    #
    #   resp = client.set_receipt_rule_position({
    #     after: "PutRuleAfterThisRule", 
    #     rule_name: "RuleToReposition", 
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_receipt_rule_position({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule_name: "ReceiptRuleName", # required
    #     after: "ReceiptRuleName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetReceiptRulePosition AWS API Documentation
    #
    # @overload set_receipt_rule_position(params = {})
    # @param [Hash] params ({})
    def set_receipt_rule_position(params = {}, options = {})
      req = build_request(:set_receipt_rule_position, params)
      req.send_request(options)
    end

    # Creates a preview of the MIME content of an email when provided with a
    # template and a set of replacement data.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :template_name
    #   The name of the template that you want to render.
    #
    # @option params [required, String] :template_data
    #   A list of replacement values to apply to the template. This parameter
    #   is a JSON object, typically consisting of key-value pairs in which the
    #   keys correspond to replacement tags in the email template.
    #
    # @return [Types::TestRenderTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestRenderTemplateResponse#rendered_template #rendered_template} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_render_template({
    #     template_name: "TemplateName", # required
    #     template_data: "TemplateData", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rendered_template #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/TestRenderTemplate AWS API Documentation
    #
    # @overload test_render_template(params = {})
    # @param [Hash] params ({})
    def test_render_template(params = {}, options = {})
      req = build_request(:test_render_template, params)
      req.send_request(options)
    end

    # Enables or disables email sending across your entire Amazon SES
    # account in the current AWS Region. You can use this operation in
    # conjunction with Amazon CloudWatch alarms to temporarily pause email
    # sending across your Amazon SES account in a given AWS Region when
    # reputation metrics (such as your bounce or complaint rates) reach
    # certain thresholds.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [Boolean] :enabled
    #   Describes whether email sending is enabled or disabled for your Amazon
    #   SES account in the current AWS Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateAccountSendingEnabled
    #
    #   # The following example updated the sending status for this account.
    #
    #   resp = client.update_account_sending_enabled({
    #     enabled: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_sending_enabled({
    #     enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateAccountSendingEnabled AWS API Documentation
    #
    # @overload update_account_sending_enabled(params = {})
    # @param [Hash] params ({})
    def update_account_sending_enabled(params = {}, options = {})
      req = build_request(:update_account_sending_enabled, params)
      req.send_request(options)
    end

    # Updates the event destination of a configuration set. Event
    # destinations are associated with configuration sets, which enable you
    # to publish email sending events to Amazon CloudWatch, Amazon Kinesis
    # Firehose, or Amazon Simple Notification Service (Amazon SNS). For
    # information about using configuration sets, see [Monitoring Your
    # Amazon SES Sending Activity][1] in the *Amazon SES Developer Guide.*
    #
    # <note markdown="1"> When you create or update an event destination, you must provide one,
    # and only one, destination. The destination can be Amazon CloudWatch,
    # Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
    # SNS).
    #
    #  </note>
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination
    #   that you want to update.
    #
    # @option params [required, Types::EventDestination] :event_destination
    #   The event destination object that you want to apply to the specified
    #   configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination: { # required
    #       name: "EventDestinationName", # required
    #       enabled: false,
    #       matching_event_types: ["send"], # required, accepts send, reject, bounce, complaint, delivery, open, click, renderingFailure
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "messageTag", # required, accepts messageTag, emailHeader, linkTag
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateConfigurationSetEventDestination AWS API Documentation
    #
    # @overload update_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def update_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:update_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Enables or disables the publishing of reputation metrics for emails
    # sent using a specific configuration set in a given AWS Region.
    # Reputation metrics include bounce and complaint rates. These metrics
    # are published to Amazon CloudWatch. By using CloudWatch, you can
    # create alarms when bounce or complaint rates exceed certain
    # thresholds.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to update.
    #
    # @option params [required, Boolean] :enabled
    #   Describes whether or not Amazon SES will publish reputation metrics
    #   for the configuration set, such as bounce and complaint rates, to
    #   Amazon CloudWatch.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateConfigurationSetReputationMetricsEnabled
    #
    #   # Set the reputationMetricsEnabled flag for a specific configuration set.
    #
    #   resp = client.update_configuration_set_reputation_metrics_enabled({
    #     configuration_set_name: "foo", 
    #     enabled: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_reputation_metrics_enabled({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     enabled: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateConfigurationSetReputationMetricsEnabled AWS API Documentation
    #
    # @overload update_configuration_set_reputation_metrics_enabled(params = {})
    # @param [Hash] params ({})
    def update_configuration_set_reputation_metrics_enabled(params = {}, options = {})
      req = build_request(:update_configuration_set_reputation_metrics_enabled, params)
      req.send_request(options)
    end

    # Enables or disables email sending for messages sent using a specific
    # configuration set in a given AWS Region. You can use this operation in
    # conjunction with Amazon CloudWatch alarms to temporarily pause email
    # sending for a configuration set when the reputation metrics for that
    # configuration set (such as your bounce on complaint rate) exceed
    # certain thresholds.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to update.
    #
    # @option params [required, Boolean] :enabled
    #   Describes whether email sending is enabled or disabled for the
    #   configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateConfigurationSetReputationMetricsEnabled
    #
    #   # Set the sending enabled flag for a specific configuration set.
    #
    #   resp = client.update_configuration_set_sending_enabled({
    #     configuration_set_name: "foo", 
    #     enabled: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_sending_enabled({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     enabled: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateConfigurationSetSendingEnabled AWS API Documentation
    #
    # @overload update_configuration_set_sending_enabled(params = {})
    # @param [Hash] params ({})
    def update_configuration_set_sending_enabled(params = {}, options = {})
      req = build_request(:update_configuration_set_sending_enabled, params)
      req.send_request(options)
    end

    # Modifies an association between a configuration set and a custom
    # domain for open and click event tracking.
    #
    # By default, images and links used for tracking open and click events
    # are hosted on domains operated by Amazon SES. You can configure a
    # subdomain of your own to handle these events. For information about
    # using custom domains, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set for which you want to update the
    #   custom tracking domain.
    #
    # @option params [required, Types::TrackingOptions] :tracking_options
    #   A domain that is used to redirect email recipients to an Amazon
    #   SES-operated domain. This domain captures open and click events
    #   generated by Amazon SES emails.
    #
    #   For more information, see [Configuring Custom Domains to Handle Open
    #   and Click
    #   Tracking](ses/latest/DeveloperGuide/configure-custom-open-click-domains.html)
    #   in the *Amazon SES Developer Guide*.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_tracking_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: { # required
    #       custom_redirect_domain: "CustomRedirectDomain",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateConfigurationSetTrackingOptions AWS API Documentation
    #
    # @overload update_configuration_set_tracking_options(params = {})
    # @param [Hash] params ({})
    def update_configuration_set_tracking_options(params = {}, options = {})
      req = build_request(:update_configuration_set_tracking_options, params)
      req.send_request(options)
    end

    # Updates an existing custom verification email template.
    #
    # For more information about custom verification email templates, see
    # [Using Custom Verification Email Templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template that you want to
    #   update.
    #
    # @option params [String] :from_email_address
    #   The email address that the custom verification email is sent from.
    #
    # @option params [String] :template_subject
    #   The subject line of the custom verification email.
    #
    # @option params [String] :template_content
    #   The content of the custom verification email. The total size of the
    #   email must be less than 10 MB. The message body may contain HTML, with
    #   some limitations. For more information, see [Custom Verification Email
    #   Frequently Asked Questions][1] in the *Amazon SES Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq
    #
    # @option params [String] :success_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is successfully verified.
    #
    # @option params [String] :failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is not successfully verified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_verification_email_template({
    #     template_name: "TemplateName", # required
    #     from_email_address: "FromAddress",
    #     template_subject: "Subject",
    #     template_content: "TemplateContent",
    #     success_redirection_url: "SuccessRedirectionURL",
    #     failure_redirection_url: "FailureRedirectionURL",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload update_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def update_custom_verification_email_template(params = {}, options = {})
      req = build_request(:update_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Updates a receipt rule.
    #
    # For information about managing receipt rules, see the [Amazon SES
    # Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html
    #
    # @option params [required, String] :rule_set_name
    #   The name of the receipt rule set that the receipt rule belongs to.
    #
    # @option params [required, Types::ReceiptRule] :rule
    #   A data structure that contains the updated receipt rule information.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateReceiptRule
    #
    #   # The following example updates a receipt rule to use an Amazon S3 action:
    #
    #   resp = client.update_receipt_rule({
    #     rule: {
    #       actions: [
    #         {
    #           s3_action: {
    #             bucket_name: "MyBucket", 
    #             object_key_prefix: "email", 
    #           }, 
    #         }, 
    #       ], 
    #       enabled: true, 
    #       name: "MyRule", 
    #       scan_enabled: true, 
    #       tls_policy: "Optional", 
    #     }, 
    #     rule_set_name: "MyRuleSet", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_receipt_rule({
    #     rule_set_name: "ReceiptRuleSetName", # required
    #     rule: { # required
    #       name: "ReceiptRuleName", # required
    #       enabled: false,
    #       tls_policy: "Require", # accepts Require, Optional
    #       recipients: ["Recipient"],
    #       actions: [
    #         {
    #           s3_action: {
    #             topic_arn: "AmazonResourceName",
    #             bucket_name: "S3BucketName", # required
    #             object_key_prefix: "S3KeyPrefix",
    #             kms_key_arn: "AmazonResourceName",
    #           },
    #           bounce_action: {
    #             topic_arn: "AmazonResourceName",
    #             smtp_reply_code: "BounceSmtpReplyCode", # required
    #             status_code: "BounceStatusCode",
    #             message: "BounceMessage", # required
    #             sender: "Address", # required
    #           },
    #           workmail_action: {
    #             topic_arn: "AmazonResourceName",
    #             organization_arn: "AmazonResourceName", # required
    #           },
    #           lambda_action: {
    #             topic_arn: "AmazonResourceName",
    #             function_arn: "AmazonResourceName", # required
    #             invocation_type: "Event", # accepts Event, RequestResponse
    #           },
    #           stop_action: {
    #             scope: "RuleSet", # required, accepts RuleSet
    #             topic_arn: "AmazonResourceName",
    #           },
    #           add_header_action: {
    #             header_name: "HeaderName", # required
    #             header_value: "HeaderValue", # required
    #           },
    #           sns_action: {
    #             topic_arn: "AmazonResourceName", # required
    #             encoding: "UTF-8", # accepts UTF-8, Base64
    #           },
    #         },
    #       ],
    #       scan_enabled: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateReceiptRule AWS API Documentation
    #
    # @overload update_receipt_rule(params = {})
    # @param [Hash] params ({})
    def update_receipt_rule(params = {}, options = {})
      req = build_request(:update_receipt_rule, params)
      req.send_request(options)
    end

    # Updates an email template. Email templates enable you to send
    # personalized email to one or more destinations in a single API
    # operation. For more information, see the [Amazon SES Developer
    # Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @option params [required, Types::Template] :template
    #   The content of the email, composed of a subject line, an HTML part,
    #   and a text-only part.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     template: { # required
    #       template_name: "TemplateName", # required
    #       subject_part: "SubjectPart",
    #       text_part: "TextPart",
    #       html_part: "HtmlPart",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # Returns a set of DKIM tokens for a domain. DKIM *tokens* are character
    # strings that represent your domain's identity. Using these tokens,
    # you will need to create DNS CNAME records that point to DKIM public
    # keys hosted by Amazon SES. Amazon Web Services will eventually detect
    # that you have updated your DNS records; this detection process may
    # take up to 72 hours. Upon successful detection, Amazon SES will be
    # able to DKIM-sign email originating from that domain.
    #
    # You can execute this operation no more than once per second.
    #
    # To enable or disable Easy DKIM signing for a domain, use the
    # `SetIdentityDkimEnabled` operation.
    #
    # For more information about creating DNS records using DKIM tokens, go
    # to the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html
    #
    # @option params [required, String] :domain
    #   The name of the domain to be verified for Easy DKIM signing.
    #
    # @return [Types::VerifyDomainDkimResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyDomainDkimResponse#dkim_tokens #dkim_tokens} => Array&lt;String&gt;
    #
    #
    # @example Example: VerifyDomainDkim
    #
    #   # The following example generates DKIM tokens for a domain that has been verified with Amazon SES:
    #
    #   resp = client.verify_domain_dkim({
    #     domain: "example.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dkim_tokens: [
    #       "EXAMPLEq76owjnks3lnluwg65scbemvw", 
    #       "EXAMPLEi3dnsj67hstzaj673klariwx2", 
    #       "EXAMPLEwfbtcukvimehexktmdtaz6naj", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_domain_dkim({
    #     domain: "Domain", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dkim_tokens #=> Array
    #   resp.dkim_tokens[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyDomainDkim AWS API Documentation
    #
    # @overload verify_domain_dkim(params = {})
    # @param [Hash] params ({})
    def verify_domain_dkim(params = {}, options = {})
      req = build_request(:verify_domain_dkim, params)
      req.send_request(options)
    end

    # Adds a domain to the list of identities for your Amazon SES account in
    # the current AWS Region and attempts to verify it. For more information
    # about verifying domains, see [Verifying Email Addresses and
    # Domains][1] in the *Amazon SES Developer Guide.*
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
    #
    # @option params [required, String] :domain
    #   The domain to be verified.
    #
    # @return [Types::VerifyDomainIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyDomainIdentityResponse#verification_token #verification_token} => String
    #
    #
    # @example Example: VerifyDomainIdentity
    #
    #   # The following example starts the domain verification process with Amazon SES:
    #
    #   resp = client.verify_domain_identity({
    #     domain: "example.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     verification_token: "eoEmxw+YaYhb3h3iVJHuXMJXqeu1q1/wwmvjuEXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_domain_identity({
    #     domain: "Domain", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.verification_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyDomainIdentity AWS API Documentation
    #
    # @overload verify_domain_identity(params = {})
    # @param [Hash] params ({})
    def verify_domain_identity(params = {}, options = {})
      req = build_request(:verify_domain_identity, params)
      req.send_request(options)
    end

    # Deprecated. Use the `VerifyEmailIdentity` operation to verify a new
    # email address.
    #
    # @option params [required, String] :email_address
    #   The email address to be verified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: VerifyEmailAddress
    #
    #   # The following example starts the email address verification process with Amazon SES:
    #
    #   resp = client.verify_email_address({
    #     email_address: "user@example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_email_address({
    #     email_address: "Address", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyEmailAddress AWS API Documentation
    #
    # @overload verify_email_address(params = {})
    # @param [Hash] params ({})
    def verify_email_address(params = {}, options = {})
      req = build_request(:verify_email_address, params)
      req.send_request(options)
    end

    # Adds an email address to the list of identities for your Amazon SES
    # account in the current AWS region and attempts to verify it. As a
    # result of executing this operation, a verification email is sent to
    # the specified address.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :email_address
    #   The email address to be verified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: VerifyEmailIdentity
    #
    #   # The following example starts the email address verification process with Amazon SES:
    #
    #   resp = client.verify_email_identity({
    #     email_address: "user@example.com", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_email_identity({
    #     email_address: "Address", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyEmailIdentity AWS API Documentation
    #
    # @overload verify_email_identity(params = {})
    # @param [Hash] params ({})
    def verify_email_identity(params = {}, options = {})
      req = build_request(:verify_email_identity, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-ses'
      context[:gem_version] = '1.11.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name     | params                                  | :delay   | :max_attempts |
    # | --------------- | --------------------------------------- | -------- | ------------- |
    # | identity_exists | {#get_identity_verification_attributes} | 3        | 20            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        identity_exists: Waiters::IdentityExists
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
