# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'cgi'

module AWS
  module Core

    # @private
    module UriEscape

      # Does URI escaping the way AWS expects it to be done.
      #
      # @private
      protected
      def escape value
        value = value.encode("UTF-8") if value.respond_to?(:encode)
        CGI::escape(value.to_s).gsub('+', '%20').gsub('%7E', '~')
      end

      # URI-escapes a path without escaping the separators
      #
      # @private
      protected
      def escape_path value
        escaped = ""
        value.scan(%r{(/*)([^/]*)(/*)}) do |(leading, part, trailing)|
          escaped << leading + escape(part) + trailing
        end
        escaped
      end

    end
  end
end
