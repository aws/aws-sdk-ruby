# frozen_string_literal: true

# This is generated code!

module Aws::Health
  # Auth parameters used to resolve authentication per request.
  # @!attribute operation_name
  #   The name of the operation.
  #
  #   @return [Symbol]
  #
  AuthParameters = Struct.new(
    :operation_name,
    keyword_init: true
  ) do
    # @api private
    def self.create(context)
      new(operation_name: context.operation_name)
    end
  end
end
