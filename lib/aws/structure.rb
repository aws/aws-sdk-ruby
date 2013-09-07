# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  # @api private
  class Structure < Struct

    @classes = {}

    # @overload to_hash()
    #   @return [Hash]
    def to_hash(obj = self)
      case obj
      when Structure
        obj.members.inject({}) do |hash, member|
          hash[member] = to_hash(obj[member]) unless obj[member].nil?
          hash
        end
      when Array then obj.map { |v| to_hash(v) }
      else obj
      end
    end
    alias to_h to_hash

    # @param [Array<Symbol>] properties
    # @return [Structure]
    def self.new(properties)
      properties = [:_] if properties.empty?
      (@classes[properties] ||= super(*properties)).new
    end

  end
end
