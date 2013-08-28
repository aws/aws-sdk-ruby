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
      end

      property :name, String
      property :http_method, String
      property :http_path, String
      property :metadata, Hash
      property :documentation, String
      property :input, Shape
      property :output, Shape
      property :errors, [Shape]

      def to_hash
        hash = super
        hash.delete('metadata') if hash['metadata'].empty?
        hash
      end

    end
  end
end
