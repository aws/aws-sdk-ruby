# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module WorkSpaces
    module Errors

      extend Aws::Errors::DynamicErrors

      # Raised when calling #load or #data on a resource class that can not be
      # loaded.  This can happen when:
      #
      # * A resource class has identifiers, but no data attributes.
      # * Resource data is only available when making an API call that
      # enumerates all resources of that type.
      class ResourceNotLoadable < RuntimeError; end
    end
  end
end
