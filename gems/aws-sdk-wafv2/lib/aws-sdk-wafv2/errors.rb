# frozen_string_literal: true

# This is generated code!

module Aws::WAFV2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WAFV2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WAFV2::Errors::ServiceError
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
  # * {WAFAssociatedItemException}
  # * {WAFConfigurationWarningException}
  # * {WAFDuplicateItemException}
  # * {WAFExpiredManagedRuleGroupVersionException}
  # * {WAFInternalErrorException}
  # * {WAFInvalidOperationException}
  # * {WAFInvalidParameterException}
  # * {WAFInvalidPermissionPolicyException}
  # * {WAFInvalidResourceException}
  # * {WAFLimitsExceededException}
  # * {WAFLogDestinationPermissionIssueException}
  # * {WAFNonexistentItemException}
  # * {WAFOptimisticLockException}
  # * {WAFServiceLinkedRoleErrorException}
  # * {WAFSubscriptionNotFoundException}
  # * {WAFTagOperationException}
  # * {WAFTagOperationInternalErrorException}
  # * {WAFUnavailableEntityException}
  # * {WAFUnsupportedAggregateKeyTypeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>WAF couldn’t perform the operation because your resource is being used by another
    #          resource or it’s associated with another resource. </p>
    class WAFAssociatedItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFAssociatedItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
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
    class WAFConfigurationWarningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFConfigurationWarningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t perform the operation because the resource that you tried to save is
    #          a duplicate of an existing one.</p>
    class WAFDuplicateItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFDuplicateItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified version for the managed rule group has
    #          expired. You can retrieve the available versions for the managed rule group by calling
    #             <a>ListAvailableManagedRuleGroupVersions</a>.</p>
    class WAFExpiredManagedRuleGroupVersionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFExpiredManagedRuleGroupVersionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request is valid, but WAF couldn’t perform the operation because of a system
    #          problem. Retry your request. </p>
    class WAFInternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFInternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation isn't valid. </p>
    class WAFInvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFInvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
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
    class WAFInvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFInvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The settings where the invalid parameter was found. </p>
      def field
        @data[:field]
      end

      # <p>The invalid parameter that resulted in the exception. </p>
      def parameter
        @data[:parameter]
      end

      # <p>Additional information about the exception.</p>
      def reason
        @data[:reason]
      end
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
    class WAFInvalidPermissionPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFInvalidPermissionPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t perform the operation because the resource that you requested isn’t
    #          valid. Check the resource, and try again.</p>
    class WAFInvalidResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFInvalidResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t perform the operation because you exceeded your resource limit. For
    #          example, the maximum number of <code>WebACL</code> objects that you can create for an Amazon Web Services
    #          account. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #             <i>WAF Developer Guide</i>.</p>
    class WAFLimitsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFLimitsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Source type for the exception. </p>
      def source_type
        @data[:source_type]
      end
    end

    # <p>The operation failed because you don't have the permissions that your logging
    #          configuration requires. For information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a>
    #          in the <i>WAF Developer Guide</i>.</p>
    class WAFLogDestinationPermissionIssueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFLogDestinationPermissionIssueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t perform the operation because your resource doesn't exist. 
    #        If you've just created a resource that you're using in this operation, you might 
    #        just need to wait a few minutes. It can take from a few seconds to a number of minutes 
    #        for changes to propagate. </p>
    class WAFNonexistentItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFNonexistentItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t save your changes because you tried to update or delete a resource
    #          that has changed since you last retrieved it. Get the resource again, make any changes you
    #          need to make to the new copy, and retry your operation. </p>
    class WAFOptimisticLockException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFOptimisticLockException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF is not able to access the service linked role. This can be caused by a
    #          previous <code>PutLoggingConfiguration</code> request, which can lock the service linked
    #          role for about 20 seconds. Please try your request again. The service linked role can also
    #          be locked by a previous <code>DeleteServiceLinkedRole</code> request, which can lock the
    #          role for 15 minutes or more. If you recently made a call to
    #             <code>DeleteServiceLinkedRole</code>, wait at least 15 minutes and try the request
    #          again. If you receive this same exception again, you will have to wait additional time
    #          until the role is unlocked.</p>
    class WAFServiceLinkedRoleErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFServiceLinkedRoleErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You tried to use a managed rule group that's available by subscription, but you aren't
    #          subscribed to it yet. </p>
    class WAFSubscriptionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFSubscriptionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred during the tagging operation. Retry your request.</p>
    class WAFTagOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFTagOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t perform your tagging operation because of an internal error. Retry
    #          your request.</p>
    class WAFTagOperationInternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFTagOperationInternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>WAF couldn’t retrieve a resource that you specified for this operation. 
    #        If you've just created a resource that you're using in this operation, you might 
    #        just need to wait a few minutes. It can take from a few seconds to a number of minutes 
    #        for changes to propagate. Verify the resource specifications in your request 
    #        parameters and then retry the operation.</p>
    class WAFUnavailableEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFUnavailableEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The rule that you've named doesn't aggregate solely on the IP address or solely on the forwarded IP address. This call 
    #            is only available for rate-based rules with an <code>AggregateKeyType</code> setting of <code>IP</code> or <code>FORWARDED_IP</code>.</p>
    class WAFUnsupportedAggregateKeyTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAFV2::Types::WAFUnsupportedAggregateKeyTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
