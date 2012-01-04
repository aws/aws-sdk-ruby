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

module AWS
  module Core

    # @private
    module Inflection

      def ruby_name(aws_name)

        #aws_name.sub(/^.*:/, '').
        #  gsub(/[A-Z]+[a-z]+/){|str| "_#{str.downcase}_" }.
        #  gsub(/(^_|_$)/, '').
        #  gsub(/__/, '_').
        #  downcase

        return 'etag' if aws_name == 'ETag'

        aws_name.
          sub(/^.*:/, '').                          # strip namespace
          gsub(/([A-Z0-9]+)([A-Z][a-z])/, '\1_\2'). # split acronyms from words
          scan(/[a-z]+|\d+|[A-Z0-9]+[a-z]*/).       # split remaining words
          join('_').downcase                        # join parts _ and downcase

      end
      module_function :ruby_name

      def class_name(name)
        name.sub(/^(.)/) { |m| m.upcase }.
          gsub(/[-_]([a-z])/i) { |m| m[1,1].upcase }
      end
      module_function :class_name

    end
  end
end
