module Aws
  module Errors

    # The base class for all errors returned by an Amazon Web Service.
    # These include all client errors (~400) and server errors (~500).
    class ServiceError < RuntimeError; end

    # Various plugins perform client-side checksums of responses.
    # This error indicates a checksum failed.
    class ChecksumError < RuntimeError; end

    # Raised when a {Service} is constructed an no suitable API
    # version is found based on configuration.
    class NoSuchApiVersionError < RuntimeError; end

    # Raised when a {Service} is constructed and credentials are not
    # set, or the set credentials are empty.
    class MissingCredentialsError < RuntimeError; end

    # Raised when a {Service} is constructed and region is not specified.
    class MissingRegionError < RuntimeError; end

    # This module is mixed into another module, providing dynamic
    # error classes.  Error classes all inherit from {ServiceError}.
    #
    #     # creates and returns the class
    #     Aws::S3::Errors::MyNewErrorClass
    #
    # Since the complete list of possible AWS errors returned by services
    # is not known, this allows us to create them as needed.  This also
    # allows users to rescue errors by class without them being concrete
    # classes beforehand.
    #
    # @api private
    module DynamicErrors

      def const_missing(constant)
        const_set(constant, Class.new(ServiceError))
      end

    end

    class << self

      # Given the name of a service and an error code, this method
      # returns an error class (that extends {ServiceError}.
      #
      #     Aws::Errors.error_class('S3', 'NoSuchBucket').new
      #     #=> #<Aws::S3::Errors::NoSuchBucket>
      #
      # @api private
      def error_class(svc_class_name, error_code)
        constant = error_code.to_s.gsub(/\W+/, '').to_sym
        errors = Aws.const_get(svc_class_name).const_get(:Errors)
        if errors.constants.include?(constant)
          errors.const_get(constant)
        else
          errors.const_set(constant, Class.new(ServiceError))
        end
      end

      # @api private
      def response_error(resp, error_code)
        svc_class_name = resp.context.config.api.metadata['service_class_name']
        error_class(svc_class_name, error_code)
      end

    end
  end
end
