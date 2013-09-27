module Aws
  module Errors

    # The base class for all errors returned by an Amazon Web Service.
    # These include all client errors (~400) and server errors (~500).
    class ServiceError < RuntimeError; end

    # Raised when a {Service} is constructed an no suitable API
    # version is found based on configuration.
    class NoSuchApiVersionError < RuntimeError; end

    # Raised when a {Service} is constructed and credentials are not
    # set, or the set credentials are empty.
    class MissingCredentialsError < RuntimeError; end

    # @api private
    module DynamicErrors

      def const_missing(constant)
        const_set(constant, Class.new(ServiceError))
      end

    end

    # @api private
    def self.error_class(svc_class_name, error_code)
      constant = error_code.to_s.gsub(/\W+/, '').to_sym
      errors = Aws.const_get(svc_class_name).const_get(:Errors)
      if errors.constants.include?(constant)
        errors.const_get(constant)
      else
        errors.const_set(constant, Class.new(ServiceError))
      end
    end

  end
end
