# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceMethod

    # @return [String]
    attr_accessor :method_name

    # @return [String, nil]
    attr_accessor :arguments

    # @return [String]
    attr_accessor :code

    # @return [String, nil]
    attr_accessor :documentation

    # @return [String, nil]
    attr_accessor :alias

  end
end
