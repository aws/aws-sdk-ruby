# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CloudTrail
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
