# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AccountAccessRuntime
  module Types

    # You are authenticated but not authorized to perform the requested
    # action, such as assuming a role that you aren't entitled to. This
    # error returns an HTTP 403 status code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a role that you can access, including the Amazon Web
    # Services account that contains the role and the role's ARN.
    #
    # @!attribute [rw] account_id
    #   The 12-digit identifier of the Amazon Web Services account that
    #   contains the role.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The display name of the Amazon Web Services account, if available.
    #   This value can be absent when the account name can't be resolved.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that you can access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/AccessDetails AWS API Documentation
    #
    class AccessDetails < Struct.new(
      :account_id,
      :account_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The temporary credentials returned for a role. Only one member is set,
    # depending on the type of access that you requested.
    #
    # @note CredentialsDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CredentialsDetails corresponding to the set member.
    #
    # @!attribute [rw] programmatic_access
    #   The access key credentials returned for programmatic access with the
    #   CLI or an Amazon Web Services SDK.
    #   @return [Types::ProgrammaticAccessDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/CredentialsDetails AWS API Documentation
    #
    class CredentialsDetails < Struct.new(
      :programmatic_access,
      :unknown)
      SENSITIVE = [:programmatic_access]
      include Aws::Structure
      include Aws::Structure::Union

      class ProgrammaticAccess < CredentialsDetails; end
      class Unknown < CredentialsDetails; end
    end

    # @!attribute [rw] tenant_id
    #   The identifier of the tenant that the request applies to. A tenant
    #   ID begins with `aa-` and is 3 to 24 characters long. It can contain
    #   lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role to retrieve credentials
    #   for. You must be entitled to assume this role.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The type of access to request for the role. Specify
    #   `PROGRAMMATIC_ACCESS` to receive access key credentials for use with
    #   the CLI or an Amazon Web Services SDK.
    #   @return [String]
    #
    # @!attribute [rw] session_name
    #   An optional name for the role session. The name can be 2 to 64
    #   characters and can contain alphanumeric characters and the following
    #   symbols: plus (+), equal (=), comma (,), period (.), at (@), and
    #   hyphen (-). The session name appears in CloudTrail logs for the
    #   assumed role session.
    #   @return [String]
    #
    # @!attribute [rw] session_duration
    #   The duration, in seconds, that the returned credentials remain
    #   valid. If you don't specify a value, the service uses the default
    #   session duration. The maximum value can't exceed the maximum
    #   session duration configured for the role.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/GetRoleCredentialsRequest AWS API Documentation
    #
    class GetRoleCredentialsRequest < Struct.new(
      :tenant_id,
      :role_arn,
      :access_type,
      :session_name,
      :session_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials_details
    #   The temporary credentials that the service returns for the requested
    #   role.
    #   @return [Types::CredentialsDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/GetRoleCredentialsResponse AWS API Documentation
    #
    class GetRoleCredentialsResponse < Struct.new(
      :credentials_details)
      SENSITIVE = [:credentials_details]
      include Aws::Structure
    end

    # An internal server error occurred. Retry the request. If the problem
    # persists, contact Amazon Web Services Support. This error returns an
    # HTTP 500 status code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tenant_id
    #   The identifier of the tenant whose roles you want to list. A tenant
    #   ID begins with `aa-` and is 3 to 24 characters long. It can contain
    #   lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of roles to return in a single response. If more
    #   roles are available than the specified value, the response includes
    #   a `nextToken` value that you can use to retrieve the next page of
    #   results. If you don't specify a value, the service uses a default
    #   page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous `ListRoles` response. Use it to
    #   retrieve the next page of results. Omit this parameter on the first
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/ListRolesRequest AWS API Documentation
    #
    class ListRolesRequest < Struct.new(
      :tenant_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] roles
    #   The list of roles that you can access in the tenant. Each entry
    #   describes an Amazon Web Services account and a role.
    #   @return [Array<Types::AccessDetails>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to include in a subsequent `ListRoles` request
    #   to retrieve the next page of results. This value is absent when
    #   there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/ListRolesResponse AWS API Documentation
    #
    class ListRolesResponse < Struct.new(
      :roles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of temporary Amazon Web Services credentials for programmatic
    # access. Treat these values as sensitive.
    #
    # @!attribute [rw] access_key_id
    #   The access key ID for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key for the temporary credentials. Treat this
    #   value as a secret.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token that you must include along with the access key ID
    #   and secret access key when you make requests with the temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The date and time when the temporary credentials expire, after which
    #   they can no longer be used.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/ProgrammaticAccessDetails AWS API Documentation
    #
    class ProgrammaticAccessDetails < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request rate exceeded the allowed limit. Reduce your request rate,
    # and then retry the request. This error returns an HTTP 429 status
    # code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bearer token is missing, invalid, or expired. Obtain a new token,
    # and then retry the request. This error returns an HTTP 401 status
    # code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is missing a required parameter, or a parameter value
    # doesn't satisfy its constraints, such as its length or pattern.
    # Correct the input, and then retry the request. This error returns an
    # HTTP 400 status code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-runtime-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

