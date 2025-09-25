# frozen_string_literal: true

# This is generated code!

module Aws::IoTEventsData
  # Resolves the auth scheme from {AuthParameters}.
  class AuthResolver
    # @param [AuthParameters] parameters
    # @return [Hash]
    def resolve(parameters)
      options = []
      options << { scheme_id: 'aws.auth#sigv4' }
      options
    end
  end
end
