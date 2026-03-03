# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Array<Smithy::Client::AuthOption>]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :write_get_object_response
        options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      else
        options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      end
      options
    end
  end
end
