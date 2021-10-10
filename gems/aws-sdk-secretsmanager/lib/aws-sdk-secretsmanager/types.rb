# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecretsManager
  module Types

    # @note When making an API call, you may pass CancelRotateSecretRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret to cancel a rotation request. You can specify
    #   either the Amazon Resource Name (ARN) or the friendly name of the
    #   secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CancelRotateSecretRequest AWS API Documentation
    #
    class CancelRotateSecretRequest < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret for which rotation was canceled.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret for which rotation was canceled.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier of the version of the secret created during
    #   the rotation. This version might not be complete, and should be
    #   evaluated for possible deletion. At the very least, you should
    #   remove the `VersionStage` value `AWSPENDING` to enable this version
    #   to be deleted. Failing to clean up a cancelled rotation can block
    #   you from successfully starting future rotations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CancelRotateSecretResponse AWS API Documentation
    #
    class CancelRotateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSecretRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameType", # required
    #         client_request_token: "ClientRequestTokenType",
    #         description: "DescriptionType",
    #         kms_key_id: "KmsKeyIdType",
    #         secret_binary: "data",
    #         secret_string: "SecretStringType",
    #         tags: [
    #           {
    #             key: "TagKeyType",
    #             value: "TagValueType",
    #           },
    #         ],
    #         add_replica_regions: [
    #           {
    #             region: "RegionType",
    #             kms_key_id: "KmsKeyIdType",
    #           },
    #         ],
    #         force_overwrite_replica_secret: false,
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the friendly name of the new secret.
    #
    #   The secret name must be ASCII letters, digits, or the following
    #   characters : /\_+=.@-
    #
    #   <note markdown="1"> Do not end your secret name with a hyphen followed by six
    #   characters. If you do so, you risk confusion and unexpected results
    #   when searching for a secret by partial ARN. Secrets Manager
    #   automatically adds a hyphen and six random characters at the end of
    #   the ARN.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) If you include `SecretString` or `SecretBinary`, then an
    #   initial version is created as part of the secret, and this parameter
    #   specifies a unique identifier for the new version.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDK to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes it as the value for this parameter in the request. If you
    #   don't use the SDK and instead generate a raw HTTP request to the
    #   Secrets Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for the new version and include the
    #   value in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there
    #   are failures and retries during a rotation. We recommend that you
    #   generate a [UUID-type][1] value to ensure uniqueness of your
    #   versions within the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and the version
    #     `SecretString` and `SecretBinary` values are the same as those in
    #     the request, then the request is ignored.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are different from those
    #     in the request, then the request fails because you cannot modify
    #     an existing version. Instead, use PutSecretValue to create a new
    #     version.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] description
    #   (Optional) Specifies a user-provided description of the secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   (Optional) Specifies the ARN, Key ID, or alias of the Amazon Web
    #   Services KMS customer master key (CMK) to be used to encrypt the
    #   `SecretString` or `SecretBinary` values in the versions stored in
    #   this secret.
    #
    #   You can specify any of the supported ways to identify a Amazon Web
    #   Services KMS key ID. If you need to reference a CMK in a different
    #   account, you can use only the key ARN or the alias ARN.
    #
    #   If you don't specify this value, then Secrets Manager defaults to
    #   using the Amazon Web Services account's default CMK (the one named
    #   `aws/secretsmanager`). If a Amazon Web Services KMS CMK with that
    #   name doesn't yet exist, then Secrets Manager creates it for you
    #   automatically the first time it needs to encrypt a version's
    #   `SecretString` or `SecretBinary` fields.
    #
    #   You can use the account default CMK to encrypt and decrypt only if
    #   you call this operation using credentials from the same account that
    #   owns the secret. If the secret resides in a different account, then
    #   you must create a custom CMK and specify the ARN in this field.
    #   @return [String]
    #
    # @!attribute [rw] secret_binary
    #   (Optional) Specifies binary data that you want to encrypt and store
    #   in the new version of the secret. To use this parameter in the
    #   command-line tools, we recommend that you store your binary data in
    #   a file and then use the appropriate technique for your tool to pass
    #   the contents of the file as a parameter.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both. They cannot both be empty.
    #
    #   This parameter is not available using the Secrets Manager console.
    #   It can be accessed only by using the Amazon Web Services CLI or one
    #   of the Amazon Web Services SDKs.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   (Optional) Specifies text data that you want to encrypt and store in
    #   this new version of the secret.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both. They cannot both be empty.
    #
    #   If you create a secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that the Lambda
    #   rotation function knows how to parse.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information,
    #   see [Specifying parameter values for the Amazon Web Services CLI][1]
    #   in the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   (Optional) Specifies a list of user-defined tags that are attached
    #   to the secret. Each tag is a "Key" and "Value" pair of strings.
    #   This operation only appends tags to the existing list of tags. To
    #   remove tags, you must use UntagResource.
    #
    #   * Secrets Manager tag key names are case sensitive. A tag with the
    #     key "ABC" is a different tag from one with key "abc".
    #
    #   * If you check tags in IAM policy `Condition` elements as part of
    #     your security strategy, then adding or removing a tag can change
    #     permissions. If the successful completion of this operation would
    #     result in you losing your permissions for this secret, then this
    #     operation is blocked and returns an `Access Denied` error.
    #
    #   This parameter requires a JSON text string argument. For information
    #   on how to format a JSON parameter for the various command line tool
    #   environments, see [Using JSON for Parameters][1] in the *CLI User
    #   Guide*. For example:
    #
    #   `[\{"Key":"CostCenter","Value":"12345"\},\{"Key":"environment","Value":"production"\}]`
    #
    #   If your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per secret—50
    #
    #   * Maximum key length—127 Unicode characters in UTF-8
    #
    #   * Maximum value length—255 Unicode characters in UTF-8
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use the `aws:` prefix in your tag names or values because
    #     Amazon Web Services reserves it for Amazon Web Services use. You
    #     can't edit or delete tag names or values with this prefix. Tags
    #     with this prefix do not count against your tags per secret limit.
    #
    #   * If you use your tagging schema across multiple services and
    #     resources, remember other services might have restrictions on
    #     allowed characters. Generally allowed characters: letters, spaces,
    #     and numbers representable in UTF-8, plus the following special
    #     characters: + - = . \_ : / @.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_replica_regions
    #   (Optional) Add a list of regions to replicate secrets. Secrets
    #   Manager replicates the KMSKeyID objects to the list of regions
    #   specified in the parameter.
    #   @return [Array<Types::ReplicaRegionType>]
    #
    # @!attribute [rw] force_overwrite_replica_secret
    #   (Optional) If set, the replication overwrites a secret with the same
    #   name in the destination region.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CreateSecretRequest AWS API Documentation
    #
    class CreateSecretRequest < Struct.new(
      :name,
      :client_request_token,
      :description,
      :kms_key_id,
      :secret_binary,
      :secret_string,
      :tags,
      :add_replica_regions,
      :force_overwrite_replica_secret)
      SENSITIVE = [:secret_binary, :secret_string]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the secret that you just created.
    #
    #   <note markdown="1"> Secrets Manager automatically adds several random characters to the
    #   name at the end of the ARN when you initially create a secret. This
    #   affects only the ARN and not the actual friendly name. This ensures
    #   that if you create a new secret with the same name as an old secret
    #   that you previously deleted, then users with access to the old
    #   secret *don't* automatically get access to the new secret because
    #   the ARNs are different.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret that you just created.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier associated with the version of the secret you
    #   just created.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   Describes a list of replication status objects as `InProgress`,
    #   `Failed` or `InSync`.
    #   @return [Array<Types::ReplicationStatusType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CreateSecretResponse AWS API Documentation
    #
    class CreateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      :replication_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Secrets Manager can't decrypt the protected secret text using the
    # provided KMS key.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DecryptionFailure AWS API Documentation
    #
    class DecryptionFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret that you want to delete the attached
    #   resource-based policy for. You can specify either the Amazon
    #   Resource Name (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret that the resource-based policy was deleted
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret that the resource-based policy was
    #   deleted for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSecretRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         recovery_window_in_days: 1,
    #         force_delete_without_recovery: false,
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret to delete. You can specify either the Amazon
    #   Resource Name (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] recovery_window_in_days
    #   (Optional) Specifies the number of days that Secrets Manager waits
    #   before Secrets Manager can delete the secret. You can't use both
    #   this parameter and the `ForceDeleteWithoutRecovery` parameter in the
    #   same API call.
    #
    #   This value can range from 7 to 30 days with a default value of 30.
    #   @return [Integer]
    #
    # @!attribute [rw] force_delete_without_recovery
    #   (Optional) Specifies that the secret is to be deleted without any
    #   recovery window. You can't use both this parameter and the
    #   `RecoveryWindowInDays` parameter in the same API call.
    #
    #   An asynchronous background process performs the actual deletion, so
    #   there can be a short delay before the operation completes. If you
    #   write code to delete and then immediately recreate a secret with the
    #   same name, ensure that your code includes appropriate back off and
    #   retry logic.
    #
    #   Use this parameter with caution. This parameter causes the operation
    #   to skip the normal waiting period before the permanent deletion that
    #   Amazon Web Services would normally impose with the
    #   `RecoveryWindowInDays` parameter. If you delete a secret with the
    #   `ForceDeleteWithouRecovery` parameter, then you have no opportunity
    #   to recover the secret. You lose the secret permanently.
    #
    #   If you use this parameter and include a previously deleted or
    #   nonexistent secret, the operation does not return the error
    #   `ResourceNotFoundException` in order to correctly handle retries.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteSecretRequest AWS API Documentation
    #
    class DeleteSecretRequest < Struct.new(
      :secret_id,
      :recovery_window_in_days,
      :force_delete_without_recovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret that is now scheduled for deletion.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret currently scheduled for deletion.
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time after which this secret can be deleted by Secrets
    #   Manager and can no longer be restored. This value is the date and
    #   time of the delete request plus the number of days specified in
    #   `RecoveryWindowInDays`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteSecretResponse AWS API Documentation
    #
    class DeleteSecretResponse < Struct.new(
      :arn,
      :name,
      :deletion_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSecretRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   The identifier of the secret whose details you want to retrieve. You
    #   can specify either the Amazon Resource Name (ARN) or the friendly
    #   name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DescribeSecretRequest AWS API Documentation
    #
    class DescribeSecretRequest < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user-provided friendly name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user-provided description of the secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN or alias of the Amazon Web Services KMS customer master key
    #   (CMK) that's used to encrypt the `SecretString` or `SecretBinary`
    #   fields in each version of the secret. If you don't provide a key,
    #   then Secrets Manager defaults to encrypting the secret fields with
    #   the default Amazon Web Services KMS CMK (the one named
    #   `awssecretsmanager`) for this account.
    #   @return [String]
    #
    # @!attribute [rw] rotation_enabled
    #   Specifies whether automatic rotation is enabled for this secret.
    #
    #   To enable rotation, use RotateSecret with
    #   `AutomaticallyRotateAfterDays` set to a value greater than 0. To
    #   disable rotation, use CancelRotateSecret.
    #   @return [Boolean]
    #
    # @!attribute [rw] rotation_lambda_arn
    #   The ARN of a Lambda function that's invoked by Secrets Manager to
    #   rotate the secret either automatically per the schedule or manually
    #   by a call to `RotateSecret`.
    #   @return [String]
    #
    # @!attribute [rw] rotation_rules
    #   A structure with the rotation configuration for this secret. This
    #   field is only populated if rotation is configured.
    #   @return [Types::RotationRulesType]
    #
    # @!attribute [rw] last_rotated_date
    #   The last date and time that the rotation process for this secret was
    #   invoked.
    #
    #   The most recent date and time that the Secrets Manager rotation
    #   process successfully completed. If the secret doesn't rotate,
    #   Secrets Manager returns a null value.
    #   @return [Time]
    #
    # @!attribute [rw] last_changed_date
    #   The last date and time that this secret was modified in any way.
    #   @return [Time]
    #
    # @!attribute [rw] last_accessed_date
    #   The last date that this secret was accessed. This value is truncated
    #   to midnight of the date and therefore shows only the date, not the
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_date
    #   This value exists if the secret is scheduled for deletion. Some time
    #   after the specified date and time, Secrets Manager deletes the
    #   secret and all of its versions.
    #
    #   If a secret is scheduled for deletion, then its details, including
    #   the encrypted secret information, is not accessible. To cancel a
    #   scheduled deletion and restore access, use RestoreSecret.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of user-defined tags that are associated with the secret.
    #   To add tags to a secret, use TagResource. To remove tags, use
    #   UntagResource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_ids_to_stages
    #   A list of all of the currently assigned `VersionStage` staging
    #   labels and the `VersionId` that each is attached to. Staging labels
    #   are used to keep track of the different versions during the rotation
    #   process.
    #
    #   <note markdown="1"> A version that does not have any staging labels attached is
    #   considered deprecated and subject to deletion. Such versions are not
    #   included in this list.
    #
    #    </note>
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] owning_service
    #   Returns the name of the service that created this secret.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date you created the secret.
    #   @return [Time]
    #
    # @!attribute [rw] primary_region
    #   Specifies the primary region for secret replication.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   Describes a list of replication status objects as `InProgress`,
    #   `Failed` or `InSync`.`P`
    #   @return [Array<Types::ReplicationStatusType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DescribeSecretResponse AWS API Documentation
    #
    class DescribeSecretResponse < Struct.new(
      :arn,
      :name,
      :description,
      :kms_key_id,
      :rotation_enabled,
      :rotation_lambda_arn,
      :rotation_rules,
      :last_rotated_date,
      :last_changed_date,
      :last_accessed_date,
      :deleted_date,
      :tags,
      :version_ids_to_stages,
      :owning_service,
      :created_date,
      :primary_region,
      :replication_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Secrets Manager can't encrypt the protected secret text using the
    # provided KMS key. Check that the customer master key (CMK) is
    # available, enabled, and not in an invalid state. For more information,
    # see [How Key State Affects Use of a Customer Master Key][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/EncryptionFailure AWS API Documentation
    #
    class EncryptionFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to add filters when you use the search function in Secrets
    # Manager.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         key: "description", # accepts description, name, tag-key, tag-value, primary-region, all
    #         values: ["FilterValueStringType"],
    #       }
    #
    # @!attribute [rw] key
    #   Filters your list of secrets by a specific key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Filters your list of secrets by a specific value.
    #
    #   You can prefix your search value with an exclamation mark (`!`) in
    #   order to perform negation filters.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRandomPasswordRequest
    #   data as a hash:
    #
    #       {
    #         password_length: 1,
    #         exclude_characters: "ExcludeCharactersType",
    #         exclude_numbers: false,
    #         exclude_punctuation: false,
    #         exclude_uppercase: false,
    #         exclude_lowercase: false,
    #         include_space: false,
    #         require_each_included_type: false,
    #       }
    #
    # @!attribute [rw] password_length
    #   The desired length of the generated password. The default value if
    #   you do not include this parameter is 32 characters.
    #   @return [Integer]
    #
    # @!attribute [rw] exclude_characters
    #   A string that includes characters that should not be included in the
    #   generated password. The default is that all characters from the
    #   included sets can be used.
    #   @return [String]
    #
    # @!attribute [rw] exclude_numbers
    #   Specifies that the generated password should not include digits. The
    #   default if you do not include this switch parameter is that digits
    #   can be included.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_punctuation
    #   Specifies that the generated password should not include punctuation
    #   characters. The default if you do not include this switch parameter
    #   is that punctuation characters can be included.
    #
    #   The following are the punctuation characters that *can* be included
    #   in the generated password if you don't explicitly exclude them with
    #   `ExcludeCharacters` or `ExcludePunctuation`\:
    #
    #   `` ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` \{ | \} ~
    #   ``
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_uppercase
    #   Specifies that the generated password should not include uppercase
    #   letters. The default if you do not include this switch parameter is
    #   that uppercase letters can be included.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_lowercase
    #   Specifies that the generated password should not include lowercase
    #   letters. The default if you do not include this switch parameter is
    #   that lowercase letters can be included.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_space
    #   Specifies that the generated password can include the space
    #   character. The default if you do not include this switch parameter
    #   is that the space character is not included.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_each_included_type
    #   A boolean value that specifies whether the generated password must
    #   include at least one of every allowed character type. The default
    #   value is `True` and the operation requires at least one of every
    #   character type.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetRandomPasswordRequest AWS API Documentation
    #
    class GetRandomPasswordRequest < Struct.new(
      :password_length,
      :exclude_characters,
      :exclude_numbers,
      :exclude_punctuation,
      :exclude_uppercase,
      :exclude_lowercase,
      :include_space,
      :require_each_included_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] random_password
    #   A string with the generated password.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetRandomPasswordResponse AWS API Documentation
    #
    class GetRandomPasswordResponse < Struct.new(
      :random_password)
      SENSITIVE = [:random_password]
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret that you want to retrieve the attached
    #   resource-based policy for. You can specify either the Amazon
    #   Resource Name (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret that the resource-based policy was retrieved
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret that the resource-based policy was
    #   retrieved for.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string that describes the permissions that are
    #   associated with the attached secret. These permissions are combined
    #   with any permissions that are associated with the user or role that
    #   attempts to access this secret. The combined permissions specify who
    #   can access the secret and what actions they can perform. For more
    #   information, see [Authentication and Access Control for Amazon Web
    #   Services Secrets Manager][1] in the *Amazon Web Services Secrets
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :arn,
      :name,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSecretValueRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         version_id: "SecretVersionIdType",
    #         version_stage: "SecretVersionStageType",
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret containing the version that you want to
    #   retrieve. You can specify either the Amazon Resource Name (ARN) or
    #   the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Specifies the unique identifier of the version of the secret that
    #   you want to retrieve. If you specify both this parameter and
    #   `VersionStage`, the two parameters must refer to the same secret
    #   version. If you don't specify either a `VersionStage` or
    #   `VersionId` then the default is to perform the operation on the
    #   version with the `VersionStage` value of `AWSCURRENT`.
    #
    #   This value is typically a [UUID-type][1] value with 32 hexadecimal
    #   digits.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] version_stage
    #   Specifies the secret version that you want to retrieve by the
    #   staging label attached to the version.
    #
    #   Staging labels are used to keep track of different versions during
    #   the rotation process. If you specify both this parameter and
    #   `VersionId`, the two parameters must refer to the same secret
    #   version . If you don't specify either a `VersionStage` or
    #   `VersionId`, then the default is to perform the operation on the
    #   version with the `VersionStage` value of `AWSCURRENT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetSecretValueRequest AWS API Documentation
    #
    class GetSecretValueRequest < Struct.new(
      :secret_id,
      :version_id,
      :version_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier of this version of the secret.
    #   @return [String]
    #
    # @!attribute [rw] secret_binary
    #   The decrypted part of the protected secret information that was
    #   originally provided as binary data in the form of a byte array. The
    #   response parameter represents the binary data as a
    #   [base64-encoded][1] string.
    #
    #   This parameter is not used if the secret is created by the Secrets
    #   Manager console.
    #
    #   If you store custom information in this field of the secret, then
    #   you must code your Lambda rotation function to parse and interpret
    #   whatever you store in the `SecretString` or `SecretBinary` fields.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc4648#section-4
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   The decrypted part of the protected secret information that was
    #   originally provided as a string.
    #
    #   If you create this secret by using the Secrets Manager console then
    #   only the `SecretString` parameter contains data. Secrets Manager
    #   stores the information as a JSON structure of key/value pairs that
    #   the Lambda rotation function knows how to parse.
    #
    #   If you store custom information in the secret by using the
    #   CreateSecret, UpdateSecret, or PutSecretValue API operations instead
    #   of the Secrets Manager console, or by using the **Other secret
    #   type** in the console, then you must code your Lambda rotation
    #   function to parse and interpret those values.
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   A list of all of the staging labels currently attached to this
    #   version of the secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date and time that this version of the secret was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetSecretValueResponse AWS API Documentation
    #
    class GetSecretValueResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      :secret_binary,
      :secret_string,
      :version_stages,
      :created_date)
      SENSITIVE = [:secret_binary, :secret_string]
      include Aws::Structure
    end

    # An error occurred on the server side.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/InternalServiceError AWS API Documentation
    #
    class InternalServiceError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You provided an invalid `NextToken` value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You provided an invalid value for a parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You provided a parameter value that is not valid for the current state
    # of the resource.
    #
    # Possible causes:
    #
    # * You tried to perform the operation on a secret that's currently
    #   marked deleted.
    #
    # * You tried to enable rotation on a secret that doesn't already have
    #   a Lambda function ARN configured and you didn't include such an ARN
    #   as a parameter in this call.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because it would exceed one of the Secrets Manager
    # internal limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecretVersionIdsRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         max_results: 1,
    #         next_token: "NextTokenType",
    #         include_deprecated: false,
    #       }
    #
    # @!attribute [rw] secret_id
    #   The identifier for the secret containing the versions you want to
    #   list. You can specify either the Amazon Resource Name (ARN) or the
    #   friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results you want to include in the
    #   response. If you don't include this parameter, it defaults to a
    #   value that's specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Secrets Manager might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request indicating there's more
    #   output available. In a subsequent call, set it to the value of the
    #   previous call `NextToken` response to indicate where the output
    #   should continue from.
    #   @return [String]
    #
    # @!attribute [rw] include_deprecated
    #   (Optional) Specifies that you want the results to include versions
    #   that do not have any staging labels attached to them. Such versions
    #   are considered deprecated and are subject to deletion by Secrets
    #   Manager as needed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretVersionIdsRequest AWS API Documentation
    #
    class ListSecretVersionIdsRequest < Struct.new(
      :secret_id,
      :max_results,
      :next_token,
      :include_deprecated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] versions
    #   The list of the currently available versions of the specified
    #   secret.
    #   @return [Array<Types::SecretVersionsListEntry>]
    #
    # @!attribute [rw] next_token
    #   If present in the response, this value indicates that there's more
    #   output available than included in the current response. This can
    #   occur even when the response includes no values at all, such as when
    #   you ask for a filtered view of a very long list. Use this value in
    #   the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the secret.
    #
    #   <note markdown="1"> Secrets Manager automatically adds several random characters to the
    #   name at the end of the ARN when you initially create a secret. This
    #   affects only the ARN and not the actual friendly name. This ensures
    #   that if you create a new secret with the same name as an old secret
    #   that you previously deleted, then users with access to the old
    #   secret *don't* automatically get access to the new secret because
    #   the ARNs are different.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretVersionIdsResponse AWS API Documentation
    #
    class ListSecretVersionIdsResponse < Struct.new(
      :versions,
      :next_token,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecretsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextTokenType",
    #         filters: [
    #           {
    #             key: "description", # accepts description, name, tag-key, tag-value, primary-region, all
    #             values: ["FilterValueStringType"],
    #           },
    #         ],
    #         sort_order: "asc", # accepts asc, desc
    #       }
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results you want to include in the
    #   response. If you don't include this parameter, it defaults to a
    #   value that's specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Secrets Manager might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request indicating there's more
    #   output available. In a subsequent call, set it to the value of the
    #   previous call `NextToken` response to indicate where the output
    #   should continue from.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Lists the secret request filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_order
    #   Lists secrets in the requested order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretsRequest AWS API Documentation
    #
    class ListSecretsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] secret_list
    #   A list of the secrets in the account.
    #   @return [Array<Types::SecretListEntry>]
    #
    # @!attribute [rw] next_token
    #   If present in the response, this value indicates that there's more
    #   output available than included in the current response. This can
    #   occur even when the response includes no values at all, such as when
    #   you ask for a filtered view of a very long list. Use this value in
    #   the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretsResponse AWS API Documentation
    #
    class ListSecretsResponse < Struct.new(
      :secret_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You provided a resource-based policy with syntax errors.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/MalformedPolicyDocumentException AWS API Documentation
    #
    class MalformedPolicyDocumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because you did not complete all the prerequisite
    # steps.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PreconditionNotMetException AWS API Documentation
    #
    class PreconditionNotMetException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The BlockPublicPolicy parameter is set to true and the resource policy
    # did not prevent broad access to the secret.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PublicPolicyException AWS API Documentation
    #
    class PublicPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         resource_policy: "NonEmptyResourcePolicyType", # required
    #         block_public_policy: false,
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret that you want to attach the resource-based
    #   policy. You can specify either the ARN or the friendly name of the
    #   secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string constructed according to the grammar and
    #   syntax for an Amazon Web Services resource-based policy. The policy
    #   in the string identifies who can access or manage this secret and
    #   its versions. For information on how to format a JSON parameter for
    #   the various command line tool environments, see [Using JSON for
    #   Parameters][1] in the *CLI User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #   @return [String]
    #
    # @!attribute [rw] block_public_policy
    #   (Optional) If you set the parameter, `BlockPublicPolicy` to true,
    #   then you block resource-based policies that allow broad access to
    #   the secret.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :secret_id,
      :resource_policy,
      :block_public_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret retrieved by the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret retrieved by the resource-based
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSecretValueRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         client_request_token: "ClientRequestTokenType",
    #         secret_binary: "data",
    #         secret_string: "SecretStringType",
    #         version_stages: ["SecretVersionStageType"],
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret to which you want to add a new version. You can
    #   specify either the Amazon Resource Name (ARN) or the friendly name
    #   of the secret. The secret must already exist.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) Specifies a unique identifier for the new version of the
    #   secret.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDK to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes that in the request. If you don't use the SDK and instead
    #   generate a raw HTTP request to the Secrets Manager service endpoint,
    #   then you must generate a `ClientRequestToken` yourself for new
    #   versions and include that value in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there
    #   are failures and retries during the Lambda rotation function's
    #   processing. We recommend that you generate a [UUID-type][1] value to
    #   ensure uniqueness within the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` or `SecretBinary` values are the same as those in
    #     the request then the request is ignored (the operation is
    #     idempotent).
    #
    #   * If a version with this value already exists and the version of the
    #     `SecretString` and `SecretBinary` values are different from those
    #     in the request then the request fails because you cannot modify an
    #     existing secret version. You can only create new versions to store
    #     new secret values.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] secret_binary
    #   (Optional) Specifies binary data that you want to encrypt and store
    #   in the new version of the secret. To use this parameter in the
    #   command-line tools, we recommend that you store your binary data in
    #   a file and then use the appropriate technique for your tool to pass
    #   the contents of the file as a parameter. Either `SecretBinary` or
    #   `SecretString` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   This parameter is not accessible if the secret using the Secrets
    #   Manager console.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   (Optional) Specifies text data that you want to encrypt and store in
    #   this new version of the secret. Either `SecretString` or
    #   `SecretBinary` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   If you create this secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that the default
    #   Lambda rotation function knows how to parse.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information,
    #   see [Specifying parameter values for the Amazon Web Services CLI][1]
    #   in the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   (Optional) Specifies a list of staging labels that are attached to
    #   this version of the secret. These staging labels are used to track
    #   the versions through the rotation process by the Lambda rotation
    #   function.
    #
    #   A staging label must be unique to a single version of the secret. If
    #   you specify a staging label that's already associated with a
    #   different version of the same secret then that staging label is
    #   automatically removed from the other version and attached to this
    #   version.
    #
    #   If you do not specify a value for `VersionStages` then Secrets
    #   Manager automatically moves the staging label `AWSCURRENT` to this
    #   new version.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutSecretValueRequest AWS API Documentation
    #
    class PutSecretValueRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :secret_binary,
      :secret_string,
      :version_stages)
      SENSITIVE = [:secret_binary, :secret_string]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the secret for which you just
    #   created a version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret for which you just created or
    #   updated a version.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier of the version of the secret you just created
    #   or updated.
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   The list of staging labels that are currently attached to this
    #   version of the secret. Staging labels are used to track a version as
    #   it progresses through the secret rotation process.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutSecretValueResponse AWS API Documentation
    #
    class PutSecretValueResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      :version_stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveRegionsFromReplicationRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         remove_replica_regions: ["RegionType"], # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   Remove a secret by `SecretId` from replica Regions.
    #   @return [String]
    #
    # @!attribute [rw] remove_replica_regions
    #   Remove replication from specific Regions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RemoveRegionsFromReplicationRequest AWS API Documentation
    #
    class RemoveRegionsFromReplicationRequest < Struct.new(
      :secret_id,
      :remove_replica_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The secret `ARN` removed from replication regions.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   Describes the remaining replication status after you remove regions
    #   from the replication list.
    #   @return [Array<Types::ReplicationStatusType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RemoveRegionsFromReplicationResponse AWS API Documentation
    #
    class RemoveRegionsFromReplicationResponse < Struct.new(
      :arn,
      :replication_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Optional) Custom type consisting of a `Region` (required) and the
    # `KmsKeyId` which can be an `ARN`, `Key ID`, or `Alias`.
    #
    # @note When making an API call, you may pass ReplicaRegionType
    #   data as a hash:
    #
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #       }
    #
    # @!attribute [rw] region
    #   Describes a single instance of Region objects.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Can be an `ARN`, `Key ID`, or `Alias`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ReplicaRegionType AWS API Documentation
    #
    class ReplicaRegionType < Struct.new(
      :region,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReplicateSecretToRegionsRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         add_replica_regions: [ # required
    #           {
    #             region: "RegionType",
    #             kms_key_id: "KmsKeyIdType",
    #           },
    #         ],
    #         force_overwrite_replica_secret: false,
    #       }
    #
    # @!attribute [rw] secret_id
    #   Use the `Secret Id` to replicate a secret to regions.
    #   @return [String]
    #
    # @!attribute [rw] add_replica_regions
    #   Add Regions to replicate the secret.
    #   @return [Array<Types::ReplicaRegionType>]
    #
    # @!attribute [rw] force_overwrite_replica_secret
    #   (Optional) If set, Secrets Manager replication overwrites a secret
    #   with the same name in the destination region.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ReplicateSecretToRegionsRequest AWS API Documentation
    #
    class ReplicateSecretToRegionsRequest < Struct.new(
      :secret_id,
      :add_replica_regions,
      :force_overwrite_replica_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Replicate a secret based on the `ReplicaRegionType`&gt; consisting
    #   of a Region(required) and a KMSKeyId (optional) which can be the
    #   ARN, KeyID, or Alias.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   Describes the secret replication status as `PENDING`, `SUCCESS` or
    #   `FAIL`.
    #   @return [Array<Types::ReplicationStatusType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ReplicateSecretToRegionsResponse AWS API Documentation
    #
    class ReplicateSecretToRegionsResponse < Struct.new(
      :arn,
      :replication_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A replication object consisting of a `RegionReplicationStatus` object
    # and includes a Region, KMSKeyId, status, and status message.
    #
    # @!attribute [rw] region
    #   The Region where replication occurs.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Can be an `ARN`, `Key ID`, or `Alias`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status can be `InProgress`, `Failed`, or `InSync`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Status message such as "*Secret with this name already exists in
    #   this region*".
    #   @return [String]
    #
    # @!attribute [rw] last_accessed_date
    #   The date that you last accessed the secret in the Region.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ReplicationStatusType AWS API Documentation
    #
    class ReplicationStatusType < Struct.new(
      :region,
      :kms_key_id,
      :status,
      :status_message,
      :last_accessed_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the ID you requested already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find the resource that you asked for.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreSecretRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret that you want to restore from a previously
    #   scheduled deletion. You can specify either the Amazon Resource Name
    #   (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RestoreSecretRequest AWS API Documentation
    #
    class RestoreSecretRequest < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret that was restored.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret that was restored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RestoreSecretResponse AWS API Documentation
    #
    class RestoreSecretResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RotateSecretRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         client_request_token: "ClientRequestTokenType",
    #         rotation_lambda_arn: "RotationLambdaARNType",
    #         rotation_rules: {
    #           automatically_after_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret that you want to rotate. You can specify either
    #   the Amazon Resource Name (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) Specifies a unique identifier for the new version of the
    #   secret that helps ensure idempotency.
    #
    #   If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDK to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes that in the request for this parameter. If you don't use
    #   the SDK and instead generate a raw HTTP request to the Secrets
    #   Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for new versions and include that
    #   value in the request.
    #
    #   You only need to specify your own value if you implement your own
    #   retry logic and want to ensure that a given secret is not created
    #   twice. We recommend that you generate a [UUID-type][1] value to
    #   ensure uniqueness within the specified secret.
    #
    #   Secrets Manager uses this value to prevent the accidental creation
    #   of duplicate versions if there are failures and retries during the
    #   function's processing. This value becomes the `VersionId` of the
    #   new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] rotation_lambda_arn
    #   (Optional) Specifies the ARN of the Lambda function that can rotate
    #   the secret.
    #   @return [String]
    #
    # @!attribute [rw] rotation_rules
    #   A structure that defines the rotation configuration for this secret.
    #   @return [Types::RotationRulesType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotateSecretRequest AWS API Documentation
    #
    class RotateSecretRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :rotation_lambda_arn,
      :rotation_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the new version of the secret created by the rotation
    #   started by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotateSecretResponse AWS API Documentation
    #
    class RotateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines the rotation configuration for the secret.
    #
    # @note When making an API call, you may pass RotationRulesType
    #   data as a hash:
    #
    #       {
    #         automatically_after_days: 1,
    #       }
    #
    # @!attribute [rw] automatically_after_days
    #   Specifies the number of days between automatic scheduled rotations
    #   of the secret.
    #
    #   Secrets Manager schedules the next rotation when the previous one is
    #   complete. Secrets Manager schedules the date by adding the rotation
    #   interval (number of days) to the actual date of the last rotation.
    #   The service chooses the hour within that 24-hour date window
    #   randomly. The minute is also chosen somewhat randomly, but weighted
    #   towards the top of the hour and influenced by a variety of factors
    #   that help distribute load.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotationRulesType AWS API Documentation
    #
    class RotationRulesType < Struct.new(
      :automatically_after_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the details about a secret. It does not
    # include the encrypted `SecretString` and `SecretBinary` values. To get
    # those values, use the GetSecretValue operation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the secret.
    #
    #   For more information about ARNs in Secrets Manager, see [Policy
    #   Resources][1] in the *Amazon Web Services Secrets Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret. You can use forward slashes in the
    #   name to represent a path hierarchy. For example,
    #   `/prod/databases/dbserver1` could represent the secret for a server
    #   named `dbserver1` in the folder `databases` in the folder `prod`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user-provided description of the secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN or alias of the Amazon Web Services KMS customer master key
    #   (CMK) used to encrypt the `SecretString` and `SecretBinary` fields
    #   in each version of the secret. If you don't provide a key, then
    #   Secrets Manager defaults to encrypting the secret fields with the
    #   default KMS CMK, the key named `awssecretsmanager`, for this
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] rotation_enabled
    #   Indicates whether automatic, scheduled rotation is enabled for this
    #   secret.
    #   @return [Boolean]
    #
    # @!attribute [rw] rotation_lambda_arn
    #   The ARN of an Amazon Web Services Lambda function invoked by Secrets
    #   Manager to rotate and expire the secret either automatically per the
    #   schedule or manually by a call to RotateSecret.
    #   @return [String]
    #
    # @!attribute [rw] rotation_rules
    #   A structure that defines the rotation configuration for the secret.
    #   @return [Types::RotationRulesType]
    #
    # @!attribute [rw] last_rotated_date
    #   The most recent date and time that the Secrets Manager rotation
    #   process was successfully completed. This value is null if the secret
    #   hasn't ever rotated.
    #   @return [Time]
    #
    # @!attribute [rw] last_changed_date
    #   The last date and time that this secret was modified in any way.
    #   @return [Time]
    #
    # @!attribute [rw] last_accessed_date
    #   The last date that this secret was accessed. This value is truncated
    #   to midnight of the date and therefore shows only the date, not the
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_date
    #   The date and time the deletion of the secret occurred. Not present
    #   on active secrets. The secret can be recovered until the number of
    #   days in the recovery window has passed, as specified in the
    #   `RecoveryWindowInDays` parameter of the DeleteSecret operation.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of user-defined tags associated with the secret. To add
    #   tags to a secret, use TagResource. To remove tags, use
    #   UntagResource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] secret_versions_to_stages
    #   A list of all of the currently assigned `SecretVersionStage` staging
    #   labels and the `SecretVersionId` attached to each one. Staging
    #   labels are used to keep track of the different versions during the
    #   rotation process.
    #
    #   <note markdown="1"> A version that does not have any `SecretVersionStage` is considered
    #   deprecated and subject to deletion. Such versions are not included
    #   in this list.
    #
    #    </note>
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] owning_service
    #   Returns the name of the service that created the secret.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time when a secret was created.
    #   @return [Time]
    #
    # @!attribute [rw] primary_region
    #   The Region where Secrets Manager originated the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/SecretListEntry AWS API Documentation
    #
    class SecretListEntry < Struct.new(
      :arn,
      :name,
      :description,
      :kms_key_id,
      :rotation_enabled,
      :rotation_lambda_arn,
      :rotation_rules,
      :last_rotated_date,
      :last_changed_date,
      :last_accessed_date,
      :deleted_date,
      :tags,
      :secret_versions_to_stages,
      :owning_service,
      :created_date,
      :primary_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one version of a secret.
    #
    # @!attribute [rw] version_id
    #   The unique version identifier of this version of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   An array of staging labels that are currently associated with this
    #   version of the secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_accessed_date
    #   The date that this version of the secret was last accessed. Note
    #   that the resolution of this field is at the date level and does not
    #   include the time.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date and time this version of the secret was created.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_ids
    #   The KMS keys used to encrypt the secret version.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/SecretVersionsListEntry AWS API Documentation
    #
    class SecretVersionsListEntry < Struct.new(
      :version_id,
      :version_stages,
      :last_accessed_date,
      :created_date,
      :kms_key_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopReplicationToReplicaRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   Response to `StopReplicationToReplica` of a secret, based on the
    #   `SecretId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/StopReplicationToReplicaRequest AWS API Documentation
    #
    class StopReplicationToReplicaRequest < Struct.new(
      :secret_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Response `StopReplicationToReplica` of a secret, based on the
    #   `ARN,`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/StopReplicationToReplicaResponse AWS API Documentation
    #
    class StopReplicationToReplicaResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType",
    #       }
    #
    # @!attribute [rw] key
    #   The key identifier, or name, of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The string value associated with the key of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         tags: [ # required
    #           {
    #             key: "TagKeyType",
    #             value: "TagValueType",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] secret_id
    #   The identifier for the secret that you want to attach tags to. You
    #   can specify either the Amazon Resource Name (ARN) or the friendly
    #   name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the secret. Each element in the list consists
    #   of a `Key` and a `Value`.
    #
    #   This parameter to the API requires a JSON text string argument.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information,
    #   see [Specifying parameter values for the Amazon Web Services CLI][1]
    #   in the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :secret_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         tag_keys: ["TagKeyType"], # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   The identifier for the secret that you want to remove tags from. You
    #   can specify either the Amazon Resource Name (ARN) or the friendly
    #   name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag key names to remove from the secret. You don't
    #   specify the value. Both the key and its associated value are
    #   removed.
    #
    #   This parameter to the API requires a JSON text string argument.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information,
    #   see [Specifying parameter values for the Amazon Web Services CLI][1]
    #   in the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :secret_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSecretRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         client_request_token: "ClientRequestTokenType",
    #         description: "DescriptionType",
    #         kms_key_id: "KmsKeyIdType",
    #         secret_binary: "data",
    #         secret_string: "SecretStringType",
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret that you want to modify or to which you want to
    #   add a new version. You can specify either the Amazon Resource Name
    #   (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) If you want to add a new version to the secret, this
    #   parameter specifies a unique identifier for the new version that
    #   helps ensure idempotency.
    #
    #   If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDK to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes that in the request. If you don't use the SDK and instead
    #   generate a raw HTTP request to the Secrets Manager service endpoint,
    #   then you must generate a `ClientRequestToken` yourself for new
    #   versions and include that value in the request.
    #
    #   You typically only need to interact with this value if you implement
    #   your own retry logic and want to ensure that a given secret is not
    #   created twice. We recommend that you generate a [UUID-type][1] value
    #   to ensure uniqueness within the specified secret.
    #
    #   Secrets Manager uses this value to prevent the accidental creation
    #   of duplicate versions if there are failures and retries during the
    #   Lambda rotation function's processing.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are the same as those in
    #     the request then the request is ignored (the operation is
    #     idempotent).
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are different from the
    #     request then an error occurs because you cannot modify an existing
    #     secret value.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] description
    #   (Optional) Specifies an updated user-provided description of the
    #   secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   (Optional) Specifies an updated ARN or alias of the Amazon Web
    #   Services KMS customer master key (CMK) that Secrets Manager uses to
    #   encrypt the protected text in new versions of this secret as well as
    #   any existing versions of this secret that have the staging labels
    #   AWSCURRENT, AWSPENDING, or AWSPREVIOUS. For more information about
    #   staging labels, see [Staging Labels][1] in the *Amazon Web Services
    #   Secrets Manager User Guide*.
    #
    #   You can only use the account's default CMK to encrypt and decrypt
    #   if you call this operation using credentials from the same account
    #   that owns the secret. If the secret is in a different account, then
    #   you must create a custom CMK and provide the ARN of that CMK in this
    #   field. The user making the call must have permissions to both the
    #   secret and the CMK in their respective accounts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/terms-concepts.html#term_staging-label
    #   @return [String]
    #
    # @!attribute [rw] secret_binary
    #   (Optional) Specifies updated binary data that you want to encrypt
    #   and store in the new version of the secret. To use this parameter in
    #   the command-line tools, we recommend that you store your binary data
    #   in a file and then use the appropriate technique for your tool to
    #   pass the contents of the file as a parameter. Either `SecretBinary`
    #   or `SecretString` must have a value, but not both. They cannot both
    #   be empty.
    #
    #   This parameter is not accessible using the Secrets Manager console.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   (Optional) Specifies updated text data that you want to encrypt and
    #   store in this new version of the secret. Either `SecretBinary` or
    #   `SecretString` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   If you create this secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that the default
    #   Lambda rotation function knows how to parse.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information,
    #   see [Specifying parameter values for the Amazon Web Services CLI][1]
    #   in the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretRequest AWS API Documentation
    #
    class UpdateSecretRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :description,
      :kms_key_id,
      :secret_binary,
      :secret_string)
      SENSITIVE = [:secret_binary, :secret_string]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret that was updated.
    #
    #   <note markdown="1"> Secrets Manager automatically adds several random characters to the
    #   name at the end of the ARN when you initially create a secret. This
    #   affects only the ARN and not the actual friendly name. This ensures
    #   that if you create a new secret with the same name as an old secret
    #   that you previously deleted, then users with access to the old
    #   secret *don't* automatically get access to the new secret because
    #   the ARNs are different.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret that was updated.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   If a new version of the secret was created by this operation, then
    #   `VersionId` contains the unique identifier of the new version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretResponse AWS API Documentation
    #
    class UpdateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSecretVersionStageRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType", # required
    #         version_stage: "SecretVersionStageType", # required
    #         remove_from_version_id: "SecretVersionIdType",
    #         move_to_version_id: "SecretVersionIdType",
    #       }
    #
    # @!attribute [rw] secret_id
    #   Specifies the secret with the version with the list of staging
    #   labels you want to modify. You can specify either the Amazon
    #   Resource Name (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] version_stage
    #   The staging label to add to this version.
    #   @return [String]
    #
    # @!attribute [rw] remove_from_version_id
    #   Specifies the secret version ID of the version that the staging
    #   label is to be removed from. If the staging label you are trying to
    #   attach to one version is already attached to a different version,
    #   then you must include this parameter and specify the version that
    #   the label is to be removed from. If the label is attached and you
    #   either do not specify this parameter, or the version ID does not
    #   match, then the operation fails.
    #   @return [String]
    #
    # @!attribute [rw] move_to_version_id
    #   (Optional) The secret version ID that you want to add the staging
    #   label. If you want to remove a label from a version, then do not
    #   specify this parameter.
    #
    #   If the staging label is already attached to a different version of
    #   the secret, then you must also specify the `RemoveFromVersionId`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretVersionStageRequest AWS API Documentation
    #
    class UpdateSecretVersionStageRequest < Struct.new(
      :secret_id,
      :version_stage,
      :remove_from_version_id,
      :move_to_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret with the modified staging label.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the secret with the modified staging label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretVersionStageResponse AWS API Documentation
    #
    class UpdateSecretVersionStageResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ValidateResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         secret_id: "SecretIdType",
    #         resource_policy: "NonEmptyResourcePolicyType", # required
    #       }
    #
    # @!attribute [rw] secret_id
    #   (Optional) The identifier of the secret with the resource-based
    #   policy you want to validate. You can specify either the Amazon
    #   Resource Name (ARN) or the friendly name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string constructed according to the grammar and
    #   syntax for an Amazon Web Services resource-based policy. The policy
    #   in the string identifies who can access or manage this secret and
    #   its versions. For information on how to format a JSON parameter for
    #   the various command line tool environments, see [Using JSON for
    #   Parameters][1] in the *CLI User Guide*.publi
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ValidateResourcePolicyRequest AWS API Documentation
    #
    class ValidateResourcePolicyRequest < Struct.new(
      :secret_id,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_validation_passed
    #   Returns a message stating that your Reource Policy passed
    #   validation.
    #   @return [Boolean]
    #
    # @!attribute [rw] validation_errors
    #   Returns an error message if your policy doesn't pass validatation.
    #   @return [Array<Types::ValidationErrorsEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ValidateResourcePolicyResponse AWS API Documentation
    #
    class ValidateResourcePolicyResponse < Struct.new(
      :policy_validation_passed,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Displays errors that occurred during validation of the resource
    # policy.
    #
    # @!attribute [rw] check_name
    #   Checks the name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Displays error messages if validation encounters problems during
    #   validation of the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ValidationErrorsEntry AWS API Documentation
    #
    class ValidationErrorsEntry < Struct.new(
      :check_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
