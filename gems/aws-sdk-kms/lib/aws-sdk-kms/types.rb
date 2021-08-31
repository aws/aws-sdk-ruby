# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    #   String that contains the key identifier of the KMS key associated
    #   with the alias.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Date and time that the alias was most recently created in the
    #   account and Region. Formatted as Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   Date and time that the alias was most recently associated with a KMS
    #   key in the account and Region. Formatted as Unix time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/AliasListEntry AWS API Documentation
    #
    class AliasListEntry < Struct.new(
      :alias_name,
      :alias_arn,
      :target_key_id,
      :creation_date,
      :last_updated_date)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Identifies the KMS key whose deletion is being canceled.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CancelKeyDeletionRequest AWS API Documentation
    #
    class CancelKeyDeletionRequest < Struct.new(
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key whose
    #   deletion is canceled.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CancelKeyDeletionResponse AWS API Documentation
    #
    class CancelKeyDeletionResponse < Struct.new(
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified CloudHSM cluster is
    # already associated with a custom key store or it shares a backup
    # history with a cluster that is associated with a custom key store.
    # Each custom key store must be associated with a different CloudHSM
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the associated CloudHSM cluster did
    # not meet the configuration requirements for a custom key store.
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
    #   requires. To add HSMs, use the CloudHSM [CreateHsm][3] operation.
    #
    #   For the CreateCustomKeyStore, UpdateCustomKeyStore, and CreateKey
    #   operations, the CloudHSM cluster must have at least two active HSMs,
    #   each in a different Availability Zone. For the ConnectCustomKeyStore
    #   operation, the CloudHSM must contain at least one active HSM.
    #
    # For information about the requirements for an CloudHSM cluster that is
    # associated with a custom key store, see [Assemble the
    # Prerequisites][4] in the *Key Management Service Developer Guide*. For
    # information about creating a private subnet for an CloudHSM cluster,
    # see [Create a Private Subnet][5] in the *CloudHSM User Guide*. For
    # information about cluster security groups, see [Configure a Default
    # Security Group][1] in the <i> <i>CloudHSM User Guide</i> </i>.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the CloudHSM cluster that is
    # associated with the custom key store is not active. Initialize and
    # activate the cluster and try the command again. For detailed
    # instructions, see [Getting Started][1] in the *CloudHSM User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because KMS cannot find the CloudHSM cluster
    # with the specified cluster ID. Retry the request with a different
    # cluster ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CloudHsmClusterNotFoundException AWS API Documentation
    #
    class CloudHsmClusterNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified CloudHSM cluster has a
    # different cluster certificate than the original cluster. You cannot
    # use the operation to specify an unrelated cluster.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   followed by a name, such as `alias/ExampleAlias`.
    #
    #   The `AliasName` value must be string of 1-256 characters. It can
    #   contain only alphanumeric characters, forward slashes (/),
    #   underscores (\_), and dashes (-). The alias name cannot begin with
    #   `alias/aws/`. The `alias/aws/` prefix is reserved for [Amazon Web
    #   Services managed keys][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    #   @return [String]
    #
    # @!attribute [rw] target_key_id
    #   Associates the alias with the specified [customer managed key][1].
    #   The KMS key must be in the same Amazon Web Services Region.
    #
    #   A valid key ID is required. If you supply a null or empty string
    #   value, this operation returns an error.
    #
    #   For help finding the key ID and ARN, see [Finding the Key ID and
    #   ARN][2] in the <i> <i>Key Management Service Developer Guide</i>
    #   </i>.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :alias_name,
      :target_key_id)
      SENSITIVE = []
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
    #   unique in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   Identifies the CloudHSM cluster for the custom key store. Enter the
    #   cluster ID of any active CloudHSM cluster that is not already
    #   associated with a custom key store. To find the cluster ID, use the
    #   [DescribeClusters][1] operation.
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
    #   in the specified CloudHSM cluster. KMS logs into the cluster as this
    #   user to manage key material on your behalf.
    #
    #   The password must be a string of 7 to 32 characters. Its value is
    #   case sensitive.
    #
    #   This parameter tells KMS the `kmsuser` account password; it does not
    #   change the password in the CloudHSM cluster.
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
      SENSITIVE = [:key_store_password]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGrantRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         grantee_principal: "PrincipalIdType", # required
    #         retiring_principal: "PrincipalIdType",
    #         operations: ["Decrypt"], # required, accepts Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, Sign, Verify, GetPublicKey, CreateGrant, RetireGrant, DescribeKey, GenerateDataKeyPair, GenerateDataKeyPairWithoutPlaintext
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
    #   Identifies the KMS key for the grant. The grant gives principals
    #   permission to use this KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key
    #   in a different Amazon Web Services account, you must use the key
    #   ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] grantee_principal
    #   The identity that gets the permissions specified in the grant.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an Amazon Web Services principal. Valid Amazon Web Services
    #   principals include Amazon Web Services accounts (root), IAM users,
    #   IAM roles, federated users, and assumed role users. For examples of
    #   the ARN syntax to use for specifying a principal, see [Amazon Web
    #   Services Identity and Access Management (IAM)][2] in the Example
    #   ARNs section of the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @!attribute [rw] retiring_principal
    #   The principal that has permission to use the RetireGrant operation
    #   to retire the grant.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an Amazon Web Services principal. Valid Amazon Web Services
    #   principals include Amazon Web Services accounts (root), IAM users,
    #   federated users, and assumed role users. For examples of the ARN
    #   syntax to use for specifying a principal, see [Amazon Web Services
    #   Identity and Access Management (IAM)][2] in the Example ARNs section
    #   of the *Amazon Web Services General Reference*.
    #
    #   The grant determines the retiring principal. Other principals might
    #   have permission to retire the grant or revoke the grant. For
    #   details, see RevokeGrant and [Retiring and revoking grants][3] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   A list of operations that the grant permits.
    #
    #   The operation must be supported on the KMS key. For example, you
    #   cannot create a grant for a symmetric KMS key that allows the Sign
    #   operation, or a grant for an asymmetric KMS key that allows the
    #   GenerateDataKey operation. If you try, KMS returns a
    #   `ValidationError` exception. For details, see [Grant operations][1]
    #   in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations
    #   @return [Array<String>]
    #
    # @!attribute [rw] constraints
    #   Specifies a grant constraint.
    #
    #   KMS supports the `EncryptionContextEquals` and
    #   `EncryptionContextSubset` grant constraints. Each constraint value
    #   can include up to 8 encryption context pairs. The encryption context
    #   value in each constraint cannot exceed 384 characters.
    #
    #   These grant constraints allow the permissions in the grant only when
    #   the encryption context in the request matches
    #   (`EncryptionContextEquals`) or includes (`EncryptionContextSubset`)
    #   the encryption context specified in this structure. For information
    #   about grant constraints, see [Using grant constraints][1] in the
    #   *Key Management Service Developer Guide*. For more information about
    #   encryption context, see [Encryption Context][2] in the <i> <i>Key
    #   Management Service Developer Guide</i> </i>.
    #
    #   The encryption context grant constraints are supported only on
    #   operations that include an encryption context. You cannot use an
    #   encryption context grant constraint for cryptographic operations
    #   with asymmetric KMS keys or for management operations, such as
    #   DescribeKey or RetireGrant.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-grant-overview.html#grant-constraints
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Types::GrantConstraints]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A friendly name for the grant. Use this value to prevent the
    #   unintended creation of duplicate grants when retrying this request.
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
    #   even when a duplicate `GrantId` is returned. All grant tokens for
    #   the same grant ID can be used interchangeably.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_token
    #   The grant token.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   The unique identifier for the grant.
    #
    #   You can use the `GrantId` in a ListGrants, RetireGrant, or
    #   RevokeGrant operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateGrantResponse AWS API Documentation
    #
    class CreateGrantResponse < Struct.new(
      :grant_token,
      :grant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateKeyRequest
    #   data as a hash:
    #
    #       {
    #         policy: "PolicyType",
    #         description: "DescriptionType",
    #         key_usage: "SIGN_VERIFY", # accepts SIGN_VERIFY, ENCRYPT_DECRYPT
    #         customer_master_key_spec: "RSA_2048", # accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1, SYMMETRIC_DEFAULT
    #         key_spec: "RSA_2048", # accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1, SYMMETRIC_DEFAULT
    #         origin: "AWS_KMS", # accepts AWS_KMS, EXTERNAL, AWS_CLOUDHSM
    #         custom_key_store_id: "CustomKeyStoreIdType",
    #         bypass_policy_lockout_safety_check: false,
    #         tags: [
    #           {
    #             tag_key: "TagKeyType", # required
    #             tag_value: "TagValueType", # required
    #           },
    #         ],
    #         multi_region: false,
    #       }
    #
    # @!attribute [rw] policy
    #   The key policy to attach to the KMS key.
    #
    #   If you provide a key policy, it must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the
    #     key policy must allow the principal that is making the `CreateKey`
    #     request to make a subsequent PutKeyPolicy request on the KMS key.
    #     This reduces the risk that the KMS key becomes unmanageable. For
    #     more information, refer to the scenario in the [Default Key
    #     Policy][1] section of the <i> <i>Key Management Service Developer
    #     Guide</i> </i>.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to KMS. When you create a new Amazon Web Services
    #     principal (for example, an IAM user or role), you might need to
    #     enforce a delay before including the new principal in a key policy
    #     because the new principal might not be immediately visible to KMS.
    #     For more information, see [Changes that I make are not always
    #     immediately visible][2] in the *Amazon Web Services Identity and
    #     Access Management User Guide*.
    #
    #   If you do not provide a key policy, KMS attaches a default key
    #   policy to the KMS key. For more information, see [Default Key
    #   Policy][3] in the *Key Management Service Developer Guide*.
    #
    #   The key policy size quota is 32 kilobytes (32768 bytes).
    #
    #   For help writing and formatting a JSON policy document, see the [IAM
    #   JSON Policy Reference][4] in the <i> <i>Identity and Access
    #   Management User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
    #   [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the KMS key.
    #
    #   Use a description that helps you decide whether the KMS key is
    #   appropriate for a task. The default value is an empty string (no
    #   description).
    #
    #   To set or change the description after the key is created, use
    #   UpdateKeyDescription.
    #   @return [String]
    #
    # @!attribute [rw] key_usage
    #   Determines the [cryptographic operations][1] for which you can use
    #   the KMS key. The default value is `ENCRYPT_DECRYPT`. This parameter
    #   is required only for asymmetric KMS keys. You can't change the
    #   `KeyUsage` value after the KMS key is created.
    #
    #   Select only one valid value.
    #
    #   * For symmetric KMS keys, omit the parameter or specify
    #     `ENCRYPT_DECRYPT`.
    #
    #   * For asymmetric KMS keys with RSA key material, specify
    #     `ENCRYPT_DECRYPT` or `SIGN_VERIFY`.
    #
    #   * For asymmetric KMS keys with ECC key material, specify
    #     `SIGN_VERIFY`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   @return [String]
    #
    # @!attribute [rw] customer_master_key_spec
    #   Instead, use the `KeySpec` parameter.
    #
    #   The `KeySpec` and `CustomerMasterKeySpec` parameters work the same
    #   way. Only the names differ. We recommend that you use `KeySpec`
    #   parameter in your code. However, to avoid breaking changes, KMS will
    #   support both parameters.
    #   @return [String]
    #
    # @!attribute [rw] key_spec
    #   Specifies the type of KMS key to create. The default value,
    #   `SYMMETRIC_DEFAULT`, creates a KMS key with a 256-bit symmetric key
    #   for encryption and decryption. For help choosing a key spec for your
    #   KMS key, see [How to Choose Your KMS key Configuration][1] in the
    #   <i> <i>Key Management Service Developer Guide</i> </i>.
    #
    #   The `KeySpec` determines whether the KMS key contains a symmetric
    #   key or an asymmetric key pair. It also determines the encryption
    #   algorithms or signing algorithms that the KMS key supports. You
    #   can't change the `KeySpec` after the KMS key is created. To further
    #   restrict the algorithms that can be used with the KMS key, use a
    #   condition key in its key policy or IAM policy. For more information,
    #   see [kms:EncryptionAlgorithm][2] or [kms:Signing Algorithm][3] in
    #   the <i> <i>Key Management Service Developer Guide</i> </i>.
    #
    #   [Amazon Web Services services that are integrated with KMS][4] use
    #   symmetric KMS keys to protect your data. These services do not
    #   support asymmetric KMS keys. For help determining whether a KMS key
    #   is symmetric or asymmetric, see [Identifying Symmetric and
    #   Asymmetric KMS keys][5] in the *Key Management Service Developer
    #   Guide*.
    #
    #   KMS supports the following key specs for KMS keys:
    #
    #   * Symmetric key (default)
    #
    #     * `SYMMETRIC_DEFAULT` (AES-256-GCM)
    #
    #     ^
    #
    #   * Asymmetric RSA key pairs
    #
    #     * `RSA_2048`
    #
    #     * `RSA_3072`
    #
    #     * `RSA_4096`
    #
    #   * Asymmetric NIST-recommended elliptic curve key pairs
    #
    #     * `ECC_NIST_P256` (secp256r1)
    #
    #     * `ECC_NIST_P384` (secp384r1)
    #
    #     * `ECC_NIST_P521` (secp521r1)
    #
    #   * Other asymmetric elliptic curve key pairs
    #
    #     * `ECC_SECG_P256K1` (secp256k1), commonly used for
    #       cryptocurrencies.
    #
    #     ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm
    #   [4]: http://aws.amazon.com/kms/features/#AWS_Service_Integration
    #   [5]: https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The source of the key material for the KMS key. You cannot change
    #   the origin after you create the KMS key. The default is `AWS_KMS`,
    #   which means that KMS creates the key material.
    #
    #   To create a KMS key with no key material (for imported key
    #   material), set the value to `EXTERNAL`. For more information about
    #   importing key material into KMS, see [Importing Key Material][1] in
    #   the *Key Management Service Developer Guide*. This value is valid
    #   only for symmetric KMS keys.
    #
    #   To create a KMS key in an KMS [custom key store][2] and create its
    #   key material in the associated CloudHSM cluster, set this value to
    #   `AWS_CLOUDHSM`. You must also use the `CustomKeyStoreId` parameter
    #   to identify the custom key store. This value is valid only for
    #   symmetric KMS keys.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_id
    #   Creates the KMS key in the specified [custom key store][1] and the
    #   key material in its associated CloudHSM cluster. To create a KMS key
    #   in a custom key store, you must also specify the `Origin` parameter
    #   with a value of `AWS_CLOUDHSM`. The CloudHSM cluster that is
    #   associated with the custom key store must have at least two active
    #   HSMs, each in a different Availability Zone in the Region.
    #
    #   This parameter is valid only for symmetric KMS keys and regional KMS
    #   keys. You cannot create an asymmetric KMS key or a multi-Region key
    #   in a custom key store.
    #
    #   To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #
    #   The response includes the custom key store ID and the ID of the
    #   CloudHSM cluster.
    #
    #   This operation is part of the [Custom Key Store feature][1] feature
    #   in KMS, which combines the convenience and extensive integration of
    #   KMS with the isolation and control of a single-tenant key store.
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
    #   Setting this value to true increases the risk that the KMS key
    #   becomes unmanageable. Do not set this value to true
    #   indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the <i> <i>Key Management Service Developer
    #   Guide</i> </i>.
    #
    #   Use this parameter only when you include a policy in the request and
    #   you intend to prevent the principal that is making the request from
    #   making a subsequent PutKeyPolicy request on the KMS key.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags to the KMS key. Use this parameter to tag
    #   the KMS key when it is created. To tag an existing KMS key, use the
    #   TagResource operation.
    #
    #   <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the
    #   KMS key. For details, see [Using ABAC in KMS][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #    </note>
    #
    #   To use this parameter, you must have [kms:TagResource][2] permission
    #   in an IAM policy.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You cannot have more than one tag on a KMS key with the same
    #   tag key. If you specify an existing tag key with a different tag
    #   value, KMS replaces the current tag value with the specified one.
    #
    #   When you add tags to an Amazon Web Services resource, Amazon Web
    #   Services generates a cost allocation report with usage and costs
    #   aggregated by tags. Tags can also be used to control access to a KMS
    #   key. For details, see [Tagging Keys][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] multi_region
    #   Creates a multi-Region primary key that you can replicate into other
    #   Amazon Web Services Regions. You cannot change this value after you
    #   create the KMS key.
    #
    #   For a multi-Region key, set this parameter to `True`. For a
    #   single-Region KMS key, omit this parameter or set it to `False`. The
    #   default value is `False`.
    #
    #   This operation supports *multi-Region keys*, an KMS feature that
    #   lets you create multiple interoperable KMS keys in different Amazon
    #   Web Services Regions. Because these KMS keys have the same key ID,
    #   key material, and other metadata, you can use them interchangeably
    #   to encrypt data in one Amazon Web Services Region and decrypt it in
    #   a different Amazon Web Services Region without re-encrypting the
    #   data or making a cross-Region call. For more information about
    #   multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   This value creates a *primary key*, not a replica. To create a
    #   *replica key*, use the ReplicateKey operation.
    #
    #   You can create a symmetric or asymmetric multi-Region key, and you
    #   can create a multi-Region key with imported key material. However,
    #   you cannot create a multi-Region key in a custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKeyRequest AWS API Documentation
    #
    class CreateKeyRequest < Struct.new(
      :policy,
      :description,
      :key_usage,
      :customer_master_key_spec,
      :key_spec,
      :origin,
      :custom_key_store_id,
      :bypass_policy_lockout_safety_check,
      :tags,
      :multi_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_metadata
    #   Metadata associated with the KMS key.
    #   @return [Types::KeyMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKeyResponse AWS API Documentation
    #
    class CreateKeyResponse < Struct.new(
      :key_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the custom key store contains KMS
    # keys. After verifying that you do not need to use the KMS keys, use
    # the ScheduleKeyDeletion operation to delete the KMS keys. After they
    # are deleted, you can delete the custom key store.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoreHasCMKsException AWS API Documentation
    #
    class CustomKeyStoreHasCMKsException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because KMS cannot find a custom key store
    # with the specified key store name or ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CustomKeyStoreNotFoundException AWS API Documentation
    #
    class CustomKeyStoreNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   A unique identifier for the CloudHSM cluster that is associated with
    #   the custom key store.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchor_certificate
    #   The trust anchor certificate of the associated CloudHSM cluster.
    #   When you [initialize the cluster][1], you create this certificate
    #   and save it in the `customerCA.crt` file.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   Indicates whether the custom key store is connected to its CloudHSM
    #   cluster.
    #
    #   You can create and use KMS keys in your custom key stores only when
    #   its connection state is `CONNECTED`.
    #
    #   The value is `DISCONNECTED` if the key store has never been
    #   connected or you use the DisconnectCustomKeyStore operation to
    #   disconnect it. If the value is `CONNECTED` but you are having
    #   trouble using the custom key store, make sure that its associated
    #   CloudHSM cluster is active and contains at least one active HSM.
    #
    #   A value of `FAILED` indicates that an attempt to connect was
    #   unsuccessful. The `ConnectionErrorCode` field in the response
    #   indicates the cause of the failure. For help resolving a connection
    #   failure, see [Troubleshooting a Custom Key Store][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    #   @return [String]
    #
    # @!attribute [rw] connection_error_code
    #   Describes the connection error. This field appears in the response
    #   only when the `ConnectionState` is `FAILED`. For help resolving
    #   these errors, see [How to Fix a Connection Failure][1] in *Key
    #   Management Service Developer Guide*.
    #
    #   Valid values are:
    #
    #   * `CLUSTER_NOT_FOUND` - KMS cannot find the CloudHSM cluster with
    #     the specified cluster ID.
    #
    #   * `INSUFFICIENT_CLOUDHSM_HSMS` - The associated CloudHSM cluster
    #     does not contain any active HSMs. To connect a custom key store to
    #     its CloudHSM cluster, the cluster must contain at least one active
    #     HSM.
    #
    #   * `INTERNAL_ERROR` - KMS could not complete the request due to an
    #     internal error. Retry the request. For `ConnectCustomKeyStore`
    #     requests, disconnect the custom key store before trying to connect
    #     again.
    #
    #   * `INVALID_CREDENTIALS` - KMS does not have the correct password for
    #     the `kmsuser` crypto user in the CloudHSM cluster. Before you can
    #     connect your custom key store to its CloudHSM cluster, you must
    #     change the `kmsuser` account password and update the key store
    #     password value for the custom key store.
    #
    #   * `NETWORK_ERRORS` - Network errors are preventing KMS from
    #     connecting to the custom key store.
    #
    #   * `SUBNET_NOT_FOUND` - A subnet in the CloudHSM cluster
    #     configuration was deleted. If KMS cannot find all of the subnets
    #     in the cluster configuration, attempts to connect the custom key
    #     store to the CloudHSM cluster fail. To fix this error, create a
    #     cluster from a recent backup and associate it with your custom key
    #     store. (This process creates a new cluster configuration with a
    #     VPC and private subnets.) For details, see [How to Fix a
    #     Connection Failure][1] in the *Key Management Service Developer
    #     Guide*.
    #
    #   * `USER_LOCKED_OUT` - The `kmsuser` CU account is locked out of the
    #     associated CloudHSM cluster due to too many failed password
    #     attempts. Before you can connect your custom key store to its
    #     CloudHSM cluster, you must change the `kmsuser` account password
    #     and update the key store password value for the custom key store.
    #
    #   * `USER_LOGGED_IN` - The `kmsuser` CU account is logged into the the
    #     associated CloudHSM cluster. This prevents KMS from rotating the
    #     `kmsuser` account password and logging into the cluster. Before
    #     you can connect your custom key store to its CloudHSM cluster, you
    #     must log the `kmsuser` CU out of the cluster. If you changed the
    #     `kmsuser` password to log into the cluster, you must also and
    #     update the key store password value for the custom key store. For
    #     help, see [How to Log Out and Reconnect][2] in the *Key Management
    #     Service Developer Guide*.
    #
    #   * `USER_NOT_FOUND` - KMS cannot find a `kmsuser` CU account in the
    #     associated CloudHSM cluster. Before you can connect your custom
    #     key store to its CloudHSM cluster, you must create a `kmsuser` CU
    #     account in the cluster, and then update the key store password
    #     value for the custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#login-kmsuser-2
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
      SENSITIVE = []
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
    #         key_id: "KeyIdType",
    #         encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #       }
    #
    # @!attribute [rw] ciphertext_blob
    #   Ciphertext to be decrypted. The blob includes metadata.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   Specifies the encryption context to use when decrypting the data. An
    #   encryption context is valid only for [cryptographic operations][1]
    #   with a symmetric KMS key. The standard asymmetric encryption
    #   algorithms that KMS uses do not support an encryption context.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][2] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_id
    #   Specifies the KMS key that KMS uses to decrypt the ciphertext. Enter
    #   a key ID of the KMS key that was used to encrypt the ciphertext.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key. If you used a symmetric KMS key, KMS
    #   can get the KMS key from metadata that it adds to the symmetric
    #   ciphertext blob. However, it is always recommended as a best
    #   practice. This practice ensures that you use the KMS key that you
    #   intend.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] encryption_algorithm
    #   Specifies the encryption algorithm that will be used to decrypt the
    #   ciphertext. Specify the same algorithm that was used to encrypt the
    #   data. If you specify a different algorithm, the `Decrypt` operation
    #   fails.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key. The default value, `SYMMETRIC_DEFAULT`,
    #   represents the only supported algorithm that is valid for symmetric
    #   KMS keys.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DecryptRequest AWS API Documentation
    #
    class DecryptRequest < Struct.new(
      :ciphertext_blob,
      :encryption_context,
      :grant_tokens,
      :key_id,
      :encryption_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that was used
    #   to decrypt the ciphertext.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] plaintext
    #   Decrypted plaintext data. When you use the HTTP API or the Amazon
    #   Web Services CLI, the value is Base64-encoded. Otherwise, it is not
    #   Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] encryption_algorithm
    #   The encryption algorithm that was used to decrypt the ciphertext.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DecryptResponse AWS API Documentation
    #
    class DecryptResponse < Struct.new(
      :key_id,
      :plaintext,
      :encryption_algorithm)
      SENSITIVE = [:plaintext]
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Identifies the KMS key from which you are deleting imported key
    #   material. The `Origin` of the KMS key must be `EXTERNAL`.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteImportedKeyMaterialRequest AWS API Documentation
    #
    class DeleteImportedKeyMaterialRequest < Struct.new(
      :key_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   stores in the account and Region. To limit the output to a
    #   particular custom key store, you can use either the
    #   `CustomKeyStoreId` or `CustomKeyStoreName` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_name
    #   Gets only information about the specified custom key store. Enter
    #   the friendly name of the custom key store.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and Region. To limit the output to a
    #   particular custom key store, you can use either the
    #   `CustomKeyStoreId` or `CustomKeyStoreName` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Describes the specified KMS key.
    #
    #   If you specify a predefined Amazon Web Services alias (an Amazon Web
    #   Services alias with no key ID), KMS associates the alias with an
    #   [Amazon Web Services managed key][1] and returns its `KeyId` and
    #   `Arn` in the response.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html##aws-managed-cmk
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeKeyRequest AWS API Documentation
    #
    class DescribeKeyRequest < Struct.new(
      :key_id,
      :grant_tokens)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Identifies the KMS key to disable.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKeyRequest AWS API Documentation
    #
    class DisableKeyRequest < Struct.new(
      :key_id)
      SENSITIVE = []
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
    #   Identifies a symmetric KMS key. You cannot enable or disable
    #   automatic rotation of [asymmetric KMS keys][1], KMS keys with
    #   [imported key material][2], or KMS keys in a [custom key store][3].
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKeyRotationRequest AWS API Documentation
    #
    class DisableKeyRotationRequest < Struct.new(
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified KMS key is not enabled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisabledException AWS API Documentation
    #
    class DisabledException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Identifies the KMS key to enable.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKeyRequest AWS API Documentation
    #
    class EnableKeyRequest < Struct.new(
      :key_id)
      SENSITIVE = []
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
    #   Identifies a symmetric KMS key. You cannot enable automatic rotation
    #   of [asymmetric KMS keys][1], KMS keys with [imported key
    #   material][2], or KMS keys in a [custom key store][3]. To enable or
    #   disable automatic rotation of a set of related [multi-Region
    #   keys][4], set the property on the primary key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   [4]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-replica-key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKeyRotationRequest AWS API Documentation
    #
    class EnableKeyRotationRequest < Struct.new(
      :key_id)
      SENSITIVE = []
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
    #         encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies the KMS key to use in the encryption operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] plaintext
    #   Data to be encrypted.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   Specifies the encryption context that will be used to encrypt the
    #   data. An encryption context is valid only for [cryptographic
    #   operations][1] with a symmetric KMS key. The standard asymmetric
    #   encryption algorithms that KMS uses do not support an encryption
    #   context.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][2] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @!attribute [rw] encryption_algorithm
    #   Specifies the encryption algorithm that KMS will use to encrypt the
    #   plaintext message. The algorithm must be compatible with the KMS key
    #   that you specify.
    #
    #   This parameter is required only for asymmetric KMS keys. The default
    #   value, `SYMMETRIC_DEFAULT`, is the algorithm used for symmetric KMS
    #   keys. If you are using an asymmetric KMS key, we recommend
    #   RSAES\_OAEP\_SHA\_256.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EncryptRequest AWS API Documentation
    #
    class EncryptRequest < Struct.new(
      :key_id,
      :plaintext,
      :encryption_context,
      :grant_tokens,
      :encryption_algorithm)
      SENSITIVE = [:plaintext]
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The encrypted plaintext. When you use the HTTP API or the Amazon Web
    #   Services CLI, the value is Base64-encoded. Otherwise, it is not
    #   Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that was used
    #   to encrypt the plaintext.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] encryption_algorithm
    #   The encryption algorithm that was used to encrypt the plaintext.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EncryptResponse AWS API Documentation
    #
    class EncryptResponse < Struct.new(
      :ciphertext_blob,
      :key_id,
      :encryption_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified import token is
    # expired. Use GetParametersForImport to get a new import token and
    # public key, use the new public key to encrypt the key material, and
    # then try the request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ExpiredImportTokenException AWS API Documentation
    #
    class ExpiredImportTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateDataKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         key_id: "KeyIdType", # required
    #         key_pair_spec: "RSA_2048", # required, accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] encryption_context
    #   Specifies the encryption context that will be used when encrypting
    #   the private key in the data key pair.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] key_id
    #   Specifies the symmetric KMS key that encrypts the private key in the
    #   data key pair. You cannot specify an asymmetric KMS key or a KMS key
    #   in a custom key store. To get the type and origin of your KMS key,
    #   use the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] key_pair_spec
    #   Determines the type of data key pair that is generated.
    #
    #   The KMS rule that restricts the use of asymmetric RSA KMS keys to
    #   encrypt and decrypt or to sign and verify (but not both), and the
    #   rule that permits you to use ECC KMS keys only to sign and verify,
    #   are not effective on data key pairs, which are used outside of KMS.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyPairRequest AWS API Documentation
    #
    class GenerateDataKeyPairRequest < Struct.new(
      :encryption_context,
      :key_id,
      :key_pair_spec,
      :grant_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] private_key_ciphertext_blob
    #   The encrypted copy of the private key. When you use the HTTP API or
    #   the Amazon Web Services CLI, the value is Base64-encoded. Otherwise,
    #   it is not Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] private_key_plaintext
    #   The plaintext copy of the private key. When you use the HTTP API or
    #   the Amazon Web Services CLI, the value is Base64-encoded. Otherwise,
    #   it is not Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key (in plaintext).
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that
    #   encrypted the private key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] key_pair_spec
    #   The type of data key pair that was generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyPairResponse AWS API Documentation
    #
    class GenerateDataKeyPairResponse < Struct.new(
      :private_key_ciphertext_blob,
      :private_key_plaintext,
      :public_key,
      :key_id,
      :key_pair_spec)
      SENSITIVE = [:private_key_plaintext]
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateDataKeyPairWithoutPlaintextRequest
    #   data as a hash:
    #
    #       {
    #         encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         key_id: "KeyIdType", # required
    #         key_pair_spec: "RSA_2048", # required, accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] encryption_context
    #   Specifies the encryption context that will be used when encrypting
    #   the private key in the data key pair.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] key_id
    #   Specifies the KMS key that encrypts the private key in the data key
    #   pair. You must specify a symmetric KMS key. You cannot use an
    #   asymmetric KMS key or a KMS key in a custom key store. To get the
    #   type and origin of your KMS key, use the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] key_pair_spec
    #   Determines the type of data key pair that is generated.
    #
    #   The KMS rule that restricts the use of asymmetric RSA KMS keys to
    #   encrypt and decrypt or to sign and verify (but not both), and the
    #   rule that permits you to use ECC KMS keys only to sign and verify,
    #   are not effective on data key pairs, which are used outside of KMS.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyPairWithoutPlaintextRequest AWS API Documentation
    #
    class GenerateDataKeyPairWithoutPlaintextRequest < Struct.new(
      :encryption_context,
      :key_id,
      :key_pair_spec,
      :grant_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] private_key_ciphertext_blob
    #   The encrypted copy of the private key. When you use the HTTP API or
    #   the Amazon Web Services CLI, the value is Base64-encoded. Otherwise,
    #   it is not Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key (in plaintext).
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that
    #   encrypted the private key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] key_pair_spec
    #   The type of data key pair that was generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyPairWithoutPlaintextResponse AWS API Documentation
    #
    class GenerateDataKeyPairWithoutPlaintextResponse < Struct.new(
      :private_key_ciphertext_blob,
      :public_key,
      :key_id,
      :key_pair_spec)
      SENSITIVE = []
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
    #   Identifies the symmetric KMS key that encrypts the data key.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   Specifies the encryption context that will be used when encrypting
    #   the data key.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] number_of_bytes
    #   Specifies the length of the data key in bytes. For example, use the
    #   value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
    #   128-bit (16-byte) and 256-bit (32-byte) data keys, use the `KeySpec`
    #   parameter.
    #
    #   You must specify either the `KeySpec` or the `NumberOfBytes`
    #   parameter (but not both) in every `GenerateDataKey` request.
    #   @return [Integer]
    #
    # @!attribute [rw] key_spec
    #   Specifies the length of the data key. Use `AES_128` to generate a
    #   128-bit symmetric key, or `AES_256` to generate a 256-bit symmetric
    #   key.
    #
    #   You must specify either the `KeySpec` or the `NumberOfBytes`
    #   parameter (but not both) in every `GenerateDataKey` request.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The encrypted copy of the data key. When you use the HTTP API or the
    #   Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it
    #   is not Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] plaintext
    #   The plaintext data key. When you use the HTTP API or the Amazon Web
    #   Services CLI, the value is Base64-encoded. Otherwise, it is not
    #   Base64-encoded. Use this data key to encrypt your data outside of
    #   KMS. Then, remove it from memory as soon as possible.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that
    #   encrypted the data key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyResponse AWS API Documentation
    #
    class GenerateDataKeyResponse < Struct.new(
      :ciphertext_blob,
      :plaintext,
      :key_id)
      SENSITIVE = [:plaintext]
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
    #   The identifier of the symmetric KMS key that encrypts the data key.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   Specifies the encryption context that will be used when encrypting
    #   the data key.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
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
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The encrypted data key. When you use the HTTP API or the Amazon Web
    #   Services CLI, the value is Base64-encoded. Otherwise, it is not
    #   Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that
    #   encrypted the data key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyWithoutPlaintextResponse AWS API Documentation
    #
    class GenerateDataKeyWithoutPlaintextResponse < Struct.new(
      :ciphertext_blob,
      :key_id)
      SENSITIVE = []
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
    #   Generates the random byte string in the CloudHSM cluster that is
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plaintext
    #   The random byte string. When you use the HTTP API or the Amazon Web
    #   Services CLI, the value is Base64-encoded. Otherwise, it is not
    #   Base64-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateRandomResponse AWS API Documentation
    #
    class GenerateRandomResponse < Struct.new(
      :plaintext)
      SENSITIVE = [:plaintext]
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
    #   Gets the key policy for the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Gets the rotation status for the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key
    #   in a different Amazon Web Services account, you must use the key
    #   ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyRotationStatusRequest AWS API Documentation
    #
    class GetKeyRotationStatusRequest < Struct.new(
      :key_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The identifier of the symmetric KMS key into which you will import
    #   key material. The `Origin` of the KMS key must be `EXTERNAL`.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_algorithm
    #   The algorithm you will use to encrypt the key material before
    #   importing it with ImportKeyMaterial. For more information, see
    #   [Encrypt the Key Material][1] in the *Key Management Service
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key to use in a
    #   subsequent ImportKeyMaterial request. This is the same KMS key
    #   specified in the `GetParametersForImport` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
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
      SENSITIVE = [:public_key]
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies the asymmetric KMS key that includes the public key.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetPublicKeyRequest AWS API Documentation
    #
    class GetPublicKeyRequest < Struct.new(
      :key_id,
      :grant_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the asymmetric KMS key
    #   from which the public key was downloaded.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The exported public key.
    #
    #   The value is a DER-encoded X.509 public key, also known as
    #   `SubjectPublicKeyInfo` (SPKI), as defined in [RFC 5280][1]. When you
    #   use the HTTP API or the Amazon Web Services CLI, the value is
    #   Base64-encoded. Otherwise, it is not Base64-encoded.
    #
    #
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5280
    #   @return [String]
    #
    # @!attribute [rw] customer_master_key_spec
    #   Instead, use the `KeySpec` field in the `GetPublicKey` response.
    #
    #   The `KeySpec` and `CustomerMasterKeySpec` fields have the same
    #   value. We recommend that you use the `KeySpec` field in your code.
    #   However, to avoid breaking changes, KMS will support both fields.
    #   @return [String]
    #
    # @!attribute [rw] key_spec
    #   The type of the of the public key that was downloaded.
    #   @return [String]
    #
    # @!attribute [rw] key_usage
    #   The permitted use of the public key. Valid values are
    #   `ENCRYPT_DECRYPT` or `SIGN_VERIFY`.
    #
    #   This information is critical. If a public key with `SIGN_VERIFY` key
    #   usage encrypts data outside of KMS, the ciphertext cannot be
    #   decrypted.
    #   @return [String]
    #
    # @!attribute [rw] encryption_algorithms
    #   The encryption algorithms that KMS supports for this key.
    #
    #   This information is critical. If a public key encrypts data outside
    #   of KMS by using an unsupported encryption algorithm, the ciphertext
    #   cannot be decrypted.
    #
    #   This field appears in the response only when the `KeyUsage` of the
    #   public key is `ENCRYPT_DECRYPT`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] signing_algorithms
    #   The signing algorithms that KMS supports for this key.
    #
    #   This field appears in the response only when the `KeyUsage` of the
    #   public key is `SIGN_VERIFY`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetPublicKeyResponse AWS API Documentation
    #
    class GetPublicKeyResponse < Struct.new(
      :key_id,
      :public_key,
      :customer_master_key_spec,
      :key_spec,
      :key_usage,
      :encryption_algorithms,
      :signing_algorithms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to allow [cryptographic operations][1] in the grant
    # only when the operation request includes the specified [encryption
    # context][2].
    #
    # KMS applies the grant constraints only to cryptographic operations
    # that support an encryption context, that is, all cryptographic
    # operations with a [symmetric KMS key][3]. Grant constraints are not
    # applied to operations that do not support an encryption context, such
    # as cryptographic operations with asymmetric KMS keys and management
    # operations, such as DescribeKey or RetireGrant.
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
    # details, see [kms:EncryptionContext:][4] in the <i> <i>Key Management
    # Service Developer Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#symmetric-cmks
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-context
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
    #   context of the [cryptographic operation][1] request. The grant
    #   allows the cryptographic operation only when the encryption context
    #   in the request includes the key-value pairs specified in this
    #   constraint, although it can include additional key-value pairs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_context_equals
    #   A list of key-value pairs that must match the encryption context in
    #   the [cryptographic operation][1] request. The grant allows the
    #   operation only when the encryption context in the request is the
    #   same as the encryption context specified in this constraint.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GrantConstraints AWS API Documentation
    #
    class GrantConstraints < Struct.new(
      :encryption_context_subset,
      :encryption_context_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a grant.
    #
    # @!attribute [rw] key_id
    #   The unique identifier for the KMS key to which the grant applies.
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
    #   The identity that gets the permissions in the grant.
    #
    #   The `GranteePrincipal` field in the `ListGrants` response usually
    #   contains the user or role designated as the grantee principal in the
    #   grant. However, when the grantee principal in the grant is an Amazon
    #   Web Services service, the `GranteePrincipal` field contains the
    #   [service principal][1], which might represent several different
    #   grantee principals.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services
    #   @return [String]
    #
    # @!attribute [rw] retiring_principal
    #   The principal that can retire the grant.
    #   @return [String]
    #
    # @!attribute [rw] issuing_account
    #   The Amazon Web Services account under which the grant was issued.
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
      SENSITIVE = []
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
    #   The identifier of the symmetric KMS key that receives the imported
    #   key material. The KMS key's `Origin` must be `EXTERNAL`. This must
    #   be the same KMS key specified in the `KeyID` parameter of the
    #   corresponding GetParametersForImport request.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
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
    #   The encrypted key material to import. The key material must be
    #   encrypted with the public wrapping key that GetParametersForImport
    #   returned, using the wrapping algorithm that you specified in the
    #   same `GetParametersForImport` request.
    #   @return [String]
    #
    # @!attribute [rw] valid_to
    #   The time at which the imported key material expires. When the key
    #   material expires, KMS deletes the key material and the KMS key
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ImportKeyMaterialResponse AWS API Documentation
    #
    class ImportKeyMaterialResponse < Aws::EmptyStructure; end

    # The request was rejected because the specified KMS key cannot decrypt
    # the data. The `KeyId` in a Decrypt request and the `SourceKeyId` in a
    # ReEncrypt request must identify the same KMS key that was used to
    # encrypt the ciphertext.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/IncorrectKeyException AWS API Documentation
    #
    class IncorrectKeyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the key material in the request is,
    # expired, invalid, or is not the same key material that was previously
    # imported into this KMS key.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/IncorrectKeyMaterialException AWS API Documentation
    #
    class IncorrectKeyMaterialException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the trust anchor certificate in the
    # request is not the trust anchor certificate for the specified CloudHSM
    # cluster.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # From the Decrypt or ReEncrypt operation, the request was rejected
    # because the specified ciphertext, or additional authenticated data
    # incorporated into the ciphertext, such as the encryption context, is
    # corrupted, missing, or otherwise invalid.
    #
    # From the ImportKeyMaterial operation, the request was rejected because
    # KMS could not decrypt the encrypted (wrapped) key material.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidCiphertextException AWS API Documentation
    #
    class InvalidCiphertextException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the provided import token is invalid
    # or is associated with a different KMS key.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidImportTokenException AWS API Documentation
    #
    class InvalidImportTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected for one of the following reasons:
    #
    # * The `KeyUsage` value of the KMS key is incompatible with the API
    #   operation.
    #
    # * The encryption algorithm or signing algorithm specified for the
    #   operation is incompatible with the type of key material in the KMS
    #   key `(KeySpec`).
    #
    # For encrypting, decrypting, re-encrypting, and generating data keys,
    # the `KeyUsage` must be `ENCRYPT_DECRYPT`. For signing and verifying,
    # the `KeyUsage` must be `SIGN_VERIFY`. To find the `KeyUsage` of a KMS
    # key, use the DescribeKey operation.
    #
    # To find the encryption or signing algorithms supported for a
    # particular KMS key, use the DescribeKey operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/InvalidKeyUsageException AWS API Documentation
    #
    class InvalidKeyUsageException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the signature verification failed.
    # Signature verification fails when it cannot confirm that signature was
    # produced by signing the specified message with the specified KMS key
    # and signing algorithm.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KMSInvalidSignatureException AWS API Documentation
    #
    class KMSInvalidSignatureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the state of the specified resource
    # is not valid for this request.
    #
    # For more information about how key state affects the use of a KMS key,
    # see [Key state: Effect on your KMS key][1] in the <i> <i>Key
    # Management Service Developer Guide</i> </i>.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a KMS key.
    #
    # This data type is used as a response element for the CreateKey and
    # DescribeKey operations.
    #
    # @!attribute [rw] aws_account_id
    #   The twelve-digit account ID of the Amazon Web Services account that
    #   owns the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The globally unique identifier for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the KMS key. For examples, see
    #   [Key Management Service (KMS)][1] in the Example ARNs section of the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the KMS key was created.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the KMS key is enabled. When `KeyState` is
    #   `Enabled` this value is true, otherwise it is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] key_usage
    #   The [cryptographic operations][1] for which you can use the KMS key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The current status of the KMS key.
    #
    #   For more information about how key state affects the use of a KMS
    #   key, see [Key state: Effect on your KMS key][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time after which KMS deletes this KMS key. This value
    #   is present only when the KMS key is scheduled for deletion, that is,
    #   when its `KeyState` is `PendingDeletion`.
    #
    #   When the primary key in a multi-Region key is scheduled for deletion
    #   but still has replica keys, its key state is
    #   `PendingReplicaDeletion` and the length of its waiting period is
    #   displayed in the `PendingDeletionWindowInDays` field.
    #   @return [Time]
    #
    # @!attribute [rw] valid_to
    #   The time at which the imported key material expires. When the key
    #   material expires, KMS deletes the key material and the KMS key
    #   becomes unusable. This value is present only for KMS keys whose
    #   `Origin` is `EXTERNAL` and whose `ExpirationModel` is
    #   `KEY_MATERIAL_EXPIRES`, otherwise this value is omitted.
    #   @return [Time]
    #
    # @!attribute [rw] origin
    #   The source of the key material for the KMS key. When this value is
    #   `AWS_KMS`, KMS created the key material. When this value is
    #   `EXTERNAL`, the key material was imported or the KMS key doesn't
    #   have any key material. When this value is `AWS_CLOUDHSM`, the key
    #   material was created in the CloudHSM cluster associated with a
    #   custom key store.
    #   @return [String]
    #
    # @!attribute [rw] custom_key_store_id
    #   A unique identifier for the [custom key store][1] that contains the
    #   KMS key. This value is present only when the KMS key is created in a
    #   custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   The cluster ID of the CloudHSM cluster that contains the key
    #   material for the KMS key. When you create a KMS key in a [custom key
    #   store][1], KMS creates the key material for the KMS key in the
    #   associated CloudHSM cluster. This value is present only when the KMS
    #   key is created in a custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   @return [String]
    #
    # @!attribute [rw] expiration_model
    #   Specifies whether the KMS key's key material expires. This value is
    #   present only when `Origin` is `EXTERNAL`, otherwise this value is
    #   omitted.
    #   @return [String]
    #
    # @!attribute [rw] key_manager
    #   The manager of the KMS key. KMS keys in your Amazon Web Services
    #   account are either customer managed or Amazon Web Services managed.
    #   For more information about the difference, see [KMS keys][1] in the
    #   *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys
    #   @return [String]
    #
    # @!attribute [rw] customer_master_key_spec
    #   Instead, use the `KeySpec` field.
    #
    #   The `KeySpec` and `CustomerMasterKeySpec` fields have the same
    #   value. We recommend that you use the `KeySpec` field in your code.
    #   However, to avoid breaking changes, KMS will support both fields.
    #   @return [String]
    #
    # @!attribute [rw] key_spec
    #   Describes the type of key material in the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] encryption_algorithms
    #   The encryption algorithms that the KMS key supports. You cannot use
    #   the KMS key with other encryption algorithms within KMS.
    #
    #   This value is present only when the `KeyUsage` of the KMS key is
    #   `ENCRYPT_DECRYPT`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] signing_algorithms
    #   The signing algorithms that the KMS key supports. You cannot use the
    #   KMS key with other signing algorithms within KMS.
    #
    #   This field appears only when the `KeyUsage` of the KMS key is
    #   `SIGN_VERIFY`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] multi_region
    #   Indicates whether the KMS key is a multi-Region (`True`) or regional
    #   (`False`) key. This value is `True` for multi-Region primary and
    #   replica keys and `False` for regional KMS keys.
    #
    #   For more information about multi-Region keys, see [Using
    #   multi-Region keys][1] in the *Key Management Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #   @return [Boolean]
    #
    # @!attribute [rw] multi_region_configuration
    #   Lists the primary and replica keys in same multi-Region key. This
    #   field is present only when the value of the `MultiRegion` field is
    #   `True`.
    #
    #   For more information about any listed KMS key, use the DescribeKey
    #   operation.
    #
    #   * `MultiRegionKeyType` indicates whether the KMS key is a `PRIMARY`
    #     or `REPLICA` key.
    #
    #   * `PrimaryKey` displays the key ARN and Region of the primary key.
    #     This field displays the current KMS key if it is the primary key.
    #
    #   * `ReplicaKeys` displays the key ARNs and Regions of all replica
    #     keys. This field includes the current KMS key if it is a replica
    #     key.
    #   @return [Types::MultiRegionConfiguration]
    #
    # @!attribute [rw] pending_deletion_window_in_days
    #   The waiting period before the primary key in a multi-Region key is
    #   deleted. This waiting period begins when the last of its replica
    #   keys is deleted. This value is present only when the `KeyState` of
    #   the KMS key is `PendingReplicaDeletion`. That indicates that the KMS
    #   key is the primary key in a multi-Region key, it is scheduled for
    #   deletion, and it still has existing replica keys.
    #
    #   When a single-Region KMS key or a multi-Region replica key is
    #   scheduled for deletion, its deletion date is displayed in the
    #   `DeletionDate` field. However, when the primary key in a
    #   multi-Region key is scheduled for deletion, its waiting period
    #   doesn't begin until all of its replica keys are deleted. This value
    #   displays that waiting period. When the last replica key in the
    #   multi-Region key is deleted, the `KeyState` of the scheduled primary
    #   key changes from `PendingReplicaDeletion` to `PendingDeletion` and
    #   the deletion date appears in the `DeletionDate` field.
    #   @return [Integer]
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
      :key_manager,
      :customer_master_key_spec,
      :key_spec,
      :encryption_algorithms,
      :signing_algorithms,
      :multi_region,
      :multi_region_configuration,
      :pending_deletion_window_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified KMS key was not
    # available. You can retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/KeyUnavailableException AWS API Documentation
    #
    class KeyUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because a quota was exceeded. For more
    # information, see [Quotas][1] in the *Key Management Service Developer
    # Guide*.
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
      SENSITIVE = []
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
    #   Lists only aliases that are associated with the specified KMS key.
    #   Enter a KMS key in your Amazon Web Services account.
    #
    #   This parameter is optional. If you omit it, `ListAliases` returns
    #   all aliases in the account and Region.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGrantsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         marker: "MarkerType",
    #         key_id: "KeyIdType", # required
    #         grant_id: "GrantIdType",
    #         grantee_principal: "PrincipalIdType",
    #       }
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
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
    #   Returns only grants for the specified KMS key. This parameter is
    #   required.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key
    #   in a different Amazon Web Services account, you must use the key
    #   ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   Returns only the grant with the specified grant ID. The grant ID
    #   uniquely identifies the grant.
    #   @return [String]
    #
    # @!attribute [rw] grantee_principal
    #   Returns only grants where the specified principal is the grantee
    #   principal for the grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListGrantsRequest AWS API Documentation
    #
    class ListGrantsRequest < Struct.new(
      :limit,
      :marker,
      :key_id,
      :grant_id,
      :grantee_principal)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Gets the names of key policies for the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   When this value is present, KMS does not return more than the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keys
    #   A list of KMS keys.
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
      SENSITIVE = []
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
    #   Gets tags on the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags. Each tag consists of a tag key and a tag value.
    #
    #   <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the
    #   KMS key. For details, see [Using ABAC in KMS][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
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
      SENSITIVE = []
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
    #   When this value is present, KMS does not return more than the
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
    #   The retiring principal for which to list grants. Enter a principal
    #   in your Amazon Web Services account.
    #
    #   To specify the retiring principal, use the [Amazon Resource Name
    #   (ARN)][1] of an Amazon Web Services principal. Valid Amazon Web
    #   Services principals include Amazon Web Services accounts (root), IAM
    #   users, federated users, and assumed role users. For examples of the
    #   ARN syntax for specifying a principal, see [Amazon Web Services
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of this multi-Region key. This field
    # appears only when the KMS key is a primary or replica of a
    # multi-Region key.
    #
    # For more information about any listed KMS key, use the DescribeKey
    # operation.
    #
    # @!attribute [rw] multi_region_key_type
    #   Indicates whether the KMS key is a `PRIMARY` or `REPLICA` key.
    #   @return [String]
    #
    # @!attribute [rw] primary_key
    #   Displays the key ARN and Region of the primary key. This field
    #   includes the current KMS key if it is the primary key.
    #   @return [Types::MultiRegionKey]
    #
    # @!attribute [rw] replica_keys
    #   displays the key ARNs and Regions of all replica keys. This field
    #   includes the current KMS key if it is a replica key.
    #   @return [Array<Types::MultiRegionKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/MultiRegionConfiguration AWS API Documentation
    #
    class MultiRegionConfiguration < Struct.new(
      :multi_region_key_type,
      :primary_key,
      :replica_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the primary or replica key in a multi-Region key.
    #
    # @!attribute [rw] arn
    #   Displays the key ARN of a primary or replica key of a multi-Region
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Displays the Amazon Web Services Region of a primary or replica key
    #   in a multi-Region key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/MultiRegionKey AWS API Documentation
    #
    class MultiRegionKey < Struct.new(
      :arn,
      :region)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Sets the key policy on the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the key policy. The only valid value is `default`.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The key policy to attach to the KMS key.
    #
    #   The key policy must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the
    #     key policy must allow the principal that is making the
    #     `PutKeyPolicy` request to make a subsequent `PutKeyPolicy` request
    #     on the KMS key. This reduces the risk that the KMS key becomes
    #     unmanageable. For more information, refer to the scenario in the
    #     [Default Key Policy][1] section of the *Key Management Service
    #     Developer Guide*.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to KMS. When you create a new Amazon Web Services
    #     principal (for example, an IAM user or role), you might need to
    #     enforce a delay before including the new principal in a key policy
    #     because the new principal might not be immediately visible to KMS.
    #     For more information, see [Changes that I make are not always
    #     immediately visible][2] in the *Amazon Web Services Identity and
    #     Access Management User Guide*.
    #
    #   The key policy cannot exceed 32 kilobytes (32768 bytes). For more
    #   information, see [Resource Quotas][3] in the *Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/resource-limits.html
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the KMS key
    #   becomes unmanageable. Do not set this value to true
    #   indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the *Key Management Service Developer Guide*.
    #
    #   Use this parameter only when you intend to prevent the principal
    #   that is making the request from making a subsequent `PutKeyPolicy`
    #   request on the KMS key.
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
      SENSITIVE = []
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
    #         source_key_id: "KeyIdType",
    #         destination_key_id: "KeyIdType", # required
    #         destination_encryption_context: {
    #           "EncryptionContextKey" => "EncryptionContextValue",
    #         },
    #         source_encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #         destination_encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] ciphertext_blob
    #   Ciphertext of the data to reencrypt.
    #   @return [String]
    #
    # @!attribute [rw] source_encryption_context
    #   Specifies the encryption context to use to decrypt the ciphertext.
    #   Enter the same encryption context that was used to encrypt the
    #   ciphertext.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] source_key_id
    #   Specifies the KMS key that KMS will use to decrypt the ciphertext
    #   before it is re-encrypted. Enter a key ID of the KMS key that was
    #   used to encrypt the ciphertext.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key. If you used a symmetric KMS key, KMS
    #   can get the KMS key from metadata that it adds to the symmetric
    #   ciphertext blob. However, it is always recommended as a best
    #   practice. This practice ensures that you use the KMS key that you
    #   intend.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] destination_key_id
    #   A unique identifier for the KMS key that is used to reencrypt the
    #   data. Specify a symmetric or asymmetric KMS key with a `KeyUsage`
    #   value of `ENCRYPT_DECRYPT`. To find the `KeyUsage` value of a KMS
    #   key, use the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] destination_encryption_context
    #   Specifies that encryption context to use when the reencrypting the
    #   data.
    #
    #   A destination encryption context is valid only when the destination
    #   KMS key is a symmetric KMS key. The standard ciphertext format for
    #   asymmetric KMS keys does not include fields for metadata.
    #
    #   An *encryption context* is a collection of non-secret key-value
    #   pairs that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data.
    #   An encryption context is optional when encrypting with a symmetric
    #   KMS key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] source_encryption_algorithm
    #   Specifies the encryption algorithm that KMS will use to decrypt the
    #   ciphertext before it is reencrypted. The default value,
    #   `SYMMETRIC_DEFAULT`, represents the algorithm used for symmetric KMS
    #   keys.
    #
    #   Specify the same algorithm that was used to encrypt the ciphertext.
    #   If you specify a different algorithm, the decrypt attempt fails.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key.
    #   @return [String]
    #
    # @!attribute [rw] destination_encryption_algorithm
    #   Specifies the encryption algorithm that KMS will use to reecrypt the
    #   data after it has decrypted it. The default value,
    #   `SYMMETRIC_DEFAULT`, represents the encryption algorithm used for
    #   symmetric KMS keys.
    #
    #   This parameter is required only when the destination KMS key is an
    #   asymmetric KMS key.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncryptRequest AWS API Documentation
    #
    class ReEncryptRequest < Struct.new(
      :ciphertext_blob,
      :source_encryption_context,
      :source_key_id,
      :destination_key_id,
      :destination_encryption_context,
      :source_encryption_algorithm,
      :destination_encryption_algorithm,
      :grant_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ciphertext_blob
    #   The reencrypted data. When you use the HTTP API or the Amazon Web
    #   Services CLI, the value is Base64-encoded. Otherwise, it is not
    #   Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] source_key_id
    #   Unique identifier of the KMS key used to originally encrypt the
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key that was used
    #   to reencrypt the data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] source_encryption_algorithm
    #   The encryption algorithm that was used to decrypt the ciphertext
    #   before it was reencrypted.
    #   @return [String]
    #
    # @!attribute [rw] destination_encryption_algorithm
    #   The encryption algorithm that was used to reencrypt the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncryptResponse AWS API Documentation
    #
    class ReEncryptResponse < Struct.new(
      :ciphertext_blob,
      :source_key_id,
      :key_id,
      :source_encryption_algorithm,
      :destination_encryption_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReplicateKeyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         replica_region: "RegionType", # required
    #         policy: "PolicyType",
    #         bypass_policy_lockout_safety_check: false,
    #         description: "DescriptionType",
    #         tags: [
    #           {
    #             tag_key: "TagKeyType", # required
    #             tag_value: "TagValueType", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies the multi-Region primary key that is being replicated. To
    #   determine whether a KMS key is a multi-Region primary key, use the
    #   DescribeKey operation to check the value of the `MultiRegionKeyType`
    #   property.
    #
    #   Specify the key ID or key ARN of a multi-Region primary key.
    #
    #   For example:
    #
    #   * Key ID: `mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] replica_region
    #   The Region ID of the Amazon Web Services Region for this replica
    #   key.
    #
    #   Enter the Region ID, such as `us-east-1` or `ap-southeast-2`. For a
    #   list of Amazon Web Services Regions in which KMS is supported, see
    #   [KMS service endpoints][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #   The replica must be in a different Amazon Web Services Region than
    #   its primary key and other replicas of that primary key, but in the
    #   same Amazon Web Services partition. KMS must be available in the
    #   replica Region. If the Region is not enabled by default, the Amazon
    #   Web Services account must be enabled in the Region.
    #
    #   For information about Amazon Web Services partitions, see [Amazon
    #   Resource Names (ARNs) in the *Amazon Web Services General
    #   Reference*.][2] For information about enabling and disabling
    #   Regions, see [Enabling a Region][3] and [Disabling a Region][4] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [3]: https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable
    #   [4]: https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The key policy to attach to the KMS key. This parameter is optional.
    #   If you do not provide a key policy, KMS attaches the [default key
    #   policy][1] to the KMS key.
    #
    #   The key policy is not a shared property of multi-Region keys. You
    #   can specify the same key policy or a different key policy for each
    #   key in a set of related multi-Region keys. KMS does not synchronize
    #   this property.
    #
    #   If you provide a key policy, it must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the
    #     key policy must give the caller `kms:PutKeyPolicy` permission on
    #     the replica key. This reduces the risk that the KMS key becomes
    #     unmanageable. For more information, refer to the scenario in the
    #     [Default Key Policy][2] section of the <i> <i>Key Management
    #     Service Developer Guide</i> </i>.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to KMS. When you create a new Amazon Web Services
    #     principal (for example, an IAM user or role), you might need to
    #     enforce a delay before including the new principal in a key policy
    #     because the new principal might not be immediately visible to KMS.
    #     For more information, see [Changes that I make are not always
    #     immediately visible][3] in the <i> <i>Identity and Access
    #     Management User Guide</i> </i>.
    #
    #   * The key policy size quota is 32 kilobytes (32768 bytes).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the KMS key
    #   becomes unmanageable. Do not set this value to true
    #   indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the *Key Management Service Developer Guide*.
    #
    #   Use this parameter only when you intend to prevent the principal
    #   that is making the request from making a subsequent `PutKeyPolicy`
    #   request on the KMS key.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the KMS key. The default value is an empty string
    #   (no description).
    #
    #   The description is not a shared property of multi-Region keys. You
    #   can specify the same description or a different description for each
    #   key in a set of related multi-Region keys. KMS does not synchronize
    #   this property.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags to the replica key. Use this parameter to
    #   tag the KMS key when it is created. To tag an existing KMS key, use
    #   the TagResource operation.
    #
    #   <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the
    #   KMS key. For details, see [Using ABAC in KMS][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #    </note>
    #
    #   To use this parameter, you must have [kms:TagResource][2] permission
    #   in an IAM policy.
    #
    #   Tags are not a shared property of multi-Region keys. You can specify
    #   the same tags or different tags for each key in a set of related
    #   multi-Region keys. KMS does not synchronize this property.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You cannot have more than one tag on a KMS key with the same
    #   tag key. If you specify an existing tag key with a different tag
    #   value, KMS replaces the current tag value with the specified one.
    #
    #   When you add tags to an Amazon Web Services resource, Amazon Web
    #   Services generates a cost allocation report with usage and costs
    #   aggregated by tags. Tags can also be used to control access to a KMS
    #   key. For details, see [Tagging Keys][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReplicateKeyRequest AWS API Documentation
    #
    class ReplicateKeyRequest < Struct.new(
      :key_id,
      :replica_region,
      :policy,
      :bypass_policy_lockout_safety_check,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replica_key_metadata
    #   Displays details about the new replica key, including its Amazon
    #   Resource Name ([key ARN][1]) and [key state][2]. It also includes
    #   the ARN and Amazon Web Services Region of its primary key and other
    #   replica keys.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #   @return [Types::KeyMetadata]
    #
    # @!attribute [rw] replica_policy
    #   The key policy of the new replica key. The value is a key policy
    #   document in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] replica_tags
    #   The tags on the new replica key. The value is a list of tag key and
    #   tag value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReplicateKeyResponse AWS API Documentation
    #
    class ReplicateKeyResponse < Struct.new(
      :replica_key_metadata,
      :replica_policy,
      :replica_tags)
      SENSITIVE = []
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
    #   Identifies the grant to be retired. You can use a grant token to
    #   identify a new grant even before it has achieved eventual
    #   consistency.
    #
    #   Only the CreateGrant operation returns a grant token. For details,
    #   see [Grant token][1] and [Eventual consistency][2] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The key ARN KMS key associated with the grant. To find the key ARN,
    #   use the ListKeys operation.
    #
    #   For example:
    #   `arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   Identifies the grant to retire. To get the grant ID, use
    #   CreateGrant, ListGrants, or ListRetirableGrants.
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
      SENSITIVE = []
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
    #   A unique identifier for the KMS key associated with the grant. To
    #   get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key
    #   in a different Amazon Web Services account, you must use the key
    #   ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] grant_id
    #   Identifies the grant to revoke. To get the grant ID, use
    #   CreateGrant, ListGrants, or ListRetirableGrants.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RevokeGrantRequest AWS API Documentation
    #
    class RevokeGrantRequest < Struct.new(
      :key_id,
      :grant_id)
      SENSITIVE = []
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
    #   The unique identifier of the KMS key to delete.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] pending_window_in_days
    #   The waiting period, specified in number of days. After the waiting
    #   period ends, KMS deletes the KMS key.
    #
    #   If the KMS key is a multi-Region primary key with replicas, the
    #   waiting period begins when the last of its replica keys is deleted.
    #   Otherwise, the waiting period begins immediately.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the KMS key whose
    #   deletion is scheduled.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time after which KMS deletes the KMS key.
    #
    #   If the KMS key is a multi-Region primary key with replica keys, this
    #   field does not appear. The deletion date for the primary key isn't
    #   known until its last replica key is deleted.
    #   @return [Time]
    #
    # @!attribute [rw] key_state
    #   The current status of the KMS key.
    #
    #   For more information about how key state affects the use of a KMS
    #   key, see [Key state: Effect on your KMS key][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #   @return [String]
    #
    # @!attribute [rw] pending_window_in_days
    #   The waiting period before the KMS key is deleted.
    #
    #   If the KMS key is a multi-Region primary key with replicas, the
    #   waiting period begins when the last of its replica keys is deleted.
    #   Otherwise, the waiting period begins immediately.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ScheduleKeyDeletionResponse AWS API Documentation
    #
    class ScheduleKeyDeletionResponse < Struct.new(
      :key_id,
      :deletion_date,
      :key_state,
      :pending_window_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SignRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         message: "data", # required
    #         message_type: "RAW", # accepts RAW, DIGEST
    #         grant_tokens: ["GrantTokenType"],
    #         signing_algorithm: "RSASSA_PSS_SHA_256", # required, accepts RSASSA_PSS_SHA_256, RSASSA_PSS_SHA_384, RSASSA_PSS_SHA_512, RSASSA_PKCS1_V1_5_SHA_256, RSASSA_PKCS1_V1_5_SHA_384, RSASSA_PKCS1_V1_5_SHA_512, ECDSA_SHA_256, ECDSA_SHA_384, ECDSA_SHA_512
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies an asymmetric KMS key. KMS uses the private key in the
    #   asymmetric KMS key to sign the message. The `KeyUsage` type of the
    #   KMS key must be `SIGN_VERIFY`. To find the `KeyUsage` of a KMS key,
    #   use the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies the message or message digest to sign. Messages can be
    #   0-4096 bytes. To sign a larger message, provide the message digest.
    #
    #   If you provide a message, KMS generates a hash digest of the message
    #   and then signs it.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   Tells KMS whether the value of the `Message` parameter is a message
    #   or message digest. The default value, RAW, indicates a message. To
    #   indicate a message digest, enter `DIGEST`.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @!attribute [rw] signing_algorithm
    #   Specifies the signing algorithm to use when signing the message.
    #
    #   Choose an algorithm that is compatible with the type and size of the
    #   specified asymmetric KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/SignRequest AWS API Documentation
    #
    class SignRequest < Struct.new(
      :key_id,
      :message,
      :message_type,
      :grant_tokens,
      :signing_algorithm)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the asymmetric KMS key
    #   that was used to sign the message.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   The cryptographic signature that was generated for the message.
    #
    #   * When used with the supported RSA signing algorithms, the encoding
    #     of this value is defined by [PKCS #1 in RFC 8017][1].
    #
    #   * When used with the `ECDSA_SHA_256`, `ECDSA_SHA_384`, or
    #     `ECDSA_SHA_512` signing algorithms, this value is a DER-encoded
    #     object as defined by ANS X9.62–2005 and [RFC 3279 Section
    #     2.2.3][2]. This is the most commonly used signature format and is
    #     appropriate for most uses.
    #
    #   When you use the HTTP API or the Amazon Web Services CLI, the value
    #   is Base64-encoded. Otherwise, it is not Base64-encoded.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc8017
    #   [2]: https://tools.ietf.org/html/rfc3279#section-2.2.3
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The signing algorithm that was used to sign the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/SignResponse AWS API Documentation
    #
    class SignResponse < Struct.new(
      :key_id,
      :signature,
      :signing_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair. A tag consists of a tag key and a tag value. Tag
    # keys and tag values are both required, but tag values can be empty
    # (null) strings.
    #
    # For information about the rules that apply to tag keys and tag values,
    # see [User-Defined Tag Restrictions][1] in the *Amazon Web Services
    # Billing and Cost Management User Guide*.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Identifies a customer managed key in the account and Region.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #
    #   Each tag consists of a tag key and a tag value. The tag value can be
    #   an empty (null) string.
    #
    #   You cannot have more than one tag on a KMS key with the same tag
    #   key. If you specify an existing tag key with a different tag value,
    #   KMS replaces the current tag value with the specified one.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :key_id,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Identifies the KMS key from which you are removing tags.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
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
      SENSITIVE = []
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
    #   Identifies the alias that is changing its KMS key. This value must
    #   begin with `alias/` followed by the alias name, such as
    #   `alias/ExampleAlias`. You cannot use UpdateAlias to change the alias
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] target_key_id
    #   Identifies the [customer managed key][1] to associate with the
    #   alias. You don't have permission to associate an alias with an
    #   [Amazon Web Services managed key][2].
    #
    #   The KMS key must be in the same Amazon Web Services account and
    #   Region as the alias. Also, the new target KMS key must be the same
    #   type as the current target KMS key (both symmetric or both
    #   asymmetric) and they must have the same key usage.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #   To verify that the alias is mapped to the correct KMS key, use
    #   ListAliases.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateAliasRequest AWS API Documentation
    #
    class UpdateAliasRequest < Struct.new(
      :alias_name,
      :target_key_id)
      SENSITIVE = []
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
    #   you specify. The custom key store name must be unique in the Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] key_store_password
    #   Enter the current password of the `kmsuser` crypto user (CU) in the
    #   CloudHSM cluster that is associated with the custom key store.
    #
    #   This parameter tells KMS the current password of the `kmsuser`
    #   crypto user (CU). It does not set or change the password of any
    #   users in the CloudHSM cluster.
    #   @return [String]
    #
    # @!attribute [rw] cloud_hsm_cluster_id
    #   Associates the custom key store with a related CloudHSM cluster.
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
      SENSITIVE = [:key_store_password]
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
    #   Updates the description of the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New description for the KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateKeyDescriptionRequest AWS API Documentation
    #
    class UpdateKeyDescriptionRequest < Struct.new(
      :key_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePrimaryRegionRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         primary_region: "RegionType", # required
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies the current primary key. When the operation completes,
    #   this KMS key will be a replica key.
    #
    #   Specify the key ID or key ARN of a multi-Region primary key.
    #
    #   For example:
    #
    #   * Key ID: `mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #   @return [String]
    #
    # @!attribute [rw] primary_region
    #   The Amazon Web Services Region of the new primary key. Enter the
    #   Region ID, such as `us-east-1` or `ap-southeast-2`. There must be an
    #   existing replica key in this Region.
    #
    #   When the operation completes, the multi-Region key in this Region
    #   will be the primary key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdatePrimaryRegionRequest AWS API Documentation
    #
    class UpdatePrimaryRegionRequest < Struct.new(
      :key_id,
      :primary_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass VerifyRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "KeyIdType", # required
    #         message: "data", # required
    #         message_type: "RAW", # accepts RAW, DIGEST
    #         signature: "data", # required
    #         signing_algorithm: "RSASSA_PSS_SHA_256", # required, accepts RSASSA_PSS_SHA_256, RSASSA_PSS_SHA_384, RSASSA_PSS_SHA_512, RSASSA_PKCS1_V1_5_SHA_256, RSASSA_PKCS1_V1_5_SHA_384, RSASSA_PKCS1_V1_5_SHA_512, ECDSA_SHA_256, ECDSA_SHA_384, ECDSA_SHA_512
    #         grant_tokens: ["GrantTokenType"],
    #       }
    #
    # @!attribute [rw] key_id
    #   Identifies the asymmetric KMS key that will be used to verify the
    #   signature. This must be the same KMS key that was used to generate
    #   the signature. If you specify a different KMS key, the signature
    #   verification fails.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify
    #   a KMS key in a different Amazon Web Services account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies the message that was signed. You can submit a raw message
    #   of up to 4096 bytes, or a hash digest of the message. If you submit
    #   a digest, use the `MessageType` parameter with a value of `DIGEST`.
    #
    #   If the message specified here is different from the message that was
    #   signed, the signature verification fails. A message and its hash
    #   digest are considered to be the same message.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   Tells KMS whether the value of the `Message` parameter is a message
    #   or message digest. The default value, RAW, indicates a message. To
    #   indicate a message digest, enter `DIGEST`.
    #
    #   Use the `DIGEST` value only when the value of the `Message`
    #   parameter is a message digest. If you use the `DIGEST` value with a
    #   raw message, the security of the verification operation can be
    #   compromised.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   The signature that the `Sign` operation generated.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The signing algorithm that was used to sign the message. If you
    #   submit a different algorithm, the signature verification fails.
    #   @return [String]
    #
    # @!attribute [rw] grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*.
    #   For more information, see [Grant token][1] and [Using a grant
    #   token][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/VerifyRequest AWS API Documentation
    #
    class VerifyRequest < Struct.new(
      :key_id,
      :message,
      :message_type,
      :signature,
      :signing_algorithm,
      :grant_tokens)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The Amazon Resource Name ([key ARN][1]) of the asymmetric KMS key
    #   that was used to verify the signature.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] signature_valid
    #   A Boolean value that indicates whether the signature was verified. A
    #   value of `True` indicates that the `Signature` was produced by
    #   signing the `Message` with the specified `KeyID` and
    #   `SigningAlgorithm.` If the signature is not verified, the `Verify`
    #   operation fails with a `KMSInvalidSignatureException` exception.
    #   @return [Boolean]
    #
    # @!attribute [rw] signing_algorithm
    #   The signing algorithm that was used to verify the signature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/VerifyResponse AWS API Documentation
    #
    class VerifyResponse < Struct.new(
      :key_id,
      :signature_valid,
      :signing_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
