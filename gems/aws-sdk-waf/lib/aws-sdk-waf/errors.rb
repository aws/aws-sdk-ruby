# frozen_string_literal: true

# This is generated code!

module Aws::WAF
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WAF::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WAF::Errors::ServiceError
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
  # * {WAFBadRequestException}
  # * {WAFDisallowedNameException}
  # * {WAFEntityMigrationException}
  # * {WAFInternalErrorException}
  # * {WAFInvalidAccountException}
  # * {WAFInvalidOperationException}
  # * {WAFInvalidParameterException}
  # * {WAFInvalidPermissionPolicyException}
  # * {WAFInvalidRegexPatternException}
  # * {WAFLimitsExceededException}
  # * {WAFNonEmptyEntityException}
  # * {WAFNonexistentContainerException}
  # * {WAFNonexistentItemException}
  # * {WAFReferencedItemException}
  # * {WAFServiceLinkedRoleErrorException}
  # * {WAFStaleDataException}
  # * {WAFSubscriptionNotFoundException}
  # * {WAFTagOperationException}
  # * {WAFTagOperationInternalErrorException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p></p>
    class WAFBadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFBadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The name specified is invalid.</p>
    class WAFDisallowedNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFDisallowedNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed due to a problem with the migration. The failure cause is provided in the exception, in the <code>MigrationErrorType</code>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ENTITY_NOT_SUPPORTED</code> - The web ACL has an unsupported entity but the <code>IgnoreUnsupportedType</code> is not set to true.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ENTITY_NOT_FOUND</code> - The web ACL doesn't exist.  </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_NO_PERMISSION</code> - You don't have permission to perform the <code>PutObject</code> action to the specified Amazon S3 bucket.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_NOT_ACCESSIBLE</code> - The bucket policy doesn't allow AWS WAF to perform the <code>PutObject</code> action in the bucket.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_NOT_FOUND</code> - The S3 bucket doesn't exist. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_INVALID_REGION</code> - The S3 bucket is not in the same Region as the web ACL.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_INTERNAL_ERROR</code> - AWS WAF failed to create the template in the S3 bucket for another reason.</p>
    #             </li>
    #          </ul>
    class WAFEntityMigrationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFEntityMigrationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def migration_error_type
        @data[:migration_error_type]
      end

      def migration_error_reason
        @data[:migration_error_reason]
      end
    end

    # <p>The operation failed because of a system problem, even though the request was valid. Retry your request.</p>
    class WAFInternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFInternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.</p>
    class WAFInvalidAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFInvalidAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The operation failed because there was nothing to do. For example:</p>
    # 			      <ul>
    #             <li>
    #                <p>You tried to remove a <code>Rule</code> from a <code>WebACL</code>, but the <code>Rule</code> isn't in the specified <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to remove an IP address from an <code>IPSet</code>, but the IP address isn't in the specified <code>IPSet</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to remove a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> 
    # 					isn't in the specified <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>Rule</code> to a <code>WebACL</code>, but the <code>Rule</code> already exists in the 
    # 					specified <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>ByteMatchTuple</code> to a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> 
    #                already exists in the specified <code>WebACL</code>.</p>
    #             </li>
    #          </ul>
    class WAFInvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFInvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because AWS WAF didn't recognize a parameter in the request. For example:</p>
    # 			      <ul>
    #             <li>
    #                <p>You specified an invalid parameter name.</p>
    #             </li>
    #             <li>
    #                <p>You specified an invalid value.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update an object (<code>ByteMatchSet</code>, <code>IPSet</code>, <code>Rule</code>, or <code>WebACL</code>) 
    # 					using an action other than <code>INSERT</code> or <code>DELETE</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to create a <code>WebACL</code> with a <code>DefaultAction</code> 
    #                   <code>Type</code> other than 
    # 					<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>
    #             </li>
    #             <li>
    # 		 	           <p>You tried to create a <code>RateBasedRule</code> with a <code>RateKey</code> value other than <code>IP</code>.</p>
    # 		          </li>
    #             <li>
    #                <p>You tried to update a <code>WebACL</code> with a <code>WafAction</code> 
    #                   <code>Type</code> other than 
    # 					<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a <code>ByteMatchSet</code> with a <code>FieldToMatch</code> 
    #                   <code>Type</code> other than 
    # 					HEADER, METHOD, QUERY_STRING, URI, or BODY.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a <code>ByteMatchSet</code> with a <code>Field</code> of <code>HEADER</code> 
    # 					but no value for <code>Data</code>.</p>
    #             </li>
    #             <li>
    # 			   		       <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.</p>
    # 			   	     </li>
    #          </ul>
    class WAFInvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFInvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def field
        @data[:field]
      end

      def parameter
        @data[:parameter]
      end

      def reason
        @data[:reason]
      end
    end

    # <p>The operation failed because the specified policy is not in the proper format. </p>
    #          <p>The policy is subject to the following restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p>
    #             </li>
    #             <li>
    #                <p>The policy must include an <code>Effect</code>, <code>Action</code> and <code>Principal</code>. </p>
    #             </li>
    #             <li>
    #             
    #                <p>
    #                   <code>Effect</code> must specify <code>Allow</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Action</code> in the policy must be <code>waf:UpdateWebACL</code>, <code>waf-regional:UpdateWebACL</code>, <code>waf:GetRuleGroup</code> and <code>waf-regional:GetRuleGroup</code> . Any extra or wildcard actions in the policy will be rejected.</p>
    #             </li>
    #             <li>
    #                <p>The policy cannot include a <code>Resource</code> parameter.</p>
    #             </li>
    #             <li>
    #                <p>The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.</p>
    #             </li>
    #             <li>
    #                <p>The user making the request must be the owner of the RuleGroup.</p>
    #             </li>
    #             <li> 
    #                <p>Your policy must be composed using IAM Policy version 2012-10-17.</p>
    #             </li>
    #          </ul>
    class WAFInvalidPermissionPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFInvalidPermissionPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The regular expression (regex) you specified in <code>RegexPatternString</code> is invalid.</p>
    class WAFInvalidRegexPatternException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFInvalidRegexPatternException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation exceeds a resource limit, for example, the maximum number of <code>WebACL</code> objects that you can create 
    # 			for an AWS account. For more information, see 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">Limits</a> in the <i>AWS WAF Developer Guide</i>.</p>
    class WAFLimitsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFLimitsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because you tried to delete an object that isn't empty. For example:</p>
    # 		       <ul>
    #             <li>
    #                <p>You tried to delete a <code>WebACL</code> that still contains one or more <code>Rule</code> objects.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a <code>Rule</code> that still contains one or more <code>ByteMatchSet</code> objects 
    # 				or other predicates.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a <code>ByteMatchSet</code> that contains one or more <code>ByteMatchTuple</code> objects.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete an <code>IPSet</code> that references one or more IP addresses.</p>
    #             </li>
    #          </ul>
    class WAFNonEmptyEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFNonEmptyEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:</p>
    # 		       <ul>
    #             <li>
    #                <p>You tried to add a <code>Rule</code> to or delete a <code>Rule</code> from a <code>WebACL</code> that doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>ByteMatchSet</code> to or delete a <code>ByteMatchSet</code> from a <code>Rule</code> that doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add an IP address to or delete an IP address from an <code>IPSet</code> that doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>ByteMatchTuple</code> to or delete a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code> 
    # 				that doesn't exist.</p>
    #             </li>
    #          </ul>
    class WAFNonexistentContainerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFNonexistentContainerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the referenced object doesn't exist.</p>
    class WAFNonexistentItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFNonexistentItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because you tried to delete an object that is still in use. For example:</p>
    # 		       <ul>
    #             <li>
    #                <p>You tried to delete a <code>ByteMatchSet</code> that is still referenced by a <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a <code>Rule</code> that is still referenced by a <code>WebACL</code>.</p>
    #             </li>
    #          </ul>
    class WAFReferencedItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFReferencedItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>AWS WAF is not able to access the service linked role. This can be caused by a previous <code>PutLoggingConfiguration</code> request, which can lock the service linked role for about 20 seconds. Please try your request again. The service linked role can also be locked by a previous <code>DeleteServiceLinkedRole</code> request, which can lock the role for 15 minutes or more. If you recently made a <code>DeleteServiceLinkedRole</code>, wait at least 15 minutes and try the request again. If you receive this same exception again, you will have to wait additional time until the role is unlocked.</p>
    class WAFServiceLinkedRoleErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFServiceLinkedRoleErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.</p>
    class WAFStaleDataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFStaleDataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subscription does not exist.</p>
    class WAFSubscriptionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFSubscriptionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class WAFTagOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFTagOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class WAFTagOperationInternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WAF::Types::WAFTagOperationInternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
