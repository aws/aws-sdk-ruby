# frozen_string_literal: true

# This is generated code!

module Aws::SecretsManager
  # This module contains the types returned by client operations.
  module Types

    # <p>The error Secrets Manager encountered while retrieving an individual secret as part of <a>BatchGetSecretValue</a>.</p>
    # @!attribute secret_id
    #   <p>The ARN or name of the secret.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error Secrets Manager encountered while retrieving an individual secret as part of <a>BatchGetSecretValue</a>, for example <code>ResourceNotFoundException</code>,<code>InvalidParameterException</code>, <code>InvalidRequestException</code>, <code>DecryptionFailure</code>, or <code>AccessDeniedException</code>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class APIErrorType < Struct.new(
      :secret_id,
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id_list
    #   <p>The ARN or names of the secrets to retrieve. You must include <code>Filters</code> or <code>SecretIdList</code>, but not both.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filters to choose which secrets to retrieve. You must include <code>Filters</code> or <code>SecretIdList</code>, but not both.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
    #       To get the next results, call <code>BatchGetSecretValue</code> again with the value from 
    #       <code>NextToken</code>. To use this parameter, you must also use the <code>Filters</code> parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a 
    #       previous call did not show all results. To get the next results, call <code>BatchGetSecretValue</code> again 
    #       with this value.</p>
    #   @return [String]
    class BatchGetSecretValueRequest < Struct.new(
      :secret_id_list,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_values
    #   <p>A list of secret values.</p>
    #   @return [Array<Types::SecretValueEntry>]
    # @!attribute next_token
    #   <p>Secrets Manager includes this value if  
    #       there's more output available than what is included in the current response. This can 
    #       occur even when the response includes no values at all, such as when you ask for a filtered view 
    #       of a long list. To get the next results, call <code>BatchGetSecretValue</code> again 
    #       with this value.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of errors Secrets Manager encountered while attempting to retrieve individual secrets.</p>
    #   @return [Array<Types::APIErrorType>]
    class BatchGetSecretValueResponse < Struct.new(
      :secret_values,
      :next_token,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    class CancelRotateSecretRequest < Struct.new(
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique identifier of the version of the secret created during the rotation. This
    #         version might not be complete, and should be evaluated for possible deletion. We recommend 
    #         that you remove the <code>VersionStage</code> value <code>AWSPENDING</code> from this version so that 
    #         Secrets Manager can delete it. Failing to clean up a cancelled rotation can block you from
    #         starting future rotations.</p>
    #   @return [String]
    class CancelRotateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new secret.</p>
    #            <p>The secret name can contain ASCII letters, numbers, and the following characters:
    #         /_+=.@-</p>
    #            <p>Do not end your secret name with a hyphen followed by six characters. If you do so, you
    #           risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager
    #           automatically adds a hyphen and six random characters after the secret name at the end of the ARN.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then 
    #         Secrets Manager creates an initial version for the secret, and this parameter specifies the unique
    #         identifier for the new version. </p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
    #             of the secret then a new version of the secret is created. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and the version <code>SecretString</code>
    #             and <code>SecretBinary</code> values are the same as those in the request, then the
    #             request is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and that version's
    #             <code>SecretString</code> and <code>SecretBinary</code> values are different from those
    #             in the request, then the request fails because you cannot modify an existing version.
    #             Instead, use <a>PutSecretValue</a> to create a new version.</p>
    #               </li>
    #            </ul>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the secret.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
    #         encrypt the secret value in the secret. An alias is always prefixed by <code>alias/</code>, 
    #         for example <code>alias/aws/secretsmanager</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html">About aliases</a>.</p>
    #            <p>To use a KMS key in a different account, use the key ARN or the alias ARN.</p>
    #            <p>If you don't specify this value, then Secrets Manager uses the key <code>aws/secretsmanager</code>. 
    #         If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it 
    #         encrypts the secret value.</p>
    #            <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then 
    #         you can't use <code>aws/secretsmanager</code> to encrypt the secret, and you must create 
    #         and use a customer managed KMS key. </p>
    #   @return [String]
    # @!attribute secret_binary
    #   <p>The binary data to encrypt and store in the new version of
    #         the secret. We recommend that you store your binary data in a file and then pass the
    #         contents of the file as a parameter.</p>
    #            <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
    #         both.</p>
    #            <p>This parameter is not available in the Secrets Manager console.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute secret_string
    #   <p>The text data to encrypt and store in this new version of
    #         the secret. We recommend you use a JSON structure of key/value pairs for your secret value.</p>
    #            <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
    #         both.</p>
    #            <p>If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected
    #         secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the
    #         information as a JSON structure of key/value pairs that a Lambda rotation function can parse.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to attach to the secret. Each tag
    #         is a key and value pair of strings in a JSON text string, for example:</p>
    #            <p>
    #               <code>[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]</code>
    #            </p>
    #            <p>Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag
    #         from one with key "abc".</p>
    #            <p>If you check tags in permissions policies as part of your
    #         security strategy, then adding or removing a tag can change permissions. If the
    #         completion of this operation would result in you losing your permissions for
    #         this secret, then Secrets Manager blocks the operation and returns an <code>Access Denied</code>
    #         error. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac">Control 
    #           access to secrets using tags</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2">Limit access to identities with tags that match secrets' tags</a>.</p>
    #            <p>For information about how to format a
    #         JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for
    #           Parameters</a>. If your command-line tool or SDK requires quotation marks around the parameter, you should
    #         use single quotes to avoid confusion with the double quotes required in the JSON text.</p>
    #            <p>For tag quotas and naming restrictions, see <a href="https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas">Service quotas for Tagging</a> in the <i>Amazon Web Services General 
    #         Reference guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute add_replica_regions
    #   <p>A list of Regions and KMS keys to replicate secrets.</p>
    #   @return [Array<Types::ReplicaRegionType>]
    # @!attribute force_overwrite_replica_secret
    #   <p>Specifies whether to overwrite a secret with the same name in the
    #         destination Region. By default, secrets aren't overwritten.</p>
    #   @return [Boolean]
    class CreateSecretRequest < Struct.new(
      :name,
      :client_request_token,
      :description,
      :kms_key_id,
      :secret_binary,
      :secret_string,
      :tags,
      :add_replica_regions,
      :force_overwrite_replica_secret,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the new secret. The ARN includes the name of the secret followed by six random 
    #         characters. This ensures that if you create a new secret with the same name as a deleted secret, 
    #         then users with access to the old secret don't get access to the new secret because the ARNs 
    #         are different.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new secret.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique identifier associated with the version of the new secret.</p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>A list of the replicas of this secret and their status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>, which indicates that the replica was not created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InProgress</code>, which indicates that Secrets Manager is in the process of creating the replica.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InSync</code>, which indicates that the replica was created.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ReplicationStatusType>]
    class CreateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      :replication_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Secrets Manager can't decrypt the protected secret text using the provided KMS key. </p>
    # @!attribute message
    #   @return [String]
    class DecryptionFailure < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to delete the attached resource-based policy for.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret that the resource-based policy was deleted for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret that the resource-based policy was deleted for.</p>
    #   @return [String]
    class DeleteResourcePolicyResponse < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to delete.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute recovery_window_in_days
    #   <p>The number of days from 7 to 30 that Secrets Manager waits before permanently deleting the
    #         secret. You can't use both this parameter and <code>ForceDeleteWithoutRecovery</code>
    #         in the same call. If you don't use either, then by default Secrets Manager uses a 30 day recovery window.</p>
    #   @return [Integer]
    # @!attribute force_delete_without_recovery
    #   <p>Specifies whether to delete the secret without any recovery window. You
    #         can't use both this parameter and <code>RecoveryWindowInDays</code> in the same
    #         call. If you don't use either, then by default Secrets Manager uses a 30 day recovery window.</p>
    #            <p>Secrets Manager performs the actual deletion with an asynchronous background process, so there might 
    #         be a short delay before the secret is permanently deleted. If you delete a secret and then 
    #         immediately create a secret with the same name, use appropriate back off and retry logic.</p>
    #            <p>If you forcibly delete an already deleted or nonexistent secret, the operation does not return <code>ResourceNotFoundException</code>.</p>
    #            <important>
    #               <p>Use this parameter with caution. This parameter causes the operation to skip the normal
    #           recovery window before the permanent deletion that Secrets Manager would normally impose with the
    #             <code>RecoveryWindowInDays</code> parameter. If you delete a secret with the
    #             <code>ForceDeleteWithoutRecovery</code> parameter, then you have no opportunity to recover
    #           the secret. You lose the secret permanently.</p>
    #            </important>
    #   @return [Boolean]
    class DeleteSecretRequest < Struct.new(
      :secret_id,
      :recovery_window_in_days,
      :force_delete_without_recovery,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    # @!attribute deletion_date
    #   <p>The date and time after which this secret Secrets Manager can permanently delete this secret, 
    #         and it can no longer be restored. This value is the date and time of the delete request 
    #         plus the number of days in <code>RecoveryWindowInDays</code>.</p>
    #   @return [Time]
    class DeleteSecretResponse < Struct.new(
      :arn,
      :name,
      :deletion_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret. </p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    class DescribeSecretRequest < Struct.new(
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the secret.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The key ID or alias ARN of the KMS key that Secrets Manager uses to encrypt the secret value. 
    #         If the secret is encrypted with the Amazon Web Services managed key <code>aws/secretsmanager</code>, 
    #         this field is omitted. Secrets created using the console use an KMS key ID.</p>
    #   @return [String]
    # @!attribute rotation_enabled
    #   <p>Specifies whether automatic rotation is turned on for this secret.  If the secret has never been configured for rotation, Secrets Manager returns null.</p>
    #            <p>To turn on rotation, use <a>RotateSecret</a>. To turn off
    #         rotation, use <a>CancelRotateSecret</a>.</p>
    #   @return [Boolean]
    # @!attribute rotation_lambda_arn
    #   <p>The ARN of the Lambda function that Secrets Manager invokes to rotate the
    #         secret. </p>
    #   @return [String]
    # @!attribute rotation_rules
    #   <p>The rotation schedule and Lambda function for this secret. If the secret previously had rotation turned on, but 
    #         it is now turned off, this field shows the previous rotation schedule and rotation function. If the secret never had 
    #       rotation turned on, this field is omitted.</p>
    #   @return [Types::RotationRulesType]
    # @!attribute last_rotated_date
    #   <p>The last date and time that Secrets Manager rotated the secret. 
    #         If the secret isn't configured for rotation or rotation has been disabled, Secrets Manager returns null.</p>
    #   @return [Time]
    # @!attribute last_changed_date
    #   <p>The last date and time that this secret was modified in any way.</p>
    #   @return [Time]
    # @!attribute last_accessed_date
    #   <p>The date that the secret was last accessed in the Region. This field is omitted if the secret has never been retrieved in the Region.</p>
    #   @return [Time]
    # @!attribute deleted_date
    #   <p>The date the secret is scheduled for deletion. If it is not scheduled for deletion, this 
    #         field is omitted. When you delete a secret, Secrets Manager requires a 
    #         recovery window of at least 7 days before deleting the secret. Some time after the deleted date, 
    #         Secrets Manager deletes the secret, including all of its versions.</p>
    #            <p>If a secret is scheduled for deletion, then its details, including the encrypted secret
    #         value, is not accessible. To cancel a scheduled deletion and restore access to the secret, use <a>RestoreSecret</a>.</p>
    #   @return [Time]
    # @!attribute next_rotation_date
    #   <p>The next rotation is scheduled to occur on or before this date. If the secret isn't configured for rotation or rotation has been disabled, Secrets Manager returns null. If rotation fails, Secrets Manager retries the entire rotation process multiple times. If rotation is unsuccessful, this date may be in the past.</p>
    #            <p>This date represents the latest date that rotation will occur, but it is not an approximate rotation date. In some cases, for example if you turn off automatic rotation and then turn it back on, the next rotation may occur much sooner than this date.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of tags attached to the secret. To add tags to a
    #         secret, use <a>TagResource</a>. To remove tags, use <a>UntagResource</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute version_ids_to_stages
    #   <p>A list of the versions of the secret that have staging labels attached.
    #         Versions that don't have staging labels are considered deprecated and Secrets Manager 
    #         can delete them.</p>
    #            <p>Secrets Manager uses staging labels to indicate the status of a secret version during rotation. The three 
    #       staging labels for rotation are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWSCURRENT</code>, which indicates the current version of the secret.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWSPENDING</code>, which indicates the version of the secret that contains new 
    #           secret information that will become the next current version when rotation finishes.</p>
    #                  <p>During  
    #             rotation, Secrets Manager creates an <code>AWSPENDING</code> version ID before creating the new secret version. 
    #           To check if a secret version exists, call <a>GetSecretValue</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWSPREVIOUS</code>, which indicates the previous current version of the secret. 
    #         You can use this as the <i>last known good</i> version.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about rotation and staging labels, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html">How rotation works</a>.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute owning_service
    #   <p>The ID of the service that created this secret. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html">Secrets managed by other Amazon Web Services services</a>.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date the secret was created.</p>
    #   @return [Time]
    # @!attribute primary_region
    #   <p>The Region the secret is in. If a secret is replicated to other Regions, the replicas are listed in <code>ReplicationStatus</code>. </p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>A list of the replicas of this secret and their status: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>, which indicates that the replica was not created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InProgress</code>, which indicates that Secrets Manager is in the process of creating the replica.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InSync</code>, which indicates that the replica was created.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ReplicationStatusType>]
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
      :replication_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rotation_enabled] = nil unless options.key?(:rotation_enabled)
        super
      end
    end

    # <p>Secrets Manager can't encrypt the protected secret text using the provided KMS key. Check that the
    #       KMS key is available, enabled, and not in an invalid state. For more
    #       information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key state: Effect on your KMS key</a>.</p>
    # @!attribute message
    #   @return [String]
    class EncryptionFailure < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to add filters when you use the search function in Secrets Manager. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html">Find secrets in Secrets Manager</a>.</p>
    # @!attribute key
    #   <p>The following are keys you can use:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>description</b>: Prefix match, not case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>name</b>: Prefix match, case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>tag-key</b>: Prefix match, case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>tag-value</b>: Prefix match, case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>primary-region</b>: Prefix match, case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>owning-service</b>: Prefix match, case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>all</b>: Breaks the filter value string into words and then searches all attributes for matches. Not case-sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>The keyword to filter for.</p>
    #            <p>You can prefix your search value with an exclamation mark (<code>!</code>) in order to perform negation filters. </p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :key,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute password_length
    #   <p>The length of the password. If you don't include this parameter, the 
    #         default length is 32 characters.</p>
    #   @return [Integer]
    # @!attribute exclude_characters
    #   <p>A string of the characters that you don't want in the password.</p>
    #   @return [String]
    # @!attribute exclude_numbers
    #   <p>Specifies whether to exclude numbers from the password. If you don't 
    #         include this switch, the password can contain numbers.</p>
    #   @return [Boolean]
    # @!attribute exclude_punctuation
    #   <p>Specifies whether to exclude the following punctuation characters from the password: 
    #         <code>! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~</code>. 
    #         If you don't include this switch, the password can contain punctuation.</p>
    #   @return [Boolean]
    # @!attribute exclude_uppercase
    #   <p>Specifies whether to exclude uppercase letters from the password. If you 
    #         don't include this switch, the password can contain uppercase letters.</p>
    #   @return [Boolean]
    # @!attribute exclude_lowercase
    #   <p>Specifies whether to exclude lowercase letters from the password. If
    #         you don't include this switch, the password can contain lowercase letters.</p>
    #   @return [Boolean]
    # @!attribute include_space
    #   <p>Specifies whether to include the space character. If you 
    #         include this switch, the password can contain space characters.</p>
    #   @return [Boolean]
    # @!attribute require_each_included_type
    #   <p>Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation. 
    #         If you don't include this switch, the password contains at least one of every character type.</p>
    #   @return [Boolean]
    class GetRandomPasswordRequest < Struct.new(
      :password_length,
      :exclude_characters,
      :exclude_numbers,
      :exclude_punctuation,
      :exclude_uppercase,
      :exclude_lowercase,
      :include_space,
      :require_each_included_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute random_password
    #   <p>A string with the password.</p>
    #   @return [String]
    class GetRandomPasswordResponse < Struct.new(
      :random_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to retrieve the attached resource-based policy for.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret that the resource-based policy was retrieved for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret that the resource-based policy was retrieved for.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>A JSON-formatted string that contains the permissions policy 
    #         attached to the secret. For more information about permissions policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication and access control for
    #           Secrets Manager</a>.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :arn,
      :name,
      :resource_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to retrieve. To retrieve a secret from another account, you must use an ARN.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique identifier of the version of the secret to retrieve. If
    #         you include both this parameter and <code>VersionStage</code>, the two parameters must refer
    #         to the same secret version. If you don't specify either a <code>VersionStage</code> or
    #           <code>VersionId</code>, then Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
    #            <p>This value is typically a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value with
    #         32 hexadecimal digits.</p>
    #   @return [String]
    # @!attribute version_stage
    #   <p>The staging label of the version of the secret to retrieve. </p>
    #            <p>Secrets Manager uses staging labels to keep track of different versions during the rotation process.
    #         If you include both this parameter and <code>VersionId</code>, the two parameters must refer
    #         to the same secret version. If you don't specify either a <code>VersionStage</code> or
    #         <code>VersionId</code>, Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
    #   @return [String]
    class GetSecretValueRequest < Struct.new(
      :secret_id,
      :version_id,
      :version_stage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the secret.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique identifier of this version of the secret.</p>
    #   @return [String]
    # @!attribute secret_binary
    #   <p>The decrypted secret value, if the secret value was originally provided as
    #         binary data in the form of a byte array. When you retrieve a <code>SecretBinary</code> using the HTTP API, the Python SDK, or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
    #            <p>If the secret was created by using the Secrets Manager console, or if the secret value was 
    #         originally provided as a string, then this field is omitted. The secret value appears in 
    #         <code>SecretString</code> instead.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute secret_string
    #   <p>The decrypted secret value, if the secret value was originally provided as a string or 
    #         through the Secrets Manager console.</p>
    #            <p>If this secret was created by using the console, then Secrets Manager stores the information as a
    #         JSON structure of key/value pairs. </p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute version_stages
    #   <p>A list of all of the staging labels currently attached to this version of the
    #         secret.</p>
    #   @return [Array<String>]
    # @!attribute created_date
    #   <p>The date and time that this version of the secret was created. If you don't specify 
    #         which version in <code>VersionId</code> or <code>VersionStage</code>, then Secrets Manager uses the 
    #         <code>AWSCURRENT</code> version.</p>
    #   @return [Time]
    class GetSecretValueResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      :secret_binary,
      :secret_string,
      :version_stages,
      :created_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred on the server side.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceError < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>NextToken</code> value is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The parameter name or value is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter value is not valid for the current state of the
    #       resource.</p>
    #          <p>Possible causes:</p>
    #          <ul>
    #             <li>
    #                <p>The secret is scheduled for deletion.</p>
    #             </li>
    #             <li>
    #                <p>You tried to enable rotation on a secret that doesn't already have a Lambda function
    #           ARN configured and you didn't include such an ARN as a parameter in this call. </p>
    #             </li>
    #             <li>
    #                <p>The secret is managed by another service, and you must use that service to update it. 
    #           For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html">Secrets managed by other Amazon Web Services services</a>.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because it would exceed one of the Secrets Manager quotas.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret whose versions you want to list.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
    #         To get the next results, call <code>ListSecretVersionIds</code> again with the value from <code>NextToken</code>. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a previous call 
    #         did not show all results. To get the next results, call <code>ListSecretVersionIds</code> again with 
    #         this value.</p>
    #   @return [String]
    # @!attribute include_deprecated
    #   <p>Specifies whether to include versions of secrets that don't have any
    #         staging labels attached to them. Versions without staging labels are considered deprecated and are subject to
    #         deletion by Secrets Manager. By default, versions without staging labels aren't included.</p>
    #   @return [Boolean]
    class ListSecretVersionIdsRequest < Struct.new(
      :secret_id,
      :max_results,
      :next_token,
      :include_deprecated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute versions
    #   <p>A list of the versions of the secret.</p>
    #   @return [Array<Types::SecretVersionsListEntry>]
    # @!attribute next_token
    #   <p>Secrets Manager includes this value if there's more output available than what is included 
    #         in the current response. This can occur even when the response includes no values at all, 
    #         such as when you ask for a filtered view of a long list. To get the next results, 
    #         call <code>ListSecretVersionIds</code> again with this value. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    class ListSecretVersionIdsResponse < Struct.new(
      :versions,
      :next_token,
      :arn,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_planned_deletion
    #   <p>Specifies whether to include secrets scheduled for deletion. By default, secrets scheduled for deletion aren't included.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
    #         To get the next results, call <code>ListSecrets</code> again with the value from 
    #         <code>NextToken</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates where the output should continue from, if a 
    #         previous call did not show all results. To get the next results, call <code>ListSecrets</code> again 
    #         with this value.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters to apply to the list of secrets.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute sort_order
    #   <p>Secrets are listed by <code>CreatedDate</code>. </p>
    #   @return [String]
    class ListSecretsRequest < Struct.new(
      :include_planned_deletion,
      :max_results,
      :next_token,
      :filters,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_list
    #   <p>A list of the secrets in the account.</p>
    #   @return [Array<Types::SecretListEntry>]
    # @!attribute next_token
    #   <p>Secrets Manager includes this value if  
    #         there's more output available than what is included in the current response. This can 
    #         occur even when the response includes no values at all, such as when you ask for a filtered view 
    #         of a long list. To get the next results, call <code>ListSecrets</code> again 
    #         with this value.</p>
    #   @return [String]
    class ListSecretsResponse < Struct.new(
      :secret_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource policy has syntax errors.</p>
    # @!attribute message
    #   @return [String]
    class MalformedPolicyDocumentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because you did not complete all the prerequisite steps.</p>
    # @!attribute message
    #   @return [String]
    class PreconditionNotMetException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>BlockPublicPolicy</code> parameter is set to true, and the resource policy did not prevent broad access to the secret.</p>
    # @!attribute message
    #   @return [String]
    class PublicPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to attach the resource-based policy.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>A JSON-formatted string for an Amazon Web Services
    #         resource-based policy. For example policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions 
    #           policy examples</a>.</p>
    #   @return [String]
    # @!attribute block_public_policy
    #   <p>Specifies whether to block resource-based policies that allow broad access to the secret, for example those that use a wildcard for the principal. By default, public policies aren't blocked.</p>
    #            <important>
    #               <p>Resource policy validation and the BlockPublicPolicy parameter help protect your resources by preventing public access from being granted through the resource policies that are directly attached to your secrets. In addition to using these features, carefully inspect the following policies to confirm that they do not grant public access:</p>
    #               <ul>
    #                  <li>
    #                     <p>Identity-based policies attached to associated Amazon Web Services principals (for example, IAM roles)</p>
    #                  </li>
    #                  <li>
    #                     <p>Resource-based policies attached to associated Amazon Web Services resources (for example, Key Management Service (KMS) keys)</p>
    #                  </li>
    #               </ul>
    #               <p>To review permissions to your secrets, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/determine-acccess_examine-iam-policies.html">Determine who has permissions to your secrets</a>.</p>
    #            </important>
    #   @return [Boolean]
    class PutResourcePolicyRequest < Struct.new(
      :secret_id,
      :resource_policy,
      :block_public_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to add a new version to.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #            <p>If the secret doesn't already exist, use <code>CreateSecret</code> instead.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the new version of the secret. </p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
    #             of the secret then a new version of the secret is created. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and that version's
    #             <code>SecretString</code> or <code>SecretBinary</code> values are the same as those in
    #             the request then the request is ignored. The operation is idempotent. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and the version of the
    #             <code>SecretString</code> and <code>SecretBinary</code> values are different from those
    #             in the request, then the request fails because you can't modify a secret 
    #             version. You can only create new versions to store new secret values.</p>
    #               </li>
    #            </ul>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    #   @return [String]
    # @!attribute secret_binary
    #   <p>The binary data to encrypt and store in the new version of
    #         the secret. To use this parameter in the command-line tools, we recommend that you store your
    #         binary data in a file and then pass the
    #         contents of the file as a parameter. </p>
    #            <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
    #            <p>You can't access this value from the Secrets Manager console.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute secret_string
    #   <p>The text to encrypt and store in the new version of the secret. </p>
    #            <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
    #            <p>We recommend you create the secret string as JSON key/value pairs, as shown in the example.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute version_stages
    #   <p>A list of staging labels to attach to this version of the
    #         secret. Secrets Manager uses staging labels to track versions of a secret through the rotation process.</p>
    #            <p>If you specify a staging
    #         label that's already associated with a different version of the same secret, then Secrets Manager  
    #         removes the label from the other version and attaches it to this version. 
    #         If you specify 
    #         <code>AWSCURRENT</code>, and it is already attached to another version, then Secrets Manager also  
    #         moves the staging label <code>AWSPREVIOUS</code> to the version that <code>AWSCURRENT</code> was removed from.</p>
    #            <p>If you don't include <code>VersionStages</code>, then Secrets Manager automatically
    #         moves the staging label <code>AWSCURRENT</code> to this version.</p>
    #   @return [Array<String>]
    # @!attribute rotation_token
    #   <p>A unique identifier that indicates the source of the request. For cross-account rotation (when you rotate a secret in one account by using a Lambda rotation function in another account) and the Lambda rotation function assumes an IAM role to call Secrets Manager, Secrets Manager validates the identity with the rotation token. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html">How rotation works</a>.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    class PutSecretValueRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :secret_binary,
      :secret_string,
      :version_stages,
      :rotation_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique identifier of the version of the secret.</p>
    #   @return [String]
    # @!attribute version_stages
    #   <p>The list of staging labels that are currently attached to this version of the secret.
    #         Secrets Manager uses staging labels to track a version as it progresses through the secret rotation
    #         process.</p>
    #   @return [Array<String>]
    class PutSecretValueResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      :version_stages,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret.</p>
    #   @return [String]
    # @!attribute remove_replica_regions
    #   <p>The Regions of the replicas to remove.</p>
    #   @return [Array<String>]
    class RemoveRegionsFromReplicationRequest < Struct.new(
      :secret_id,
      :remove_replica_regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the primary secret.</p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>The status of replicas for this secret after you remove Regions.</p>
    #   @return [Array<Types::ReplicationStatusType>]
    class RemoveRegionsFromReplicationResponse < Struct.new(
      :arn,
      :replication_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A custom type that specifies a <code>Region</code> and the <code>KmsKeyId</code> for a replica secret.</p>
    # @!attribute region
    #   <p>A Region code. For a list of Region codes, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints">Name and code of Regions</a>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key to encrypt the secret. If you don't include this field, Secrets Manager uses <code>aws/secretsmanager</code>.</p>
    #   @return [String]
    class ReplicaRegionType < Struct.new(
      :region,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to replicate.</p>
    #   @return [String]
    # @!attribute add_replica_regions
    #   <p>A list of Regions in which to replicate the secret.</p>
    #   @return [Array<Types::ReplicaRegionType>]
    # @!attribute force_overwrite_replica_secret
    #   <p>Specifies whether to overwrite a secret with the same name in the destination Region. By default, secrets aren't overwritten.</p>
    #   @return [Boolean]
    class ReplicateSecretToRegionsRequest < Struct.new(
      :secret_id,
      :add_replica_regions,
      :force_overwrite_replica_secret,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the primary secret.</p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>The status of replication.</p>
    #   @return [Array<Types::ReplicationStatusType>]
    class ReplicateSecretToRegionsResponse < Struct.new(
      :arn,
      :replication_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A replication object consisting of a <code>RegionReplicationStatus</code> object and includes a Region, KMSKeyId, status, and status message.</p>
    # @!attribute region
    #   <p>The Region where replication occurs.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Can be an <code>ARN</code>, <code>Key ID</code>, or <code>Alias</code>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status can be <code>InProgress</code>, <code>Failed</code>, or <code>InSync</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Status message such as "<i>Secret with this name already exists in this
    #         region</i>".</p>
    #   @return [String]
    # @!attribute last_accessed_date
    #   <p>The date that the secret was last accessed in the Region. This field is omitted if the secret has never been retrieved in the Region.</p>
    #   @return [Time]
    class ReplicationStatusType < Struct.new(
      :region,
      :kms_key_id,
      :status,
      :status_message,
      :last_accessed_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource with the ID you requested already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Secrets Manager can't find the resource that you asked for.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to restore.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    class RestoreSecretRequest < Struct.new(
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret that was restored.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret that was restored.</p>
    #   @return [String]
    class RestoreSecretResponse < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret to rotate.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the new version of the secret. You only need to specify this value if you implement your own retry logic and you want to
    #       ensure that Secrets Manager doesn't attempt to create a secret version twice.</p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    #   @return [String]
    # @!attribute rotation_lambda_arn
    #   <p>For secrets that use a Lambda rotation function to rotate, the ARN of the Lambda rotation function. </p>
    #            <p>For secrets that use <i>managed rotation</i>, omit this field. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_managed.html">Managed rotation</a> in the <i>Secrets Manager User Guide</i>.</p>
    #   @return [String]
    # @!attribute rotation_rules
    #   <p>A structure that defines the rotation configuration for this secret.</p>
    #   @return [Types::RotationRulesType]
    # @!attribute rotate_immediately
    #   <p>Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. 
    #       The rotation schedule is defined in <a>RotateSecretRequest$RotationRules</a>.</p>
    #            <p>For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the 
    #       <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_lambda-functions.html#rotate-secrets_lambda-functions-code">
    #                  <code>testSecret</code> 
    #         step</a> of the Lambda rotation function. The test creates an <code>AWSPENDING</code> version of the secret and then removes it.</p>
    #            <p>By default, Secrets Manager rotates the secret immediately.</p>
    #   @return [Boolean]
    class RotateSecretRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :rotation_lambda_arn,
      :rotation_rules,
      :rotate_immediately,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the new version of the secret.</p>
    #   @return [String]
    class RotateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines the rotation configuration for the secret.</p>
    # @!attribute automatically_after_days
    #   <p>The number of days between rotations of the secret. You can use this 
    #         value to check that your secret meets your compliance guidelines for how often secrets must 
    #         be rotated. If you use this field to set the rotation schedule, Secrets Manager calculates the next rotation 
    #         date based on the previous rotation. Manually updating the secret value by calling 
    #         <code>PutSecretValue</code> or <code>UpdateSecret</code> is considered a valid rotation.</p>
    #            <p>In <code>DescribeSecret</code> and <code>ListSecrets</code>, this value is calculated from 
    #         the rotation schedule after every successful rotation. In <code>RotateSecret</code>, you can 
    #         set the rotation schedule in <code>RotationRules</code> with <code>AutomaticallyAfterDays</code>
    #         or <code>ScheduleExpression</code>, but not both. To set a rotation schedule in hours, use 
    #         <code>ScheduleExpression</code>.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>The length of the rotation window in hours, for example <code>3h</code> for a three 
    #         hour window. Secrets Manager rotates your secret at any time during this window. The window must not 
    #         extend into the next rotation window or the next UTC day. The window starts according to the <code>ScheduleExpression</code>. If you don't specify a <code>Duration</code>, 
    #         for a <code>ScheduleExpression</code> in hours, the window automatically closes after one 
    #         hour. For a <code>ScheduleExpression</code> in days, the window automatically closes at the 
    #         end of the UTC day. For 
    #         more information, including examples, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html">Schedule expressions 
    #         in Secrets Manager rotation</a> in the <i>Secrets Manager Users Guide</i>.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>A <code>cron()</code> or <code>rate()</code> expression that defines the schedule for 
    #         rotating your secret. Secrets Manager rotation schedules use UTC time zone. Secrets Manager rotates your secret any time during a rotation window.</p>
    #            <p>Secrets Manager <code>rate()</code> expressions represent the interval in hours or days that you 
    #         want to rotate your secret, for example <code>rate(12 hours)</code> or 
    #         <code>rate(10 days)</code>. You can rotate a secret as often as every four hours. If you 
    #         use a <code>rate()</code> expression, the rotation 
    #         window starts at midnight. For a rate in hours, the default rotation window closes after one 
    #         hour. For a rate in days, the default rotation window closes at the end of the day. You can 
    #         set the <code>Duration</code> to change the rotation window. The rotation window must not 
    #         extend into the next UTC day or into the next rotation window.</p>
    #            <p>You can use a <code>cron()</code> expression to create a rotation schedule that is 
    #         more detailed than a rotation interval. For more information, including examples, see 
    #         <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html">Schedule expressions in 
    #         Secrets Manager rotation</a> in the <i>Secrets Manager Users Guide</i>. For a cron expression 
    #         that represents a schedule in hours, the default rotation window closes after one hour. For 
    #         a cron expression that represents a schedule in days, the default rotation window closes at 
    #         the end of the day. You can set the <code>Duration</code> to change the rotation window. The 
    #         rotation window must not extend into the next UTC day or into the next rotation window.</p>
    #   @return [String]
    class RotationRulesType < Struct.new(
      :automatically_after_days,
      :duration,
      :schedule_expression,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the details about a secret. It does not include the encrypted
    #         <code>SecretString</code> and <code>SecretBinary</code> values. To get those values, use 
    #       <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html">GetSecretValue</a>
    #       .</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the secret.  </p>
    #   @return [String]
    # @!attribute description
    #   <p>The user-provided description of the secret.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of the KMS key that Secrets Manager uses to encrypt the secret value. If the secret is encrypted with 
    #         the Amazon Web Services managed key <code>aws/secretsmanager</code>, this field is omitted.</p>
    #   @return [String]
    # @!attribute rotation_enabled
    #   <p>Indicates whether automatic, scheduled rotation is enabled for this secret.</p>
    #   @return [Boolean]
    # @!attribute rotation_lambda_arn
    #   <p>The ARN of an Amazon Web Services Lambda function invoked by Secrets Manager to rotate and expire the
    #         secret either automatically per the schedule or manually by a call to <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_RotateSecret.html">
    #                  <code>RotateSecret</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute rotation_rules
    #   <p>A structure that defines the rotation configuration for the secret.</p>
    #   @return [Types::RotationRulesType]
    # @!attribute last_rotated_date
    #   <p>The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret hasn't ever rotated.</p>
    #   @return [Time]
    # @!attribute last_changed_date
    #   <p>The last date and time that this secret was modified in any way.</p>
    #   @return [Time]
    # @!attribute last_accessed_date
    #   <p>The date that the secret was last accessed in the Region. This field is omitted if the secret has never been retrieved in the Region.</p>
    #   @return [Time]
    # @!attribute deleted_date
    #   <p>The date and time the deletion of the secret occurred. Not present on active secrets. The
    #         secret can be recovered until the number of days in the recovery window has passed, as
    #         specified in the <code>RecoveryWindowInDays</code> parameter of the <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_DeleteSecret.html">
    #                  <code>DeleteSecret</code>
    #               </a> operation.</p>
    #   @return [Time]
    # @!attribute next_rotation_date
    #   <p>The next rotation is scheduled to occur on or before this date. If the secret isn't configured for rotation or rotation has been disabled, Secrets Manager returns null.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of user-defined tags associated with the secret. To add tags to a
    #         secret, use <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_TagResource.html">
    #                  <code>TagResource</code>
    #               </a>. 
    #         To remove tags, use <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_UntagResource.html">
    #                  <code>UntagResource</code>
    #               </a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute secret_versions_to_stages
    #   <p>A list of all of the currently assigned <code>SecretVersionStage</code> staging labels and
    #         the <code>SecretVersionId</code> attached to each one. Staging labels are used to keep
    #         track of the different versions during the rotation process.</p>
    #            <note>
    #               <p>A version that does not have any <code>SecretVersionStage</code> is considered
    #           deprecated and subject to deletion. Such versions are not included in this list.</p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    # @!attribute owning_service
    #   <p>Returns the name of the service that created the secret.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time when a secret was created.</p>
    #   @return [Time]
    # @!attribute primary_region
    #   <p>The Region where Secrets Manager originated the secret.</p>
    #   @return [String]
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
      :primary_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rotation_enabled] = nil unless options.key?(:rotation_enabled)
        super
      end
    end

    # <p>A structure that contains the secret value and other details for a secret.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the secret.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the secret.  </p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique version identifier of this version of the secret.</p>
    #   @return [String]
    # @!attribute secret_binary
    #   <p>The decrypted secret value, if the secret value was originally provided as
    #         binary data in the form of a byte array. The parameter represents the binary data as
    #         a <a href="https://tools.ietf.org/html/rfc4648#section-4">base64-encoded</a>
    #         string.</p>
    #   @return [String]
    # @!attribute secret_string
    #   <p>The decrypted secret value, if the secret value was originally provided as a string or 
    #         through the Secrets Manager console.</p>
    #   @return [String]
    # @!attribute version_stages
    #   <p>A list of all of the staging labels currently attached to this version of the
    #         secret.</p>
    #   @return [Array<String>]
    # @!attribute created_date
    #   <p>The date the secret was created.</p>
    #   @return [Time]
    class SecretValueEntry < Struct.new(
      :arn,
      :name,
      :version_id,
      :secret_binary,
      :secret_string,
      :version_stages,
      :created_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about one version of a secret.</p>
    # @!attribute version_id
    #   <p>The unique version identifier of this version of the secret.</p>
    #   @return [String]
    # @!attribute version_stages
    #   <p>An array of staging labels that are currently associated with this version of the
    #         secret.</p>
    #   @return [Array<String>]
    # @!attribute last_accessed_date
    #   <p>The date that this version of the secret was last accessed. Note that the resolution of
    #         this field is at the date level and does not include the time.</p>
    #   @return [Time]
    # @!attribute created_date
    #   <p>The date and time this version of the secret was created.</p>
    #   @return [Time]
    # @!attribute kms_key_ids
    #   <p>The KMS keys used to encrypt the secret version.</p>
    #   @return [Array<String>]
    class SecretVersionsListEntry < Struct.new(
      :version_id,
      :version_stages,
      :last_accessed_date,
      :created_date,
      :kms_key_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN of the primary secret. </p>
    #   @return [String]
    class StopReplicationToReplicaRequest < Struct.new(
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the promoted secret. The ARN is the same as the original primary secret except the Region is changed.</p>
    #   @return [String]
    class StopReplicationToReplicaResponse < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a tag.</p>
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The string value associated with the key of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The identifier for the secret to attach tags to. You can specify either the
    #         Amazon Resource Name (ARN) or the friendly name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to attach to the secret as a JSON text string argument. Each element in the list consists of a <code>Key</code>
    #         and a <code>Value</code>.</p>
    #            <p>For storing multiple values, we recommend that you use a JSON text 
    #       string argument and specify key/value pairs. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying parameter values for the Amazon Web Services CLI</a>
    #       in the Amazon Web Services CLI User Guide.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :secret_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag key names to remove from the secret. You don't specify the value. Both the
    #         key and its associated value are removed.</p>
    #            <p>This parameter requires a JSON text string argument.</p>
    #            <p>For storing multiple values, we recommend that you use a JSON text 
    #       string argument and specify key/value pairs. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying parameter values for the Amazon Web Services CLI</a>
    #       in the Amazon Web Services CLI User Guide.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :secret_id,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then Secrets Manager creates 
    #       a new version for the secret, and this parameter specifies the unique identifier for the new 
    #       version.</p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the secret.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key that Secrets Manager 
    #         uses to encrypt new secret versions as well as any existing versions with the staging labels 
    #         <code>AWSCURRENT</code>, <code>AWSPENDING</code>, or <code>AWSPREVIOUS</code>. If you don't have <code>kms:Encrypt</code> permission to the new key, Secrets Manager does not re-encrypt existing secret versions with the new key. For more information about versions and staging labels, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">Concepts: Version</a>.</p>
    #            <p>A key alias is always prefixed by <code>alias/</code>, for example <code>alias/aws/secretsmanager</code>.
    #             For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html">About aliases</a>.</p>
    #            <p>If you set this to an empty string, Secrets Manager uses the Amazon Web Services managed key 
    #             <code>aws/secretsmanager</code>. If this key doesn't already exist in your account, then Secrets Manager 
    #             creates it for you automatically. All users and roles in the Amazon Web Services account automatically have access 
    #             to use <code>aws/secretsmanager</code>. Creating <code>aws/secretsmanager</code> can result in a one-time 
    #             significant delay in returning the result.  </p>
    #            <important>
    #               <p>You can only use the Amazon Web Services managed key <code>aws/secretsmanager</code> if you call this
    #           operation using credentials from the same Amazon Web Services account that owns the secret. If the secret is in
    #           a different account, then you must use a customer managed key and provide the ARN of that KMS key in
    #           this field. The user making the call must have permissions to both the secret and the KMS key in
    #           their respective accounts.</p>
    #            </important>
    #   @return [String]
    # @!attribute secret_binary
    #   <p>The binary data to encrypt and store in the new
    #         version of the secret. We recommend that you
    #         store your binary data in a file and then pass
    #         the contents of the file as a parameter. </p>
    #            <p>Either <code>SecretBinary</code> or
    #           <code>SecretString</code> must have a value, but not both.</p>
    #            <p>You can't access this parameter in the Secrets Manager console.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    # @!attribute secret_string
    #   <p>The text data to encrypt and store in the new
    #         version of the secret. We recommend you use a JSON structure of key/value pairs for your secret value. </p>
    #            <p>Either <code>SecretBinary</code> or <code>SecretString</code> must have
    #         a value, but not both. </p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    #   @return [String]
    class UpdateSecretRequest < Struct.new(
      :secret_id,
      :client_request_token,
      :description,
      :kms_key_id,
      :secret_binary,
      :secret_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret that was updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret that was updated.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>If Secrets Manager created a new version of the secret during this operation, then <code>VersionId</code>
    #         contains the unique identifier of the new version.</p>
    #   @return [String]
    class UpdateSecretResponse < Struct.new(
      :arn,
      :name,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or the name of the secret with the version and staging labelsto modify.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #   @return [String]
    # @!attribute version_stage
    #   <p>The staging label to add to this version.</p>
    #   @return [String]
    # @!attribute remove_from_version_id
    #   <p>The ID of the version that the staging label is to be removed
    #         from. If the staging label you are trying to attach to one version is already attached to a
    #         different version, then you must include this parameter and specify the version that the label
    #         is to be removed from. If the label is attached and you either do not specify this parameter,
    #         or the version ID does not match, then the operation fails.</p>
    #   @return [String]
    # @!attribute move_to_version_id
    #   <p>The ID of the version to add the staging label to. To
    #         remove a label from a version, then do not specify this parameter.</p>
    #            <p>If the staging label is already attached to a different version of the secret, then you
    #         must also specify the <code>RemoveFromVersionId</code> parameter. </p>
    #   @return [String]
    class UpdateSecretVersionStageRequest < Struct.new(
      :secret_id,
      :version_stage,
      :remove_from_version_id,
      :move_to_version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the secret that was updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the secret that was updated.</p>
    #   @return [String]
    class UpdateSecretVersionStageResponse < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret_id
    #   <p>The ARN or name of the secret with the resource-based policy you want to validate.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>A JSON-formatted string that contains an Amazon Web Services
    #         resource-based policy. The policy in the string identifies who can access or manage this
    #         secret and its versions. For example policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions policy examples</a>.</p>
    #   @return [String]
    class ValidateResourcePolicyRequest < Struct.new(
      :secret_id,
      :resource_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_validation_passed
    #   <p>True if your policy passes validation, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute validation_errors
    #   <p>Validation errors if your policy didn't pass validation.</p>
    #   @return [Array<Types::ValidationErrorsEntry>]
    class ValidateResourcePolicyResponse < Struct.new(
      :policy_validation_passed,
      :validation_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:policy_validation_passed] = false unless options.key?(:policy_validation_passed)
        super
      end
    end

    # <p>Displays errors that occurred during validation of the resource policy.</p>
    # @!attribute check_name
    #   <p>Checks the name of the policy.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Displays error messages if validation encounters problems during validation of the resource policy.</p>
    #   @return [String]
    class ValidationErrorsEntry < Struct.new(
      :check_name,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
