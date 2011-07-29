# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/uri_escape'

module AWS
  module Http
    class Request

      # Represents a single request paramater.  Some services accept this
      # in a form encoded body string, others as query parameters.
      # It is up to each service's Request class to determine how to
      # consume these params.
      # @private
      class Param

        include UriEscape

        attr_accessor :name, :value

        def initialize name, value = nil
          @name = name
          @value = value
        end

        def <=> other
          @name <=> other.name
        end

        def to_s
          if value
            "#{name}=#{value}"
          else
            name
          end
        end

        def ==(other)
          other.kind_of?(Param) &&
            to_s == other.to_s
        end

        def encoded
          if value
            "#{escape(name)}=#{escape(value)}"
          else
            escape(name)
          end
        end

      end
    end
  end
end
