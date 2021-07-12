# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexRuntimeV2

  # When LexRuntimeV2 returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::LexRuntimeV2::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all LexRuntimeV2 errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LexRuntimeV2::Errors::ServiceError
  #       # rescues all LexRuntimeV2 API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

  end
end
