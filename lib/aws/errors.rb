# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module Aws
  module Errors

    # The base class for all errors returned by an Amazon Web Service.
    # These include all client errors (~400) and server errors (~500).
    class ServiceError < RuntimeError; end

    # Raised when a {Service} is constructed an no suitable API
    # version is found based on configuration.
    class NoSuchApiVersionError < RuntimeError; end

    # Raised when a {Service} is constructed and credentials are not
    # set, or the set credentials are empty.
    class MissingCredentialsError < RuntimeError; end

    # @api private
    module DynamicErrors

      def const_missing(constant)
        error_class(constant)
      end

      def error_class(constant)
        constant = constant.to_s.gsub(/\W+/, '')
        if const_defined?(constant)
          const_get(constant)
        else
          const_set(constant, Class.new(ServiceError))
        end
      end

    end

  end
end
