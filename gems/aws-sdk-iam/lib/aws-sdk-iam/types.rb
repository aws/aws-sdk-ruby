# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module IAM
    module Types

      # Contains information about an AWS access key.
      #
      # This data type is used as a response element in the CreateAccessKey
      # and ListAccessKeys actions.
      #
      # <note markdown="1"> The `SecretAccessKey` value is returned only in response to
      # CreateAccessKey. You can get a secret access key only when you first
      # create an access key; you cannot recover the secret access key later.
      # If you lose a secret access key, you must create a new access key.
      #
      #  </note>
      class AccessKey < Aws::Structure.new(
        :user_name,
        :access_key_id,
        :status,
        :secret_access_key,
        :create_date)

        # @!attribute [rw] user_name
        #   The name of the IAM user that the access key is associated with.
        #   @return [String]

        # @!attribute [rw] access_key_id
        #   The ID for this access key.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the access key. `Active` means the key is valid for
        #   API calls, while `Inactive` means it is not.
        #   @return [String]

        # @!attribute [rw] secret_access_key
        #   The secret key used to sign requests.
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date when the access key was created.
        #   @return [Time]

      end

      # Contains information about the last time an AWS access key was used.
      #
      # This data type is used as a response element in the
      # GetAccessKeyLastUsed action.
      class AccessKeyLastUsed < Aws::Structure.new(
        :last_used_date,
        :service_name,
        :region)

        # @!attribute [rw] last_used_date
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   access key was most recently used. This field is null when:
        #
        #   * The user does not have an access key.
        #
        #   * An access key exists but has never been used, at least not since
        #     IAM started tracking this information on April 22nd, 2015.
        #
        #   * There is no sign-in data associated with the user
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] service_name
        #   The name of the AWS service with which this access key was most
        #   recently used. This field is null when:
        #
        #   * The user does not have an access key.
        #
        #   * An access key exists but has never been used, at least not since
        #     IAM started tracking this information on April 22nd, 2015.
        #
        #   * There is no sign-in data associated with the user
        #   @return [String]

        # @!attribute [rw] region
        #   The AWS region where this access key was most recently used. This
        #   field is null when:
        #
        #   * The user does not have an access key.
        #
        #   * An access key exists but has never been used, at least not since
        #     IAM started tracking this information on April 22nd, 2015.
        #
        #   * There is no sign-in data associated with the user
        #
        #   For more information about AWS regions, see [Regions and
        #   Endpoints][1] in the Amazon Web Services General Reference.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
        #   @return [String]

      end

      # Contains information about an AWS access key, without its secret key.
      #
      # This data type is used as a response element in the ListAccessKeys
      # action.
      class AccessKeyMetadata < Aws::Structure.new(
        :user_name,
        :access_key_id,
        :status,
        :create_date)

        # @!attribute [rw] user_name
        #   The name of the IAM user that the key is associated with.
        #   @return [String]

        # @!attribute [rw] access_key_id
        #   The ID for this access key.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the access key. `Active` means the key is valid for
        #   API calls; `Inactive` means it is not.
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date when the access key was created.
        #   @return [Time]

      end

      # @note When making an API call, pass AddClientIDToOpenIDConnectProviderRequest
      #   data as a hash:
      #
      #       {
      #         open_id_connect_provider_arn: "arnType", # required
      #         client_id: "clientIDType", # required
      #       }
      class AddClientIDToOpenIDConnectProviderRequest < Aws::Structure.new(
        :open_id_connect_provider_arn,
        :client_id)

        # @!attribute [rw] open_id_connect_provider_arn
        #   The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC)
        #   provider resource to add the client ID to. You can get a list of
        #   OIDC provider ARNs by using the ListOpenIDConnectProviders action.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The client ID (also known as audience) to add to the IAM OpenID
        #   Connect provider resource.
        #   @return [String]

      end

      # @note When making an API call, pass AddRoleToInstanceProfileRequest
      #   data as a hash:
      #
      #       {
      #         instance_profile_name: "instanceProfileNameType", # required
      #         role_name: "roleNameType", # required
      #       }
      class AddRoleToInstanceProfileRequest < Aws::Structure.new(
        :instance_profile_name,
        :role_name)

        # @!attribute [rw] instance_profile_name
        #   The name of the instance profile to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] role_name
        #   The name of the role to add.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass AddUserToGroupRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         user_name: "existingUserNameType", # required
      #       }
      class AddUserToGroupRequest < Aws::Structure.new(
        :group_name,
        :user_name)

        # @!attribute [rw] group_name
        #   The name of the group to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] user_name
        #   The name of the user to add.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass AttachGroupPolicyRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         policy_arn: "arnType", # required
      #       }
      class AttachGroupPolicyRequest < Aws::Structure.new(
        :group_name,
        :policy_arn)

        # @!attribute [rw] group_name
        #   The name (friendly name, not ARN) of the group to attach the policy
        #   to.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass AttachRolePolicyRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         policy_arn: "arnType", # required
      #       }
      class AttachRolePolicyRequest < Aws::Structure.new(
        :role_name,
        :policy_arn)

        # @!attribute [rw] role_name
        #   The name (friendly name, not ARN) of the role to attach the policy
        #   to.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass AttachUserPolicyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         policy_arn: "arnType", # required
      #       }
      class AttachUserPolicyRequest < Aws::Structure.new(
        :user_name,
        :policy_arn)

        # @!attribute [rw] user_name
        #   The name (friendly name, not ARN) of the IAM user to attach the
        #   policy to.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # Contains information about an attached policy.
      #
      # An attached policy is a managed policy that has been attached to a
      # user, group, or role. This data type is used as a response element in
      # the ListAttachedGroupPolicies, ListAttachedRolePolicies,
      # ListAttachedUserPolicies, and GetAccountAuthorizationDetails actions.
      #
      # For more information about managed policies, refer to [Managed
      # Policies and Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class AttachedPolicy < Aws::Structure.new(
        :policy_name,
        :policy_arn)

        # @!attribute [rw] policy_name
        #   The friendly name of the attached policy.
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass ChangePasswordRequest
      #   data as a hash:
      #
      #       {
      #         old_password: "passwordType", # required
      #         new_password: "passwordType", # required
      #       }
      class ChangePasswordRequest < Aws::Structure.new(
        :old_password,
        :new_password)

        # @!attribute [rw] old_password
        #   The IAM user\'s current password.
        #   @return [String]

        # @!attribute [rw] new_password
        #   The new password. The new password must conform to the AWS
        #   account\'s password policy, if one exists.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of almost any printable ASCII character from the space
        #   (\\u0020) through the end of the ASCII character range (\\u00FF).
        #   You can also include the tab (\\u0009), line feed (\\u000A), and
        #   carriage return (\\u000D) characters. Although any of these
        #   characters are valid in a password, note that many tools, such as
        #   the AWS Management Console, might restrict the ability to enter
        #   certain characters because they have special meaning within that
        #   tool.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains information about a condition context key. It includes the
      # name of the key and specifies the value (or values, if the context key
      # supports multiple values) to use in the simulation. This information
      # is used when evaluating the `Condition` elements of the input
      # policies.
      #
      # This data type is used as an input parameter to ` SimulateCustomPolicy
      # ` and ` SimulateCustomPolicy `.
      # @note When making an API call, pass ContextEntry
      #   data as a hash:
      #
      #       {
      #         context_key_name: "ContextKeyNameType",
      #         context_key_values: ["ContextKeyValueType"],
      #         context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
      #       }
      class ContextEntry < Aws::Structure.new(
        :context_key_name,
        :context_key_values,
        :context_key_type)

        # @!attribute [rw] context_key_name
        #   The full name of a condition context key, including the service
        #   prefix. For example, `aws:SourceIp` or `s3:VersionId`.
        #   @return [String]

        # @!attribute [rw] context_key_values
        #   The value (or values, if the condition context key supports multiple
        #   values) to provide to the simulation for use when the key is
        #   referenced by a `Condition` element in an input policy.
        #   @return [Array<String>]

        # @!attribute [rw] context_key_type
        #   The data type of the value (or values) specified in the
        #   `ContextKeyValues` parameter.
        #   @return [String]

      end

      # @note When making an API call, pass CreateAccessKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #       }
      class CreateAccessKeyRequest < Aws::Structure.new(
        :user_name)

        # @!attribute [rw] user_name
        #   The name of the IAM user that the new key will belong to.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateAccessKey request.
      class CreateAccessKeyResponse < Aws::Structure.new(
        :access_key)

        # @!attribute [rw] access_key
        #   A structure with details about the access key.
        #   @return [Types::AccessKey]

      end

      # @note When making an API call, pass CreateAccountAliasRequest
      #   data as a hash:
      #
      #       {
      #         account_alias: "accountAliasType", # required
      #       }
      class CreateAccountAliasRequest < Aws::Structure.new(
        :account_alias)

        # @!attribute [rw] account_alias
        #   The account alias to create.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of lowercase letters, digits, and dashes. You cannot
        #   start or finish with a dash, nor can you have two dashes in a row.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass CreateGroupRequest
      #   data as a hash:
      #
      #       {
      #         path: "pathType",
      #         group_name: "groupNameType", # required
      #       }
      class CreateGroupRequest < Aws::Structure.new(
        :path,
        :group_name)

        # @!attribute [rw] path
        #   The path to the group. For more information about paths, see [IAM
        #   Identifiers][1] in the *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/).
        #
        #   The [regex pattern][2] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] group_name
        #   The name of the group to create. Do not include the path in this
        #   value.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-.
        #   The group name must be unique within the account. Group names are
        #   not distinguished by case. For example, you cannot create groups
        #   named both \"ADMINS\" and \"admins\".
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateGroup request.
      class CreateGroupResponse < Aws::Structure.new(
        :group)

        # @!attribute [rw] group
        #   A structure containing details about the new group.
        #   @return [Types::Group]

      end

      # @note When making an API call, pass CreateInstanceProfileRequest
      #   data as a hash:
      #
      #       {
      #         instance_profile_name: "instanceProfileNameType", # required
      #         path: "pathType",
      #       }
      class CreateInstanceProfileRequest < Aws::Structure.new(
        :instance_profile_name,
        :path)

        # @!attribute [rw] instance_profile_name
        #   The name of the instance profile to create.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] path
        #   The path to the instance profile. For more information about paths,
        #   see [IAM Identifiers][1] in the *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/).
        #
        #   The [regex pattern][2] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateInstanceProfile request.
      class CreateInstanceProfileResponse < Aws::Structure.new(
        :instance_profile)

        # @!attribute [rw] instance_profile
        #   A structure containing details about the new instance profile.
        #   @return [Types::InstanceProfile]

      end

      # @note When making an API call, pass CreateLoginProfileRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         password: "passwordType", # required
      #         password_reset_required: false,
      #       }
      class CreateLoginProfileRequest < Aws::Structure.new(
        :user_name,
        :password,
        :password_reset_required)

        # @!attribute [rw] user_name
        #   The name of the IAM user to create a password for. The user must
        #   already exist.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] password
        #   The new password for the user.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of almost any printable ASCII character from the space
        #   (\\u0020) through the end of the ASCII character range (\\u00FF).
        #   You can also include the tab (\\u0009), line feed (\\u000A), and
        #   carriage return (\\u000D) characters. Although any of these
        #   characters are valid in a password, note that many tools, such as
        #   the AWS Management Console, might restrict the ability to enter
        #   certain characters because they have special meaning within that
        #   tool.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] password_reset_required
        #   Specifies whether the user is required to set a new password on next
        #   sign-in.
        #   @return [Boolean]

      end

      # Contains the response to a successful CreateLoginProfile request.
      class CreateLoginProfileResponse < Aws::Structure.new(
        :login_profile)

        # @!attribute [rw] login_profile
        #   A structure containing the user name and password create date.
        #   @return [Types::LoginProfile]

      end

      # @note When making an API call, pass CreateOpenIDConnectProviderRequest
      #   data as a hash:
      #
      #       {
      #         url: "OpenIDConnectProviderUrlType", # required
      #         client_id_list: ["clientIDType"],
      #         thumbprint_list: ["thumbprintType"], # required
      #       }
      class CreateOpenIDConnectProviderRequest < Aws::Structure.new(
        :url,
        :client_id_list,
        :thumbprint_list)

        # @!attribute [rw] url
        #   The URL of the identity provider. The URL must begin with
        #   \"https://\" and should correspond to the `iss` claim in the
        #   provider\'s OpenID Connect ID tokens. Per the OIDC standard, path
        #   components are allowed but query parameters are not. Typically the
        #   URL consists of only a host name, like
        #   \"https://server.example.org\" or \"https://example.com\".
        #
        #   You cannot register the same provider multiple times in a single AWS
        #   account. If you try to submit a URL that has already been used for
        #   an OpenID Connect provider in the AWS account, you will get an
        #   error.
        #   @return [String]

        # @!attribute [rw] client_id_list
        #   A list of client IDs (also known as audiences). When a mobile or web
        #   app registers with an OpenID Connect provider, they establish a
        #   value that identifies the application. (This is the value that\'s
        #   sent as the `client_id` parameter on OAuth requests.)
        #
        #   You can register multiple client IDs with the same provider. For
        #   example, you might have multiple applications that use the same OIDC
        #   provider. You cannot register more than 100 client IDs with a single
        #   IAM OIDC provider.
        #
        #   There is no defined format for a client ID. The
        #   `CreateOpenIDConnectProviderRequest` action accepts client IDs up to
        #   255 characters long.
        #   @return [Array<String>]

        # @!attribute [rw] thumbprint_list
        #   A list of server certificate thumbprints for the OpenID Connect
        #   (OIDC) identity provider\'s server certificate(s). Typically this
        #   list includes only one entry. However, IAM lets you have up to five
        #   thumbprints for an OIDC provider. This lets you maintain multiple
        #   thumbprints if the identity provider is rotating certificates.
        #
        #   The server certificate thumbprint is the hex-encoded SHA-1 hash
        #   value of the X.509 certificate used by the domain where the OpenID
        #   Connect provider makes its keys available. It is always a
        #   40-character string.
        #
        #   You must provide at least one thumbprint when creating an IAM OIDC
        #   provider. For example, if the OIDC provider is `server.example.com`
        #   and the provider stores its keys at
        #   \"https://keys.server.example.com/openid-connect\", the thumbprint
        #   string would be the hex-encoded SHA-1 hash value of the certificate
        #   used by https://keys.server.example.com.
        #
        #   For more information about obtaining the OIDC provider\'s
        #   thumbprint, see [Obtaining the Thumbprint for an OpenID Connect
        #   Provider][1] in the *IAM User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html
        #   @return [Array<String>]

      end

      # Contains the response to a successful CreateOpenIDConnectProvider
      # request.
      class CreateOpenIDConnectProviderResponse < Aws::Structure.new(
        :open_id_connect_provider_arn)

        # @!attribute [rw] open_id_connect_provider_arn
        #   The Amazon Resource Name (ARN) of the new IAM OpenID Connect
        #   provider that is created. For more information, see
        #   OpenIDConnectProviderListEntry.
        #   @return [String]

      end

      # @note When making an API call, pass CreatePolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_name: "policyNameType", # required
      #         path: "policyPathType",
      #         policy_document: "policyDocumentType", # required
      #         description: "policyDescriptionType",
      #       }
      class CreatePolicyRequest < Aws::Structure.new(
        :policy_name,
        :path,
        :policy_document,
        :description)

        # @!attribute [rw] policy_name
        #   The friendly name of the policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] path
        #   The path for the policy.
        #
        #   For more information about paths, see [IAM Identifiers][1] in the
        #   *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/).
        #
        #   The [regex pattern][2] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON policy document that you want to use as the content for the
        #   new policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] description
        #   A friendly description of the policy.
        #
        #   Typically used to store information about the permissions defined in
        #   the policy. For example, \"Grants access to production DynamoDB
        #   tables.\"
        #
        #   The policy description is immutable. After a value is assigned, it
        #   cannot be changed.
        #   @return [String]

      end

      # Contains the response to a successful CreatePolicy request.
      class CreatePolicyResponse < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   A structure containing details about the new policy.
        #   @return [Types::Policy]

      end

      # @note When making an API call, pass CreatePolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #         policy_document: "policyDocumentType", # required
      #         set_as_default: false,
      #       }
      class CreatePolicyVersionRequest < Aws::Structure.new(
        :policy_arn,
        :policy_document,
        :set_as_default)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy to which you want
        #   to add a new version.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The JSON policy document that you want to use as the content for
        #   this new version of the policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] set_as_default
        #   Specifies whether to set this version as the policy\'s default
        #   version.
        #
        #   When this parameter is `true`, the new policy version becomes the
        #   operative version; that is, the version that is in effect for the
        #   IAM users, groups, and roles that the policy is attached to.
        #
        #   For more information about managed policy versions, see [Versioning
        #   for Managed Policies][1] in the *IAM User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
        #   @return [Boolean]

      end

      # Contains the response to a successful CreatePolicyVersion request.
      class CreatePolicyVersionResponse < Aws::Structure.new(
        :policy_version)

        # @!attribute [rw] policy_version
        #   A structure containing details about the new policy version.
        #   @return [Types::PolicyVersion]

      end

      # @note When making an API call, pass CreateRoleRequest
      #   data as a hash:
      #
      #       {
      #         path: "pathType",
      #         role_name: "roleNameType", # required
      #         assume_role_policy_document: "policyDocumentType", # required
      #       }
      class CreateRoleRequest < Aws::Structure.new(
        :path,
        :role_name,
        :assume_role_policy_document)

        # @!attribute [rw] path
        #   The path to the role. For more information about paths, see [IAM
        #   Identifiers][1] in the *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/).
        #
        #   The [regex pattern][2] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] role_name
        #   The name of the role to create.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-.
        #   Role names are not distinguished by case. For example, you cannot
        #   create roles named both \"PRODROLE\" and \"prodrole\".
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] assume_role_policy_document
        #   The trust relationship policy document that grants an entity
        #   permission to assume the role.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateRole request.
      class CreateRoleResponse < Aws::Structure.new(
        :role)

        # @!attribute [rw] role
        #   A structure containing details about the new role.
        #   @return [Types::Role]

      end

      # @note When making an API call, pass CreateSAMLProviderRequest
      #   data as a hash:
      #
      #       {
      #         saml_metadata_document: "SAMLMetadataDocumentType", # required
      #         name: "SAMLProviderNameType", # required
      #       }
      class CreateSAMLProviderRequest < Aws::Structure.new(
        :saml_metadata_document,
        :name)

        # @!attribute [rw] saml_metadata_document
        #   An XML document generated by an identity provider (IdP) that
        #   supports SAML 2.0. The document includes the issuer\'s name,
        #   expiration information, and keys that can be used to validate the
        #   SAML authentication response (assertions) that are received from the
        #   IdP. You must generate the metadata document using the identity
        #   management software that is used as your organization\'s IdP.
        #
        #   For more information, see [About SAML 2.0-based Federation][1] in
        #   the *IAM User Guide*
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the provider to create.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateSAMLProvider request.
      class CreateSAMLProviderResponse < Aws::Structure.new(
        :saml_provider_arn)

        # @!attribute [rw] saml_provider_arn
        #   The Amazon Resource Name (ARN) of the new SAML provider resource in
        #   IAM.
        #   @return [String]

      end

      # @note When making an API call, pass CreateUserRequest
      #   data as a hash:
      #
      #       {
      #         path: "pathType",
      #         user_name: "userNameType", # required
      #       }
      class CreateUserRequest < Aws::Structure.new(
        :path,
        :user_name)

        # @!attribute [rw] path
        #   The path for the user name. For more information about paths, see
        #   [IAM Identifiers][1] in the *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/).
        #
        #   The [regex pattern][2] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] user_name
        #   The name of the user to create.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-.
        #   User names are not distinguished by case. For example, you cannot
        #   create users named both \"TESTUSER\" and \"testuser\".
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateUser request.
      class CreateUserResponse < Aws::Structure.new(
        :user)

        # @!attribute [rw] user
        #   A structure with details about the new IAM user.
        #   @return [Types::User]

      end

      # @note When making an API call, pass CreateVirtualMFADeviceRequest
      #   data as a hash:
      #
      #       {
      #         path: "pathType",
      #         virtual_mfa_device_name: "virtualMFADeviceName", # required
      #       }
      class CreateVirtualMFADeviceRequest < Aws::Structure.new(
        :path,
        :virtual_mfa_device_name)

        # @!attribute [rw] path
        #   The path for the virtual MFA device. For more information about
        #   paths, see [IAM Identifiers][1] in the *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/).
        #
        #   The [regex pattern][2] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] virtual_mfa_device_name
        #   The name of the virtual MFA device. Use with path to uniquely
        #   identify a virtual MFA device.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful CreateVirtualMFADevice request.
      class CreateVirtualMFADeviceResponse < Aws::Structure.new(
        :virtual_mfa_device)

        # @!attribute [rw] virtual_mfa_device
        #   A structure containing details about the new virtual MFA device.
        #   @return [Types::VirtualMFADevice]

      end

      # @note When making an API call, pass DeactivateMFADeviceRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         serial_number: "serialNumberType", # required
      #       }
      class DeactivateMFADeviceRequest < Aws::Structure.new(
        :user_name,
        :serial_number)

        # @!attribute [rw] user_name
        #   The name of the user whose MFA device you want to deactivate.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] serial_number
        #   The serial number that uniquely identifies the MFA device. For
        #   virtual MFA devices, the serial number is the device ARN.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters:
        #   =/:,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteAccessKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         access_key_id: "accessKeyIdType", # required
      #       }
      class DeleteAccessKeyRequest < Aws::Structure.new(
        :user_name,
        :access_key_id)

        # @!attribute [rw] user_name
        #   The name of the user whose access key pair you want to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] access_key_id
        #   The access key ID for the access key ID and secret access key you
        #   want to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteAccountAliasRequest
      #   data as a hash:
      #
      #       {
      #         account_alias: "accountAliasType", # required
      #       }
      class DeleteAccountAliasRequest < Aws::Structure.new(
        :account_alias)

        # @!attribute [rw] account_alias
        #   The name of the account alias to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of lowercase letters, digits, and dashes. You cannot
        #   start or finish with a dash, nor can you have two dashes in a row.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteGroupPolicyRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         policy_name: "policyNameType", # required
      #       }
      class DeleteGroupPolicyRequest < Aws::Structure.new(
        :group_name,
        :policy_name)

        # @!attribute [rw] group_name
        #   The name (friendly name, not ARN) identifying the group that the
        #   policy is embedded in.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name identifying the policy document to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteGroupRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #       }
      class DeleteGroupRequest < Aws::Structure.new(
        :group_name)

        # @!attribute [rw] group_name
        #   The name of the IAM group to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteInstanceProfileRequest
      #   data as a hash:
      #
      #       {
      #         instance_profile_name: "instanceProfileNameType", # required
      #       }
      class DeleteInstanceProfileRequest < Aws::Structure.new(
        :instance_profile_name)

        # @!attribute [rw] instance_profile_name
        #   The name of the instance profile to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteLoginProfileRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #       }
      class DeleteLoginProfileRequest < Aws::Structure.new(
        :user_name)

        # @!attribute [rw] user_name
        #   The name of the user whose password you want to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteOpenIDConnectProviderRequest
      #   data as a hash:
      #
      #       {
      #         open_id_connect_provider_arn: "arnType", # required
      #       }
      class DeleteOpenIDConnectProviderRequest < Aws::Structure.new(
        :open_id_connect_provider_arn)

        # @!attribute [rw] open_id_connect_provider_arn
        #   The Amazon Resource Name (ARN) of the IAM OpenID Connect provider
        #   resource object to delete. You can get a list of OpenID Connect
        #   provider resource ARNs by using the ListOpenIDConnectProviders
        #   action.
        #   @return [String]

      end

      # @note When making an API call, pass DeletePolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #       }
      class DeletePolicyRequest < Aws::Structure.new(
        :policy_arn)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to delete.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass DeletePolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #         version_id: "policyVersionIdType", # required
      #       }
      class DeletePolicyVersionRequest < Aws::Structure.new(
        :policy_arn,
        :version_id)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy from which you want
        #   to delete a version.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] version_id
        #   The policy version to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that consists of the lowercase letter \'v\' followed by one or two
        #   digits, and optionally followed by a period \'.\' and a string of
        #   letters and digits.
        #
        #   For more information about managed policy versions, see [Versioning
        #   for Managed Policies][2] in the *IAM User Guide*.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
        #   @return [String]

      end

      # @note When making an API call, pass DeleteRolePolicyRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         policy_name: "policyNameType", # required
      #       }
      class DeleteRolePolicyRequest < Aws::Structure.new(
        :role_name,
        :policy_name)

        # @!attribute [rw] role_name
        #   The name (friendly name, not ARN) identifying the role that the
        #   policy is embedded in.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the inline policy to delete from the specified IAM role.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteRoleRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #       }
      class DeleteRoleRequest < Aws::Structure.new(
        :role_name)

        # @!attribute [rw] role_name
        #   The name of the role to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteSAMLProviderRequest
      #   data as a hash:
      #
      #       {
      #         saml_provider_arn: "arnType", # required
      #       }
      class DeleteSAMLProviderRequest < Aws::Structure.new(
        :saml_provider_arn)

        # @!attribute [rw] saml_provider_arn
        #   The Amazon Resource Name (ARN) of the SAML provider to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteSSHPublicKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         ssh_public_key_id: "publicKeyIdType", # required
      #       }
      class DeleteSSHPublicKeyRequest < Aws::Structure.new(
        :user_name,
        :ssh_public_key_id)

        # @!attribute [rw] user_name
        #   The name of the IAM user associated with the SSH public key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] ssh_public_key_id
        #   The unique identifier for the SSH public key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteServerCertificateRequest
      #   data as a hash:
      #
      #       {
      #         server_certificate_name: "serverCertificateNameType", # required
      #       }
      class DeleteServerCertificateRequest < Aws::Structure.new(
        :server_certificate_name)

        # @!attribute [rw] server_certificate_name
        #   The name of the server certificate you want to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteSigningCertificateRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         certificate_id: "certificateIdType", # required
      #       }
      class DeleteSigningCertificateRequest < Aws::Structure.new(
        :user_name,
        :certificate_id)

        # @!attribute [rw] user_name
        #   The name of the user the signing certificate belongs to.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the signing certificate to delete.
        #
        #   The format of this parameter, as described by its [regex][1]
        #   pattern, is a string of characters that can be upper- or lower-cased
        #   letters or digits.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteUserPolicyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         policy_name: "policyNameType", # required
      #       }
      class DeleteUserPolicyRequest < Aws::Structure.new(
        :user_name,
        :policy_name)

        # @!attribute [rw] user_name
        #   The name (friendly name, not ARN) identifying the user that the
        #   policy is embedded in.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name identifying the policy document to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteUserRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #       }
      class DeleteUserRequest < Aws::Structure.new(
        :user_name)

        # @!attribute [rw] user_name
        #   The name of the user to delete.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DeleteVirtualMFADeviceRequest
      #   data as a hash:
      #
      #       {
      #         serial_number: "serialNumberType", # required
      #       }
      class DeleteVirtualMFADeviceRequest < Aws::Structure.new(
        :serial_number)

        # @!attribute [rw] serial_number
        #   The serial number that uniquely identifies the MFA device. For
        #   virtual MFA devices, the serial number is the same as the ARN.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters:
        #   =/:,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass DetachGroupPolicyRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         policy_arn: "arnType", # required
      #       }
      class DetachGroupPolicyRequest < Aws::Structure.new(
        :group_name,
        :policy_arn)

        # @!attribute [rw] group_name
        #   The name (friendly name, not ARN) of the IAM group to detach the
        #   policy from.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass DetachRolePolicyRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         policy_arn: "arnType", # required
      #       }
      class DetachRolePolicyRequest < Aws::Structure.new(
        :role_name,
        :policy_arn)

        # @!attribute [rw] role_name
        #   The name (friendly name, not ARN) of the IAM role to detach the
        #   policy from.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass DetachUserPolicyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         policy_arn: "arnType", # required
      #       }
      class DetachUserPolicyRequest < Aws::Structure.new(
        :user_name,
        :policy_arn)

        # @!attribute [rw] user_name
        #   The name (friendly name, not ARN) of the IAM user to detach the
        #   policy from.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # @note When making an API call, pass EnableMFADeviceRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         serial_number: "serialNumberType", # required
      #         authentication_code_1: "authenticationCodeType", # required
      #         authentication_code_2: "authenticationCodeType", # required
      #       }
      class EnableMFADeviceRequest < Aws::Structure.new(
        :user_name,
        :serial_number,
        :authentication_code_1,
        :authentication_code_2)

        # @!attribute [rw] user_name
        #   The name of the IAM user for whom you want to enable the MFA device.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] serial_number
        #   The serial number that uniquely identifies the MFA device. For
        #   virtual MFA devices, the serial number is the device ARN.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters:
        #   =/:,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] authentication_code_1
        #   An authentication code emitted by the device.
        #
        #   The format for this parameter is a string of 6 digits.
        #   @return [String]

        # @!attribute [rw] authentication_code_2
        #   A subsequent authentication code emitted by the device.
        #
        #   The format for this parameter is a string of 6 digits.
        #   @return [String]

      end

      # Contains the results of a simulation.
      #
      # This data type is used by the return parameter of `
      # SimulateCustomPolicy ` and ` SimulatePrincipalPolicy `.
      class EvaluationResult < Aws::Structure.new(
        :eval_action_name,
        :eval_resource_name,
        :eval_decision,
        :matched_statements,
        :missing_context_values,
        :eval_decision_details,
        :resource_specific_results)

        # @!attribute [rw] eval_action_name
        #   The name of the API action tested on the indicated resource.
        #   @return [String]

        # @!attribute [rw] eval_resource_name
        #   The ARN of the resource that the indicated API action was tested on.
        #   @return [String]

        # @!attribute [rw] eval_decision
        #   The result of the simulation.
        #   @return [String]

        # @!attribute [rw] matched_statements
        #   A list of the statements in the input policies that determine the
        #   result for this scenario. Remember that even if multiple statements
        #   allow the action on the resource, if only one statement denies that
        #   action, then the explicit deny overrides any allow, and the deny
        #   statement is the only entry included in the result.
        #   @return [Array<Types::Statement>]

        # @!attribute [rw] missing_context_values
        #   A list of context keys that are required by the included input
        #   policies but that were not provided by one of the input parameters.
        #   This list is used when the resource in a simulation is \"\*\",
        #   either explicitly, or when the `ResourceArns` parameter blank. If
        #   you include a list of resources, then any missing context values are
        #   instead included under the `ResourceSpecificResults` section. To
        #   discover the context keys used by a set of policies, you can call
        #   GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.
        #   @return [Array<String>]

        # @!attribute [rw] eval_decision_details
        #   Additional details about the results of the evaluation decision.
        #   When there are both IAM policies and resource policies, this
        #   parameter explains how each set of policies contributes to the final
        #   evaluation decision. When simulating cross-account access to a
        #   resource, both the resource-based policy and the caller\'s IAM
        #   policy must grant access. See [How IAM Roles Differ from
        #   Resource-based Policies][1]
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html
        #   @return [Hash<String,String>]

        # @!attribute [rw] resource_specific_results
        #   The individual results of the simulation of the API action specified
        #   in EvalActionName on each resource.
        #   @return [Array<Types::ResourceSpecificResult>]

      end

      # Contains the response to a successful GenerateCredentialReport
      # request.
      class GenerateCredentialReportResponse < Aws::Structure.new(
        :state,
        :description)

        # @!attribute [rw] state
        #   Information about the state of the credential report.
        #   @return [String]

        # @!attribute [rw] description
        #   Information about the credential report.
        #   @return [String]

      end

      # @note When making an API call, pass GetAccessKeyLastUsedRequest
      #   data as a hash:
      #
      #       {
      #         access_key_id: "accessKeyIdType", # required
      #       }
      class GetAccessKeyLastUsedRequest < Aws::Structure.new(
        :access_key_id)

        # @!attribute [rw] access_key_id
        #   The identifier of an access key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetAccessKeyLastUsed request. It
      # is also returned as a member of the AccessKeyMetaData structure
      # returned by the ListAccessKeys action.
      class GetAccessKeyLastUsedResponse < Aws::Structure.new(
        :user_name,
        :access_key_last_used)

        # @!attribute [rw] user_name
        #   The name of the AWS IAM user that owns this access key.
        #   @return [String]

        # @!attribute [rw] access_key_last_used
        #   Contains information about the last time the access key was used.
        #   @return [Types::AccessKeyLastUsed]

      end

      # @note When making an API call, pass GetAccountAuthorizationDetailsRequest
      #   data as a hash:
      #
      #       {
      #         filter: ["User"], # accepts User, Role, Group, LocalManagedPolicy, AWSManagedPolicy
      #         max_items: 1,
      #         marker: "markerType",
      #       }
      class GetAccountAuthorizationDetailsRequest < Aws::Structure.new(
        :filter,
        :max_items,
        :marker)

        # @!attribute [rw] filter
        #   A list of entity types used to filter the results. Only the entities
        #   that match the types you specify are included in the output. Use the
        #   value `LocalManagedPolicy` to include customer managed policies.
        #
        #   The format for this parameter is a comma-separated (if more than
        #   one) list of strings. Each string value in the list must be one of
        #   the valid values listed below.
        #   @return [Array<String>]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

      end

      # Contains the response to a successful GetAccountAuthorizationDetails
      # request.
      class GetAccountAuthorizationDetailsResponse < Aws::Structure.new(
        :user_detail_list,
        :group_detail_list,
        :role_detail_list,
        :policies,
        :is_truncated,
        :marker)

        # @!attribute [rw] user_detail_list
        #   A list containing information about IAM users.
        #   @return [Array<Types::UserDetail>]

        # @!attribute [rw] group_detail_list
        #   A list containing information about IAM groups.
        #   @return [Array<Types::GroupDetail>]

        # @!attribute [rw] role_detail_list
        #   A list containing information about IAM roles.
        #   @return [Array<Types::RoleDetail>]

        # @!attribute [rw] policies
        #   A list containing information about managed policies.
        #   @return [Array<Types::ManagedPolicyDetail>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # Contains the response to a successful GetAccountPasswordPolicy
      # request.
      class GetAccountPasswordPolicyResponse < Aws::Structure.new(
        :password_policy)

        # @!attribute [rw] password_policy
        #   Contains information about the account password policy.
        #
        #   This data type is used as a response element in the
        #   GetAccountPasswordPolicy action.
        #   @return [Types::PasswordPolicy]

      end

      # Contains the response to a successful GetAccountSummary request.
      class GetAccountSummaryResponse < Aws::Structure.new(
        :summary_map)

        # @!attribute [rw] summary_map
        #   A set of key value pairs containing information about IAM entity
        #   usage and IAM quotas.
        #   @return [Hash<String,Integer>]

      end

      # @note When making an API call, pass GetContextKeysForCustomPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_input_list: ["policyDocumentType"], # required
      #       }
      class GetContextKeysForCustomPolicyRequest < Aws::Structure.new(
        :policy_input_list)

        # @!attribute [rw] policy_input_list
        #   A list of policies for which you want the list of context keys
        #   referenced in those policies. Each document is specified as a string
        #   containing the complete, valid JSON text of an IAM policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [Array<String>]

      end

      # Contains the response to a successful GetContextKeysForPrincipalPolicy
      # or GetContextKeysForCustomPolicy request.
      class GetContextKeysForPolicyResponse < Aws::Structure.new(
        :context_key_names)

        # @!attribute [rw] context_key_names
        #   The list of context keys that are referenced in the input policies.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass GetContextKeysForPrincipalPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_source_arn: "arnType", # required
      #         policy_input_list: ["policyDocumentType"],
      #       }
      class GetContextKeysForPrincipalPolicyRequest < Aws::Structure.new(
        :policy_source_arn,
        :policy_input_list)

        # @!attribute [rw] policy_source_arn
        #   The ARN of a user, group, or role whose policies contain the context
        #   keys that you want listed. If you specify a user, the list includes
        #   context keys that are found in all policies attached to the user as
        #   well as to all groups that the user is a member of. If you pick a
        #   group or a role, then it includes only those context keys that are
        #   found in policies attached to that entity. Note that all parameters
        #   are shown in unencoded form here for clarity, but must be URL
        #   encoded to be included as a part of a real HTML request.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] policy_input_list
        #   An optional list of additional policies for which you want the list
        #   of context keys that are referenced.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [Array<String>]

      end

      # Contains the response to a successful GetCredentialReport request.
      class GetCredentialReportResponse < Aws::Structure.new(
        :content,
        :report_format,
        :generated_time)

        # @!attribute [rw] content
        #   Contains the credential report. The report is Base64-encoded.
        #   @return [String]

        # @!attribute [rw] report_format
        #   The format (MIME type) of the credential report.
        #   @return [String]

        # @!attribute [rw] generated_time
        #   The date and time when the credential report was created, in [ISO
        #   8601 date-time format][1].
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

      end

      # @note When making an API call, pass GetGroupPolicyRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         policy_name: "policyNameType", # required
      #       }
      class GetGroupPolicyRequest < Aws::Structure.new(
        :group_name,
        :policy_name)

        # @!attribute [rw] group_name
        #   The name of the group the policy is associated with.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy document to get.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetGroupPolicy request.
      class GetGroupPolicyResponse < Aws::Structure.new(
        :group_name,
        :policy_name,
        :policy_document)

        # @!attribute [rw] group_name
        #   The group the policy is associated with.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #   @return [String]

      end

      # @note When making an API call, pass GetGroupRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class GetGroupRequest < Aws::Structure.new(
        :group_name,
        :marker,
        :max_items)

        # @!attribute [rw] group_name
        #   The name of the group.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful GetGroup request.
      class GetGroupResponse < Aws::Structure.new(
        :group,
        :users,
        :is_truncated,
        :marker)

        # @!attribute [rw] group
        #   A structure that contains details about the group.
        #   @return [Types::Group]

        # @!attribute [rw] users
        #   A list of users in the group.
        #   @return [Array<Types::User>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass GetInstanceProfileRequest
      #   data as a hash:
      #
      #       {
      #         instance_profile_name: "instanceProfileNameType", # required
      #       }
      class GetInstanceProfileRequest < Aws::Structure.new(
        :instance_profile_name)

        # @!attribute [rw] instance_profile_name
        #   The name of the instance profile to get information about.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetInstanceProfile request.
      class GetInstanceProfileResponse < Aws::Structure.new(
        :instance_profile)

        # @!attribute [rw] instance_profile
        #   A structure containing details about the instance profile.
        #   @return [Types::InstanceProfile]

      end

      # @note When making an API call, pass GetLoginProfileRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #       }
      class GetLoginProfileRequest < Aws::Structure.new(
        :user_name)

        # @!attribute [rw] user_name
        #   The name of the user whose login profile you want to retrieve.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetLoginProfile request.
      class GetLoginProfileResponse < Aws::Structure.new(
        :login_profile)

        # @!attribute [rw] login_profile
        #   A structure containing the user name and password create date for
        #   the user.
        #   @return [Types::LoginProfile]

      end

      # @note When making an API call, pass GetOpenIDConnectProviderRequest
      #   data as a hash:
      #
      #       {
      #         open_id_connect_provider_arn: "arnType", # required
      #       }
      class GetOpenIDConnectProviderRequest < Aws::Structure.new(
        :open_id_connect_provider_arn)

        # @!attribute [rw] open_id_connect_provider_arn
        #   The Amazon Resource Name (ARN) of the OIDC provider resource object
        #   in IAM to get information for. You can get a list of OIDC provider
        #   resource ARNs by using the ListOpenIDConnectProviders action.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # Contains the response to a successful GetOpenIDConnectProvider
      # request.
      class GetOpenIDConnectProviderResponse < Aws::Structure.new(
        :url,
        :client_id_list,
        :thumbprint_list,
        :create_date)

        # @!attribute [rw] url
        #   The URL that the IAM OIDC provider resource object is associated
        #   with. For more information, see CreateOpenIDConnectProvider.
        #   @return [String]

        # @!attribute [rw] client_id_list
        #   A list of client IDs (also known as audiences) that are associated
        #   with the specified IAM OIDC provider resource object. For more
        #   information, see CreateOpenIDConnectProvider.
        #   @return [Array<String>]

        # @!attribute [rw] thumbprint_list
        #   A list of certificate thumbprints that are associated with the
        #   specified IAM OIDC provider resource object. For more information,
        #   see CreateOpenIDConnectProvider.
        #   @return [Array<String>]

        # @!attribute [rw] create_date
        #   The date and time when the IAM OIDC provider resource object was
        #   created in the AWS account.
        #   @return [Time]

      end

      # @note When making an API call, pass GetPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #       }
      class GetPolicyRequest < Aws::Structure.new(
        :policy_arn)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the managed policy that you want
        #   information about.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # Contains the response to a successful GetPolicy request.
      class GetPolicyResponse < Aws::Structure.new(
        :policy)

        # @!attribute [rw] policy
        #   A structure containing details about the policy.
        #   @return [Types::Policy]

      end

      # @note When making an API call, pass GetPolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #         version_id: "policyVersionIdType", # required
      #       }
      class GetPolicyVersionRequest < Aws::Structure.new(
        :policy_arn,
        :version_id)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the managed policy that you want
        #   information about.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] version_id
        #   Identifies the policy version to retrieve.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that consists of the lowercase letter \'v\' followed by one or two
        #   digits, and optionally followed by a period \'.\' and a string of
        #   letters and digits.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetPolicyVersion request.
      class GetPolicyVersionResponse < Aws::Structure.new(
        :policy_version)

        # @!attribute [rw] policy_version
        #   A structure containing details about the policy version.
        #   @return [Types::PolicyVersion]

      end

      # @note When making an API call, pass GetRolePolicyRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         policy_name: "policyNameType", # required
      #       }
      class GetRolePolicyRequest < Aws::Structure.new(
        :role_name,
        :policy_name)

        # @!attribute [rw] role_name
        #   The name of the role associated with the policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy document to get.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetRolePolicy request.
      class GetRolePolicyResponse < Aws::Structure.new(
        :role_name,
        :policy_name,
        :policy_document)

        # @!attribute [rw] role_name
        #   The role the policy is associated with.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #   @return [String]

      end

      # @note When making an API call, pass GetRoleRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #       }
      class GetRoleRequest < Aws::Structure.new(
        :role_name)

        # @!attribute [rw] role_name
        #   The name of the IAM role to get information about.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetRole request.
      class GetRoleResponse < Aws::Structure.new(
        :role)

        # @!attribute [rw] role
        #   A structure containing details about the IAM role.
        #   @return [Types::Role]

      end

      # @note When making an API call, pass GetSAMLProviderRequest
      #   data as a hash:
      #
      #       {
      #         saml_provider_arn: "arnType", # required
      #       }
      class GetSAMLProviderRequest < Aws::Structure.new(
        :saml_provider_arn)

        # @!attribute [rw] saml_provider_arn
        #   The Amazon Resource Name (ARN) of the SAML provider resource object
        #   in IAM to get information about.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # Contains the response to a successful GetSAMLProvider request.
      class GetSAMLProviderResponse < Aws::Structure.new(
        :saml_metadata_document,
        :create_date,
        :valid_until)

        # @!attribute [rw] saml_metadata_document
        #   The XML metadata document that includes information about an
        #   identity provider.
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time when the SAML provider was created.
        #   @return [Time]

        # @!attribute [rw] valid_until
        #   The expiration date and time for the SAML provider.
        #   @return [Time]

      end

      # @note When making an API call, pass GetSSHPublicKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         ssh_public_key_id: "publicKeyIdType", # required
      #         encoding: "SSH", # required, accepts SSH, PEM
      #       }
      class GetSSHPublicKeyRequest < Aws::Structure.new(
        :user_name,
        :ssh_public_key_id,
        :encoding)

        # @!attribute [rw] user_name
        #   The name of the IAM user associated with the SSH public key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] ssh_public_key_id
        #   The unique identifier for the SSH public key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] encoding
        #   Specifies the public key encoding format to use in the response. To
        #   retrieve the public key in ssh-rsa format, use `SSH`. To retrieve
        #   the public key in PEM format, use `PEM`.
        #   @return [String]

      end

      # Contains the response to a successful GetSSHPublicKey request.
      class GetSSHPublicKeyResponse < Aws::Structure.new(
        :ssh_public_key)

        # @!attribute [rw] ssh_public_key
        #   A structure containing details about the SSH public key.
        #   @return [Types::SSHPublicKey]

      end

      # @note When making an API call, pass GetServerCertificateRequest
      #   data as a hash:
      #
      #       {
      #         server_certificate_name: "serverCertificateNameType", # required
      #       }
      class GetServerCertificateRequest < Aws::Structure.new(
        :server_certificate_name)

        # @!attribute [rw] server_certificate_name
        #   The name of the server certificate you want to retrieve information
        #   about.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetServerCertificate request.
      class GetServerCertificateResponse < Aws::Structure.new(
        :server_certificate)

        # @!attribute [rw] server_certificate
        #   A structure containing details about the server certificate.
        #   @return [Types::ServerCertificate]

      end

      # @note When making an API call, pass GetUserPolicyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         policy_name: "policyNameType", # required
      #       }
      class GetUserPolicyRequest < Aws::Structure.new(
        :user_name,
        :policy_name)

        # @!attribute [rw] user_name
        #   The name of the user who the policy is associated with.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy document to get.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetUserPolicy request.
      class GetUserPolicyResponse < Aws::Structure.new(
        :user_name,
        :policy_name,
        :policy_document)

        # @!attribute [rw] user_name
        #   The user the policy is associated with.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #   @return [String]

      end

      # @note When making an API call, pass GetUserRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #       }
      class GetUserRequest < Aws::Structure.new(
        :user_name)

        # @!attribute [rw] user_name
        #   The name of the user to get information about.
        #
        #   This parameter is optional. If it is not included, it defaults to
        #   the user making the request. The [regex pattern][1] for this
        #   parameter is a string of characters consisting of upper and
        #   lowercase alphanumeric characters with no spaces. You can also
        #   include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful GetUser request.
      class GetUserResponse < Aws::Structure.new(
        :user)

        # @!attribute [rw] user
        #   A structure containing details about the IAM user.
        #   @return [Types::User]

      end

      # Contains information about an IAM group entity.
      #
      # This data type is used as a response element in the following actions:
      #
      # * CreateGroup
      #
      # * GetGroup
      #
      # * ListGroups
      class Group < Aws::Structure.new(
        :path,
        :group_name,
        :group_id,
        :arn,
        :create_date)

        # @!attribute [rw] path
        #   The path to the group. For more information about paths, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] group_name
        #   The friendly name that identifies the group.
        #   @return [String]

        # @!attribute [rw] group_id
        #   The stable and unique string identifying the group. For more
        #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
        #   guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) specifying the group. For more
        #   information about ARNs and how to use them in policies, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the group
        #   was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

      end

      # Contains information about an IAM group, including all of the group\'s
      # policies.
      #
      # This data type is used as a response element in the
      # GetAccountAuthorizationDetails action.
      class GroupDetail < Aws::Structure.new(
        :path,
        :group_name,
        :group_id,
        :arn,
        :create_date,
        :group_policy_list,
        :attached_managed_policies)

        # @!attribute [rw] path
        #   The path to the group. For more information about paths, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] group_name
        #   The friendly name that identifies the group.
        #   @return [String]

        # @!attribute [rw] group_id
        #   The stable and unique string identifying the group. For more
        #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
        #   guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the group
        #   was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] group_policy_list
        #   A list of the inline policies embedded in the group.
        #   @return [Array<Types::PolicyDetail>]

        # @!attribute [rw] attached_managed_policies
        #   A list of the managed policies attached to the group.
        #   @return [Array<Types::AttachedPolicy>]

      end

      # Contains information about an instance profile.
      #
      # This data type is used as a response element in the following actions:
      #
      # * CreateInstanceProfile
      #
      # * GetInstanceProfile
      #
      # * ListInstanceProfiles
      #
      # * ListInstanceProfilesForRole
      class InstanceProfile < Aws::Structure.new(
        :path,
        :instance_profile_name,
        :instance_profile_id,
        :arn,
        :create_date,
        :roles)

        # @!attribute [rw] path
        #   The path to the instance profile. For more information about paths,
        #   see [IAM Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] instance_profile_name
        #   The name identifying the instance profile.
        #   @return [String]

        # @!attribute [rw] instance_profile_id
        #   The stable and unique string identifying the instance profile. For
        #   more information about IDs, see [IAM Identifiers][1] in the *Using
        #   IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) specifying the instance profile. For
        #   more information about ARNs and how to use them in policies, see
        #   [IAM Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date when the instance profile was created.
        #   @return [Time]

        # @!attribute [rw] roles
        #   The role associated with the instance profile.
        #   @return [Array<Types::Role>]

      end

      # @note When making an API call, pass ListAccessKeysRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListAccessKeysRequest < Aws::Structure.new(
        :user_name,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name of the user.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListAccessKeys request.
      class ListAccessKeysResponse < Aws::Structure.new(
        :access_key_metadata,
        :is_truncated,
        :marker)

        # @!attribute [rw] access_key_metadata
        #   A list of objects containing metadata about the access keys.
        #   @return [Array<Types::AccessKeyMetadata>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListAccountAliasesRequest
      #   data as a hash:
      #
      #       {
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListAccountAliasesRequest < Aws::Structure.new(
        :marker,
        :max_items)

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListAccountAliases request.
      class ListAccountAliasesResponse < Aws::Structure.new(
        :account_aliases,
        :is_truncated,
        :marker)

        # @!attribute [rw] account_aliases
        #   A list of aliases associated with the account. AWS supports only one
        #   alias per account.
        #   @return [Array<String>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListAttachedGroupPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         path_prefix: "policyPathType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListAttachedGroupPoliciesRequest < Aws::Structure.new(
        :group_name,
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] group_name
        #   The name (friendly name, not ARN) of the group to list attached
        #   policies for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. This parameter is
        #   optional. If it is not included, it defaults to a slash (/), listing
        #   all policies.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListAttachedGroupPolicies
      # request.
      class ListAttachedGroupPoliciesResponse < Aws::Structure.new(
        :attached_policies,
        :is_truncated,
        :marker)

        # @!attribute [rw] attached_policies
        #   A list of the attached policies.
        #   @return [Array<Types::AttachedPolicy>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListAttachedRolePoliciesRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         path_prefix: "policyPathType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListAttachedRolePoliciesRequest < Aws::Structure.new(
        :role_name,
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] role_name
        #   The name (friendly name, not ARN) of the role to list attached
        #   policies for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. This parameter is
        #   optional. If it is not included, it defaults to a slash (/), listing
        #   all policies.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListAttachedRolePolicies
      # request.
      class ListAttachedRolePoliciesResponse < Aws::Structure.new(
        :attached_policies,
        :is_truncated,
        :marker)

        # @!attribute [rw] attached_policies
        #   A list of the attached policies.
        #   @return [Array<Types::AttachedPolicy>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListAttachedUserPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         path_prefix: "policyPathType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListAttachedUserPoliciesRequest < Aws::Structure.new(
        :user_name,
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name (friendly name, not ARN) of the user to list attached
        #   policies for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. This parameter is
        #   optional. If it is not included, it defaults to a slash (/), listing
        #   all policies.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListAttachedUserPolicies
      # request.
      class ListAttachedUserPoliciesResponse < Aws::Structure.new(
        :attached_policies,
        :is_truncated,
        :marker)

        # @!attribute [rw] attached_policies
        #   A list of the attached policies.
        #   @return [Array<Types::AttachedPolicy>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListEntitiesForPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #         entity_filter: "User", # accepts User, Role, Group, LocalManagedPolicy, AWSManagedPolicy
      #         path_prefix: "pathType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListEntitiesForPolicyRequest < Aws::Structure.new(
        :policy_arn,
        :entity_filter,
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy for which you want
        #   the versions.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] entity_filter
        #   The entity type to use for filtering the results.
        #
        #   For example, when `EntityFilter` is `Role`, only the roles that are
        #   attached to the specified policy are returned. This parameter is
        #   optional. If it is not included, all attached entities (users,
        #   groups, and roles) are returned. The argument for this parameter
        #   must be one of the valid values listed below.
        #   @return [String]

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. This parameter is
        #   optional. If it is not included, it defaults to a slash (/), listing
        #   all entities.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListEntitiesForPolicy request.
      class ListEntitiesForPolicyResponse < Aws::Structure.new(
        :policy_groups,
        :policy_users,
        :policy_roles,
        :is_truncated,
        :marker)

        # @!attribute [rw] policy_groups
        #   A list of IAM groups that the policy is attached to.
        #   @return [Array<Types::PolicyGroup>]

        # @!attribute [rw] policy_users
        #   A list of IAM users that the policy is attached to.
        #   @return [Array<Types::PolicyUser>]

        # @!attribute [rw] policy_roles
        #   A list of IAM roles that the policy is attached to.
        #   @return [Array<Types::PolicyRole>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListGroupPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListGroupPoliciesRequest < Aws::Structure.new(
        :group_name,
        :marker,
        :max_items)

        # @!attribute [rw] group_name
        #   The name of the group to list policies for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListGroupPolicies request.
      class ListGroupPoliciesResponse < Aws::Structure.new(
        :policy_names,
        :is_truncated,
        :marker)

        # @!attribute [rw] policy_names
        #   A list of policy names.
        #   @return [Array<String>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListGroupsForUserRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListGroupsForUserRequest < Aws::Structure.new(
        :user_name,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name of the user to list groups for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListGroupsForUser request.
      class ListGroupsForUserResponse < Aws::Structure.new(
        :groups,
        :is_truncated,
        :marker)

        # @!attribute [rw] groups
        #   A list of groups.
        #   @return [Array<Types::Group>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListGroupsRequest
      #   data as a hash:
      #
      #       {
      #         path_prefix: "pathPrefixType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListGroupsRequest < Aws::Structure.new(
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. For example, the prefix
        #   `/division_abc/subdivision_xyz/` gets all groups whose path starts
        #   with `/division_abc/subdivision_xyz/`.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/), listing all groups. The [regex pattern][1] for this
        #   parameter is a string of characters consisting of either a forward
        #   slash (/) by itself or a string that must begin and end with forward
        #   slashes, containing any ASCII character from the ! (\\u0021) thru
        #   the DEL character (\\u007F), including most punctuation characters,
        #   digits, and upper and lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListGroups request.
      class ListGroupsResponse < Aws::Structure.new(
        :groups,
        :is_truncated,
        :marker)

        # @!attribute [rw] groups
        #   A list of groups.
        #   @return [Array<Types::Group>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListInstanceProfilesForRoleRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListInstanceProfilesForRoleRequest < Aws::Structure.new(
        :role_name,
        :marker,
        :max_items)

        # @!attribute [rw] role_name
        #   The name of the role to list instance profiles for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListInstanceProfilesForRole
      # request.
      class ListInstanceProfilesForRoleResponse < Aws::Structure.new(
        :instance_profiles,
        :is_truncated,
        :marker)

        # @!attribute [rw] instance_profiles
        #   A list of instance profiles.
        #   @return [Array<Types::InstanceProfile>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListInstanceProfilesRequest
      #   data as a hash:
      #
      #       {
      #         path_prefix: "pathPrefixType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListInstanceProfilesRequest < Aws::Structure.new(
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. For example, the prefix
        #   `/application_abc/component_xyz/` gets all instance profiles whose
        #   path starts with `/application_abc/component_xyz/`.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/), listing all instance profiles. The [regex pattern][1] for
        #   this parameter is a string of characters consisting of either a
        #   forward slash (/) by itself or a string that must begin and end with
        #   forward slashes, containing any ASCII character from the ! (\\u0021)
        #   thru the DEL character (\\u007F), including most punctuation
        #   characters, digits, and upper and lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListInstanceProfiles request.
      class ListInstanceProfilesResponse < Aws::Structure.new(
        :instance_profiles,
        :is_truncated,
        :marker)

        # @!attribute [rw] instance_profiles
        #   A list of instance profiles.
        #   @return [Array<Types::InstanceProfile>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListMFADevicesRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListMFADevicesRequest < Aws::Structure.new(
        :user_name,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name of the user whose MFA devices you want to list.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListMFADevices request.
      class ListMFADevicesResponse < Aws::Structure.new(
        :mfa_devices,
        :is_truncated,
        :marker)

        # @!attribute [rw] mfa_devices
        #   A list of MFA devices.
        #   @return [Array<Types::MFADevice>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @api private
      class ListOpenIDConnectProvidersRequest < Aws::EmptyStructure; end

      # Contains the response to a successful ListOpenIDConnectProviders
      # request.
      class ListOpenIDConnectProvidersResponse < Aws::Structure.new(
        :open_id_connect_provider_list)

        # @!attribute [rw] open_id_connect_provider_list
        #   The list of IAM OIDC provider resource objects defined in the AWS
        #   account.
        #   @return [Array<Types::OpenIDConnectProviderListEntry>]

      end

      # @note When making an API call, pass ListPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         scope: "All", # accepts All, AWS, Local
      #         only_attached: false,
      #         path_prefix: "policyPathType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListPoliciesRequest < Aws::Structure.new(
        :scope,
        :only_attached,
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] scope
        #   The scope to use for filtering the results.
        #
        #   To list only AWS managed policies, set `Scope` to `AWS`. To list
        #   only the customer managed policies in your AWS account, set `Scope`
        #   to `Local`.
        #
        #   This parameter is optional. If it is not included, or if it is set
        #   to `All`, all policies are returned.
        #   @return [String]

        # @!attribute [rw] only_attached
        #   A flag to filter the results to only the attached policies.
        #
        #   When `OnlyAttached` is `true`, the returned list contains only the
        #   policies that are attached to an IAM user, group, or role. When
        #   `OnlyAttached` is `false`, or when the parameter is not included,
        #   all policies are returned.
        #   @return [Boolean]

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. This parameter is
        #   optional. If it is not included, it defaults to a slash (/), listing
        #   all policies. The [regex pattern][1] for this parameter is a string
        #   of characters consisting of either a forward slash (/) by itself or
        #   a string that must begin and end with forward slashes, containing
        #   any ASCII character from the ! (\\u0021) thru the DEL character
        #   (\\u007F), including most punctuation characters, digits, and upper
        #   and lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListPolicies request.
      class ListPoliciesResponse < Aws::Structure.new(
        :policies,
        :is_truncated,
        :marker)

        # @!attribute [rw] policies
        #   A list of policies.
        #   @return [Array<Types::Policy>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListPolicyVersionsRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListPolicyVersionsRequest < Aws::Structure.new(
        :policy_arn,
        :marker,
        :max_items)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy for which you want
        #   the versions.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListPolicyVersions request.
      class ListPolicyVersionsResponse < Aws::Structure.new(
        :versions,
        :is_truncated,
        :marker)

        # @!attribute [rw] versions
        #   A list of policy versions.
        #
        #   For more information about managed policy versions, see [Versioning
        #   for Managed Policies][1] in the *IAM User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
        #   @return [Array<Types::PolicyVersion>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListRolePoliciesRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListRolePoliciesRequest < Aws::Structure.new(
        :role_name,
        :marker,
        :max_items)

        # @!attribute [rw] role_name
        #   The name of the role to list policies for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListRolePolicies request.
      class ListRolePoliciesResponse < Aws::Structure.new(
        :policy_names,
        :is_truncated,
        :marker)

        # @!attribute [rw] policy_names
        #   A list of policy names.
        #   @return [Array<String>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListRolesRequest
      #   data as a hash:
      #
      #       {
      #         path_prefix: "pathPrefixType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListRolesRequest < Aws::Structure.new(
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. For example, the prefix
        #   `/application_abc/component_xyz/` gets all roles whose path starts
        #   with `/application_abc/component_xyz/`.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/), listing all roles. The [regex pattern][1] for this
        #   parameter is a string of characters consisting of either a forward
        #   slash (/) by itself or a string that must begin and end with forward
        #   slashes, containing any ASCII character from the ! (\\u0021) thru
        #   the DEL character (\\u007F), including most punctuation characters,
        #   digits, and upper and lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListRoles request.
      class ListRolesResponse < Aws::Structure.new(
        :roles,
        :is_truncated,
        :marker)

        # @!attribute [rw] roles
        #   A list of roles.
        #   @return [Array<Types::Role>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @api private
      class ListSAMLProvidersRequest < Aws::EmptyStructure; end

      # Contains the response to a successful ListSAMLProviders request.
      class ListSAMLProvidersResponse < Aws::Structure.new(
        :saml_provider_list)

        # @!attribute [rw] saml_provider_list
        #   The list of SAML provider resource objects defined in IAM for this
        #   AWS account.
        #   @return [Array<Types::SAMLProviderListEntry>]

      end

      # @note When making an API call, pass ListSSHPublicKeysRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListSSHPublicKeysRequest < Aws::Structure.new(
        :user_name,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name of the IAM user to list SSH public keys for. If none is
        #   specified, the UserName field is determined implicitly based on the
        #   AWS access key used to sign the request.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListSSHPublicKeys request.
      class ListSSHPublicKeysResponse < Aws::Structure.new(
        :ssh_public_keys,
        :is_truncated,
        :marker)

        # @!attribute [rw] ssh_public_keys
        #   A list of the SSH public keys assigned to IAM user.
        #   @return [Array<Types::SSHPublicKeyMetadata>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListServerCertificatesRequest
      #   data as a hash:
      #
      #       {
      #         path_prefix: "pathPrefixType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListServerCertificatesRequest < Aws::Structure.new(
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. For example:
        #   `/company/servercerts` would get all server certificates for which
        #   the path starts with `/company/servercerts`.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/), listing all server certificates. The [regex pattern][1]
        #   for this parameter is a string of characters consisting of either a
        #   forward slash (/) by itself or a string that must begin and end with
        #   forward slashes, containing any ASCII character from the ! (\\u0021)
        #   thru the DEL character (\\u007F), including most punctuation
        #   characters, digits, and upper and lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListServerCertificates request.
      class ListServerCertificatesResponse < Aws::Structure.new(
        :server_certificate_metadata_list,
        :is_truncated,
        :marker)

        # @!attribute [rw] server_certificate_metadata_list
        #   A list of server certificates.
        #   @return [Array<Types::ServerCertificateMetadata>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListSigningCertificatesRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListSigningCertificatesRequest < Aws::Structure.new(
        :user_name,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name of the IAM user whose signing certificates you want to
        #   examine.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListSigningCertificates request.
      class ListSigningCertificatesResponse < Aws::Structure.new(
        :certificates,
        :is_truncated,
        :marker)

        # @!attribute [rw] certificates
        #   A list of the user\'s signing certificate information.
        #   @return [Array<Types::SigningCertificate>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListUserPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListUserPoliciesRequest < Aws::Structure.new(
        :user_name,
        :marker,
        :max_items)

        # @!attribute [rw] user_name
        #   The name of the user to list policies for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListUserPolicies request.
      class ListUserPoliciesResponse < Aws::Structure.new(
        :policy_names,
        :is_truncated,
        :marker)

        # @!attribute [rw] policy_names
        #   A list of policy names.
        #   @return [Array<String>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListUsersRequest
      #   data as a hash:
      #
      #       {
      #         path_prefix: "pathPrefixType",
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListUsersRequest < Aws::Structure.new(
        :path_prefix,
        :marker,
        :max_items)

        # @!attribute [rw] path_prefix
        #   The path prefix for filtering the results. For example:
        #   `/division_abc/subdivision_xyz/`, which would get all user names
        #   whose path starts with `/division_abc/subdivision_xyz/`.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/), listing all user names. The [regex pattern][1] for this
        #   parameter is a string of characters consisting of either a forward
        #   slash (/) by itself or a string that must begin and end with forward
        #   slashes, containing any ASCII character from the ! (\\u0021) thru
        #   the DEL character (\\u007F), including most punctuation characters,
        #   digits, and upper and lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListUsers request.
      class ListUsersResponse < Aws::Structure.new(
        :users,
        :is_truncated,
        :marker)

        # @!attribute [rw] users
        #   A list of users.
        #   @return [Array<Types::User>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass ListVirtualMFADevicesRequest
      #   data as a hash:
      #
      #       {
      #         assignment_status: "Assigned", # accepts Assigned, Unassigned, Any
      #         marker: "markerType",
      #         max_items: 1,
      #       }
      class ListVirtualMFADevicesRequest < Aws::Structure.new(
        :assignment_status,
        :marker,
        :max_items)

        # @!attribute [rw] assignment_status
        #   The status (`Unassigned` or `Assigned`) of the devices to list. If
        #   you do not specify an `AssignmentStatus`, the action defaults to
        #   `Any` which lists both assigned and unassigned virtual MFA devices.
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

      end

      # Contains the response to a successful ListVirtualMFADevices request.
      class ListVirtualMFADevicesResponse < Aws::Structure.new(
        :virtual_mfa_devices,
        :is_truncated,
        :marker)

        # @!attribute [rw] virtual_mfa_devices
        #   The list of virtual MFA devices in the current account that match
        #   the `AssignmentStatus` value that was passed in the request.
        #   @return [Array<Types::VirtualMFADevice>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # Contains the user name and password create date for a user.
      #
      # This data type is used as a response element in the CreateLoginProfile
      # and GetLoginProfile actions.
      class LoginProfile < Aws::Structure.new(
        :user_name,
        :create_date,
        :password_reset_required)

        # @!attribute [rw] user_name
        #   The name of the user, which can be used for signing in to the AWS
        #   Management Console.
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date when the password for the user was created.
        #   @return [Time]

        # @!attribute [rw] password_reset_required
        #   Specifies whether the user is required to set a new password on next
        #   sign-in.
        #   @return [Boolean]

      end

      # Contains information about an MFA device.
      #
      # This data type is used as a response element in the ListMFADevices
      # action.
      class MFADevice < Aws::Structure.new(
        :user_name,
        :serial_number,
        :enable_date)

        # @!attribute [rw] user_name
        #   The user with whom the MFA device is associated.
        #   @return [String]

        # @!attribute [rw] serial_number
        #   The serial number that uniquely identifies the MFA device. For
        #   virtual MFA devices, the serial number is the device ARN.
        #   @return [String]

        # @!attribute [rw] enable_date
        #   The date when the MFA device was enabled for the user.
        #   @return [Time]

      end

      # Contains information about a managed policy, including the policy\'s
      # ARN, versions, and the number of principal entities (users, groups,
      # and roles) that the policy is attached to.
      #
      # This data type is used as a response element in the
      # GetAccountAuthorizationDetails action.
      #
      # For more information about managed policies, see [Managed Policies and
      # Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class ManagedPolicyDetail < Aws::Structure.new(
        :policy_name,
        :policy_id,
        :arn,
        :path,
        :default_version_id,
        :attachment_count,
        :is_attachable,
        :description,
        :create_date,
        :update_date,
        :policy_version_list)

        # @!attribute [rw] policy_name
        #   The friendly name (not ARN) identifying the policy.
        #   @return [String]

        # @!attribute [rw] policy_id
        #   The stable and unique string identifying the policy.
        #
        #   For more information about IDs, see [IAM Identifiers][1] in the
        #   *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] path
        #   The path to the policy.
        #
        #   For more information about paths, see [IAM Identifiers][1] in the
        #   *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] default_version_id
        #   The identifier for the version of the policy that is set as the
        #   default (operative) version.
        #
        #   For more information about policy versions, see [Versioning for
        #   Managed Policies][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
        #   @return [String]

        # @!attribute [rw] attachment_count
        #   The number of principal entities (users, groups, and roles) that the
        #   policy is attached to.
        #   @return [Integer]

        # @!attribute [rw] is_attachable
        #   Specifies whether the policy can be attached to an IAM user, group,
        #   or role.
        #   @return [Boolean]

        # @!attribute [rw] description
        #   A friendly description of the policy.
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   policy was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] update_date
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   policy was last updated.
        #
        #   When a policy has only one version, this field contains the date and
        #   time when the policy was created. When a policy has more than one
        #   version, this field contains the date and time when the most recent
        #   policy version was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] policy_version_list
        #   A list containing information about the versions of the policy.
        #   @return [Array<Types::PolicyVersion>]

      end

      # Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect
      # provider.
      class OpenIDConnectProviderListEntry < Aws::Structure.new(
        :arn)

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # Contains information about the account password policy.
      #
      # This data type is used as a response element in the
      # GetAccountPasswordPolicy action.
      class PasswordPolicy < Aws::Structure.new(
        :minimum_password_length,
        :require_symbols,
        :require_numbers,
        :require_uppercase_characters,
        :require_lowercase_characters,
        :allow_users_to_change_password,
        :expire_passwords,
        :max_password_age,
        :password_reuse_prevention,
        :hard_expiry)

        # @!attribute [rw] minimum_password_length
        #   Minimum length to require for IAM user passwords.
        #   @return [Integer]

        # @!attribute [rw] require_symbols
        #   Specifies whether to require symbols for IAM user passwords.
        #   @return [Boolean]

        # @!attribute [rw] require_numbers
        #   Specifies whether to require numbers for IAM user passwords.
        #   @return [Boolean]

        # @!attribute [rw] require_uppercase_characters
        #   Specifies whether to require uppercase characters for IAM user
        #   passwords.
        #   @return [Boolean]

        # @!attribute [rw] require_lowercase_characters
        #   Specifies whether to require lowercase characters for IAM user
        #   passwords.
        #   @return [Boolean]

        # @!attribute [rw] allow_users_to_change_password
        #   Specifies whether IAM users are allowed to change their own
        #   password.
        #   @return [Boolean]

        # @!attribute [rw] expire_passwords
        #   Indicates whether passwords in the account expire. Returns true if
        #   MaxPasswordAge is contains a value greater than 0. Returns false if
        #   MaxPasswordAge is 0 or not present.
        #   @return [Boolean]

        # @!attribute [rw] max_password_age
        #   The number of days that an IAM user password is valid.
        #   @return [Integer]

        # @!attribute [rw] password_reuse_prevention
        #   Specifies the number of previous passwords that IAM users are
        #   prevented from reusing.
        #   @return [Integer]

        # @!attribute [rw] hard_expiry
        #   Specifies whether IAM users are prevented from setting a new
        #   password after their password has expired.
        #   @return [Boolean]

      end

      # Contains information about a managed policy.
      #
      # This data type is used as a response element in the CreatePolicy,
      # GetPolicy, and ListPolicies actions.
      #
      # For more information about managed policies, refer to [Managed
      # Policies and Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class Policy < Aws::Structure.new(
        :policy_name,
        :policy_id,
        :arn,
        :path,
        :default_version_id,
        :attachment_count,
        :is_attachable,
        :description,
        :create_date,
        :update_date)

        # @!attribute [rw] policy_name
        #   The friendly name (not ARN) identifying the policy.
        #   @return [String]

        # @!attribute [rw] policy_id
        #   The stable and unique string identifying the policy.
        #
        #   For more information about IDs, see [IAM Identifiers][1] in the
        #   *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] path
        #   The path to the policy.
        #
        #   For more information about paths, see [IAM Identifiers][1] in the
        #   *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] default_version_id
        #   The identifier for the version of the policy that is set as the
        #   default version.
        #   @return [String]

        # @!attribute [rw] attachment_count
        #   The number of entities (users, groups, and roles) that the policy is
        #   attached to.
        #   @return [Integer]

        # @!attribute [rw] is_attachable
        #   Specifies whether the policy can be attached to an IAM user, group,
        #   or role.
        #   @return [Boolean]

        # @!attribute [rw] description
        #   A friendly description of the policy.
        #
        #   This element is included in the response to the GetPolicy operation.
        #   It is not included in the response to the ListPolicies operation.
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   policy was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] update_date
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   policy was last updated.
        #
        #   When a policy has only one version, this field contains the date and
        #   time when the policy was created. When a policy has more than one
        #   version, this field contains the date and time when the most recent
        #   policy version was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

      end

      # Contains information about an IAM policy, including the policy
      # document.
      #
      # This data type is used as a response element in the
      # GetAccountAuthorizationDetails action.
      class PolicyDetail < Aws::Structure.new(
        :policy_name,
        :policy_document)

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #   @return [String]

      end

      # Contains information about a group that a managed policy is attached
      # to.
      #
      # This data type is used as a response element in the
      # ListEntitiesForPolicy action.
      #
      # For more information about managed policies, refer to [Managed
      # Policies and Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class PolicyGroup < Aws::Structure.new(
        :group_name,
        :group_id)

        # @!attribute [rw] group_name
        #   The name (friendly name, not ARN) identifying the group.
        #   @return [String]

        # @!attribute [rw] group_id
        #   The stable and unique string identifying the group. For more
        #   information about IDs, see [IAM Identifiers][1] in the *IAM User
        #   Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
        #   @return [String]

      end

      # Contains information about a role that a managed policy is attached
      # to.
      #
      # This data type is used as a response element in the
      # ListEntitiesForPolicy action.
      #
      # For more information about managed policies, refer to [Managed
      # Policies and Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class PolicyRole < Aws::Structure.new(
        :role_name,
        :role_id)

        # @!attribute [rw] role_name
        #   The name (friendly name, not ARN) identifying the role.
        #   @return [String]

        # @!attribute [rw] role_id
        #   The stable and unique string identifying the role. For more
        #   information about IDs, see [IAM Identifiers][1] in the *IAM User
        #   Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
        #   @return [String]

      end

      # Contains information about a user that a managed policy is attached
      # to.
      #
      # This data type is used as a response element in the
      # ListEntitiesForPolicy action.
      #
      # For more information about managed policies, refer to [Managed
      # Policies and Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class PolicyUser < Aws::Structure.new(
        :user_name,
        :user_id)

        # @!attribute [rw] user_name
        #   The name (friendly name, not ARN) identifying the user.
        #   @return [String]

        # @!attribute [rw] user_id
        #   The stable and unique string identifying the user. For more
        #   information about IDs, see [IAM Identifiers][1] in the *IAM User
        #   Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
        #   @return [String]

      end

      # Contains information about a version of a managed policy.
      #
      # This data type is used as a response element in the
      # CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and
      # GetAccountAuthorizationDetails actions.
      #
      # For more information about managed policies, refer to [Managed
      # Policies and Inline Policies][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
      class PolicyVersion < Aws::Structure.new(
        :document,
        :version_id,
        :is_default_version,
        :create_date)

        # @!attribute [rw] document
        #   The policy document.
        #
        #   The policy document is returned in the response to the
        #   GetPolicyVersion and GetAccountAuthorizationDetails operations. It
        #   is not returned in the response to the CreatePolicyVersion or
        #   ListPolicyVersions operations.
        #   @return [String]

        # @!attribute [rw] version_id
        #   The identifier for the policy version.
        #
        #   Policy version identifiers always begin with `v` (always lowercase).
        #   When a policy is created, the first policy version is `v1`.
        #   @return [String]

        # @!attribute [rw] is_default_version
        #   Specifies whether the policy version is set as the policy\'s default
        #   version.
        #   @return [Boolean]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   policy version was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

      end

      # Contains the row and column of a location of a `Statement` element in
      # a policy document.
      #
      # This data type is used as a member of the ` Statement ` type.
      class Position < Aws::Structure.new(
        :line,
        :column)

        # @!attribute [rw] line
        #   The line containing the specified position in the document.
        #   @return [Integer]

        # @!attribute [rw] column
        #   The column in the line containing the specified position in the
        #   document.
        #   @return [Integer]

      end

      # @note When making an API call, pass PutGroupPolicyRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         policy_name: "policyNameType", # required
      #         policy_document: "policyDocumentType", # required
      #       }
      class PutGroupPolicyRequest < Aws::Structure.new(
        :group_name,
        :policy_name,
        :policy_document)

        # @!attribute [rw] group_name
        #   The name of the group to associate the policy with.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy document.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass PutRolePolicyRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         policy_name: "policyNameType", # required
      #         policy_document: "policyDocumentType", # required
      #       }
      class PutRolePolicyRequest < Aws::Structure.new(
        :role_name,
        :policy_name,
        :policy_document)

        # @!attribute [rw] role_name
        #   The name of the role to associate the policy with.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy document.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass PutUserPolicyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         policy_name: "policyNameType", # required
      #         policy_document: "policyDocumentType", # required
      #       }
      class PutUserPolicyRequest < Aws::Structure.new(
        :user_name,
        :policy_name,
        :policy_document)

        # @!attribute [rw] user_name
        #   The name of the user to associate the policy with.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy document.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy document.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass RemoveClientIDFromOpenIDConnectProviderRequest
      #   data as a hash:
      #
      #       {
      #         open_id_connect_provider_arn: "arnType", # required
      #         client_id: "clientIDType", # required
      #       }
      class RemoveClientIDFromOpenIDConnectProviderRequest < Aws::Structure.new(
        :open_id_connect_provider_arn,
        :client_id)

        # @!attribute [rw] open_id_connect_provider_arn
        #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource to
        #   remove the client ID from. You can get a list of OIDC provider ARNs
        #   by using the ListOpenIDConnectProviders action.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] client_id
        #   The client ID (also known as audience) to remove from the IAM OIDC
        #   provider resource. For more information about client IDs, see
        #   CreateOpenIDConnectProvider.
        #   @return [String]

      end

      # @note When making an API call, pass RemoveRoleFromInstanceProfileRequest
      #   data as a hash:
      #
      #       {
      #         instance_profile_name: "instanceProfileNameType", # required
      #         role_name: "roleNameType", # required
      #       }
      class RemoveRoleFromInstanceProfileRequest < Aws::Structure.new(
        :instance_profile_name,
        :role_name)

        # @!attribute [rw] instance_profile_name
        #   The name of the instance profile to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] role_name
        #   The name of the role to remove.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass RemoveUserFromGroupRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         user_name: "existingUserNameType", # required
      #       }
      class RemoveUserFromGroupRequest < Aws::Structure.new(
        :group_name,
        :user_name)

        # @!attribute [rw] group_name
        #   The name of the group to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] user_name
        #   The name of the user to remove.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the result of the simulation of a single API action call on a
      # single resource.
      #
      # This data type is used by a member of the EvaluationResult data type.
      class ResourceSpecificResult < Aws::Structure.new(
        :eval_resource_name,
        :eval_resource_decision,
        :matched_statements,
        :missing_context_values,
        :eval_decision_details)

        # @!attribute [rw] eval_resource_name
        #   The name of the simulated resource, in Amazon Resource Name (ARN)
        #   format.
        #   @return [String]

        # @!attribute [rw] eval_resource_decision
        #   The result of the simulation of the simulated API action on the
        #   resource specified in `EvalResourceName`.
        #   @return [String]

        # @!attribute [rw] matched_statements
        #   A list of the statements in the input policies that determine the
        #   result for this part of the simulation. Remember that even if
        #   multiple statements allow the action on the resource, if *any*
        #   statement denies that action, then the explicit deny overrides any
        #   allow, and the deny statement is the only entry included in the
        #   result.
        #   @return [Array<Types::Statement>]

        # @!attribute [rw] missing_context_values
        #   A list of context keys that are required by the included input
        #   policies but that were not provided by one of the input parameters.
        #   This list is used when a list of ARNs is included in the
        #   `ResourceArns` parameter instead of \"\*\". If you do not specify
        #   individual resources, by setting `ResourceArns` to \"\*\" or by not
        #   including the `ResourceArns` parameter, then any missing context
        #   values are instead included under the `EvaluationResults` section.
        #   To discover the context keys used by a set of policies, you can call
        #   GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.
        #   @return [Array<String>]

        # @!attribute [rw] eval_decision_details
        #   Additional details about the results of the evaluation decision.
        #   When there are both IAM policies and resource policies, this
        #   parameter explains how each set of policies contributes to the final
        #   evaluation decision. When simulating cross-account access to a
        #   resource, both the resource-based policy and the caller\'s IAM
        #   policy must grant access.
        #   @return [Hash<String,String>]

      end

      # @note When making an API call, pass ResyncMFADeviceRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         serial_number: "serialNumberType", # required
      #         authentication_code_1: "authenticationCodeType", # required
      #         authentication_code_2: "authenticationCodeType", # required
      #       }
      class ResyncMFADeviceRequest < Aws::Structure.new(
        :user_name,
        :serial_number,
        :authentication_code_1,
        :authentication_code_2)

        # @!attribute [rw] user_name
        #   The name of the user whose MFA device you want to resynchronize.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] serial_number
        #   Serial number that uniquely identifies the MFA device.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] authentication_code_1
        #   An authentication code emitted by the device.
        #
        #   The format for this parameter is a sequence of six digits.
        #   @return [String]

        # @!attribute [rw] authentication_code_2
        #   A subsequent authentication code emitted by the device.
        #
        #   The format for this parameter is a sequence of six digits.
        #   @return [String]

      end

      # Contains information about an IAM role.
      #
      # This data type is used as a response element in the following actions:
      #
      # * CreateRole
      #
      # * GetRole
      #
      # * ListRoles
      class Role < Aws::Structure.new(
        :path,
        :role_name,
        :role_id,
        :arn,
        :create_date,
        :assume_role_policy_document)

        # @!attribute [rw] path
        #   The path to the role. For more information about paths, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] role_name
        #   The friendly name that identifies the role.
        #   @return [String]

        # @!attribute [rw] role_id
        #   The stable and unique string identifying the role. For more
        #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
        #   guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) specifying the role. For more
        #   information about ARNs and how to use them in policies, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the role
        #   was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] assume_role_policy_document
        #   The policy that grants an entity permission to assume the role.
        #   @return [String]

      end

      # Contains information about an IAM role, including all of the role\'s
      # policies.
      #
      # This data type is used as a response element in the
      # GetAccountAuthorizationDetails action.
      class RoleDetail < Aws::Structure.new(
        :path,
        :role_name,
        :role_id,
        :arn,
        :create_date,
        :assume_role_policy_document,
        :instance_profile_list,
        :role_policy_list,
        :attached_managed_policies)

        # @!attribute [rw] path
        #   The path to the role. For more information about paths, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] role_name
        #   The friendly name that identifies the role.
        #   @return [String]

        # @!attribute [rw] role_id
        #   The stable and unique string identifying the role. For more
        #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
        #   guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the role
        #   was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] assume_role_policy_document
        #   The trust policy that grants permission to assume the role.
        #   @return [String]

        # @!attribute [rw] instance_profile_list
        #   Contains a list of instance profiles.
        #   @return [Array<Types::InstanceProfile>]

        # @!attribute [rw] role_policy_list
        #   A list of inline policies embedded in the role. These policies are
        #   the role\'s access (permissions) policies.
        #   @return [Array<Types::PolicyDetail>]

        # @!attribute [rw] attached_managed_policies
        #   A list of managed policies attached to the role. These policies are
        #   the role\'s access (permissions) policies.
        #   @return [Array<Types::AttachedPolicy>]

      end

      # Contains the list of SAML providers for this account.
      class SAMLProviderListEntry < Aws::Structure.new(
        :arn,
        :valid_until,
        :create_date)

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) of the SAML provider.
        #   @return [String]

        # @!attribute [rw] valid_until
        #   The expiration date and time for the SAML provider.
        #   @return [Time]

        # @!attribute [rw] create_date
        #   The date and time when the SAML provider was created.
        #   @return [Time]

      end

      # Contains information about an SSH public key.
      #
      # This data type is used as a response element in the GetSSHPublicKey
      # and UploadSSHPublicKey actions.
      class SSHPublicKey < Aws::Structure.new(
        :user_name,
        :ssh_public_key_id,
        :fingerprint,
        :ssh_public_key_body,
        :status,
        :upload_date)

        # @!attribute [rw] user_name
        #   The name of the IAM user associated with the SSH public key.
        #   @return [String]

        # @!attribute [rw] ssh_public_key_id
        #   The unique identifier for the SSH public key.
        #   @return [String]

        # @!attribute [rw] fingerprint
        #   The MD5 message digest of the SSH public key.
        #   @return [String]

        # @!attribute [rw] ssh_public_key_body
        #   The SSH public key.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the SSH public key. `Active` means the key can be used
        #   for authentication with an AWS CodeCommit repository. `Inactive`
        #   means the key cannot be used.
        #   @return [String]

        # @!attribute [rw] upload_date
        #   The date and time, in [ISO 8601 date-time format][1], when the SSH
        #   public key was uploaded.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

      end

      # Contains information about an SSH public key, without the key\'s body
      # or fingerprint.
      #
      # This data type is used as a response element in the ListSSHPublicKeys
      # action.
      class SSHPublicKeyMetadata < Aws::Structure.new(
        :user_name,
        :ssh_public_key_id,
        :status,
        :upload_date)

        # @!attribute [rw] user_name
        #   The name of the IAM user associated with the SSH public key.
        #   @return [String]

        # @!attribute [rw] ssh_public_key_id
        #   The unique identifier for the SSH public key.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the SSH public key. `Active` means the key can be used
        #   for authentication with an AWS CodeCommit repository. `Inactive`
        #   means the key cannot be used.
        #   @return [String]

        # @!attribute [rw] upload_date
        #   The date and time, in [ISO 8601 date-time format][1], when the SSH
        #   public key was uploaded.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

      end

      # Contains information about a server certificate.
      #
      # This data type is used as a response element in the
      # GetServerCertificate action.
      class ServerCertificate < Aws::Structure.new(
        :server_certificate_metadata,
        :certificate_body,
        :certificate_chain)

        # @!attribute [rw] server_certificate_metadata
        #   The meta information of the server certificate, such as its name,
        #   path, ID, and ARN.
        #   @return [Types::ServerCertificateMetadata]

        # @!attribute [rw] certificate_body
        #   The contents of the public key certificate.
        #   @return [String]

        # @!attribute [rw] certificate_chain
        #   The contents of the public key certificate chain.
        #   @return [String]

      end

      # Contains information about a server certificate without its
      # certificate body, certificate chain, and private key.
      #
      # This data type is used as a response element in the
      # UploadServerCertificate and ListServerCertificates actions.
      class ServerCertificateMetadata < Aws::Structure.new(
        :path,
        :server_certificate_name,
        :server_certificate_id,
        :arn,
        :upload_date,
        :expiration)

        # @!attribute [rw] path
        #   The path to the server certificate. For more information about
        #   paths, see [IAM Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] server_certificate_name
        #   The name that identifies the server certificate.
        #   @return [String]

        # @!attribute [rw] server_certificate_id
        #   The stable and unique string identifying the server certificate. For
        #   more information about IDs, see [IAM Identifiers][1] in the *Using
        #   IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) specifying the server certificate.
        #   For more information about ARNs and how to use them in policies, see
        #   [IAM Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] upload_date
        #   The date when the server certificate was uploaded.
        #   @return [Time]

        # @!attribute [rw] expiration
        #   The date on which the certificate is set to expire.
        #   @return [Time]

      end

      # @note When making an API call, pass SetDefaultPolicyVersionRequest
      #   data as a hash:
      #
      #       {
      #         policy_arn: "arnType", # required
      #         version_id: "policyVersionIdType", # required
      #       }
      class SetDefaultPolicyVersionRequest < Aws::Structure.new(
        :policy_arn,
        :version_id)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the IAM policy whose default
        #   version you want to set.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] version_id
        #   The version of the policy to set as the default (operative) version.
        #
        #   For more information about managed policy versions, see [Versioning
        #   for Managed Policies][1] in the *IAM User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
        #   @return [String]

      end

      # Contains information about an X.509 signing certificate.
      #
      # This data type is used as a response element in the
      # UploadSigningCertificate and ListSigningCertificates actions.
      class SigningCertificate < Aws::Structure.new(
        :user_name,
        :certificate_id,
        :certificate_body,
        :status,
        :upload_date)

        # @!attribute [rw] user_name
        #   The name of the user the signing certificate is associated with.
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID for the signing certificate.
        #   @return [String]

        # @!attribute [rw] certificate_body
        #   The contents of the signing certificate.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the signing certificate. `Active` means the key is
        #   valid for API calls, while `Inactive` means it is not.
        #   @return [String]

        # @!attribute [rw] upload_date
        #   The date when the signing certificate was uploaded.
        #   @return [Time]

      end

      # @note When making an API call, pass SimulateCustomPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_input_list: ["policyDocumentType"], # required
      #         action_names: ["ActionNameType"], # required
      #         resource_arns: ["ResourceNameType"],
      #         resource_policy: "policyDocumentType",
      #         resource_owner: "ResourceNameType",
      #         caller_arn: "ResourceNameType",
      #         context_entries: [
      #           {
      #             context_key_name: "ContextKeyNameType",
      #             context_key_values: ["ContextKeyValueType"],
      #             context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
      #           },
      #         ],
      #         resource_handling_option: "ResourceHandlingOptionType",
      #         max_items: 1,
      #         marker: "markerType",
      #       }
      class SimulateCustomPolicyRequest < Aws::Structure.new(
        :policy_input_list,
        :action_names,
        :resource_arns,
        :resource_policy,
        :resource_owner,
        :caller_arn,
        :context_entries,
        :resource_handling_option,
        :max_items,
        :marker)

        # @!attribute [rw] policy_input_list
        #   A list of policy documents to include in the simulation. Each
        #   document is specified as a string containing the complete, valid
        #   JSON text of an IAM policy. Do not include any resource-based
        #   policies in this parameter. Any resource-based policy must be
        #   submitted with the `ResourcePolicy` parameter. The policies cannot
        #   be \"scope-down\" policies, such as you could include in a call to
        #   [GetFederationToken][1] or one of the [AssumeRole][2] APIs to
        #   restrict what a user can do while using the temporary credentials.
        #
        #   The [regex pattern][3] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html
        #   [2]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html
        #   [3]: http://wikipedia.org/wiki/regex
        #   @return [Array<String>]

        # @!attribute [rw] action_names
        #   A list of names of API actions to evaluate in the simulation. Each
        #   action is evaluated against each resource. Each action must include
        #   the service identifier, such as `iam:CreateUser`.
        #   @return [Array<String>]

        # @!attribute [rw] resource_arns
        #   A list of ARNs of AWS resources to include in the simulation. If
        #   this parameter is not provided then the value defaults to `*` (all
        #   resources). Each API in the `ActionNames` parameter is evaluated for
        #   each resource in this list. The simulation determines the access
        #   result (allowed or denied) of each combination and reports it in the
        #   response.
        #
        #   The simulation does not automatically retrieve policies for the
        #   specified resources. If you want to include a resource policy in the
        #   simulation, then you must include the policy as a string in the
        #   `ResourcePolicy` parameter.
        #
        #   If you include a `ResourcePolicy`, then it must be applicable to all
        #   of the resources included in the simulation or you receive an
        #   invalid input error.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [Array<String>]

        # @!attribute [rw] resource_policy
        #   A resource-based policy to include in the simulation provided as a
        #   string. Each resource in the simulation is treated as if it had this
        #   policy attached. You can include only one resource-based policy in a
        #   simulation.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] resource_owner
        #   An AWS account ID that specifies the owner of any simulated resource
        #   that does not identify its owner in the resource ARN, such as an S3
        #   bucket or object. If `ResourceOwner` is specified, it is also used
        #   as the account owner of any `ResourcePolicy` included in the
        #   simulation. If the `ResourceOwner` parameter is not specified, then
        #   the owner of the resources and the resource policy defaults to the
        #   account of the identity provided in `CallerArn`. This parameter is
        #   required only if you specify a resource-based policy and account
        #   that owns the resource is different from the account that owns the
        #   simulated calling user `CallerArn`.
        #   @return [String]

        # @!attribute [rw] caller_arn
        #   The ARN of the IAM user that you want to use as the simulated caller
        #   of the APIs. `CallerArn` is required if you include a
        #   `ResourcePolicy` so that the policy\'s `Principal` element has a
        #   value to use in evaluating the policy.
        #
        #   You can specify only the ARN of an IAM user. You cannot specify the
        #   ARN of an assumed role, federated user, or a service principal.
        #   @return [String]

        # @!attribute [rw] context_entries
        #   A list of context keys and corresponding values for the simulation
        #   to use. Whenever a context key is evaluated in one of the simulated
        #   IAM permission policies, the corresponding value is supplied.
        #   @return [Array<Types::ContextEntry>]

        # @!attribute [rw] resource_handling_option
        #   Specifies the type of simulation to run. Different APIs that support
        #   resource-based policies require different combinations of resources.
        #   By specifying the type of simulation to run, you enable the policy
        #   simulator to enforce the presence of the required resources to
        #   ensure reliable simulation results. If your simulation does not
        #   match one of the following scenarios, then you can omit this
        #   parameter. The following list shows each of the supported scenario
        #   values and the resources that you must define to run the simulation.
        #
        #   Each of the EC2 scenarios requires that you specify instance, image,
        #   and security-group resources. If your scenario includes an EBS
        #   volume, then you must specify that volume as a resource. If the EC2
        #   scenario includes VPC, then you must supply the network-interface
        #   resource. If it includes an IP subnet, then you must specify the
        #   subnet resource. For more information on the EC2 scenario options,
        #   see [Supported Platforms][1] in the *AWS EC2 User Guide*.
        #
        #   * **EC2-Classic-InstanceStore**
        #
        #     instance, image, security-group
        #
        #   * **EC2-Classic-EBS**
        #
        #     instance, image, security-group, volume
        #
        #   * **EC2-VPC-InstanceStore**
        #
        #     instance, image, security-group, network-interface
        #
        #   * **EC2-VPC-InstanceStore-Subnet**
        #
        #     instance, image, security-group, network-interface, subnet
        #
        #   * **EC2-VPC-EBS**
        #
        #     instance, image, security-group, network-interface, volume
        #
        #   * **EC2-VPC-EBS-Subnet**
        #
        #     instance, image, security-group, network-interface, subnet, volume
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

      end

      # Contains the response to a successful SimulatePrincipalPolicy or
      # SimulateCustomPolicy request.
      class SimulatePolicyResponse < Aws::Structure.new(
        :evaluation_results,
        :is_truncated,
        :marker)

        # @!attribute [rw] evaluation_results
        #   The results of the simulation.
        #   @return [Array<Types::EvaluationResult>]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether there are more items to return. If
        #   your results were truncated, you can make a subsequent pagination
        #   request using the `Marker` request parameter to retrieve more items.
        #   Note that IAM might return fewer than the `MaxItems` number of
        #   results even when there are more results available. We recommend
        #   that you check `IsTruncated` after every call to ensure that you
        #   receive all of your results.
        #   @return [Boolean]

        # @!attribute [rw] marker
        #   When `IsTruncated` is `true`, this element is present and contains
        #   the value to use for the `Marker` parameter in a subsequent
        #   pagination request.
        #   @return [String]

      end

      # @note When making an API call, pass SimulatePrincipalPolicyRequest
      #   data as a hash:
      #
      #       {
      #         policy_source_arn: "arnType", # required
      #         policy_input_list: ["policyDocumentType"],
      #         action_names: ["ActionNameType"], # required
      #         resource_arns: ["ResourceNameType"],
      #         resource_policy: "policyDocumentType",
      #         resource_owner: "ResourceNameType",
      #         caller_arn: "ResourceNameType",
      #         context_entries: [
      #           {
      #             context_key_name: "ContextKeyNameType",
      #             context_key_values: ["ContextKeyValueType"],
      #             context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
      #           },
      #         ],
      #         resource_handling_option: "ResourceHandlingOptionType",
      #         max_items: 1,
      #         marker: "markerType",
      #       }
      class SimulatePrincipalPolicyRequest < Aws::Structure.new(
        :policy_source_arn,
        :policy_input_list,
        :action_names,
        :resource_arns,
        :resource_policy,
        :resource_owner,
        :caller_arn,
        :context_entries,
        :resource_handling_option,
        :max_items,
        :marker)

        # @!attribute [rw] policy_source_arn
        #   The Amazon Resource Name (ARN) of a user, group, or role whose
        #   policies you want to include in the simulation. If you specify a
        #   user, group, or role, the simulation includes all policies that are
        #   associated with that entity. If you specify a user, the simulation
        #   also includes all policies that are attached to any groups the user
        #   belongs to.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] policy_input_list
        #   An optional list of additional policy documents to include in the
        #   simulation. Each document is specified as a string containing the
        #   complete, valid JSON text of an IAM policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [Array<String>]

        # @!attribute [rw] action_names
        #   A list of names of API actions to evaluate in the simulation. Each
        #   action is evaluated for each resource. Each action must include the
        #   service identifier, such as `iam:CreateUser`.
        #   @return [Array<String>]

        # @!attribute [rw] resource_arns
        #   A list of ARNs of AWS resources to include in the simulation. If
        #   this parameter is not provided then the value defaults to `*` (all
        #   resources). Each API in the `ActionNames` parameter is evaluated for
        #   each resource in this list. The simulation determines the access
        #   result (allowed or denied) of each combination and reports it in the
        #   response.
        #
        #   The simulation does not automatically retrieve policies for the
        #   specified resources. If you want to include a resource policy in the
        #   simulation, then you must include the policy as a string in the
        #   `ResourcePolicy` parameter.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [Array<String>]

        # @!attribute [rw] resource_policy
        #   A resource-based policy to include in the simulation provided as a
        #   string. Each resource in the simulation is treated as if it had this
        #   policy attached. You can include only one resource-based policy in a
        #   simulation.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] resource_owner
        #   An AWS account ID that specifies the owner of any simulated resource
        #   that does not identify its owner in the resource ARN, such as an S3
        #   bucket or object. If `ResourceOwner` is specified, it is also used
        #   as the account owner of any `ResourcePolicy` included in the
        #   simulation. If the `ResourceOwner` parameter is not specified, then
        #   the owner of the resources and the resource policy defaults to the
        #   account of the identity provided in `CallerArn`. This parameter is
        #   required only if you specify a resource-based policy and account
        #   that owns the resource is different from the account that owns the
        #   simulated calling user `CallerArn`.
        #   @return [String]

        # @!attribute [rw] caller_arn
        #   The ARN of the IAM user that you want to specify as the simulated
        #   caller of the APIs. If you do not specify a `CallerArn`, it defaults
        #   to the ARN of the user that you specify in `PolicySourceArn`, if you
        #   specified a user. If you include both a `PolicySourceArn` (for
        #   example, `arn:aws:iam::123456789012:user/David`) and a `CallerArn`
        #   (for example, `arn:aws:iam::123456789012:user/Bob`), the result is
        #   that you simulate calling the APIs as Bob, as if Bob had David\'s
        #   policies.
        #
        #   You can specify only the ARN of an IAM user. You cannot specify the
        #   ARN of an assumed role, federated user, or a service principal.
        #
        #   `CallerArn` is required if you include a `ResourcePolicy` and the
        #   `PolicySourceArn` is not the ARN for an IAM user. This is required
        #   so that the resource-based policy\'s `Principal` element has a value
        #   to use in evaluating the policy.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] context_entries
        #   A list of context keys and corresponding values for the simulation
        #   to use. Whenever a context key is evaluated in one of the simulated
        #   IAM permission policies, the corresponding value is supplied.
        #   @return [Array<Types::ContextEntry>]

        # @!attribute [rw] resource_handling_option
        #   Specifies the type of simulation to run. Different APIs that support
        #   resource-based policies require different combinations of resources.
        #   By specifying the type of simulation to run, you enable the policy
        #   simulator to enforce the presence of the required resources to
        #   ensure reliable simulation results. If your simulation does not
        #   match one of the following scenarios, then you can omit this
        #   parameter. The following list shows each of the supported scenario
        #   values and the resources that you must define to run the simulation.
        #
        #   Each of the EC2 scenarios requires that you specify instance, image,
        #   and security-group resources. If your scenario includes an EBS
        #   volume, then you must specify that volume as a resource. If the EC2
        #   scenario includes VPC, then you must supply the network-interface
        #   resource. If it includes an IP subnet, then you must specify the
        #   subnet resource. For more information on the EC2 scenario options,
        #   see [Supported Platforms][1] in the *AWS EC2 User Guide*.
        #
        #   * **EC2-Classic-InstanceStore**
        #
        #     instance, image, security-group
        #
        #   * **EC2-Classic-EBS**
        #
        #     instance, image, security-group, volume
        #
        #   * **EC2-VPC-InstanceStore**
        #
        #     instance, image, security-group, network-interface
        #
        #   * **EC2-VPC-InstanceStore-Subnet**
        #
        #     instance, image, security-group, network-interface, subnet
        #
        #   * **EC2-VPC-EBS**
        #
        #     instance, image, security-group, network-interface, volume
        #
        #   * **EC2-VPC-EBS-Subnet**
        #
        #     instance, image, security-group, network-interface, subnet, volume
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
        #   @return [String]

        # @!attribute [rw] max_items
        #   Use this only when paginating results to indicate the maximum number
        #   of items you want in the response. If additional items exist beyond
        #   the maximum you specify, the `IsTruncated` response element is
        #   `true`.
        #
        #   This parameter is optional. If you do not include it, it defaults to
        #   100. Note that IAM might return fewer results, even when there are
        #   more results available. In that case, the `IsTruncated` response
        #   element returns `true` and `Marker` contains a value to include in
        #   the subsequent call that tells the service where to continue from.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   Use this parameter only when paginating results and only after you
        #   receive a response indicating that the results are truncated. Set it
        #   to the value of the `Marker` element in the response that you
        #   received to indicate where the next call should start.
        #   @return [String]

      end

      # Contains a reference to a `Statement` element in a policy document
      # that determines the result of the simulation.
      #
      # This data type is used by the `MatchedStatements` member of the `
      # EvaluationResult ` type.
      class Statement < Aws::Structure.new(
        :source_policy_id,
        :source_policy_type,
        :start_position,
        :end_position)

        # @!attribute [rw] source_policy_id
        #   The identifier of the policy that was provided as an input.
        #   @return [String]

        # @!attribute [rw] source_policy_type
        #   The type of the policy.
        #   @return [String]

        # @!attribute [rw] start_position
        #   The row and column of the beginning of the `Statement` in an IAM
        #   policy.
        #   @return [Types::Position]

        # @!attribute [rw] end_position
        #   The row and column of the end of a `Statement` in an IAM policy.
        #   @return [Types::Position]

      end

      # @note When making an API call, pass UpdateAccessKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         access_key_id: "accessKeyIdType", # required
      #         status: "Active", # required, accepts Active, Inactive
      #       }
      class UpdateAccessKeyRequest < Aws::Structure.new(
        :user_name,
        :access_key_id,
        :status)

        # @!attribute [rw] user_name
        #   The name of the user whose key you want to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] access_key_id
        #   The access key ID of the secret access key you want to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] status
        #   The status you want to assign to the secret access key. `Active`
        #   means the key can be used for API calls to AWS, while `Inactive`
        #   means the key cannot be used.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateAccountPasswordPolicyRequest
      #   data as a hash:
      #
      #       {
      #         minimum_password_length: 1,
      #         require_symbols: false,
      #         require_numbers: false,
      #         require_uppercase_characters: false,
      #         require_lowercase_characters: false,
      #         allow_users_to_change_password: false,
      #         max_password_age: 1,
      #         password_reuse_prevention: 1,
      #         hard_expiry: false,
      #       }
      class UpdateAccountPasswordPolicyRequest < Aws::Structure.new(
        :minimum_password_length,
        :require_symbols,
        :require_numbers,
        :require_uppercase_characters,
        :require_lowercase_characters,
        :allow_users_to_change_password,
        :max_password_age,
        :password_reuse_prevention,
        :hard_expiry)

        # @!attribute [rw] minimum_password_length
        #   The minimum number of characters allowed in an IAM user password.
        #
        #   Default value: 6
        #   @return [Integer]

        # @!attribute [rw] require_symbols
        #   Specifies whether IAM user passwords must contain at least one of
        #   the following non-alphanumeric characters:
        #
        #   ! @ # $ % ^ &amp;amp; \* ( ) \_ + - = \[ \] \\\{ \\} \| \'
        #
        #   Default value: false
        #   @return [Boolean]

        # @!attribute [rw] require_numbers
        #   Specifies whether IAM user passwords must contain at least one
        #   numeric character (0 to 9).
        #
        #   Default value: false
        #   @return [Boolean]

        # @!attribute [rw] require_uppercase_characters
        #   Specifies whether IAM user passwords must contain at least one
        #   uppercase character from the ISO basic Latin alphabet (A to Z).
        #
        #   Default value: false
        #   @return [Boolean]

        # @!attribute [rw] require_lowercase_characters
        #   Specifies whether IAM user passwords must contain at least one
        #   lowercase character from the ISO basic Latin alphabet (a to z).
        #
        #   Default value: false
        #   @return [Boolean]

        # @!attribute [rw] allow_users_to_change_password
        #   Allows all IAM users in your account to use the AWS Management
        #   Console to change their own passwords. For more information, see
        #   [Letting IAM Users Change Their Own Passwords][1] in the *IAM User
        #   Guide*.
        #
        #   Default value: false
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html
        #   @return [Boolean]

        # @!attribute [rw] max_password_age
        #   The number of days that an IAM user password is valid. The default
        #   value of 0 means IAM user passwords never expire.
        #
        #   Default value: 0
        #   @return [Integer]

        # @!attribute [rw] password_reuse_prevention
        #   Specifies the number of previous passwords that IAM users are
        #   prevented from reusing. The default value of 0 means IAM users are
        #   not prevented from reusing previous passwords.
        #
        #   Default value: 0
        #   @return [Integer]

        # @!attribute [rw] hard_expiry
        #   Prevents IAM users from setting a new password after their password
        #   has expired.
        #
        #   Default value: false
        #   @return [Boolean]

      end

      # @note When making an API call, pass UpdateAssumeRolePolicyRequest
      #   data as a hash:
      #
      #       {
      #         role_name: "roleNameType", # required
      #         policy_document: "policyDocumentType", # required
      #       }
      class UpdateAssumeRolePolicyRequest < Aws::Structure.new(
        :role_name,
        :policy_document)

        # @!attribute [rw] role_name
        #   The name of the role to update with the new policy.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] policy_document
        #   The policy that grants an entity permission to assume the role.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass UpdateGroupRequest
      #   data as a hash:
      #
      #       {
      #         group_name: "groupNameType", # required
      #         new_path: "pathType",
      #         new_group_name: "groupNameType",
      #       }
      class UpdateGroupRequest < Aws::Structure.new(
        :group_name,
        :new_path,
        :new_group_name)

        # @!attribute [rw] group_name
        #   Name of the IAM group to update. If you\'re changing the name of the
        #   group, this is the original name.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] new_path
        #   New path for the IAM group. Only include this if changing the
        #   group\'s path.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] new_group_name
        #   New name for the IAM group. Only include this if changing the
        #   group\'s name.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass UpdateLoginProfileRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         password: "passwordType",
      #         password_reset_required: false,
      #       }
      class UpdateLoginProfileRequest < Aws::Structure.new(
        :user_name,
        :password,
        :password_reset_required)

        # @!attribute [rw] user_name
        #   The name of the user whose password you want to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] password
        #   The new password for the specified IAM user.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D). However, the
        #   format can be further restricted by the account administrator by
        #   setting a password policy on the AWS account. For more information,
        #   see UpdateAccountPasswordPolicy.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] password_reset_required
        #   Allows this new password to be used only once by requiring the
        #   specified IAM user to set a new password on next sign-in.
        #   @return [Boolean]

      end

      # @note When making an API call, pass UpdateOpenIDConnectProviderThumbprintRequest
      #   data as a hash:
      #
      #       {
      #         open_id_connect_provider_arn: "arnType", # required
      #         thumbprint_list: ["thumbprintType"], # required
      #       }
      class UpdateOpenIDConnectProviderThumbprintRequest < Aws::Structure.new(
        :open_id_connect_provider_arn,
        :thumbprint_list)

        # @!attribute [rw] open_id_connect_provider_arn
        #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource
        #   object for which you want to update the thumbprint. You can get a
        #   list of OIDC provider ARNs by using the ListOpenIDConnectProviders
        #   action.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] thumbprint_list
        #   A list of certificate thumbprints that are associated with the
        #   specified IAM OpenID Connect provider. For more information, see
        #   CreateOpenIDConnectProvider.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass UpdateSAMLProviderRequest
      #   data as a hash:
      #
      #       {
      #         saml_metadata_document: "SAMLMetadataDocumentType", # required
      #         saml_provider_arn: "arnType", # required
      #       }
      class UpdateSAMLProviderRequest < Aws::Structure.new(
        :saml_metadata_document,
        :saml_provider_arn)

        # @!attribute [rw] saml_metadata_document
        #   An XML document generated by an identity provider (IdP) that
        #   supports SAML 2.0. The document includes the issuer\'s name,
        #   expiration information, and keys that can be used to validate the
        #   SAML authentication response (assertions) that are received from the
        #   IdP. You must generate the metadata document using the identity
        #   management software that is used as your organization\'s IdP.
        #   @return [String]

        # @!attribute [rw] saml_provider_arn
        #   The Amazon Resource Name (ARN) of the SAML provider to update.
        #
        #   For more information about ARNs, see [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

      end

      # Contains the response to a successful UpdateSAMLProvider request.
      class UpdateSAMLProviderResponse < Aws::Structure.new(
        :saml_provider_arn)

        # @!attribute [rw] saml_provider_arn
        #   The Amazon Resource Name (ARN) of the SAML provider that was
        #   updated.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateSSHPublicKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         ssh_public_key_id: "publicKeyIdType", # required
      #         status: "Active", # required, accepts Active, Inactive
      #       }
      class UpdateSSHPublicKeyRequest < Aws::Structure.new(
        :user_name,
        :ssh_public_key_id,
        :status)

        # @!attribute [rw] user_name
        #   The name of the IAM user associated with the SSH public key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] ssh_public_key_id
        #   The unique identifier for the SSH public key.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] status
        #   The status to assign to the SSH public key. `Active` means the key
        #   can be used for authentication with an AWS CodeCommit repository.
        #   `Inactive` means the key cannot be used.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateServerCertificateRequest
      #   data as a hash:
      #
      #       {
      #         server_certificate_name: "serverCertificateNameType", # required
      #         new_path: "pathType",
      #         new_server_certificate_name: "serverCertificateNameType",
      #       }
      class UpdateServerCertificateRequest < Aws::Structure.new(
        :server_certificate_name,
        :new_path,
        :new_server_certificate_name)

        # @!attribute [rw] server_certificate_name
        #   The name of the server certificate that you want to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] new_path
        #   The new path for the server certificate. Include this only if you
        #   are updating the server certificate\'s path.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] new_server_certificate_name
        #   The new name for the server certificate. Include this only if you
        #   are updating the server certificate\'s name. The name of the
        #   certificate cannot contain any spaces.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass UpdateSigningCertificateRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         certificate_id: "certificateIdType", # required
      #         status: "Active", # required, accepts Active, Inactive
      #       }
      class UpdateSigningCertificateRequest < Aws::Structure.new(
        :user_name,
        :certificate_id,
        :status)

        # @!attribute [rw] user_name
        #   The name of the IAM user the signing certificate belongs to.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] certificate_id
        #   The ID of the signing certificate you want to update.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   that can consist of any upper or lowercased letter or digit.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] status
        #   The status you want to assign to the certificate. `Active` means the
        #   certificate can be used for API calls to AWS, while `Inactive` means
        #   the certificate cannot be used.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateUserRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType", # required
      #         new_path: "pathType",
      #         new_user_name: "userNameType",
      #       }
      class UpdateUserRequest < Aws::Structure.new(
        :user_name,
        :new_path,
        :new_user_name)

        # @!attribute [rw] user_name
        #   Name of the user to update. If you\'re changing the name of the
        #   user, this is the original user name.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] new_path
        #   New path for the IAM user. Include this parameter only if you\'re
        #   changing the user\'s path.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of either a forward slash (/) by itself or a string that
        #   must begin and end with forward slashes, containing any ASCII
        #   character from the ! (\\u0021) thru the DEL character (\\u007F),
        #   including most punctuation characters, digits, and upper and
        #   lowercased letters.
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] new_user_name
        #   New name for the user. Include this parameter only if you\'re
        #   changing the user\'s name.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # @note When making an API call, pass UploadSSHPublicKeyRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "userNameType", # required
      #         ssh_public_key_body: "publicKeyMaterialType", # required
      #       }
      class UploadSSHPublicKeyRequest < Aws::Structure.new(
        :user_name,
        :ssh_public_key_body)

        # @!attribute [rw] user_name
        #   The name of the IAM user to associate the SSH public key with.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] ssh_public_key_body
        #   The SSH public key. The public key must be encoded in ssh-rsa format
        #   or PEM format.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful UploadSSHPublicKey request.
      class UploadSSHPublicKeyResponse < Aws::Structure.new(
        :ssh_public_key)

        # @!attribute [rw] ssh_public_key
        #   Contains information about the SSH public key.
        #   @return [Types::SSHPublicKey]

      end

      # @note When making an API call, pass UploadServerCertificateRequest
      #   data as a hash:
      #
      #       {
      #         path: "pathType",
      #         server_certificate_name: "serverCertificateNameType", # required
      #         certificate_body: "certificateBodyType", # required
      #         private_key: "privateKeyType", # required
      #         certificate_chain: "certificateChainType",
      #       }
      class UploadServerCertificateRequest < Aws::Structure.new(
        :path,
        :server_certificate_name,
        :certificate_body,
        :private_key,
        :certificate_chain)

        # @!attribute [rw] path
        #   The path for the server certificate. For more information about
        #   paths, see [IAM Identifiers][1] in the *IAM User Guide*.
        #
        #   This parameter is optional. If it is not included, it defaults to a
        #   slash (/). The [regex pattern][2] for this parameter is a string of
        #   characters consisting of either a forward slash (/) by itself or a
        #   string that must begin and end with forward slashes, containing any
        #   ASCII character from the ! (\\u0021) thru the DEL character
        #   (\\u007F), including most punctuation characters, digits, and upper
        #   and lowercased letters.
        #
        #   <note markdown="1"> If you are uploading a server certificate specifically for use with
        #   Amazon CloudFront distributions, you must specify a path using the
        #   `--path` option. The path must begin with `/cloudfront` and must
        #   include a trailing slash (for example, `/cloudfront/test/`).
        #
        #    </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   [2]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] server_certificate_name
        #   The name for the server certificate. Do not include the path in this
        #   value. The name of the certificate cannot contain any spaces.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] certificate_body
        #   The contents of the public key certificate in PEM-encoded format.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] private_key
        #   The contents of the private key in PEM-encoded format.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] certificate_chain
        #   The contents of the certificate chain. This is typically a
        #   concatenation of the PEM-encoded public key certificates of the
        #   chain.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful UploadServerCertificate request.
      class UploadServerCertificateResponse < Aws::Structure.new(
        :server_certificate_metadata)

        # @!attribute [rw] server_certificate_metadata
        #   The meta information of the uploaded server certificate without its
        #   certificate body, certificate chain, and private key.
        #   @return [Types::ServerCertificateMetadata]

      end

      # @note When making an API call, pass UploadSigningCertificateRequest
      #   data as a hash:
      #
      #       {
      #         user_name: "existingUserNameType",
      #         certificate_body: "certificateBodyType", # required
      #       }
      class UploadSigningCertificateRequest < Aws::Structure.new(
        :user_name,
        :certificate_body)

        # @!attribute [rw] user_name
        #   The name of the user the signing certificate is for.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of upper and lowercase alphanumeric characters with no
        #   spaces. You can also include any of the following characters: =,.@-
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

        # @!attribute [rw] certificate_body
        #   The contents of the signing certificate.
        #
        #   The [regex pattern][1] for this parameter is a string of characters
        #   consisting of any printable ASCII character ranging from the space
        #   character (\\u0020) through end of the ASCII character range
        #   (\\u00FF). It also includes the special characters tab (\\u0009),
        #   line feed (\\u000A), and carriage return (\\u000D).
        #
        #
        #
        #   [1]: http://wikipedia.org/wiki/regex
        #   @return [String]

      end

      # Contains the response to a successful UploadSigningCertificate
      # request.
      class UploadSigningCertificateResponse < Aws::Structure.new(
        :certificate)

        # @!attribute [rw] certificate
        #   Information about the certificate.
        #   @return [Types::SigningCertificate]

      end

      # Contains information about an IAM user entity.
      #
      # This data type is used as a response element in the following actions:
      #
      # * CreateUser
      #
      # * GetUser
      #
      # * ListUsers
      class User < Aws::Structure.new(
        :path,
        :user_name,
        :user_id,
        :arn,
        :create_date,
        :password_last_used)

        # @!attribute [rw] path
        #   The path to the user. For more information about paths, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] user_name
        #   The friendly name identifying the user.
        #   @return [String]

        # @!attribute [rw] user_id
        #   The stable and unique string identifying the user. For more
        #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
        #   guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) that identifies the user. For more
        #   information about ARNs and how to use ARNs in policies, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the user
        #   was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] password_last_used
        #   The date and time, in [ISO 8601 date-time format][1], when the
        #   user\'s password was last used to sign in to an AWS website. For a
        #   list of AWS websites that capture a user\'s last sign-in time, see
        #   the [Credential Reports][2] topic in the *Using IAM* guide. If a
        #   password is used more than once in a five-minute span, only the
        #   first use is returned in this field. This field is null (not
        #   present) when:
        #
        #   * The user does not have a password
        #
        #   * The password exists but has never been used (at least not since
        #     IAM started tracking this information on October 20th, 2014
        #
        #   * there is no sign-in data associated with the user
        #
        #   This value is returned only in the GetUser and ListUsers actions.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
        #   @return [Time]

      end

      # Contains information about an IAM user, including all the user\'s
      # policies and all the IAM groups the user is in.
      #
      # This data type is used as a response element in the
      # GetAccountAuthorizationDetails action.
      class UserDetail < Aws::Structure.new(
        :path,
        :user_name,
        :user_id,
        :arn,
        :create_date,
        :user_policy_list,
        :group_list,
        :attached_managed_policies)

        # @!attribute [rw] path
        #   The path to the user. For more information about paths, see [IAM
        #   Identifiers][1] in the *Using IAM* guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] user_name
        #   The friendly name identifying the user.
        #   @return [String]

        # @!attribute [rw] user_id
        #   The stable and unique string identifying the user. For more
        #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
        #   guide.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
        #   resources.
        #
        #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
        #   and AWS Service Namespaces][1] in the *AWS General Reference*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
        #   @return [String]

        # @!attribute [rw] create_date
        #   The date and time, in [ISO 8601 date-time format][1], when the user
        #   was created.
        #
        #
        #
        #   [1]: http://www.iso.org/iso/iso8601
        #   @return [Time]

        # @!attribute [rw] user_policy_list
        #   A list of the inline policies embedded in the user.
        #   @return [Array<Types::PolicyDetail>]

        # @!attribute [rw] group_list
        #   A list of IAM groups that the user is in.
        #   @return [Array<String>]

        # @!attribute [rw] attached_managed_policies
        #   A list of the managed policies attached to the user.
        #   @return [Array<Types::AttachedPolicy>]

      end

      # Contains information about a virtual MFA device.
      class VirtualMFADevice < Aws::Structure.new(
        :serial_number,
        :base_32_string_seed,
        :qr_code_png,
        :user,
        :enable_date)

        # @!attribute [rw] serial_number
        #   The serial number associated with `VirtualMFADevice`.
        #   @return [String]

        # @!attribute [rw] base_32_string_seed
        #   The Base32 seed defined as specified in [RFC3548][1]. The
        #   `Base32StringSeed` is Base64-encoded.
        #
        #
        #
        #   [1]: http://www.ietf.org/rfc/rfc3548.txt
        #   @return [String]

        # @!attribute [rw] qr_code_png
        #   A QR code PNG image that encodes
        #   `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String`
        #   where `$virtualMFADeviceName` is one of the create call arguments,
        #   `AccountName` is the user name if set (otherwise, the account ID
        #   otherwise), and `Base32String` is the seed in Base32 format. The
        #   `Base32String` value is Base64-encoded.
        #   @return [String]

        # @!attribute [rw] user
        #   Contains information about an IAM user entity.
        #
        #   This data type is used as a response element in the following
        #   actions:
        #
        #   * CreateUser
        #
        #   * GetUser
        #
        #   * ListUsers
        #   @return [Types::User]

        # @!attribute [rw] enable_date
        #   The date and time on which the virtual MFA device was enabled.
        #   @return [Time]

      end

    end
  end
end
