# frozen_string_literal: true

# This is generated code!

module Aws::MediaStoreData
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [String]
    def resolve(parameters)
      options = []
      case parameters.operation_name
      when :put_object
        options << 'aws.auth#sigv4'
      else
      options << 'aws.auth#sigv4'
      end
      options
    end
  end
end
