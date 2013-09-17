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


module Seahorse
  module Model
    class Operation < Node

      def initialize(*)
        super
        self.metadata = {}
        self.input = InputShape.new
        self.output = OutputShape.new
      end

      property :name, String
      property :http_method, String
      property :http_path, String
      property :metadata, Hash
      property :documentation, String
      property :input, InputShape
      property :output, OutputShape
      property :errors, [Shape]

      def to_hash
        hash = super
        hash.delete('metadata') if hash['metadata'].empty?
        hash.delete('input') if hash['input']['members'].empty?
        hash.delete('output') if hash['output']['members'].empty?
        hash
      end

    end
  end
end
