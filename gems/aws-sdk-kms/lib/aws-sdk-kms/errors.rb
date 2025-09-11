# frozen_string_literal: true

# This is generated code!

module Aws::KMS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::KMS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KMS::Errors::ServiceError
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
  # * {AlreadyExistsException}
  # * {CloudHsmClusterInUseException}
  # * {CloudHsmClusterInvalidConfigurationException}
  # * {CloudHsmClusterNotActiveException}
  # * {CloudHsmClusterNotFoundException}
  # * {CloudHsmClusterNotRelatedException}
  # * {ConflictException}
  # * {CustomKeyStoreHasCMKsException}
  # * {CustomKeyStoreInvalidStateException}
  # * {CustomKeyStoreNameInUseException}
  # * {CustomKeyStoreNotFoundException}
  # * {DependencyTimeoutException}
  # * {DisabledException}
  # * {DryRunOperationException}
  # * {ExpiredImportTokenException}
  # * {IncorrectKeyException}
  # * {IncorrectKeyMaterialException}
  # * {IncorrectTrustAnchorException}
  # * {InvalidAliasNameException}
  # * {InvalidArnException}
  # * {InvalidCiphertextException}
  # * {InvalidGrantIdException}
  # * {InvalidGrantTokenException}
  # * {InvalidImportTokenException}
  # * {InvalidKeyUsageException}
  # * {InvalidMarkerException}
  # * {KMSInternalException}
  # * {KMSInvalidMacException}
  # * {KMSInvalidSignatureException}
  # * {KMSInvalidStateException}
  # * {KeyUnavailableException}
  # * {LimitExceededException}
  # * {MalformedPolicyDocumentException}
  # * {NotFoundException}
  # * {TagException}
  # * {UnsupportedOperationException}
  # * {XksKeyAlreadyInUseException}
  # * {XksKeyInvalidConfigurationException}
  # * {XksKeyNotFoundException}
  # * {XksProxyIncorrectAuthenticationCredentialException}
  # * {XksProxyInvalidConfigurationException}
  # * {XksProxyInvalidResponseException}
  # * {XksProxyUriEndpointInUseException}
  # * {XksProxyUriInUseException}
  # * {XksProxyUriUnreachableException}
  # * {XksProxyVpcEndpointServiceInUseException}
  # * {XksProxyVpcEndpointServiceInvalidConfigurationException}
  # * {XksProxyVpcEndpointServiceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request was rejected because it attempted to create a resource that already
    #       exists.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified CloudHSM cluster is already associated with an
    #       CloudHSM key store in the account, or it shares a backup history with an CloudHSM key store in the
    #       account. Each CloudHSM key store in the account must be associated with a different CloudHSM
    #       cluster.</p>
    #          <p>CloudHSM clusters that share a backup history have the same cluster certificate. To view the
    #       cluster certificate of an CloudHSM cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    class CloudHsmClusterInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CloudHsmClusterInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the associated CloudHSM cluster did not meet the
    #       configuration requirements for an CloudHSM key store.</p>
    #          <ul>
    #             <li>
    #                <p>The CloudHSM cluster must be configured with private subnets in at least two different
    #           Availability Zones in the Region.</p>
    #             </li>
    #             <li>
    #                <p>The <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html">security group for
    #             the cluster</a> (cloudhsm-cluster-<i><cluster-id></i>-sg) must
    #           include inbound rules and outbound rules that allow TCP traffic on ports 2223-2225. The
    #             <b>Source</b> in the inbound rules and the <b>Destination</b> in the outbound rules must match the security group
    #           ID. These rules are set by default when you create the CloudHSM cluster. Do not delete or
    #           change them. To get information about a particular security group, use the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html">DescribeSecurityGroups</a> operation.</p>
    #             </li>
    #             <li>
    #                <p>The CloudHSM cluster must contain at least as many HSMs as the operation requires. To add
    #           HSMs, use the CloudHSM <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html">CreateHsm</a> operation.</p>
    #                <p>For the <a>CreateCustomKeyStore</a>, <a>UpdateCustomKeyStore</a>, and <a>CreateKey</a> operations, the CloudHSM cluster must have at least two
    #           active HSMs, each in a different Availability Zone. For the <a>ConnectCustomKeyStore</a> operation, the CloudHSM must contain at least one active
    #           HSM.</p>
    #             </li>
    #          </ul>
    #          <p>For information about the requirements for an CloudHSM cluster that is associated with an
    #       CloudHSM key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">Assemble the Prerequisites</a>
    #       in the <i>Key Management Service Developer Guide</i>. For information about creating a private subnet for an CloudHSM cluster,
    #       see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/create-subnets.html">Create a Private
    #         Subnet</a> in the <i>CloudHSM User Guide</i>. For information about cluster security groups, see
    #         <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html">Configure a Default Security
    #         Group</a> in the <i>
    #                <i>CloudHSM User Guide</i>
    #             </i>. </p>
    class CloudHsmClusterInvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CloudHsmClusterInvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the CloudHSM cluster associated with the CloudHSM key store is
    #       not active. Initialize and activate the cluster and try the command again. For detailed
    #       instructions, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/getting-started.html">Getting
    #         Started</a> in the <i>CloudHSM User Guide</i>.</p>
    class CloudHsmClusterNotActiveException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CloudHsmClusterNotActiveException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because KMS cannot find the CloudHSM cluster with the specified
    #       cluster ID. Retry the request with a different cluster ID.</p>
    class CloudHsmClusterNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CloudHsmClusterNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified CloudHSM cluster has a different cluster
    #       certificate than the original cluster. You cannot use the operation to specify an unrelated
    #       cluster for an CloudHSM key store.</p>
    #          <p>Specify an CloudHSM cluster that shares a backup history with the original cluster. This
    #       includes clusters that were created from a backup of the current cluster, and clusters that
    #       were created from the same backup that produced the current cluster.</p>
    #          <p>CloudHSM clusters that share a backup history have the same cluster certificate. To view the
    #       cluster certificate of an CloudHSM cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    class CloudHsmClusterNotRelatedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CloudHsmClusterNotRelatedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because an automatic rotation of this key is currently in
    #       progress or scheduled to begin within the next 20 minutes. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the custom key store contains KMS keys. After verifying
    #       that you do not need to use the KMS keys, use the <a>ScheduleKeyDeletion</a>
    #       operation to delete the KMS keys. After they are deleted, you can delete the custom key
    #       store.</p>
    class CustomKeyStoreHasCMKsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CustomKeyStoreHasCMKsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because of the <code>ConnectionState</code> of the custom key
    #       store. To get the <code>ConnectionState</code> of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #          <p>This exception is thrown under the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>You requested the <a>ConnectCustomKeyStore</a> operation on a custom key
    #           store with a <code>ConnectionState</code> of <code>DISCONNECTING</code> or
    #             <code>FAILED</code>. This operation is valid for all other <code>ConnectionState</code>
    #           values. To reconnect a custom key store in a <code>FAILED</code> state, disconnect it
    #             (<a>DisconnectCustomKeyStore</a>), then connect it
    #             (<code>ConnectCustomKeyStore</code>).</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>CreateKey</a> operation in a custom key store that is
    #           not connected. This operations is valid only when the custom key store
    #             <code>ConnectionState</code> is <code>CONNECTED</code>.</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>DisconnectCustomKeyStore</a> operation on a custom key
    #           store with a <code>ConnectionState</code> of <code>DISCONNECTING</code> or
    #             <code>DISCONNECTED</code>. This operation is valid for all other
    #             <code>ConnectionState</code> values.</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>UpdateCustomKeyStore</a> or <a>DeleteCustomKeyStore</a> operation on a custom key store that is not
    #           disconnected. This operation is valid only when the custom key store
    #             <code>ConnectionState</code> is <code>DISCONNECTED</code>.</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>GenerateRandom</a> operation in an CloudHSM key store
    #           that is not connected. This operation is valid only when the CloudHSM key store
    #             <code>ConnectionState</code> is <code>CONNECTED</code>. </p>
    #             </li>
    #          </ul>
    class CustomKeyStoreInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CustomKeyStoreInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified custom key store name is already assigned
    #       to another custom key store in the account. Try again with a custom key store name that is
    #       unique in the account.</p>
    class CustomKeyStoreNameInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CustomKeyStoreNameInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because KMS cannot find a custom key store with the specified
    #       key store name or ID.</p>
    class CustomKeyStoreNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::CustomKeyStoreNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The system timed out while trying to fulfill the request. You can retry the
    #       request.</p>
    class DependencyTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::DependencyTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified KMS key is not enabled.</p>
    class DisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::DisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The request was rejected because the DryRun parameter was specified. </p>
    class DryRunOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::DryRunOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified import token is expired. Use <a>GetParametersForImport</a> to get a new import token and public key, use the new
    #       public key to encrypt the key material, and then try the request again.</p>
    class ExpiredImportTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::ExpiredImportTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified KMS key cannot decrypt the data. The
    #         <code>KeyId</code> in a <a>Decrypt</a> request and the <code>SourceKeyId</code>
    #       in a <a>ReEncrypt</a> request must identify the same KMS key that was used to
    #       encrypt the ciphertext.</p>
    class IncorrectKeyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::IncorrectKeyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the key material in the request is, expired, invalid, or
    #       does not meet expectations. For example, it is not the same key material that was previously
    #       imported or KMS expected new key material but the key material being imported is already
    #       associated with the KMS key.</p>
    class IncorrectKeyMaterialException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::IncorrectKeyMaterialException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the trust anchor certificate in the request to create an
    #       CloudHSM key store is not the trust anchor certificate for the specified CloudHSM cluster.</p>
    #          <p>When you <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr">initialize the CloudHSM cluster</a>, you create the trust anchor certificate and save it
    #       in the <code>customerCA.crt</code> file.</p>
    class IncorrectTrustAnchorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::IncorrectTrustAnchorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified alias name is not valid.</p>
    class InvalidAliasNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidAliasNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because a specified ARN, or an ARN in a key policy, is not
    #       valid.</p>
    class InvalidArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>From the <a>Decrypt</a> or <a>ReEncrypt</a> operation, the request
    #       was rejected because the specified ciphertext, or additional authenticated data incorporated
    #       into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise
    #       invalid.</p>
    #          <p>From the <a>ImportKeyMaterial</a> operation, the request was rejected because
    #       KMS could not decrypt the encrypted (wrapped) key material. </p>
    class InvalidCiphertextException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidCiphertextException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
    class InvalidGrantIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidGrantIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified grant token is not valid.</p>
    class InvalidGrantTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidGrantTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the provided import token is invalid or is associated
    #       with a different KMS key.</p>
    class InvalidImportTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidImportTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected for one of the following reasons: </p>
    #          <ul>
    #             <li>
    #                <p>The <code>KeyUsage</code> value of the KMS key is incompatible with the API
    #           operation.</p>
    #             </li>
    #             <li>
    #                <p>The encryption algorithm or signing algorithm specified for the operation is
    #           incompatible with the type of key material in the KMS key <code>(KeySpec</code>).</p>
    #             </li>
    #          </ul>
    #          <p>For encrypting, decrypting, re-encrypting, and generating data keys, the
    #         <code>KeyUsage</code> must be <code>ENCRYPT_DECRYPT</code>. For signing and verifying
    #       messages, the <code>KeyUsage</code> must be <code>SIGN_VERIFY</code>. For generating and
    #       verifying message authentication codes (MACs), the <code>KeyUsage</code> must be
    #         <code>GENERATE_VERIFY_MAC</code>. For deriving key agreement secrets, the
    #         <code>KeyUsage</code> must be <code>KEY_AGREEMENT</code>. To find the <code>KeyUsage</code>
    #       of a KMS key, use the <a>DescribeKey</a> operation.</p>
    #          <p>To find the encryption or signing algorithms supported for a particular KMS key, use the
    #         <a>DescribeKey</a> operation.</p>
    class InvalidKeyUsageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidKeyUsageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the marker that specifies where pagination should next
    #       begin is not valid.</p>
    class InvalidMarkerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::InvalidMarkerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because an internal exception occurred. The request can be
    #       retried.</p>
    class KMSInternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::KMSInternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the HMAC verification failed. HMAC verification fails
    #       when the HMAC computed by using the specified message, HMAC KMS key, and MAC algorithm does
    #       not match the HMAC specified in the request.</p>
    class KMSInvalidMacException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::KMSInvalidMacException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the signature verification failed. Signature verification
    #       fails when it cannot confirm that signature was produced by signing the specified message with
    #       the specified KMS key and signing algorithm.</p>
    class KMSInvalidSignatureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::KMSInvalidSignatureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the state of the specified resource is not valid for this
    #       request.</p>
    #          <p>This exceptions means one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The key state of the KMS key is not compatible with the operation. </p>
    #                <p>To find the key state, use the <a>DescribeKey</a> operation. For more
    #           information about which key states are compatible with each KMS operation, see
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>
    #                      <i>Key Management Service Developer Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>For cryptographic operations on KMS keys in custom key stores, this exception
    #           represents a general failure with many possible causes. To identify the cause, see the
    #           error message that accompanies the exception.</p>
    #             </li>
    #          </ul>
    class KMSInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::KMSInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified KMS key was not available. You can retry
    #       the request.</p>
    class KeyUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::KeyUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because a length constraint or quota was exceeded. For more
    #       information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Quotas</a> in
    #       the <i>Key Management Service Developer Guide</i>.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified policy is not syntactically or semantically
    #       correct.</p>
    class MalformedPolicyDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::MalformedPolicyDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified entity or resource could not be
    #       found.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because one or more tags are not valid.</p>
    class TagException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::TagException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because a specified parameter is not supported or a specified
    #       resource is not valid for this operation.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the (<code>XksKeyId</code>) is already associated with
    #       another KMS key in this external key store. Each KMS key in an external key store must be
    #       associated with a different external key.</p>
    class XksKeyAlreadyInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksKeyAlreadyInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the external key specified by the <code>XksKeyId</code>
    #       parameter did not meet the configuration requirements for an external key store.</p>
    #          <p>The external key must be an AES-256 symmetric key that is enabled and performs encryption
    #       and decryption.</p>
    class XksKeyInvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksKeyInvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the external key store proxy could not find the external
    #       key. This exception is thrown when the value of the <code>XksKeyId</code> parameter doesn't
    #       identify a key in the external key manager associated with the external key proxy.</p>
    #          <p>Verify that the <code>XksKeyId</code> represents an existing key in the external key
    #       manager. Use the key identifier that the external key store proxy uses to identify the key.
    #       For details, see the documentation provided with your external key store proxy or key
    #       manager.</p>
    class XksKeyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksKeyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the proxy credentials failed to authenticate to the
    #       specified external key store proxy. The specified external key store proxy rejected a status
    #       request from KMS due to invalid credentials. This can indicate an error in the credentials
    #       or in the identification of the external key store proxy.</p>
    class XksProxyIncorrectAuthenticationCredentialException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyIncorrectAuthenticationCredentialException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the external key store proxy is not configured correctly.
    #       To identify the cause, see the error message that accompanies the exception.</p>
    class XksProxyInvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyInvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    #          <p>KMS cannot interpret the response it received from the external key store proxy. The
    #       problem might be a poorly constructed response, but it could also be a transient network
    #       issue. If you see this error repeatedly, report it to the proxy vendor.</p>
    class XksProxyInvalidResponseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyInvalidResponseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the <code>XksProxyUriEndpoint</code> is already
    #       associated with another external key store in this Amazon Web Services Region. To identify the cause, see
    #       the error message that accompanies the exception. </p>
    class XksProxyUriEndpointInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyUriEndpointInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the concatenation of the <code>XksProxyUriEndpoint</code>
    #       and <code>XksProxyUriPath</code> is already associated with another external key store in this
    #       Amazon Web Services Region. Each external key store in a Region must use a unique external key store proxy
    #       API address.</p>
    class XksProxyUriInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyUriInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>KMS was unable to reach the specified <code>XksProxyUriPath</code>. The path must be
    #       reachable before you create the external key store or update its settings.</p>
    #          <p>This exception is also thrown when the external key store proxy response to a
    #         <code>GetHealthStatus</code> request indicates that all external key manager instances are
    #       unavailable.</p>
    class XksProxyUriUnreachableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyUriUnreachableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified Amazon VPC endpoint service is already
    #       associated with another external key store in this Amazon Web Services Region. Each external key store in a
    #       Region must use a different Amazon VPC endpoint service.</p>
    class XksProxyVpcEndpointServiceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyVpcEndpointServiceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the Amazon VPC endpoint service configuration does not fulfill
    #       the requirements for an external key store. To identify the cause, see the error message that
    #       accompanies the exception and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/vpc-connectivity.html#xks-vpc-requirements">review the
    #         requirements</a> for Amazon VPC endpoint service connectivity for an external key
    #       store.</p>
    class XksProxyVpcEndpointServiceInvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyVpcEndpointServiceInvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because KMS could not find the specified VPC endpoint service.
    #       Use <a>DescribeCustomKeyStores</a> to verify the VPC endpoint service name for the
    #       external key store. Also, confirm that the <code>Allow principals</code> list for the VPC
    #       endpoint service includes the KMS service principal for the Region, such as
    #         <code>cks.kms.us-east-1.amazonaws.com</code>.</p>
    class XksProxyVpcEndpointServiceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KMS::Types::XksProxyVpcEndpointServiceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
