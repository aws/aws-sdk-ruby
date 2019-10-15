# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KMS
  module Types

    # Contains information about an alias.
    #
    # @!attribute [rw] alias_name
    #   String that contains the alias. This value begins with `alias/`.
    #   @return [String]
    #
    # @!attribute [rw] alias_arn
    #   String that contains the key ARN.
    #   @return [String]
    #
    # @!attribute [rw] target_key_id
    #   String that contains the key identifier referred to by the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/AliasListEntry AWS API Documentation
    #
    class AliasListEntry < Struct.new(
      :alias_name,
      :alias_arn,
      :target_key_id)
      include Aws::Structure
    end

    # The request was rejected because it attempted to create a resource
    # that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelKeyDeletionRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   The unique identifier for the customer master key (CMK) for which to
    #   cancel deletion.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CancelKeyDeletionRequest AWS API Documentation
    #
    class CancelKeyDeletionRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The unique identifier of the master key for which deletion is
    #   canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CancelKeyDeletionResponse AWS API Documentation
    #
    class CancelKeyDeletionResponse < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # The request was rejected because the specified AWS CloudHSM cluster is
    # already associated with a custom key store or it shares a backup
    # history with a cluster that is associated with a custom key store.
    # Each custom key store must be associated with a different AWS CloudHSM
    # cluster.
    #
    # Clusters that share a backup history have the same cluster
    # certificate. To view the cluster certificate of a cluster, use the
    # [DescribeClusters][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CloudHsmClusterInUseException AWS API Documentation
    #
    class CloudHsmClusterInUseException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the associated AWS CloudHSM cluster
    # did not meet the configuration requirements for a custom key store.
    #
    # * The cluster must be configured with private subnets in at least two
    #   different Availability Zones in the Region.
    #
    # * The [security group for the cluster][1]
    #   (cloudhsm-cluster-*&lt;cluster-id&gt;*-sg) must include inbound
    #   rules and outbound rules that allow TCP traffic on ports 2223-2225.
    #   The **Source** in the inbound rules and the **Destination** in the
    #   outbound rules must match the security group ID. These rules are set
    #   by default when you create the cluster. Do not delete or change
    #   them. To get information about a particular security group, use the
    #   [DescribeSecurityGroups][2] operation.
    #
    # * The cluster must contain at least as many HSMs as the operation
    #   requires. To add HSMs, use the AWS CloudHSM [CreateHsm][3]
    #   operation.
    #
    #   For the CreateCustomKeyStore, UpdateCustomKeyStore, and CreateKey
    #   operations, the AWS CloudHSM cluster must have at least two active
    #   HSMs, each in a different Availability Zone. For the
    #   ConnectCustomKeyStore operation, the AWS CloudHSM must contain at
    #   least one active HSM.
    #
    # For information about the requirements for an AWS CloudHSM cluster
    # that is associated with a custom key store, see [Assemble the
    # Prerequisites][4] in the *AWS Key Management Service Developer Guide*.
    # For information about creating a private subnet for an AWS CloudHSM
    # cluster, see [Create a Private Subnet][5] in the *AWS CloudHSM User
    # Guide*. For information about cluster security groups, see [Configure
    # a Default Security Group][1] in the <i> <i>AWS CloudHSM User Guide</i>
    # </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html
    # [3]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore
    # [5]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/create-subnets.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CloudHsmClusterInvalidConfigurationException AWS API Documentation
    #
    class CloudHsmClusterInvalidConfigurationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the AWS CloudHSM cluster that is
    # associated with the custom key store is not active. Initialize and
    # activate the cluster and try the command again. For detailed
    # instructions, see [Getting Started][1] in the *AWS CloudHSM User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/getting-started.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CloudHsmClusterNotActiveException AWS API Documentation
    #
    class CloudHsmClusterNotActiveException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because AWS KMS cannot find the AWS CloudHSM
    # cluster with the specified cluster ID. Retry the request with a
    # different cluster ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CloudHsmClusterNotFoundException AWS API Documentation
    #
    class CloudHsmClusterNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified AWS CloudHSM cluster
    # has a different cluster certificate than the original cluster. You
    # cannot use the operation to specify an unrelated cluster.
    #
    # Specify a cluster that shares a backup history with the original
    # cluster. This includes clusters that were created from a backup of the
    # current cluster, and clusters that were created from the same backup
    # that produced the current cluster.
    #
    # Clusters that share a backup history have the same cluster
    # certificate. To view the cluster certificate of a cluster, use the
    # [DescribeClusters][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CloudHsmClusterNotRelatedException AWS API Documentation
    #
    class CloudHsmClusterNotRelatedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ConnectCustomKeyStoreRequest
    #   data as a hash:
    #
    #       {
    #         custom_key_store_id: "CustomKeyStoreIdType", # required
    #       }
    #
    # @!attribute [rw] custom_key_store_id
    #   Enter the key store ID of the custom key store that you want to
    #   connect. To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ConnectCustomKeyStoreRequest AWS API Documentation
    #
    class ConnectCustomKeyStoreRequest < Struct.new(
      :custom_key_store_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ConnectCustomKeyStoreResponse AWS API Documentation
    #
    class ConnectCustomKeyStoreResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateAliasRequest
    #   data as a hash:
    #
    #       {
    #         alias_name: "AliasNameType", # required
    #         target_key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] alias_name
    #   Specifies the alias name. This value must begin with `alias/`
    #   followed by a name, such as `alias/ExampleAlias`. The alias name
    #   cannot begin with `alias/aws/`. The `alias/aws/` prefix is reserved
    #   for AWS managed CMKs.
    #   @return [String]
    #
    # @!attribute [rw] target_key_id
    #   Identifies the CMK to which the alias refers. Specify the key ID or
    #   the Amazon Resource Name (ARN) of the CMK. You cannot specify
    #   another alias. For help finding the key ID and ARN, see [Finding the
    #   Key ID and ARN][1] in the *AWS Key Management Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :alias_name,
      :target_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCustomKeyStoreRequest
    #   data as a hash:
    #
    #       {
    #         custom_key_store_name: "CustomKeyStoreNameType", # required
    #         cloud_hsm_cluster_id: "CloudHsmClusterIdType", # required
    #         trust_anchor_certificate: "TrustAnchorCertificateType", # required
    #         key_store_password: "KeyStorePasswordType", # required
    #       }
    #
    # @!attribute [rw] custom_key_store_name
    #   Specifies a friendly name for the custom key store. The name must be
    #   unique in your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   Identifies the AWS CloudHSM cluster for the custom key store. Enter
    #   the cluster ID of any active AWS CloudHSM cluster that is not
    #   already associated with a custom key store. To find the cluster ID,
    #   use the [DescribeClusters][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    #   @return [String]
    #
    # @!attribute [rw] trust_anchor_certificate
    #   Enter the content of the trust anchor certificate for the cluster.
    #   This is the content of the `customerCA.crt` file that you created
    #   when you [initialized the cluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html
    #   @return [String]
    #
    # @!attribute [rw] key_store_password
    #   Enter the password of the [ `kmsuser` crypto user (CU) account][1]
    #   in the specified AWS CloudHSM cluster. AWS KMS logs into the cluster
    #   as this user to manage key material on your behalf.
    #
    #   This parameter tells AWS KMS the `kmsuser` account password; it does
    #   not change the password in the AWS CloudHSM cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateCustomKeyStoreRequest AWS API Documentation
    #
    class CreateCustomKeyStoreRequest < Struct.new(
      :custom_key_store_name,
      :cloud_hsm_cluster_id,
      :trust_anchor_certificate,
      :key_store_password)
      include Aws::Structure
    end

    # @!attribute [rw] custom_key_store_id
    #   A unique identifier for the new custom key store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateCustomKeyStoreResponse AWS API Documentation
    #
    class CreateCustomKeyStoreResponse < Struct.new(
      :custom_key_store_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGrantRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         grantee_principal: "PrincipalIdType", # required
    #         retiring_principal: "PrincipalIdType",
    #         operations: ["Decrypt"], # required, accepts Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, CreateGrant, RetireGrant, DescribeKey
    #         constraints: {
    #           encryption_context_subset: {
    #             "EncryptionContextKey" => "EncryptionContextValue",
    #           },
    #           encryption_context_equals: {
    #             "EncryptionContextKey" => "EncryptionContextValue",
    #           },
    #         },
    #         grant_tokens: ["GrantTokenType"],
    #         name: "GrantNameType",
    #       }
    #
    # @!attribute [rw] key_id
    #   The unique identifier for the customer master key (CMK) that the
    #   grant applies to.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] grantee_principal
    #   The principal that is given permission to perform the operations
    #   that the grant permits.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an AWS principal. Valid AWS principals include AWS accounts (root),
    #   IAM users, IAM roles, federated users, and assumed role users. For
    #   examples of the ARN syntax to use for specifying a principal, see
    #   [AWS Identity and Access Management (IAM)][2] in the Example ARNs
    #   section of the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @!attribute [rw] retiring_principal
    #   The principal that is given permission to retire the grant by using
    #   RetireGrant operation.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an AWS principal. Valid AWS principals include AWS accounts (root),
    #   IAM users, federated users, and assumed role users. For examples of
    #   the ARN syntax to use for specifying a principal, see [AWS Identity
    #   and Access Management (IAM)][2] in the Example ARNs section of the
    #   *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   A list of operations that the grant permits.
    #   @return [Array<String>]
    #
    # @!attribute [rw] constraints
    #   Allows a cryptographic operation only when the encryption context
    #   matches or includes the encryption context specified in this
    #   structure. For more information about encryption context, see
    #   [Encryption Context][1] in the <i> <i>AWS Key Management Service
    #   Developer Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Types::GrantConstraints]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A friendly name for identifying the grant. Use this value to prevent
    #   the unintended creation of duplicate grants when retrying this
    #   request.
    #
    #   When this value is absent, all `CreateGrant` requests result in a
    #   new grant with a unique `GrantId` even if all the supplied
    #   parameters are identical. This can result in unintended duplicates
    #   when you retry the `CreateGrant` request.
    #
    #   When this value is present, you can retry a `CreateGrant` request
    #   with identical parameters; if the grant already exists, the original
    #   `GrantId` is returned without creating a new grant. Note that the
    #   returned grant token is unique with every `CreateGrant` request,
    #   even when a duplicate `GrantId` is returned. All grant tokens
    #   obtained in this way can be used interchangeably.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateGrantRequest AWS API Documentation
    #
    class CreateGrantRequest < Struct.new(
      :key_id,
      :grantee_principal,
      :retiring_principal,
      :operations,
      :constraints,
      :grant_tokens,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] grant_token
    #   The grant token.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   The unique identifier for the grant.
    #
    #   You can use the `GrantId` in a subsequent RetireGrant or RevokeGrant
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateGrantResponse AWS API Documentation
    #
    class CreateGrantResponse < Struct.new(
      :grant_token,
      :grant_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateKeyRequest
    #   data as a hash:
    #
    #       {
    #         policy: "PolicyType",
    #         description: "DescriptionType",
    #         key_usage: "ENCRYPT_DECRYPT", # accepts ENCRYPT_DECRYPT
    #         origin: "AWS_KMS", # accepts AWS_KMS, EXTERNAL, AWS_CLOUDHSM
    #         custom_key_store_id: "CustomKeyStoreIdType",
    #         bypass_policy_lockout_safety_check: false,
    #         tags: [
    #           {
    #             tag_key: "TagKeyType", # required
    #             tag_value: "TagValueType", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] policy
    #   The key policy to attach to the CMK.
    #
    #   If you provide a key policy, it must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the
    #     key policy must allow the principal that is making the `CreateKey`
    #     request to make a subsequent PutKeyPolicy request on the CMK. This
    #     reduces the risk that the CMK becomes unmanageable. For more
    #     information, refer to the scenario in the [Default Key Policy][1]
    #     section of the <i> <i>AWS Key Management Service Developer
    #     Guide</i> </i>.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to AWS KMS. When you create a new AWS principal (for
    #     example, an IAM user or role), you might need to enforce a delay
    #     before including the new principal in a key policy because the new
    #     principal might not be immediately visible to AWS KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][2] in the *AWS Identity and Access Management User
    #     Guide*.
    #
    #   If you do not provide a key policy, AWS KMS attaches a default key
    #   policy to the CMK. For more information, see [Default Key Policy][3]
    #   in the *AWS Key Management Service Developer Guide*.
    #
    #   The key policy size limit is 32 kilobytes (32768 bytes).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the CMK.
    #
    #   Use a description that helps you decide whether the CMK is
    #   appropriate for a task.
    #   @return [String]
    #
    # @!attribute [rw] key_usage
    #   The cryptographic operations for which you can use the CMK. The only
    #   valid value is `ENCRYPT_DECRYPT`, which means you can use the CMK to
    #   encrypt and decrypt data.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The source of the key material for the CMK. You cannot change the
    #   origin after you create the CMK.
    #
    #   The default is `AWS_KMS`, which means AWS KMS creates the key
    #   material in its own key store.
    #
    #   When the parameter value is `EXTERNAL`, AWS KMS creates a CMK
    #   without key material so that you can import key material from your
    #   existing key management infrastructure. For more information about
    #   importing key material into AWS KMS, see [Importing Key Material][1]
    #   in the *AWS Key Management Service Developer Guide*.
    #
    #   When the parameter value is `AWS_CLOUDHSM`, AWS KMS creates the CMK
    #   in an AWS KMS [custom key store][2] and creates its key material in
    #   the associated AWS CloudHSM cluster. You must also use the
    #   `CustomKeyStoreId` parameter to identify the custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_id
    #   Creates the CMK in the specified [custom key store][1] and the key
    #   material in its associated AWS CloudHSM cluster. To create a CMK in
    #   a custom key store, you must also specify the `Origin` parameter
    #   with a value of `AWS_CLOUDHSM`. The AWS CloudHSM cluster that is
    #   associated with the custom key store must have at least two active
    #   HSMs, each in a different Availability Zone in the Region.
    #
    #   To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #
    #   The response includes the custom key store ID and the ID of the AWS
    #   CloudHSM cluster.
    #
    #   This operation is part of the [Custom Key Store feature][1] feature
    #   in AWS KMS, which combines the convenience and extensive integration
    #   of AWS KMS with the isolation and control of a single-tenant key
    #   store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the CMK becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the <i> <i>AWS Key Management Service
    #   Developer Guide</i> </i>.
    #
    #   Use this parameter only when you include a policy in the request and
    #   you intend to prevent the principal that is making the request from
    #   making a subsequent PutKeyPolicy request on the CMK.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   One or more tags. Each tag consists of a tag key and a tag value.
    #   Tag keys and tag values are both required, but tag values can be
    #   empty (null) strings.
    #
    #   Use this parameter to tag the CMK when it is created. Alternately,
    #   you can omit this parameter and instead tag the CMK after it is
    #   created using TagResource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKeyRequest AWS API Documentation
    #
    class CreateKeyRequest < Struct.new(
      :policy,
      :description,
      :key_usage,
      :origin,
      :custom_key_store_id,
      :bypass_policy_lockout_safety_check,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] key_metadata
    #   Metadata associated with the CMK.
    #   @return [Types::KeyMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKeyResponse AWS API Documentation
    #
    class CreateKeyResponse < Struct.new(
      :key_metadata)
      include Aws::Structure
    end

    # The request was rejected because the custom key store contains AWS KMS
    # customer master keys (CMKs). After verifying that you do not need to
    # use the CMKs, use the ScheduleKeyDeletion operation to delete the
    # CMKs. After they are deleted, you can delete the custom key store.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoreHasCMKsException AWS API Documentation
    #
    class CustomKeyStoreHasCMKsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because of the `ConnectionState` of the
    # custom key store. To get the `ConnectionState` of a custom key store,
    # use the DescribeCustomKeyStores operation.
    #
    # This exception is thrown under the following conditions:
    #
    # * You requested the CreateKey or GenerateRandom operation in a custom
    #   key store that is not connected. These operations are valid only
    #   when the custom key store `ConnectionState` is `CONNECTED`.
    #
    # * You requested the UpdateCustomKeyStore or DeleteCustomKeyStore
    #   operation on a custom key store that is not disconnected. This
    #   operation is valid only when the custom key store `ConnectionState`
    #   is `DISCONNECTED`.
    #
    # * You requested the ConnectCustomKeyStore operation on a custom key
    #   store with a `ConnectionState` of `DISCONNECTING` or `FAILED`. This
    #   operation is valid for all other `ConnectionState` values.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoreInvalidStateException AWS API Documentation
    #
    class CustomKeyStoreInvalidStateException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified custom key store name
    # is already assigned to another custom key store in the account. Try
    # again with a custom key store name that is unique in the account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoreNameInUseException AWS API Documentation
    #
    class CustomKeyStoreNameInUseException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because AWS KMS cannot find a custom key
    # store with the specified key store name or ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoreNotFoundException AWS API Documentation
    #
    class CustomKeyStoreNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains information about each custom key store in the custom key
    # store list.
    #
    # @!attribute [rw] custom_key_store_id
    #   A unique identifier for the custom key store.
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_name
    #   The user-specified friendly name for the custom key store.
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   A unique identifier for the AWS CloudHSM cluster that is associated
    #   with the custom key store.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchor_certificate
    #   The trust anchor certificate of the associated AWS CloudHSM cluster.
    #   When you [initialize the cluster][1], you create this certificate
    #   and save it in the `customerCA.crt` file.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   Indicates whether the custom key store is connected to its AWS
    #   CloudHSM cluster.
    #
    #   You can create and use CMKs in your custom key stores only when its
    #   connection state is `CONNECTED`.
    #
    #   The value is `DISCONNECTED` if the key store has never been
    #   connected or you use the DisconnectCustomKeyStore operation to
    #   disconnect it. If the value is `CONNECTED` but you are having
    #   trouble using the custom key store, make sure that its associated
    #   AWS CloudHSM cluster is active and contains at least one active HSM.
    #
    #   A value of `FAILED` indicates that an attempt to connect was
    #   unsuccessful. For help resolving a connection failure, see
    #   [Troubleshooting a Custom Key Store][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    #   @return [String]
    #
    # @!attribute [rw] connection_error_code
    #   Describes the connection error. Valid values are:
    #
    #   * `CLUSTER_NOT_FOUND` - AWS KMS cannot find the AWS CloudHSM cluster
    #     with the specified cluster ID.
    #
    #   * `INSUFFICIENT_CLOUDHSM_HSMS` - The associated AWS CloudHSM cluster
    #     does not contain any active HSMs. To connect a custom key store to
    #     its AWS CloudHSM cluster, the cluster must contain at least one
    #     active HSM.
    #
    #   * `INTERNAL_ERROR` - AWS KMS could not complete the request due to
    #     an internal error. Retry the request. For `ConnectCustomKeyStore`
    #     requests, disconnect the custom key store before trying to connect
    #     again.
    #
    #   * `INVALID_CREDENTIALS` - AWS KMS does not have the correct password
    #     for the `kmsuser` crypto user in the AWS CloudHSM cluster.
    #
    #   * `NETWORK_ERRORS` - Network errors are preventing AWS KMS from
    #     connecting to the custom key store.
    #
    #   * `USER_LOCKED_OUT` - The `kmsuser` CU account is locked out of the
    #     associated AWS CloudHSM cluster due to too many failed password
    #     attempts. Before you can connect your custom key store to its AWS
    #     CloudHSM cluster, you must change the `kmsuser` account password
    #     and update the password value for the custom key store.
    #
    #   For help with connection failures, see [Troubleshooting Custom Key
    #   Stores][1] in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the custom key store was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoresListEntry AWS API Documentation
    #
    class CustomKeyStoresListEntry < Struct.new(
      :custom_key_store_id,
      :custom_key_store_name,
      :cloud_hsm_cluster_id,
      :trust_anchor_certificate,
      :connection_state,
      :connection_error_code,
      :creation_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DecryptRequest
    #   data as a hash:
    #
    #       {
    #         ciphertext_blob: "data", # required
    #         encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] ciphertext_blob
    #   Ciphertext to be decrypted. The blob includes metadata.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   The encryption context. If this was specified in the Encrypt
    #   function, it must be specified here or the decryption operation will
    #   fail. For more information, see [Encryption Context][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DecryptRequest AWS API Documentation
    #
    class DecryptRequest < Struct.new(
      :ciphertext_blob,
      :encryption_context,
      :grant_tokens)
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   ARN of the key used to perform the decryption. This value is
    #   returned if no errors are encountered during the operation.
    #   @return [String]
    #
    # @!attribute [rw] plaintext
    #   Decrypted plaintext data. When you use the HTTP API or the AWS CLI,
    #   the value is Base64-encoded. Otherwise, it is not encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DecryptResponse AWS API Documentation
    #
    class DecryptResponse < Struct.new(
      :key_id,
      :plaintext)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAliasRequest
    #   data as a hash:
    #
    #       {
    #         alias_name: "AliasNameType", # required
    #       }
    #
    # @!attribute [rw] alias_name
    #   The alias to be deleted. The alias name must begin with `alias/`
    #   followed by the alias name, such as `alias/ExampleAlias`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteAliasRequest AWS API Documentation
    #
    class DeleteAliasRequest < Struct.new(
      :alias_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCustomKeyStoreRequest
    #   data as a hash:
    #
    #       {
    #         custom_key_store_id: "CustomKeyStoreIdType", # required
    #       }
    #
    # @!attribute [rw] custom_key_store_id
    #   Enter the ID of the custom key store you want to delete. To find the
    #   ID of a custom key store, use the DescribeCustomKeyStores operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteCustomKeyStoreRequest AWS API Documentation
    #
    class DeleteCustomKeyStoreRequest < Struct.new(
      :custom_key_store_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteCustomKeyStoreResponse AWS API Documentation
    #
    class DeleteCustomKeyStoreResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteImportedKeyMaterialRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies the CMK from which you are deleting imported key
    #   material. The `Origin` of the CMK must be `EXTERNAL`.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteImportedKeyMaterialRequest AWS API Documentation
    #
    class DeleteImportedKeyMaterialRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # The system timed out while trying to fulfill the request. The request
    # can be retried.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DependencyTimeoutException AWS API Documentation
    #
    class DependencyTimeoutException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCustomKeyStoresRequest
    #   data as a hash:
    #
    #       {
    #         custom_key_store_id: "CustomKeyStoreIdType",
    #         custom_key_store_name: "CustomKeyStoreNameType",
    #         limit: 1,
    #         marker: "MarkerType",
    #       }
    #
    # @!attribute [rw] custom_key_store_id
    #   Gets only information about the specified custom key store. Enter
    #   the key store ID.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and region. To limit the output to a
    #   particular custom key store, you can use either the
    #   `CustomKeyStoreId` or `CustomKeyStoreName` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_name
    #   Gets only information about the specified custom key store. Enter
    #   the friendly name of the custom key store.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and region. To limit the output to a
    #   particular custom key store, you can use either the
    #   `CustomKeyStoreId` or `CustomKeyStoreName` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeCustomKeyStoresRequest AWS API Documentation
    #
    class DescribeCustomKeyStoresRequest < Struct.new(
      :custom_key_store_id,
      :custom_key_store_name,
      :limit,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] custom_key_stores
    #   Contains metadata about each custom key store.
    #   @return [Array<Types::CustomKeyStoresListEntry>]
    #
    # @!attribute [rw] next_marker
    #   When `Truncated` is true, this element is present and contains the
    #   value to use for the `Marker` parameter in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] truncated
    #   A flag that indicates whether there are more items in the list. When
    #   this value is true, the list in this response is truncated. To get
    #   more items, pass the value of the `NextMarker` element in
    #   thisresponse to the `Marker` parameter in a subsequent request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeCustomKeyStoresResponse AWS API Documentation
    #
    class DescribeCustomKeyStoresResponse < Struct.new(
      :custom_key_stores,
      :next_marker,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeKeyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] key_id
    #   Describes the specified customer master key (CMK).
    #
    #   If you specify a predefined AWS alias (an AWS alias with no key ID),
    #   KMS associates the alias with an [AWS managed CMK][1] and returns
    #   its `KeyId` and `Arn` in the response.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must
    #   use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeKeyRequest AWS API Documentation
    #
    class DescribeKeyRequest < Struct.new(
      :key_id,
      :grant_tokens)
      include Aws::Structure
    end

    # @!attribute [rw] key_metadata
    #   Metadata associated with the key.
    #   @return [Types::KeyMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeKeyResponse AWS API Documentation
    #
    class DescribeKeyResponse < Struct.new(
      :key_metadata)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableKeyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKeyRequest AWS API Documentation
    #
    class DisableKeyRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableKeyRotationRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKeyRotationRequest AWS API Documentation
    #
    class DisableKeyRotationRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # The request was rejected because the specified CMK is not enabled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisabledException AWS API Documentation
    #
    class DisabledException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisconnectCustomKeyStoreRequest
    #   data as a hash:
    #
    #       {
    #         custom_key_store_id: "CustomKeyStoreIdType", # required
    #       }
    #
    # @!attribute [rw] custom_key_store_id
    #   Enter the ID of the custom key store you want to disconnect. To find
    #   the ID of a custom key store, use the DescribeCustomKeyStores
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisconnectCustomKeyStoreRequest AWS API Documentation
    #
    class DisconnectCustomKeyStoreRequest < Struct.new(
      :custom_key_store_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisconnectCustomKeyStoreResponse AWS API Documentation
    #
    class DisconnectCustomKeyStoreResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass EnableKeyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKeyRequest AWS API Documentation
    #
    class EnableKeyRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableKeyRotationRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKeyRotationRequest AWS API Documentation
    #
    class EnableKeyRotationRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EncryptRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         plaintext: "data", # required
    #         encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must
    #   use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] plaintext
    #   Data to be encrypted.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   Name-value pair that specifies the encryption context to be used for
    #   authenticated encryption. If used here, the same value must be
    #   supplied to the `Decrypt` API or decryption will fail. For more
    #   information, see [Encryption Context][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EncryptRequest AWS API Documentation
    #
    class EncryptRequest < Struct.new(
      :key_id,
      :plaintext,
      :encryption_context,
      :grant_tokens)
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The encrypted plaintext. When you use the HTTP API or the AWS CLI,
    #   the value is Base64-encoded. Otherwise, it is not encoded.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The ID of the key used during encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EncryptResponse AWS API Documentation
    #
    class EncryptResponse < Struct.new(
      :ciphertext_blob,
      :key_id)
      include Aws::Structure
    end

    # The request was rejected because the provided import token is expired.
    # Use GetParametersForImport to get a new import token and public key,
    # use the new public key to encrypt the key material, and then try the
    # request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ExpiredImportTokenException AWS API Documentation
    #
    class ExpiredImportTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateDataKeyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         number_of_bytes: 1,
    #         key_spec: "AES_256", # accepts AES_256, AES_128
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] key_id
    #   An identifier for the CMK that encrypts the data key.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must
    #   use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   A set of key-value pairs that represents additional authenticated
    #   data.
    #
    #   For more information, see [Encryption Context][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] number_of_bytes
    #   The length of the data key in bytes. For example, use the value 64
    #   to generate a 512-bit data key (64 bytes is 512 bits). For common
    #   key lengths (128-bit and 256-bit symmetric keys), we recommend that
    #   you use the `KeySpec` field instead of this one.
    #   @return [Integer]
    #
    # @!attribute [rw] key_spec
    #   The length of the data key. Use `AES_128` to generate a 128-bit
    #   symmetric key, or `AES_256` to generate a 256-bit symmetric key.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyRequest AWS API Documentation
    #
    class GenerateDataKeyRequest < Struct.new(
      :key_id,
      :encryption_context,
      :number_of_bytes,
      :key_spec,
      :grant_tokens)
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The encrypted copy of the data key. When you use the HTTP API or the
    #   AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.
    #   @return [String]
    #
    # @!attribute [rw] plaintext
    #   The plaintext data key. When you use the HTTP API or the AWS CLI,
    #   the value is Base64-encoded. Otherwise, it is not encoded. Use this
    #   data key to encrypt your data outside of KMS. Then, remove it from
    #   memory as soon as possible.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of the CMK that encrypted the data key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyResponse AWS API Documentation
    #
    class GenerateDataKeyResponse < Struct.new(
      :ciphertext_blob,
      :plaintext,
      :key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateDataKeyWithoutPlaintextRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         key_spec: "AES_256", # accepts AES_256, AES_128
    #         number_of_bytes: 1,
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] key_id
    #   The identifier of the customer master key (CMK) that encrypts the
    #   data key.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must
    #   use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   A set of key-value pairs that represents additional authenticated
    #   data.
    #
    #   For more information, see [Encryption Context][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] key_spec
    #   The length of the data key. Use `AES_128` to generate a 128-bit
    #   symmetric key, or `AES_256` to generate a 256-bit symmetric key.
    #   @return [String]
    #
    # @!attribute [rw] number_of_bytes
    #   The length of the data key in bytes. For example, use the value 64
    #   to generate a 512-bit data key (64 bytes is 512 bits). For common
    #   key lengths (128-bit and 256-bit symmetric keys), we recommend that
    #   you use the `KeySpec` field instead of this one.
    #   @return [Integer]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyWithoutPlaintextRequest AWS API Documentation
    #
    class GenerateDataKeyWithoutPlaintextRequest < Struct.new(
      :key_id,
      :encryption_context,
      :key_spec,
      :number_of_bytes,
      :grant_tokens)
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The encrypted data key. When you use the HTTP API or the AWS CLI,
    #   the value is Base64-encoded. Otherwise, it is not encoded.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of the CMK that encrypted the data key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyWithoutPlaintextResponse AWS API Documentation
    #
    class GenerateDataKeyWithoutPlaintextResponse < Struct.new(
      :ciphertext_blob,
      :key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateRandomRequest
    #   data as a hash:
    #
    #       {
    #         number_of_bytes: 1,
    #         custom_key_store_id: "CustomKeyStoreIdType",
    #       }
    #
    # @!attribute [rw] number_of_bytes
    #   The length of the byte string.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_key_store_id
    #   Generates the random byte string in the AWS CloudHSM cluster that is
    #   associated with the specified [custom key store][1]. To find the ID
    #   of a custom key store, use the DescribeCustomKeyStores operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateRandomRequest AWS API Documentation
    #
    class GenerateRandomRequest < Struct.new(
      :number_of_bytes,
      :custom_key_store_id)
      include Aws::Structure
    end

    # @!attribute [rw] plaintext
    #   The random byte string. When you use the HTTP API or the AWS CLI,
    #   the value is Base64-encoded. Otherwise, it is not encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateRandomResponse AWS API Documentation
    #
    class GenerateRandomResponse < Struct.new(
      :plaintext)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKeyPolicyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         policy_name: "PolicyNameType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Specifies the name of the key policy. The only valid name is
    #   `default`. To get the names of key policies, use ListKeyPolicies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyPolicyRequest AWS API Documentation
    #
    class GetKeyPolicyRequest < Struct.new(
      :key_id,
      :policy_name)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A key policy document in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyPolicyResponse AWS API Documentation
    #
    class GetKeyPolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKeyRotationStatusRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyRotationStatusRequest AWS API Documentation
    #
    class GetKeyRotationStatusRequest < Struct.new(
      :key_id)
      include Aws::Structure
    end

    # @!attribute [rw] key_rotation_enabled
    #   A Boolean value that specifies whether key rotation is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyRotationStatusResponse AWS API Documentation
    #
    class GetKeyRotationStatusResponse < Struct.new(
      :key_rotation_enabled)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetParametersForImportRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         wrapping_algorithm: "RSAES_PKCS1_V1_5", # required, accepts RSAES_PKCS1_V1_5, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #         wrapping_key_spec: "RSA_2048", # required, accepts RSA_2048
    #       }
    #
    # @!attribute [rw] key_id
    #   The identifier of the CMK into which you will import key material.
    #   The CMK's `Origin` must be `EXTERNAL`.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_algorithm
    #   The algorithm you will use to encrypt the key material before
    #   importing it with ImportKeyMaterial. For more information, see
    #   [Encrypt the Key Material][1] in the *AWS Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_spec
    #   The type of wrapping key (public key) to return in the response.
    #   Only 2048-bit RSA public keys are supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetParametersForImportRequest AWS API Documentation
    #
    class GetParametersForImportRequest < Struct.new(
      :key_id,
      :wrapping_algorithm,
      :wrapping_key_spec)
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The identifier of the CMK to use in a subsequent ImportKeyMaterial
    #   request. This is the same CMK specified in the
    #   `GetParametersForImport` request.
    #   @return [String]
    #
    # @!attribute [rw] import_token
    #   The import token to send in a subsequent ImportKeyMaterial request.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key to use to encrypt the key material before importing
    #   it with ImportKeyMaterial.
    #   @return [String]
    #
    # @!attribute [rw] parameters_valid_to
    #   The time at which the import token and public key are no longer
    #   valid. After this time, you cannot use them to make an
    #   ImportKeyMaterial request and you must send another
    #   `GetParametersForImport` request to get new ones.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetParametersForImportResponse AWS API Documentation
    #
    class GetParametersForImportResponse < Struct.new(
      :key_id,
      :import_token,
      :public_key,
      :parameters_valid_to)
      include Aws::Structure
    end

    # Use this structure to allow cryptographic operations in the grant only
    # when the operation request includes the specified [encryption
    # context][1].
    #
    # AWS KMS applies the grant constraints only when the grant allows a
    # cryptographic operation that accepts an encryption context as input,
    # such as the following.
    #
    # * Encrypt
    #
    # * Decrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyWithoutPlaintext
    #
    # * ReEncrypt
    #
    # AWS KMS does not apply the grant constraints to other operations, such
    # as DescribeKey or ScheduleKeyDeletion.
    #
    # In a cryptographic operation, the encryption context in the decryption
    # operation must be an exact, case-sensitive match for the keys and
    # values in the encryption context of the encryption operation. Only the
    # order of the pairs can vary.
    #
    #  However, in a grant constraint, the key in each key-value pair is not
    # case sensitive, but the value is case sensitive.
    #
    #  To avoid confusion, do not use multiple encryption context pairs that
    # differ only by case. To require a fully case-sensitive encryption
    # context, use the `kms:EncryptionContext:` and
    # `kms:EncryptionContextKeys` conditions in an IAM or key policy. For
    # details, see [kms:EncryptionContext:][2] in the <i> <i>AWS Key
    # Management Service Developer Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-context
    #
    # @note When making an API call, you may pass GrantConstraints
    #   data as a hash:
    #
    #       {
    #         encryption_context_subset: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         encryption_context_equals: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #       }
    #
    # @!attribute [rw] encryption_context_subset
    #   A list of key-value pairs that must be included in the encryption
    #   context of the cryptographic operation request. The grant allows the
    #   cryptographic operation only when the encryption context in the
    #   request includes the key-value pairs specified in this constraint,
    #   although it can include additional key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_context_equals
    #   A list of key-value pairs that must match the encryption context in
    #   the cryptographic operation request. The grant allows the operation
    #   only when the encryption context in the request is the same as the
    #   encryption context specified in this constraint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GrantConstraints AWS API Documentation
    #
    class GrantConstraints < Struct.new(
      :encryption_context_subset,
      :encryption_context_equals)
      include Aws::Structure
    end

    # Contains information about an entry in a list of grants.
    #
    # @!attribute [rw] key_id
    #   The unique identifier for the customer master key (CMK) to which the
    #   grant applies.
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   The unique identifier for the grant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name that identifies the grant. If a name was provided
    #   in the CreateGrant request, that name is returned. Otherwise this
    #   value is null.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the grant was created.
    #   @return [Time]
    #
    # @!attribute [rw] grantee_principal
    #   The principal that receives the grant's permissions.
    #   @return [String]
    #
    # @!attribute [rw] retiring_principal
    #   The principal that can retire the grant.
    #   @return [String]
    #
    # @!attribute [rw] issuing_account
    #   The AWS account under which the grant was issued.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   The list of operations permitted by the grant.
    #   @return [Array<String>]
    #
    # @!attribute [rw] constraints
    #   A list of key-value pairs that must be present in the encryption
    #   context of certain subsequent operations that the grant allows.
    #   @return [Types::GrantConstraints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GrantListEntry AWS API Documentation
    #
    class GrantListEntry < Struct.new(
      :key_id,
      :grant_id,
      :name,
      :creation_date,
      :grantee_principal,
      :retiring_principal,
      :issuing_account,
      :operations,
      :constraints)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportKeyMaterialRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         import_token: "data", # required
    #         encrypted_key_material: "data", # required
    #         valid_to: Time.now,
    #         expiration_model: "KEY_MATERIAL_EXPIRES", # accepts KEY_MATERIAL_EXPIRES, KEY_MATERIAL_DOES_NOT_EXPIRE
    #       }
    #
    # @!attribute [rw] key_id
    #   The identifier of the CMK to import the key material into. The
    #   CMK's `Origin` must be `EXTERNAL`.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] import_token
    #   The import token that you received in the response to a previous
    #   GetParametersForImport request. It must be from the same response
    #   that contained the public key that you used to encrypt the key
    #   material.
    #   @return [String]
    #
    # @!attribute [rw] encrypted_key_material
    #   The encrypted key material to import. It must be encrypted with the
    #   public key that you received in the response to a previous
    #   GetParametersForImport request, using the wrapping algorithm that
    #   you specified in that request.
    #   @return [String]
    #
    # @!attribute [rw] valid_to
    #   The time at which the imported key material expires. When the key
    #   material expires, AWS KMS deletes the key material and the CMK
    #   becomes unusable. You must omit this parameter when the
    #   `ExpirationModel` parameter is set to
    #   `KEY_MATERIAL_DOES_NOT_EXPIRE`. Otherwise it is required.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_model
    #   Specifies whether the key material expires. The default is
    #   `KEY_MATERIAL_EXPIRES`, in which case you must include the `ValidTo`
    #   parameter. When this parameter is set to
    #   `KEY_MATERIAL_DOES_NOT_EXPIRE`, you must omit the `ValidTo`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ImportKeyMaterialRequest AWS API Documentation
    #
    class ImportKeyMaterialRequest < Struct.new(
      :key_id,
      :import_token,
      :encrypted_key_material,
      :valid_to,
      :expiration_model)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ImportKeyMaterialResponse AWS API Documentation
    #
    class ImportKeyMaterialResponse < Aws::EmptyStructure; end

    # The request was rejected because the provided key material is invalid
    # or is not the same key material that was previously imported into this
    # customer master key (CMK).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/IncorrectKeyMaterialException AWS API Documentation
    #
    class IncorrectKeyMaterialException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the trust anchor certificate in the
    # request is not the trust anchor certificate for the specified AWS
    # CloudHSM cluster.
    #
    # When you [initialize the cluster][1], you create the trust anchor
    # certificate and save it in the `customerCA.crt` file.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/IncorrectTrustAnchorException AWS API Documentation
    #
    class IncorrectTrustAnchorException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified alias name is not
    # valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidAliasNameException AWS API Documentation
    #
    class InvalidAliasNameException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because a specified ARN, or an ARN in a key
    # policy, is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidArnException AWS API Documentation
    #
    class InvalidArnException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified ciphertext, or
    # additional authenticated data incorporated into the ciphertext, such
    # as the encryption context, is corrupted, missing, or otherwise
    # invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidCiphertextException AWS API Documentation
    #
    class InvalidCiphertextException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified `GrantId` is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidGrantIdException AWS API Documentation
    #
    class InvalidGrantIdException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified grant token is not
    # valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidGrantTokenException AWS API Documentation
    #
    class InvalidGrantTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the provided import token is invalid
    # or is associated with a different customer master key (CMK).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidImportTokenException AWS API Documentation
    #
    class InvalidImportTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified `KeySpec` value is not
    # valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidKeyUsageException AWS API Documentation
    #
    class InvalidKeyUsageException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the marker that specifies where
    # pagination should next begin is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidMarkerException AWS API Documentation
    #
    class InvalidMarkerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because an internal exception occurred. The
    # request can be retried.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KMSInternalException AWS API Documentation
    #
    class KMSInternalException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the state of the specified resource
    # is not valid for this request.
    #
    # For more information about how key state affects the use of a CMK, see
    # [How Key State Affects Use of a Customer Master Key][1] in the *AWS
    # Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KMSInvalidStateException AWS API Documentation
    #
    class KMSInvalidStateException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains information about each entry in the key list.
    #
    # @!attribute [rw] key_id
    #   Unique identifier of the key.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   ARN of the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KeyListEntry AWS API Documentation
    #
    class KeyListEntry < Struct.new(
      :key_id,
      :key_arn)
      include Aws::Structure
    end

    # Contains metadata about a customer master key (CMK).
    #
    # This data type is used as a response element for the CreateKey and
    # DescribeKey operations.
    #
    # @!attribute [rw] aws_account_id
    #   The twelve-digit account ID of the AWS account that owns the CMK.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The globally unique identifier for the CMK.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the CMK. For examples, see [AWS
    #   Key Management Service (AWS KMS)][1] in the Example ARNs section of
    #   the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the CMK was created.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the CMK is enabled. When `KeyState` is `Enabled`
    #   this value is true, otherwise it is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the CMK.
    #   @return [String]
    #
    # @!attribute [rw] key_usage
    #   The cryptographic operations for which you can use the CMK. The only
    #   valid value is `ENCRYPT_DECRYPT`, which means you can use the CMK to
    #   encrypt and decrypt data.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of the CMK.
    #
    #   For more information about how key state affects the use of a CMK,
    #   see [How Key State Affects the Use of a Customer Master Key][1] in
    #   the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time after which AWS KMS deletes the CMK. This value is
    #   present only when `KeyState` is `PendingDeletion`.
    #   @return [Time]
    #
    # @!attribute [rw] valid_to
    #   The time at which the imported key material expires. When the key
    #   material expires, AWS KMS deletes the key material and the CMK
    #   becomes unusable. This value is present only for CMKs whose `Origin`
    #   is `EXTERNAL` and whose `ExpirationModel` is `KEY_MATERIAL_EXPIRES`,
    #   otherwise this value is omitted.
    #   @return [Time]
    #
    # @!attribute [rw] origin
    #   The source of the CMK's key material. When this value is `AWS_KMS`,
    #   AWS KMS created the key material. When this value is `EXTERNAL`, the
    #   key material was imported from your existing key management
    #   infrastructure or the CMK lacks key material. When this value is
    #   `AWS_CLOUDHSM`, the key material was created in the AWS CloudHSM
    #   cluster associated with a custom key store.
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_id
    #   A unique identifier for the [custom key store][1] that contains the
    #   CMK. This value is present only when the CMK is created in a custom
    #   key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   The cluster ID of the AWS CloudHSM cluster that contains the key
    #   material for the CMK. When you create a CMK in a [custom key
    #   store][1], AWS KMS creates the key material for the CMK in the
    #   associated AWS CloudHSM cluster. This value is present only when the
    #   CMK is created in a custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] expiration_model
    #   Specifies whether the CMK's key material expires. This value is
    #   present only when `Origin` is `EXTERNAL`, otherwise this value is
    #   omitted.
    #   @return [String]
    #
    # @!attribute [rw] key_manager
    #   The manager of the CMK. CMKs in your AWS account are either customer
    #   managed or AWS managed. For more information about the difference,
    #   see [Customer Master Keys][1] in the *AWS Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KeyMetadata AWS API Documentation
    #
    class KeyMetadata < Struct.new(
      :aws_account_id,
      :key_id,
      :arn,
      :creation_date,
      :enabled,
      :description,
      :key_usage,
      :key_state,
      :deletion_date,
      :valid_to,
      :origin,
      :custom_key_store_id,
      :cloud_hsm_cluster_id,
      :expiration_model,
      :key_manager)
      include Aws::Structure
    end

    # The request was rejected because the specified CMK was not available.
    # The request can be retried.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KeyUnavailableException AWS API Documentation
    #
    class KeyUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because a limit was exceeded. For more
    # information, see [Limits][1] in the *AWS Key Management Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAliasesRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType",
    #         limit: 1,
    #         marker: "MarkerType",
    #       }
    #
    # @!attribute [rw] key_id
    #   Lists only aliases that refer to the specified CMK. The value of
    #   this parameter can be the ID or Amazon Resource Name (ARN) of a CMK
    #   in the caller's account and region. You cannot use an alias name or
    #   alias ARN in this value.
    #
    #   This parameter is optional. If you omit it, `ListAliases` returns
    #   all aliases in the account and region.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to
    #   50.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListAliasesRequest AWS API Documentation
    #
    class ListAliasesRequest < Struct.new(
      :key_id,
      :limit,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] aliases
    #   A list of aliases.
    #   @return [Array<Types::AliasListEntry>]
    #
    # @!attribute [rw] next_marker
    #   When `Truncated` is true, this element is present and contains the
    #   value to use for the `Marker` parameter in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] truncated
    #   A flag that indicates whether there are more items in the list. When
    #   this value is true, the list in this response is truncated. To get
    #   more items, pass the value of the `NextMarker` element in
    #   thisresponse to the `Marker` parameter in a subsequent request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListAliasesResponse AWS API Documentation
    #
    class ListAliasesResponse < Struct.new(
      :aliases,
      :next_marker,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGrantsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         marker: "MarkerType",
    #         key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to
    #   50.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListGrantsRequest AWS API Documentation
    #
    class ListGrantsRequest < Struct.new(
      :limit,
      :marker,
      :key_id)
      include Aws::Structure
    end

    # @!attribute [rw] grants
    #   A list of grants.
    #   @return [Array<Types::GrantListEntry>]
    #
    # @!attribute [rw] next_marker
    #   When `Truncated` is true, this element is present and contains the
    #   value to use for the `Marker` parameter in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] truncated
    #   A flag that indicates whether there are more items in the list. When
    #   this value is true, the list in this response is truncated. To get
    #   more items, pass the value of the `NextMarker` element in
    #   thisresponse to the `Marker` parameter in a subsequent request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListGrantsResponse AWS API Documentation
    #
    class ListGrantsResponse < Struct.new(
      :grants,
      :next_marker,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListKeyPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         limit: 1,
    #         marker: "MarkerType",
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 1000, inclusive. If you do not include a value, it defaults to
    #   100.
    #
    #   Only one policy can be attached to a key.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeyPoliciesRequest AWS API Documentation
    #
    class ListKeyPoliciesRequest < Struct.new(
      :key_id,
      :limit,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] policy_names
    #   A list of key policy names. The only valid value is `default`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_marker
    #   When `Truncated` is true, this element is present and contains the
    #   value to use for the `Marker` parameter in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] truncated
    #   A flag that indicates whether there are more items in the list. When
    #   this value is true, the list in this response is truncated. To get
    #   more items, pass the value of the `NextMarker` element in
    #   thisresponse to the `Marker` parameter in a subsequent request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeyPoliciesResponse AWS API Documentation
    #
    class ListKeyPoliciesResponse < Struct.new(
      :policy_names,
      :next_marker,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListKeysRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         marker: "MarkerType",
    #       }
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 1000, inclusive. If you do not include a value, it defaults to
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeysRequest AWS API Documentation
    #
    class ListKeysRequest < Struct.new(
      :limit,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] keys
    #   A list of customer master keys (CMKs).
    #   @return [Array<Types::KeyListEntry>]
    #
    # @!attribute [rw] next_marker
    #   When `Truncated` is true, this element is present and contains the
    #   value to use for the `Marker` parameter in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] truncated
    #   A flag that indicates whether there are more items in the list. When
    #   this value is true, the list in this response is truncated. To get
    #   more items, pass the value of the `NextMarker` element in
    #   thisresponse to the `Marker` parameter in a subsequent request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeysResponse AWS API Documentation
    #
    class ListKeysResponse < Struct.new(
      :keys,
      :next_marker,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceTagsRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         limit: 1,
    #         marker: "MarkerType",
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 50, inclusive. If you do not include a value, it defaults to 50.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    #   Do not attempt to construct this value. Use only the value of
    #   `NextMarker` from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListResourceTagsRequest AWS API Documentation
    #
    class ListResourceTagsRequest < Struct.new(
      :key_id,
      :limit,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags. Each tag consists of a tag key and a tag value.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_marker
    #   When `Truncated` is true, this element is present and contains the
    #   value to use for the `Marker` parameter in a subsequent request.
    #
    #   Do not assume or infer any information from this value.
    #   @return [String]
    #
    # @!attribute [rw] truncated
    #   A flag that indicates whether there are more items in the list. When
    #   this value is true, the list in this response is truncated. To get
    #   more items, pass the value of the `NextMarker` element in
    #   thisresponse to the `Marker` parameter in a subsequent request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListResourceTagsResponse AWS API Documentation
    #
    class ListResourceTagsResponse < Struct.new(
      :tags,
      :next_marker,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRetirableGrantsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         marker: "MarkerType",
    #         retiring_principal: "PrincipalIdType", # required
    #       }
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to
    #   50.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @!attribute [rw] retiring_principal
    #   The retiring principal for which to list grants.
    #
    #   To specify the retiring principal, use the [Amazon Resource Name
    #   (ARN)][1] of an AWS principal. Valid AWS principals include AWS
    #   accounts (root), IAM users, federated users, and assumed role users.
    #   For examples of the ARN syntax for specifying a principal, see [AWS
    #   Identity and Access Management (IAM)][2] in the Example ARNs section
    #   of the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListRetirableGrantsRequest AWS API Documentation
    #
    class ListRetirableGrantsRequest < Struct.new(
      :limit,
      :marker,
      :retiring_principal)
      include Aws::Structure
    end

    # The request was rejected because the specified policy is not
    # syntactically or semantically correct.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/MalformedPolicyDocumentException AWS API Documentation
    #
    class MalformedPolicyDocumentException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request was rejected because the specified entity or resource
    # could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutKeyPolicyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         policy_name: "PolicyNameType", # required
    #         policy: "PolicyType", # required
    #         bypass_policy_lockout_safety_check: false,
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the key policy. The only valid value is `default`.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The key policy to attach to the CMK.
    #
    #   The key policy must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the
    #     key policy must allow the principal that is making the
    #     `PutKeyPolicy` request to make a subsequent `PutKeyPolicy` request
    #     on the CMK. This reduces the risk that the CMK becomes
    #     unmanageable. For more information, refer to the scenario in the
    #     [Default Key Policy][1] section of the *AWS Key Management Service
    #     Developer Guide*.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to AWS KMS. When you create a new AWS principal (for
    #     example, an IAM user or role), you might need to enforce a delay
    #     before including the new principal in a key policy because the new
    #     principal might not be immediately visible to AWS KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][2] in the *AWS Identity and Access Management User
    #     Guide*.
    #
    #   The key policy size limit is 32 kilobytes (32768 bytes).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the CMK becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the *AWS Key Management Service Developer
    #   Guide*.
    #
    #   Use this parameter only when you intend to prevent the principal
    #   that is making the request from making a subsequent `PutKeyPolicy`
    #   request on the CMK.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/PutKeyPolicyRequest AWS API Documentation
    #
    class PutKeyPolicyRequest < Struct.new(
      :key_id,
      :policy_name,
      :policy,
      :bypass_policy_lockout_safety_check)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReEncryptRequest
    #   data as a hash:
    #
    #       {
    #         ciphertext_blob: "data", # required
    #         source_encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         destination_key_id: "KeyIdType", # required
    #         destination_encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] ciphertext_blob
    #   Ciphertext of the data to reencrypt.
    #   @return [String]
    #
    # @!attribute [rw] source_encryption_context
    #   Encryption context used to encrypt and decrypt the data specified in
    #   the `CiphertextBlob` parameter.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] destination_key_id
    #   A unique identifier for the CMK that is used to reencrypt the data.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must
    #   use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] destination_encryption_context
    #   Encryption context to use when the data is reencrypted.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncryptRequest AWS API Documentation
    #
    class ReEncryptRequest < Struct.new(
      :ciphertext_blob,
      :source_encryption_context,
      :destination_key_id,
      :destination_encryption_context,
      :grant_tokens)
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The reencrypted data. When you use the HTTP API or the AWS CLI, the
    #   value is Base64-encoded. Otherwise, it is not encoded.
    #   @return [String]
    #
    # @!attribute [rw] source_key_id
    #   Unique identifier of the CMK used to originally encrypt the data.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   Unique identifier of the CMK used to reencrypt the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncryptResponse AWS API Documentation
    #
    class ReEncryptResponse < Struct.new(
      :ciphertext_blob,
      :source_key_id,
      :key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RetireGrantRequest
    #   data as a hash:
    #
    #       {
    #         grant_token: "GrantTokenType",
    #         key_id: "KeyIdType",
    #         grant_id: "GrantIdType",
    #       }
    #
    # @!attribute [rw] grant_token
    #   Token that identifies the grant to be retired.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name (ARN) of the CMK associated with the grant.
    #
    #   For example:
    #   `arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   Unique identifier of the grant to retire. The grant ID is returned
    #   in the response to a `CreateGrant` operation.
    #
    #   * Grant ID Example -
    #     0123456789012345678901234567890123456789012345678901234567890123
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RetireGrantRequest AWS API Documentation
    #
    class RetireGrantRequest < Struct.new(
      :grant_token,
      :key_id,
      :grant_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeGrantRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         grant_id: "GrantIdType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key associated with the
    #   grant.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   Identifier of the grant to be revoked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RevokeGrantRequest AWS API Documentation
    #
    class RevokeGrantRequest < Struct.new(
      :key_id,
      :grant_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ScheduleKeyDeletionRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         pending_window_in_days: 1,
    #       }
    #
    # @!attribute [rw] key_id
    #   The unique identifier of the customer master key (CMK) to delete.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] pending_window_in_days
    #   The waiting period, specified in number of days. After the waiting
    #   period ends, AWS KMS deletes the customer master key (CMK).
    #
    #   This value is optional. If you include a value, it must be between 7
    #   and 30, inclusive. If you do not include a value, it defaults to 30.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ScheduleKeyDeletionRequest AWS API Documentation
    #
    class ScheduleKeyDeletionRequest < Struct.new(
      :key_id,
      :pending_window_in_days)
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The unique identifier of the customer master key (CMK) for which
    #   deletion is scheduled.
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time after which AWS KMS deletes the customer master
    #   key (CMK).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ScheduleKeyDeletionResponse AWS API Documentation
    #
    class ScheduleKeyDeletionResponse < Struct.new(
      :key_id,
      :deletion_date)
      include Aws::Structure
    end

    # A key-value pair. A tag consists of a tag key and a tag value. Tag
    # keys and tag values are both required, but tag values can be empty
    # (null) strings.
    #
    # For information about the rules that apply to tag keys and tag values,
    # see [User-Defined Tag Restrictions][1] in the *AWS Billing and Cost
    # Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       }
    #
    # @!attribute [rw] tag_key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :tag_key,
      :tag_value)
      include Aws::Structure
    end

    # The request was rejected because one or more tags are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/TagException AWS API Documentation
    #
    class TagException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         tags: [ # required
    #           {
    #             tag_key: "TagKeyType", # required
    #             tag_value: "TagValueType", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the CMK you are tagging.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags. Each tag consists of a tag key and a tag value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :key_id,
      :tags)
      include Aws::Structure
    end

    # The request was rejected because a specified parameter is not
    # supported or a specified resource is not valid for this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         tag_keys: ["TagKeyType"], # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the CMK from which you are removing tags.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :key_id,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAliasRequest
    #   data as a hash:
    #
    #       {
    #         alias_name: "AliasNameType", # required
    #         target_key_id: "KeyIdType", # required
    #       }
    #
    # @!attribute [rw] alias_name
    #   Specifies the name of the alias to change. This value must begin
    #   with `alias/` followed by the alias name, such as
    #   `alias/ExampleAlias`.
    #   @return [String]
    #
    # @!attribute [rw] target_key_id
    #   Unique identifier of the customer master key (CMK) to be mapped to
    #   the alias. When the update operation completes, the alias will point
    #   to this CMK.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #
    #   To verify that the alias is mapped to the correct CMK, use
    #   ListAliases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateAliasRequest AWS API Documentation
    #
    class UpdateAliasRequest < Struct.new(
      :alias_name,
      :target_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCustomKeyStoreRequest
    #   data as a hash:
    #
    #       {
    #         custom_key_store_id: "CustomKeyStoreIdType", # required
    #         new_custom_key_store_name: "CustomKeyStoreNameType",
    #         key_store_password: "KeyStorePasswordType",
    #         cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #       }
    #
    # @!attribute [rw] custom_key_store_id
    #   Identifies the custom key store that you want to update. Enter the
    #   ID of the custom key store. To find the ID of a custom key store,
    #   use the DescribeCustomKeyStores operation.
    #   @return [String]
    #
    # @!attribute [rw] new_custom_key_store_name
    #   Changes the friendly name of the custom key store to the value that
    #   you specify. The custom key store name must be unique in the AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] key_store_password
    #   Enter the current password of the `kmsuser` crypto user (CU) in the
    #   AWS CloudHSM cluster that is associated with the custom key store.
    #
    #   This parameter tells AWS KMS the current password of the `kmsuser`
    #   crypto user (CU). It does not set or change the password of any
    #   users in the AWS CloudHSM cluster.
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   Associates the custom key store with a related AWS CloudHSM cluster.
    #
    #   Enter the cluster ID of the cluster that you used to create the
    #   custom key store or a cluster that shares a backup history and has
    #   the same cluster certificate as the original cluster. You cannot use
    #   this parameter to associate a custom key store with an unrelated
    #   cluster. In addition, the replacement cluster must [fulfill the
    #   requirements][1] for a cluster associated with a custom key store.
    #   To view the cluster certificate of a cluster, use the
    #   [DescribeClusters][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore
    #   [2]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateCustomKeyStoreRequest AWS API Documentation
    #
    class UpdateCustomKeyStoreRequest < Struct.new(
      :custom_key_store_id,
      :new_custom_key_store_name,
      :key_store_password,
      :cloud_hsm_cluster_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateCustomKeyStoreResponse AWS API Documentation
    #
    class UpdateCustomKeyStoreResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateKeyDescriptionRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         description: "DescriptionType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New description for the CMK.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateKeyDescriptionRequest AWS API Documentation
    #
    class UpdateKeyDescriptionRequest < Struct.new(
      :key_id,
      :description)
      include Aws::Structure
    end

  end
end
