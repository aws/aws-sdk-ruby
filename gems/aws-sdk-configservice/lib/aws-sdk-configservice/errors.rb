# frozen_string_literal: true

# This is generated code!

module Aws::ConfigService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ConfigService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ConfigService::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ConflictException}
  # * {ConformancePackTemplateValidationException}
  # * {IdempotentParameterMismatch}
  # * {InsufficientDeliveryPolicyException}
  # * {InsufficientPermissionsException}
  # * {InvalidConfigurationRecorderNameException}
  # * {InvalidDeliveryChannelNameException}
  # * {InvalidExpressionException}
  # * {InvalidLimitException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterValueException}
  # * {InvalidRecordingGroupException}
  # * {InvalidResultTokenException}
  # * {InvalidRoleException}
  # * {InvalidS3KeyPrefixException}
  # * {InvalidS3KmsKeyArnException}
  # * {InvalidSNSTopicARNException}
  # * {InvalidTimeRangeException}
  # * {LastDeliveryChannelDeleteFailedException}
  # * {LimitExceededException}
  # * {MaxActiveResourcesExceededException}
  # * {MaxNumberOfConfigRulesExceededException}
  # * {MaxNumberOfConfigurationRecordersExceededException}
  # * {MaxNumberOfConformancePacksExceededException}
  # * {MaxNumberOfDeliveryChannelsExceededException}
  # * {MaxNumberOfOrganizationConfigRulesExceededException}
  # * {MaxNumberOfOrganizationConformancePacksExceededException}
  # * {MaxNumberOfRetentionConfigurationsExceededException}
  # * {NoAvailableConfigurationRecorderException}
  # * {NoAvailableDeliveryChannelException}
  # * {NoAvailableOrganizationException}
  # * {NoRunningConfigurationRecorderException}
  # * {NoSuchBucketException}
  # * {NoSuchConfigRuleException}
  # * {NoSuchConfigRuleInConformancePackException}
  # * {NoSuchConfigurationAggregatorException}
  # * {NoSuchConfigurationRecorderException}
  # * {NoSuchConformancePackException}
  # * {NoSuchDeliveryChannelException}
  # * {NoSuchOrganizationConfigRuleException}
  # * {NoSuchOrganizationConformancePackException}
  # * {NoSuchRemediationConfigurationException}
  # * {NoSuchRemediationExceptionException}
  # * {NoSuchRetentionConfigurationException}
  # * {OrganizationAccessDeniedException}
  # * {OrganizationAllFeaturesNotEnabledException}
  # * {OrganizationConformancePackTemplateValidationException}
  # * {OversizedConfigurationItemException}
  # * {RemediationInProgressException}
  # * {ResourceConcurrentModificationException}
  # * {ResourceInUseException}
  # * {ResourceNotDiscoveredException}
  # * {ResourceNotFoundException}
  # * {TooManyTagsException}
  # * {UnmodifiableEntityException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutServiceLinkedConfigurationRecorder.html">PutServiceLinkedConfigurationRecorder</a>, you cannot create a service-linked recorder because a service-linked recorder already exists for the specified service.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteServiceLinkedConfigurationRecorder.html">DeleteServiceLinkedConfigurationRecorder</a>, you cannot delete the service-linked recorder because it is currently in use by the linked Amazon Web Services service.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteDeliveryChannel.html">DeleteDeliveryChannel</a>, you cannot delete the specified delivery channel because the customer managed configuration recorder is running. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StopConfigurationRecorder.html">StopConfigurationRecorder</a> operation to stop the customer managed configuration
    # 			recorder.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_AssociateResourceTypes.html">AssociateResourceTypes</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DisassociateResourceTypes.html">DisassociateResourceTypes</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>For service-linked configuration recorders, the configuration recorder is not in use by the service. No association or dissociation of resource types is permitted.</p>
    #             </li>
    #             <li>
    #                <p>For service-linked configuration recorders, your requested change to the configuration recorder has been denied by its linked Amazon Web Services service.</p>
    #             </li>
    #          </ul>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a template that is not valid or supported.</p>
    class ConformancePackTemplateValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ConformancePackTemplateValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Using the same client token with one or more different parameters. Specify a new client token with the parameter changes and try again.</p>
    class IdempotentParameterMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::IdempotentParameterMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your Amazon S3 bucket policy does not allow Config to
    # 			write to it.</p>
    class InsufficientDeliveryPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InsufficientDeliveryPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Indicates one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigRule.html">PutConfigRule</a>, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.</p>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigRule.html">PutConfigRule</a>, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutOrganizationConfigRule.html">PutOrganizationConfigRule</a>, organization Config rule cannot be created because you do not have permissions to call IAM <code>GetRole</code> action or create a service-linked role.</p>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html">PutConformancePack</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutOrganizationConformancePack.html">PutOrganizationConformancePack</a>, a conformance pack cannot be created because you do not have the following permissions: </p>
    #                <ul>
    #                   <li>
    #                      <p>You do not have permission to call IAM <code>GetRole</code> action or create a service-linked role.</p>
    #                   </li>
    #                   <li>
    #                      <p>You do not have permission to read Amazon S3 bucket or call SSM:GetDocument.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutServiceLinkedConfigurationRecorder.html">PutServiceLinkedConfigurationRecorder</a>, a service-linked configuration recorder cannot be created because you do not have the following permissions: IAM <code>CreateServiceLinkedRole</code>.</p>
    #             </li>
    #          </ul>
    class InsufficientPermissionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InsufficientPermissionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The configuration recorder name is not valid. The prefix "<code>AWSConfigurationRecorderFor</code>" is reserved for service-linked configuration recorders.</p>
    class InvalidConfigurationRecorderNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidConfigurationRecorderNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified delivery channel name is not valid.</p>
    class InvalidDeliveryChannelNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidDeliveryChannelNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The syntax of the query is incorrect.</p>
    class InvalidExpressionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidExpressionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified limit is outside the allowable range.</p>
    class InvalidLimitException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidLimitException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified next token is not valid. Specify the
    # 				<code>nextToken</code> string that was returned in the previous
    # 			response to get the next page of results.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>One or more of the specified parameters are not valid. Verify
    # 			that your parameters are valid and try again.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>One of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>You have provided a combination of parameter values that is not valid. For example:</p>
    #                <ul>
    #                   <li>
    #                      <p>Setting the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>,
    # 						but providing a non-empty list for the <code>resourceTypes</code>field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Setting the <code>allSupported</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> to <code>true</code>, but also setting the <code>useOnly</code> field of <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> to <code>EXCLUSION_BY_RESOURCE_TYPES</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Every parameter is either null, false, or empty.</p>
    #             </li>
    #             <li>
    #                <p>You have reached the limit of the number of resource types you can provide for the recording group.</p>
    #             </li>
    #             <li>
    #                <p>You have provided resource types or a recording strategy that are not valid.</p>
    #             </li>
    #          </ul>
    class InvalidRecordingGroupException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidRecordingGroupException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified <code>ResultToken</code> is not valid.</p>
    class InvalidResultTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidResultTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have provided a null or empty Amazon Resource Name (ARN) for the IAM role assumed by Config and used by the customer managed configuration recorder.</p>
    class InvalidRoleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidRoleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon S3 key prefix is not valid.</p>
    class InvalidS3KeyPrefixException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidS3KeyPrefixException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon KMS Key ARN is not valid.</p>
    class InvalidS3KmsKeyArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidS3KmsKeyArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon SNS topic does not exist.</p>
    class InvalidSNSTopicARNException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidSNSTopicARNException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified time range is not valid. The earlier time is not
    # 			chronologically before the later time.</p>
    class InvalidTimeRangeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::InvalidTimeRangeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You cannot delete the delivery channel you specified because the customer managed configuration recorder is running.</p>
    class LastDeliveryChannelDeleteFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::LastDeliveryChannelDeleteFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>For <code>PutServiceLinkedConfigurationRecorder</code> API, this exception
    # 			is thrown if the number of service-linked roles in the account exceeds the limit.</p>
    #          <p>For <code>StartConfigRulesEvaluation</code> API, this exception
    # 			is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per
    # 			minute.</p>
    #          <p>For <code>PutConfigurationAggregator</code> API, this exception
    # 			is thrown if the number of accounts and aggregators exceeds the
    # 			limit.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of active custom resource types in your account. There is a limit of 100,000.
    # 			Delete unused resources using <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteResourceConfig.html">DeleteResourceConfig</a>
    #             <code></code>.</p>
    class MaxActiveResourcesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxActiveResourcesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Failed to add the Config rule because the account already
    # 			contains the maximum number of 1000 rules. Consider deleting any
    # 			deactivated rules before you add new rules.</p>
    class MaxNumberOfConfigRulesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfConfigRulesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of the number of configuration recorders you can
    # 			create.</p>
    class MaxNumberOfConfigurationRecordersExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfConfigurationRecordersExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of the number of conformance packs you can create in an account. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    class MaxNumberOfConformancePacksExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfConformancePacksExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of the number of delivery channels
    # 			you can create.</p>
    class MaxNumberOfDeliveryChannelsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfDeliveryChannelsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of the number of organization Config rules you can create. For more information, see see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    class MaxNumberOfOrganizationConfigRulesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfOrganizationConfigRulesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of the number of organization conformance packs you can create in an account. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    class MaxNumberOfOrganizationConformancePacksExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfOrganizationConformancePacksExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Failed to add the retention configuration because a retention configuration with that name already exists.</p>
    class MaxNumberOfRetentionConfigurationsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::MaxNumberOfRetentionConfigurationsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>There are no customer managed configuration recorders available to record your resources. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigurationRecorder.html">PutConfigurationRecorder</a> operation to create the customer managed configuration
    # 			recorder.</p>
    class NoAvailableConfigurationRecorderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoAvailableConfigurationRecorderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>There is no delivery channel available to record
    # 			configurations.</p>
    class NoAvailableDeliveryChannelException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoAvailableDeliveryChannelException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Organization is no longer available.</p>
    class NoAvailableOrganizationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoAvailableOrganizationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>There is no configuration recorder running.</p>
    class NoRunningConfigurationRecorderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoRunningConfigurationRecorderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon S3 bucket does not exist.</p>
    class NoSuchBucketException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchBucketException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The Config rule in the request is not valid. Verify that the rule is an Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.</p>
    class NoSuchConfigRuleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchConfigRuleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Config rule that you passed in the filter does not exist.</p>
    class NoSuchConfigRuleInConformancePackException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchConfigRuleInConformancePackException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a configuration aggregator that does not exist.</p>
    class NoSuchConfigurationAggregatorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchConfigurationAggregatorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a configuration recorder that does not
    # 			exist.</p>
    class NoSuchConfigurationRecorderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchConfigurationRecorderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You specified one or more conformance packs that do not exist.</p>
    class NoSuchConformancePackException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchConformancePackException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a delivery channel that does not
    # 			exist.</p>
    class NoSuchDeliveryChannelException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchDeliveryChannelException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The Config rule in the request is not valid. Verify that the rule is an organization Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.</p>
    class NoSuchOrganizationConfigRuleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchOrganizationConfigRuleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Config organization conformance pack that you passed in the filter does not exist.</p>
    #          <p>For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.</p>
    class NoSuchOrganizationConformancePackException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchOrganizationConformancePackException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You specified an Config rule without a remediation configuration.</p>
    class NoSuchRemediationConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchRemediationConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You tried to delete a remediation exception that does not exist.</p>
    class NoSuchRemediationExceptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchRemediationExceptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a retention configuration that does not exist.</p>
    class NoSuchRetentionConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::NoSuchRetentionConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>For <code>PutConfigurationAggregator</code> API, you can see this exception for the following reasons:</p>
    #          <ul>
    #             <li>
    #                <p>No permission to call <code>EnableAWSServiceAccess</code> API</p>
    #             </li>
    #             <li>
    #                <p>The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed. 
    # 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.</p>
    #             </li>
    #             <li>
    #                <p>The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization. 
    # 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.</p>
    #             </li>
    #             <li>
    #                <p>You are not a registered delegated administrator for Config with permissions to call <code>ListDelegatedAdministrators</code> API. 
    # 			Ensure that the management account registers delagated administrator for Config service principal name before the delegated administrator creates an aggregator.</p>
    #             </li>
    #          </ul>
    #          <p>For all <code>OrganizationConfigRule</code> and <code>OrganizationConformancePack</code> APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization management account.</p>
    class OrganizationAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::OrganizationAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Config resource cannot be created because your organization does not have all features enabled.</p>
    class OrganizationAllFeaturesNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::OrganizationAllFeaturesNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a template that is not valid or supported.</p>
    class OrganizationConformancePackTemplateValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::OrganizationConformancePackTemplateValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The configuration item size is outside the allowable range.</p>
    class OversizedConfigurationItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::OversizedConfigurationItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later. </p>
    class RemediationInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::RemediationInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>Two users are trying to modify the same query at the same time. Wait for a moment and try again.</p>
    class ResourceConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ResourceConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You see this exception in the following cases: </p>
    #          <ul>
    #             <li>
    #                <p>For DeleteConfigRule, Config is deleting this rule. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
    #             </li>
    #          </ul>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a resource that is either unknown or has not
    # 			been discovered.</p>
    class ResourceNotDiscoveredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ResourceNotDiscoveredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have specified a resource that does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>You have reached the limit of the number of tags you can use. 
    # 			For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested operation is not valid.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutConfigurationRecorder.html">PutConfigurationRecorder</a>,
    # 			you will see this exception because you cannot use this operation to create a service-linked configuration recorder. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutServiceLinkedConfigurationRecorder.html">PutServiceLinkedConfigurationRecorder</a> operation to create a service-linked configuration
    # 			recorder.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteConfigurationRecorder.html">DeleteConfigurationRecorder</a>, you will see this exception because you cannot use this operation to delete a service-linked configuration recorder. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteServiceLinkedConfigurationRecorder.html">DeleteServiceLinkedConfigurationRecorder</a> operation to delete a service-linked configuration
    # 			recorder.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StartConfigurationRecorder.html">StartConfigurationRecorder</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StopConfigurationRecorder.html">StopConfigurationRecorder</a>, you will see this exception because these operations do not affect service-linked configuration recorders.
    # 			Service-linked configuration recorders are always recording. To stop recording, you must delete the service-linked configuration recorder. Use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeleteServiceLinkedConfigurationRecorder.html">DeleteServiceLinkedConfigurationRecorder</a> operation to delete a service-linked configuration
    # 			recorder.</p>
    class UnmodifiableEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::UnmodifiableEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested operation is not valid. You will see this exception if there are missing required fields or if the input value fails the validation.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutStoredQuery.html">PutStoredQuery</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>There are missing required fields.</p>
    #             </li>
    #             <li>
    #                <p>The input value fails the validation.</p>
    #             </li>
    #             <li>
    #                <p>You are trying to create more than 300 queries.</p>
    #             </li>
    #          </ul>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorders.html">DescribeConfigurationRecorders</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorderStatus.html">DescribeConfigurationRecorderStatus</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>You have specified more than one configuration recorder.</p>
    #             </li>
    #             <li>
    #                <p>You have provided a service principal for service-linked configuration recorder that is not valid.</p>
    #             </li>
    #          </ul>
    #          <p>For <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_AssociateResourceTypes.html">AssociateResourceTypes</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DisassociateResourceTypes.html">DisassociateResourceTypes</a>, one of the following errors:</p>
    #          <ul>
    #             <li>
    #                <p>Your configuraiton recorder has a recording strategy that does not allow the association or disassociation of resource types.</p>
    #             </li>
    #             <li>
    #                <p>One or more of the specified resource types are already associated or disassociated with the configuration recorder.</p>
    #             </li>
    #             <li>
    #                <p>For service-linked configuration recorders, the configuration recorder does not record one or more of the specified resource types.</p>
    #             </li>
    #          </ul>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConfigService::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error executing the command</p>
      def message
        @data[:message]
      end
    end
  end
end
