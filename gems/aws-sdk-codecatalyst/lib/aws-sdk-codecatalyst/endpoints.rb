# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeCatalyst
  # @api private
  module Endpoints

    class CreateAccessToken
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class CreateDevEnvironment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class CreateProject
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class CreateSourceRepositoryBranch
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class DeleteAccessToken
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class DeleteDevEnvironment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class GetDevEnvironment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class GetProject
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class GetSpace
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class GetSubscription
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class GetUserDetails
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListAccessTokens
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListDevEnvironmentSessions
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListDevEnvironments
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListEventLogs
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListProjects
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListSourceRepositories
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListSourceRepositoryBranches
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class ListSpaces
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class StartDevEnvironment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class StartDevEnvironmentSession
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class StopDevEnvironment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class StopDevEnvironmentSession
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class UpdateDevEnvironment
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

    class VerifySession
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::CodeCatalyst::EndpointParameters.new(
          use_fips: context.config.use_fips_endpoint,
          region: context.config.region,
          endpoint: endpoint,
        )
      end
    end

  end
end
