# frozen_string_literal: true

# This is generated code!

module Aws::SSO
  # This module contains the types returned by client operations.
  module Types

    # <p>Provides information about your AWS account.</p>
    # @!attribute account_id
    #   <p>The identifier of the AWS account that is assigned to the user.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The display name of the AWS account that is assigned to the user.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address of the AWS account that is assigned to the user.</p>
    #   @return [String]
    class AccountInfo < Struct.new(
      :account_id,
      :account_name,
      :email_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The friendly name of the role that is assigned to the user.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier for the AWS account that is assigned to the user.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    class GetRoleCredentialsRequest < Struct.new(
      :role_name,
      :account_id,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_credentials
    #   <p>The credentials for the role that is assigned to the user.</p>
    #   @return [Types::RoleCredentials]
    class GetRoleCredentialsResponse < Struct.new(
      :role_credentials,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a problem occurred with the input to the request. For example, a required
    #       parameter might be missing or out of range.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The page token from the previous response output when you request subsequent pages.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items that clients can request per page.</p>
    #   @return [Integer]
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier for the AWS account that is assigned to the user.</p>
    #   @return [String]
    class ListAccountRolesRequest < Struct.new(
      :next_token,
      :max_results,
      :access_token,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The page token client that is used to retrieve the list of accounts.</p>
    #   @return [String]
    # @!attribute role_list
    #   <p>A paginated response with the list of roles and the next token if more results are
    #         available.</p>
    #   @return [Array<Types::RoleInfo>]
    class ListAccountRolesResponse < Struct.new(
      :next_token,
      :role_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>(Optional) When requesting subsequent pages, this is the page token from the previous
    #         response output.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This is the number of items clients can request per page.</p>
    #   @return [Integer]
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    class ListAccountsRequest < Struct.new(
      :next_token,
      :max_results,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The page token client that is used to retrieve the list of accounts.</p>
    #   @return [String]
    # @!attribute account_list
    #   <p>A paginated response with the list of account information and the next token if more
    #         results are available.</p>
    #   @return [Array<Types::AccountInfo>]
    class ListAccountsResponse < Struct.new(
      :next_token,
      :account_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    class LogoutRequest < Struct.new(
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the role credentials that are assigned to the user.</p>
    # @!attribute access_key_id
    #   <p>The identifier used for the temporary security credentials. For more information, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
    #           <i>AWS IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The key that is used to sign the request. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
    #           <i>AWS IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The token used for temporary credentials. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
    #           <i>AWS IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date on which temporary security credentials expire.</p>
    #   @return [Integer]
    class RoleCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expiration] = 0 unless options.key?(:expiration)
        super
      end
    end

    # <p>Provides information about the role that is assigned to the user.</p>
    # @!attribute role_name
    #   <p>The friendly name of the role that is assigned to the user.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier of the AWS account assigned to the user.</p>
    #   @return [String]
    class RoleInfo < Struct.new(
      :role_name,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the request is being made too frequently and is more than what the server
    #       can handle.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the request is not authorized. This can happen due to an invalid access
    #       token in the request.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
