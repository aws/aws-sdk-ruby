# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Signin
  # @api private
  module Endpoints

    class CreateOAuth2TokenWithIAM
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_o_auth_endpoint: true,
        )
      end
    end

    class DeleteConsoleAuthorizationConfiguration
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class DeleteResourcePermissionStatement
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class GetConsoleAuthorizationConfiguration
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class GetResourcePolicy
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class IntrospectOAuth2TokenWithIAM
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_o_auth_endpoint: true,
        )
      end
    end

    class ListResourcePermissionStatements
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class PutConsoleAuthorizationConfiguration
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class PutResourcePermissionStatement
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_control_plane: true,
        )
      end
    end

    class RevokeOAuth2TokenWithIAM
      def self.build(context)
        Aws::Signin::EndpointParameters.create(
          context.config,
          is_o_auth_endpoint: true,
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :create_o_auth_2_token_with_iam
        CreateOAuth2TokenWithIAM.build(context)
      when :delete_console_authorization_configuration
        DeleteConsoleAuthorizationConfiguration.build(context)
      when :delete_resource_permission_statement
        DeleteResourcePermissionStatement.build(context)
      when :get_console_authorization_configuration
        GetConsoleAuthorizationConfiguration.build(context)
      when :get_resource_policy
        GetResourcePolicy.build(context)
      when :introspect_o_auth_2_token_with_iam
        IntrospectOAuth2TokenWithIAM.build(context)
      when :list_resource_permission_statements
        ListResourcePermissionStatements.build(context)
      when :put_console_authorization_configuration
        PutConsoleAuthorizationConfiguration.build(context)
      when :put_resource_permission_statement
        PutResourcePermissionStatement.build(context)
      when :revoke_o_auth_2_token_with_iam
        RevokeOAuth2TokenWithIAM.build(context)
      else
        Aws::Signin::EndpointParameters.create(context.config)
      end
    end
  end
end
