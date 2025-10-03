# frozen_string_literal: true

# This is generated code!

module Aws::MediaStoreData
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Array<Smithy::Client::AuthOption>]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :put_object
        options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      else
      options << Smithy::Client::AuthOption.new(scheme_id: 'aws.auth#sigv4')
      end
      options
    end
  end
end
