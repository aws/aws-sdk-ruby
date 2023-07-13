# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecretsManager
  module Types

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
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
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier of the version of the secret created during
    #   the rotation. This version might not be complete, and should be
    #   evaluated for possible deletion. We recommend that you remove the
    #   `VersionStage` value `AWSPENDING` from this version so that Secrets
    #   Manager can delete it. Failing to clean up a cancelled rotation can
    #   block you from starting future rotations.
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

    # @!attribute [rw] name
    #   The name of the new secret.
    #
    #   The secret name can contain ASCII letters, numbers, and the
    #   following characters: /\_+=.@-
    #
    #   Do not end your secret name with a hyphen followed by six
    #   characters. If you do so, you risk confusion and unexpected results
    #   when searching for a secret by partial ARN. Secrets Manager
    #   automatically adds a hyphen and six random characters after the
    #   secret name at the end of the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   If you include `SecretString` or `SecretBinary`, then Secrets
    #   Manager creates an initial version for the secret, and this
    #   parameter specifies the unique identifier for the new version.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDKs to call this operation, then you can leave this
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
    #   The description of the secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN, key ID, or alias of the KMS key that Secrets Manager uses
    #   to encrypt the secret value in the secret. An alias is always
    #   prefixed by `alias/`, for example `alias/aws/secretsmanager`. For
    #   more information, see [About aliases][1].
    #
    #   To use a KMS key in a different account, use the key ARN or the
    #   alias ARN.
    #
    #   If you don't specify this value, then Secrets Manager uses the key
    #   `aws/secretsmanager`. If that key doesn't yet exist, then Secrets
    #   Manager creates it for you automatically the first time it encrypts
    #   the secret value.
    #
    #   If the secret is in a different Amazon Web Services account from the
    #   credentials calling the API, then you can't use
    #   `aws/secretsmanager` to encrypt the secret, and you must create and
    #   use a customer managed KMS key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html
    #   @return [String]
    #
    # @!attribute [rw] secret_binary
    #   The binary data to encrypt and store in the new version of the
    #   secret. We recommend that you store your binary data in a file and
    #   then pass the contents of the file as a parameter.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both.
    #
    #   This parameter is not available in the Secrets Manager console.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   The text data to encrypt and store in this new version of the
    #   secret. We recommend you use a JSON structure of key/value pairs for
    #   your secret value.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both.
    #
    #   If you create a secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that a Lambda
    #   rotation function can parse.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to attach to the secret. Each tag is a key and value
    #   pair of strings in a JSON text string, for example:
    #
    #   `[\{"Key":"CostCenter","Value":"12345"\},\{"Key":"environment","Value":"production"\}]`
    #
    #   Secrets Manager tag key names are case sensitive. A tag with the key
    #   "ABC" is a different tag from one with key "abc".
    #
    #   If you check tags in permissions policies as part of your security
    #   strategy, then adding or removing a tag can change permissions. If
    #   the completion of this operation would result in you losing your
    #   permissions for this secret, then Secrets Manager blocks the
    #   operation and returns an `Access Denied` error. For more
    #   information, see [Control access to secrets using tags][1] and
    #   [Limit access to identities with tags that match secrets' tags][2].
    #
    #   For information about how to format a JSON parameter for the various
    #   command line tool environments, see [Using JSON for Parameters][3].
    #   If your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of tags per secret: 50
    #
    #   * Maximum key length: 127 Unicode characters in UTF-8
    #
    #   * Maximum value length: 255 Unicode characters in UTF-8
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use the `aws:` prefix in your tag names or values because
    #     Amazon Web Services reserves it for Amazon Web Services use. You
    #     can't edit or delete tag names or values with this prefix. Tags
    #     with this prefix do not count against your tags per secret limit.
    #
    #   * If you use your tagging schema across multiple services and
    #     resources, other services might have restrictions on allowed
    #     characters. Generally allowed characters: letters, spaces, and
    #     numbers representable in UTF-8, plus the following special
    #     characters: + - = . \_ : / @.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac
    #   [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2
    #   [3]: https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_replica_regions
    #   A list of Regions and KMS keys to replicate secrets.
    #   @return [Array<Types::ReplicaRegionType>]
    #
    # @!attribute [rw] force_overwrite_replica_secret
    #   Specifies whether to overwrite a secret with the same name in the
    #   destination Region. By default, secrets aren't overwritten.
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
    #   The ARN of the new secret. The ARN includes the name of the secret
    #   followed by six random characters. This ensures that if you create a
    #   new secret with the same name as a deleted secret, then users with
    #   access to the old secret don't get access to the new secret because
    #   the ARNs are different.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier associated with the version of the new secret.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   A list of the replicas of this secret and their status:
    #
    #   * `Failed`, which indicates that the replica was not created.
    #
    #   * `InProgress`, which indicates that Secrets Manager is in the
    #     process of creating the replica.
    #
    #   * `InSync`, which indicates that the replica was created.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to delete the attached resource-based
    #   policy for.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
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
    #   The name of the secret that the resource-based policy was deleted
    #   for.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to delete.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] recovery_window_in_days
    #   The number of days from 7 to 30 that Secrets Manager waits before
    #   permanently deleting the secret. You can't use both this parameter
    #   and `ForceDeleteWithoutRecovery` in the same call. If you don't use
    #   either, then by default Secrets Manager uses a 30 day recovery
    #   window.
    #   @return [Integer]
    #
    # @!attribute [rw] force_delete_without_recovery
    #   Specifies whether to delete the secret without any recovery window.
    #   You can't use both this parameter and `RecoveryWindowInDays` in the
    #   same call. If you don't use either, then by default Secrets Manager
    #   uses a 30 day recovery window.
    #
    #   Secrets Manager performs the actual deletion with an asynchronous
    #   background process, so there might be a short delay before the
    #   secret is permanently deleted. If you delete a secret and then
    #   immediately create a secret with the same name, use appropriate back
    #   off and retry logic.
    #
    #   If you forcibly delete an already deleted or nonexistent secret, the
    #   operation does not return `ResourceNotFoundException`.
    #
    #   Use this parameter with caution. This parameter causes the operation
    #   to skip the normal recovery window before the permanent deletion
    #   that Secrets Manager would normally impose with the
    #   `RecoveryWindowInDays` parameter. If you delete a secret with the
    #   `ForceDeleteWithoutRecovery` parameter, then you have no opportunity
    #   to recover the secret. You lose the secret permanently.
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
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time after which this secret Secrets Manager can
    #   permanently delete this secret, and it can no longer be restored.
    #   This value is the date and time of the delete request plus the
    #   number of days in `RecoveryWindowInDays`.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
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
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The key ID or alias ARN of the KMS key that Secrets Manager uses to
    #   encrypt the secret value. If the secret is encrypted with the Amazon
    #   Web Services managed key `aws/secretsmanager`, this field is
    #   omitted. Secrets created using the console use an KMS key ID.
    #   @return [String]
    #
    # @!attribute [rw] rotation_enabled
    #   Specifies whether automatic rotation is turned on for this secret.
    #
    #   To turn on rotation, use RotateSecret. To turn off rotation, use
    #   CancelRotateSecret.
    #   @return [Boolean]
    #
    # @!attribute [rw] rotation_lambda_arn
    #   The ARN of the Lambda function that Secrets Manager invokes to
    #   rotate the secret.
    #   @return [String]
    #
    # @!attribute [rw] rotation_rules
    #   The rotation schedule and Lambda function for this secret. If the
    #   secret previously had rotation turned on, but it is now turned off,
    #   this field shows the previous rotation schedule and rotation
    #   function. If the secret never had rotation turned on, this field is
    #   omitted.
    #   @return [Types::RotationRulesType]
    #
    # @!attribute [rw] last_rotated_date
    #   The last date and time that Secrets Manager rotated the secret. If
    #   the secret isn't configured for rotation, Secrets Manager returns
    #   null.
    #   @return [Time]
    #
    # @!attribute [rw] last_changed_date
    #   The last date and time that this secret was modified in any way.
    #   @return [Time]
    #
    # @!attribute [rw] last_accessed_date
    #   The date that the secret was last accessed in the Region. This field
    #   is omitted if the secret has never been retrieved in the Region.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_date
    #   The date the secret is scheduled for deletion. If it is not
    #   scheduled for deletion, this field is omitted. When you delete a
    #   secret, Secrets Manager requires a recovery window of at least 7
    #   days before deleting the secret. Some time after the deleted date,
    #   Secrets Manager deletes the secret, including all of its versions.
    #
    #   If a secret is scheduled for deletion, then its details, including
    #   the encrypted secret value, is not accessible. To cancel a scheduled
    #   deletion and restore access to the secret, use RestoreSecret.
    #   @return [Time]
    #
    # @!attribute [rw] next_rotation_date
    #   The next rotation is scheduled to occur on or before this date. If
    #   the secret isn't configured for rotation, Secrets Manager returns
    #   null.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of tags attached to the secret. To add tags to a secret,
    #   use TagResource. To remove tags, use UntagResource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_ids_to_stages
    #   A list of the versions of the secret that have staging labels
    #   attached. Versions that don't have staging labels are considered
    #   deprecated and Secrets Manager can delete them.
    #
    #   Secrets Manager uses staging labels to indicate the status of a
    #   secret version during rotation. The three staging labels for
    #   rotation are:
    #
    #   * `AWSCURRENT`, which indicates the current version of the secret.
    #
    #   * `AWSPENDING`, which indicates the version of the secret that
    #     contains new secret information that will become the next current
    #     version when rotation finishes.
    #
    #     During rotation, Secrets Manager creates an `AWSPENDING` version
    #     ID before creating the new secret version. To check if a secret
    #     version exists, call GetSecretValue.
    #
    #   * `AWSPREVIOUS`, which indicates the previous current version of the
    #     secret. You can use this as the *last known good* version.
    #
    #   For more information about rotation and staging labels, see [How
    #   rotation works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] owning_service
    #   The ID of the service that created this secret. For more
    #   information, see [Secrets managed by other Amazon Web Services
    #   services][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the secret was created.
    #   @return [Time]
    #
    # @!attribute [rw] primary_region
    #   The Region the secret is in. If a secret is replicated to other
    #   Regions, the replicas are listed in `ReplicationStatus`.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   A list of the replicas of this secret and their status:
    #
    #   * `Failed`, which indicates that the replica was not created.
    #
    #   * `InProgress`, which indicates that Secrets Manager is in the
    #     process of creating the replica.
    #
    #   * `InSync`, which indicates that the replica was created.
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
      :next_rotation_date,
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
    # provided KMS key. Check that the KMS key is available, enabled, and
    # not in an invalid state. For more information, see [Key state: Effect
    # on your KMS key][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
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
    # Manager. For more information, see [Find secrets in Secrets
    # Manager][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html
    #
    # @!attribute [rw] key
    #   The following are keys you can use:
    #
    #   * **description**: Prefix match, not case-sensitive.
    #
    #   * **name**: Prefix match, case-sensitive.
    #
    #   * **tag-key**: Prefix match, case-sensitive.
    #
    #   * **tag-value**: Prefix match, case-sensitive.
    #
    #   * **primary-region**: Prefix match, case-sensitive.
    #
    #   * **owning-service**: Prefix match, case-sensitive.
    #
    #   * **all**: Breaks the filter value string into words and then
    #     searches all attributes for matches. Not case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The keyword to filter for.
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

    # @!attribute [rw] password_length
    #   The length of the password. If you don't include this parameter,
    #   the default length is 32 characters.
    #   @return [Integer]
    #
    # @!attribute [rw] exclude_characters
    #   A string of the characters that you don't want in the password.
    #   @return [String]
    #
    # @!attribute [rw] exclude_numbers
    #   Specifies whether to exclude numbers from the password. If you
    #   don't include this switch, the password can contain numbers.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_punctuation
    #   Specifies whether to exclude the following punctuation characters
    #   from the password: `` ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [
    #   \ ] ^ _ ` \{ | \} ~ ``. If you don't include this switch, the
    #   password can contain punctuation.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_uppercase
    #   Specifies whether to exclude uppercase letters from the password. If
    #   you don't include this switch, the password can contain uppercase
    #   letters.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_lowercase
    #   Specifies whether to exclude lowercase letters from the password. If
    #   you don't include this switch, the password can contain lowercase
    #   letters.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_space
    #   Specifies whether to include the space character. If you include
    #   this switch, the password can contain space characters.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_each_included_type
    #   Specifies whether to include at least one upper and lowercase
    #   letter, one number, and one punctuation. If you don't include this
    #   switch, the password contains at least one of every character type.
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
    #   A string with the password.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetRandomPasswordResponse AWS API Documentation
    #
    class GetRandomPasswordResponse < Struct.new(
      :random_password)
      SENSITIVE = [:random_password]
      include Aws::Structure
    end

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to retrieve the attached
    #   resource-based policy for.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
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
    #   The name of the secret that the resource-based policy was retrieved
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string that contains the permissions policy
    #   attached to the secret. For more information about permissions
    #   policies, see [Authentication and access control for Secrets
    #   Manager][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to retrieve.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier of the version of the secret to retrieve. If
    #   you include both this parameter and `VersionStage`, the two
    #   parameters must refer to the same secret version. If you don't
    #   specify either a `VersionStage` or `VersionId`, then Secrets Manager
    #   returns the `AWSCURRENT` version.
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
    #   The staging label of the version of the secret to retrieve.
    #
    #   Secrets Manager uses staging labels to keep track of different
    #   versions during the rotation process. If you include both this
    #   parameter and `VersionId`, the two parameters must refer to the same
    #   secret version. If you don't specify either a `VersionStage` or
    #   `VersionId`, Secrets Manager returns the `AWSCURRENT` version.
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
    #   The decrypted secret value, if the secret value was originally
    #   provided as binary data in the form of a byte array. The response
    #   parameter represents the binary data as a [base64-encoded][1]
    #   string.
    #
    #   If the secret was created by using the Secrets Manager console, or
    #   if the secret value was originally provided as a string, then this
    #   field is omitted. The secret value appears in `SecretString`
    #   instead.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc4648#section-4
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   The decrypted secret value, if the secret value was originally
    #   provided as a string or through the Secrets Manager console.
    #
    #   If this secret was created by using the console, then Secrets
    #   Manager stores the information as a JSON structure of key/value
    #   pairs.
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   A list of all of the staging labels currently attached to this
    #   version of the secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date and time that this version of the secret was created. If
    #   you don't specify which version in `VersionId` or `VersionStage`,
    #   then Secrets Manager uses the `AWSCURRENT` version.
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

    # The `NextToken` value is invalid.
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

    # The parameter name or value is invalid.
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

    # A parameter value is not valid for the current state of the resource.
    #
    # Possible causes:
    #
    # * The secret is scheduled for deletion.
    #
    # * You tried to enable rotation on a secret that doesn't already have
    #   a Lambda function ARN configured and you didn't include such an ARN
    #   as a parameter in this call.
    #
    # * The secret is managed by another service, and you must use that
    #   service to update it. For more information, see [Secrets managed by
    #   other Amazon Web Services services][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html
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
    # quotas.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret whose versions you want to list.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of results to include in the response.
    #
    #   If there are more results available, in the response, Secrets
    #   Manager includes `NextToken`. To get the next results, call
    #   `ListSecretVersionIds` again with the value from `NextToken`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous call did not show all results. To get the next results,
    #   call `ListSecretVersionIds` again with this value.
    #   @return [String]
    #
    # @!attribute [rw] include_deprecated
    #   Specifies whether to include versions of secrets that don't have
    #   any staging labels attached to them. Versions without staging labels
    #   are considered deprecated and are subject to deletion by Secrets
    #   Manager. By default, versions without staging labels aren't
    #   included.
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
    #   A list of the versions of the secret.
    #   @return [Array<Types::SecretVersionsListEntry>]
    #
    # @!attribute [rw] next_token
    #   Secrets Manager includes this value if there's more output
    #   available than what is included in the current response. This can
    #   occur even when the response includes no values at all, such as when
    #   you ask for a filtered view of a long list. To get the next results,
    #   call `ListSecretVersionIds` again with this value.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret.
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

    # @!attribute [rw] include_planned_deletion
    #   Specifies whether to include secrets scheduled for deletion. By
    #   default, secrets scheduled for deletion aren't included.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The number of results to include in the response.
    #
    #   If there are more results available, in the response, Secrets
    #   Manager includes `NextToken`. To get the next results, call
    #   `ListSecrets` again with the value from `NextToken`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where the output should continue from, if a
    #   previous call did not show all results. To get the next results,
    #   call `ListSecrets` again with this value.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the list of secrets.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_order
    #   Secrets are listed by `CreatedDate`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretsRequest AWS API Documentation
    #
    class ListSecretsRequest < Struct.new(
      :include_planned_deletion,
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
    #   Secrets Manager includes this value if there's more output
    #   available than what is included in the current response. This can
    #   occur even when the response includes no values at all, such as when
    #   you ask for a filtered view of a long list. To get the next results,
    #   call `ListSecrets` again with this value.
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

    # The resource policy has syntax errors.
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

    # The `BlockPublicPolicy` parameter is set to true, and the resource
    # policy did not prevent broad access to the secret.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to attach the resource-based policy.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy. For example policies, see [Permissions policy examples][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html
    #   @return [String]
    #
    # @!attribute [rw] block_public_policy
    #   Specifies whether to block resource-based policies that allow broad
    #   access to the secret, for example those that use a wildcard for the
    #   principal. By default, public policies aren't blocked.
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
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to add a new version to.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #   If the secret doesn't already exist, use `CreateSecret` instead.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the new version of the secret.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDKs to call this operation, then you can leave this
    #   parameter empty because they generate a random UUID for you. If you
    #   don't use the SDK and instead generate a raw HTTP request to the
    #   Secrets Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for new versions and include that
    #   value in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there
    #   are failures and retries during the Lambda rotation function
    #   processing. We recommend that you generate a [UUID-type][1] value to
    #   ensure uniqueness within the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` or `SecretBinary` values are the same as those in
    #     the request then the request is ignored. The operation is
    #     idempotent.
    #
    #   * If a version with this value already exists and the version of the
    #     `SecretString` and `SecretBinary` values are different from those
    #     in the request, then the request fails because you can't modify a
    #     secret version. You can only create new versions to store new
    #     secret values.
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
    #   The binary data to encrypt and store in the new version of the
    #   secret. To use this parameter in the command-line tools, we
    #   recommend that you store your binary data in a file and then pass
    #   the contents of the file as a parameter.
    #
    #   You must include `SecretBinary` or `SecretString`, but not both.
    #
    #   You can't access this value from the Secrets Manager console.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   The text to encrypt and store in the new version of the secret.
    #
    #   You must include `SecretBinary` or `SecretString`, but not both.
    #
    #   We recommend you create the secret string as JSON key/value pairs,
    #   as shown in the example.
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   A list of staging labels to attach to this version of the secret.
    #   Secrets Manager uses staging labels to track versions of a secret
    #   through the rotation process.
    #
    #   If you specify a staging label that's already associated with a
    #   different version of the same secret, then Secrets Manager removes
    #   the label from the other version and attaches it to this version. If
    #   you specify `AWSCURRENT`, and it is already attached to another
    #   version, then Secrets Manager also moves the staging label
    #   `AWSPREVIOUS` to the version that `AWSCURRENT` was removed from.
    #
    #   If you don't include `VersionStages`, then Secrets Manager
    #   automatically moves the staging label `AWSCURRENT` to this version.
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
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The unique identifier of the version of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_stages
    #   The list of staging labels that are currently attached to this
    #   version of the secret. Secrets Manager uses staging labels to track
    #   a version as it progresses through the secret rotation process.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] remove_replica_regions
    #   The Regions of the replicas to remove.
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
    #   The ARN of the primary secret.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   The status of replicas for this secret after you remove Regions.
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

    # A custom type that specifies a `Region` and the `KmsKeyId` for a
    # replica secret.
    #
    # @!attribute [rw] region
    #   A Region code. For a list of Region codes, see [Name and code of
    #   Regions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN, key ID, or alias of the KMS key to encrypt the secret. If
    #   you don't include this field, Secrets Manager uses
    #   `aws/secretsmanager`.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to replicate.
    #   @return [String]
    #
    # @!attribute [rw] add_replica_regions
    #   A list of Regions in which to replicate the secret.
    #   @return [Array<Types::ReplicaRegionType>]
    #
    # @!attribute [rw] force_overwrite_replica_secret
    #   Specifies whether to overwrite a secret with the same name in the
    #   destination Region. By default, secrets aren't overwritten.
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
    #   The ARN of the primary secret.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   The status of replication.
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
    #   The date that the secret was last accessed in the Region. This field
    #   is omitted if the secret has never been retrieved in the Region.
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

    # Secrets Manager can't find the resource that you asked for.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to restore.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
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
    #   The name of the secret that was restored.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret to rotate.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the new version of the secret that helps
    #   ensure idempotency. Secrets Manager uses this value to prevent the
    #   accidental creation of duplicate versions if there are failures and
    #   retries during rotation. This value becomes the `VersionId` of the
    #   new version.
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
    #   You only need to specify this value if you implement your own retry
    #   logic and you want to ensure that Secrets Manager doesn't attempt
    #   to create a secret version twice. We recommend that you generate a
    #   [UUID-type][1] value to ensure uniqueness within the specified
    #   secret.
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
    #   For secrets that use a Lambda rotation function to rotate, the ARN
    #   of the Lambda rotation function.
    #
    #   For secrets that use *managed rotation*, omit this field. For more
    #   information, see [Managed rotation][1] in the *Secrets Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_managed.html
    #   @return [String]
    #
    # @!attribute [rw] rotation_rules
    #   A structure that defines the rotation configuration for this secret.
    #   @return [Types::RotationRulesType]
    #
    # @!attribute [rw] rotate_immediately
    #   Specifies whether to rotate the secret immediately or wait until the
    #   next scheduled rotation window. The rotation schedule is defined in
    #   RotateSecretRequest$RotationRules.
    #
    #   For secrets that use a Lambda rotation function to rotate, if you
    #   don't immediately rotate the secret, Secrets Manager tests the
    #   rotation configuration by running the [ `testSecret` step][1] of the
    #   Lambda rotation function. The test creates an `AWSPENDING` version
    #   of the secret and then removes it.
    #
    #   By default, Secrets Manager rotates the secret immediately.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotateSecretRequest AWS API Documentation
    #
    class RotateSecretRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :rotation_lambda_arn,
      :rotation_rules,
      :rotate_immediately)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the secret.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the new version of the secret.
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
    # @!attribute [rw] automatically_after_days
    #   The number of days between rotations of the secret. You can use this
    #   value to check that your secret meets your compliance guidelines for
    #   how often secrets must be rotated. If you use this field to set the
    #   rotation schedule, Secrets Manager calculates the next rotation date
    #   based on the previous rotation. Manually updating the secret value
    #   by calling `PutSecretValue` or `UpdateSecret` is considered a valid
    #   rotation.
    #
    #   In `DescribeSecret` and `ListSecrets`, this value is calculated from
    #   the rotation schedule after every successful rotation. In
    #   `RotateSecret`, you can set the rotation schedule in `RotationRules`
    #   with `AutomaticallyAfterDays` or `ScheduleExpression`, but not both.
    #   To set a rotation schedule in hours, use `ScheduleExpression`.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   The length of the rotation window in hours, for example `3h` for a
    #   three hour window. Secrets Manager rotates your secret at any time
    #   during this window. The window must not extend into the next
    #   rotation window or the next UTC day. The window starts according to
    #   the `ScheduleExpression`. If you don't specify a `Duration`, for a
    #   `ScheduleExpression` in hours, the window automatically closes after
    #   one hour. For a `ScheduleExpression` in days, the window
    #   automatically closes at the end of the UTC day. For more
    #   information, including examples, see [Schedule expressions in
    #   Secrets Manager rotation][1] in the *Secrets Manager Users Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A `cron()` or `rate()` expression that defines the schedule for
    #   rotating your secret. Secrets Manager rotation schedules use UTC
    #   time zone. Secrets Manager rotates your secret any time during a
    #   rotation window.
    #
    #   Secrets Manager `rate()` expressions represent the interval in hours
    #   or days that you want to rotate your secret, for example `rate(12
    #   hours)` or `rate(10 days)`. You can rotate a secret as often as
    #   every four hours. If you use a `rate()` expression, the rotation
    #   window starts at midnight. For a rate in hours, the default rotation
    #   window closes after one hour. For a rate in days, the default
    #   rotation window closes at the end of the day. You can set the
    #   `Duration` to change the rotation window. The rotation window must
    #   not extend into the next UTC day or into the next rotation window.
    #
    #   You can use a `cron()` expression to create a rotation schedule that
    #   is more detailed than a rotation interval. For more information,
    #   including examples, see [Schedule expressions in Secrets Manager
    #   rotation][1] in the *Secrets Manager Users Guide*. For a cron
    #   expression that represents a schedule in hours, the default rotation
    #   window closes after one hour. For a cron expression that represents
    #   a schedule in days, the default rotation window closes at the end of
    #   the day. You can set the `Duration` to change the rotation window.
    #   The rotation window must not extend into the next UTC day or into
    #   the next rotation window.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotationRulesType AWS API Documentation
    #
    class RotationRulesType < Struct.new(
      :automatically_after_days,
      :duration,
      :schedule_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the details about a secret. It does not
    # include the encrypted `SecretString` and `SecretBinary` values. To get
    # those values, use [GetSecretValue][1] .
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the secret.
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
    #   The ARN of the KMS key that Secrets Manager uses to encrypt the
    #   secret value. If the secret is encrypted with the Amazon Web
    #   Services managed key `aws/secretsmanager`, this field is omitted.
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
    #   schedule or manually by a call to [ `RotateSecret` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_RotateSecret.html
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
    #   The date that the secret was last accessed in the Region. This field
    #   is omitted if the secret has never been retrieved in the Region.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_date
    #   The date and time the deletion of the secret occurred. Not present
    #   on active secrets. The secret can be recovered until the number of
    #   days in the recovery window has passed, as specified in the
    #   `RecoveryWindowInDays` parameter of the [ `DeleteSecret` ][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_DeleteSecret.html
    #   @return [Time]
    #
    # @!attribute [rw] next_rotation_date
    #   The next rotation is scheduled to occur on or before this date. If
    #   the secret isn't configured for rotation, Secrets Manager returns
    #   null.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of user-defined tags associated with the secret. To add
    #   tags to a secret, use [ `TagResource` ][1]. To remove tags, use [
    #   `UntagResource` ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_TagResource.html
    #   [2]: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_UntagResource.html
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
      :next_rotation_date,
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

    # @!attribute [rw] secret_id
    #   The ARN of the primary secret.
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
    #   The ARN of the promoted secret. The ARN is the same as the original
    #   primary secret except the Region is changed.
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

    # @!attribute [rw] secret_id
    #   The identifier for the secret to attach tags to. You can specify
    #   either the Amazon Resource Name (ARN) or the friendly name of the
    #   secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the secret as a JSON text string argument.
    #   Each element in the list consists of a `Key` and a `Value`.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag key names to remove from the secret. You don't
    #   specify the value. Both the key and its associated value are
    #   removed.
    #
    #   This parameter requires a JSON text string argument.
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

    # @!attribute [rw] secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   If you include `SecretString` or `SecretBinary`, then Secrets
    #   Manager creates a new version for the secret, and this parameter
    #   specifies the unique identifier for the new version.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDKs to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes it as the value for this parameter in the request. If you
    #   don't use the SDK and instead generate a raw HTTP request to the
    #   Secrets Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for the new version and include the
    #   value in the request.
    #
    #    </note>
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the secret.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN, key ID, or alias of the KMS key that Secrets Manager uses
    #   to encrypt new secret versions as well as any existing versions with
    #   the staging labels `AWSCURRENT`, `AWSPENDING`, or `AWSPREVIOUS`. If
    #   you don't have `kms:Encrypt` permission to the new key, Secrets
    #   Manager does not re-ecrypt existing secret versions with the new
    #   key. For more information about versions and staging labels, see
    #   [Concepts: Version][1].
    #
    #   A key alias is always prefixed by `alias/`, for example
    #   `alias/aws/secretsmanager`. For more information, see [About
    #   aliases][2].
    #
    #   If you set this to an empty string, Secrets Manager uses the Amazon
    #   Web Services managed key `aws/secretsmanager`. If this key doesn't
    #   already exist in your account, then Secrets Manager creates it for
    #   you automatically. All users and roles in the Amazon Web Services
    #   account automatically have access to use `aws/secretsmanager`.
    #   Creating `aws/secretsmanager` can result in a one-time significant
    #   delay in returning the result.
    #
    #   You can only use the Amazon Web Services managed key
    #   `aws/secretsmanager` if you call this operation using credentials
    #   from the same Amazon Web Services account that owns the secret. If
    #   the secret is in a different account, then you must use a customer
    #   managed key and provide the ARN of that KMS key in this field. The
    #   user making the call must have permissions to both the secret and
    #   the KMS key in their respective accounts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html
    #   @return [String]
    #
    # @!attribute [rw] secret_binary
    #   The binary data to encrypt and store in the new version of the
    #   secret. We recommend that you store your binary data in a file and
    #   then pass the contents of the file as a parameter.
    #
    #   Either `SecretBinary` or `SecretString` must have a value, but not
    #   both.
    #
    #   You can't access this parameter in the Secrets Manager console.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   The text data to encrypt and store in the new version of the secret.
    #   We recommend you use a JSON structure of key/value pairs for your
    #   secret value.
    #
    #   Either `SecretBinary` or `SecretString` must have a value, but not
    #   both.
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
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret that was updated.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   If Secrets Manager created a new version of the secret during this
    #   operation, then `VersionId` contains the unique identifier of the
    #   new version.
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

    # @!attribute [rw] secret_id
    #   The ARN or the name of the secret with the version and staging
    #   labelsto modify.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than
    #   a partial ARN. See [Finding a secret from a partial ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen
    #   @return [String]
    #
    # @!attribute [rw] version_stage
    #   The staging label to add to this version.
    #   @return [String]
    #
    # @!attribute [rw] remove_from_version_id
    #   The ID of the version that the staging label is to be removed from.
    #   If the staging label you are trying to attach to one version is
    #   already attached to a different version, then you must include this
    #   parameter and specify the version that the label is to be removed
    #   from. If the label is attached and you either do not specify this
    #   parameter, or the version ID does not match, then the operation
    #   fails.
    #   @return [String]
    #
    # @!attribute [rw] move_to_version_id
    #   The ID of the version to add the staging label to. To remove a label
    #   from a version, then do not specify this parameter.
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
    #   The ARN of the secret that was updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the secret that was updated.
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

    # @!attribute [rw] secret_id
    #   This field is reserved for internal use.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string that contains an Amazon Web Services
    #   resource-based policy. The policy in the string identifies who can
    #   access or manage this secret and its versions. For example policies,
    #   see [Permissions policy examples][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html
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
    #   True if your policy passes validation, otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] validation_errors
    #   Validation errors if your policy didn't pass validation.
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
