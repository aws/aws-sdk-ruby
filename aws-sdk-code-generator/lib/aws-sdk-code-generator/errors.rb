module AwsSdkCodeGenerator
  module Errors

    # Raised when generating resource classes that attempt to redefine
    # a method. This can happen when any of the following have the
    # same name:
    #
    # * attributes (as defined in the resource shape members)
    # * actions
    # * has associations
    # * has many associations
    # * waiters
    # * batch actions
    #
    # Additionally this can happen if the resource attempts to
    # redefine methods from Ruby Object.
    class ResourceMethodConflict < RuntimeError

      def initialize(resource_name:, method_name:)
        super("#{resource_name} is attempting to redefine ##{method_name}")
      end

    end

  end
end
