# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS

  # When EKS returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::EKS::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all EKS errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EKS::Errors::ServiceError
  #       # rescues all EKS API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {BadRequestException}
  # * {ClientException}
  # * {InvalidParameterException}
  # * {InvalidRequestException}
  # * {NotFoundException}
  # * {ResourceInUseException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ServerException}
  # * {ServiceUnavailableException}
  # * {UnsupportedAvailabilityZoneException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::BadRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::ClientException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::InvalidParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def fargate_profile_name
        @data[:fargate_profile_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::ResourceInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::ResourceLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def fargate_profile_name
        @data[:fargate_profile_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::ServerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class UnsupportedAvailabilityZoneException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EKS::Types::UnsupportedAvailabilityZoneException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def cluster_name
        @data[:cluster_name]
      end

      # @return [String]
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # @return [String]
      def valid_zones
        @data[:valid_zones]
      end
    end

  end
end
