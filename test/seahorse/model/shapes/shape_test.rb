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

require 'test_helper'

module Seahorse
  module Model
    module Shapes
      describe Shape do
        describe 'from_hash_class' do
          it 'fails if shape is not registered' do
            lambda do
              begin
                Shape.from_hash_class('type' => 'invalid')
              rescue => e
                e.message.must_match(/Unregistered shape type invalid/)
                raise
              end
            end.must_raise RuntimeError
          end
        end
      end

      describe ListShape do
        it 'deserializes members property' do
          shape = Shape.from_hash 'members' => {
            'type' => 'structure',
            'members' => {
              'property' => { 'type' => 'string' }
            }
          }, 'type' => 'list'

          shape.must_be_instance_of ListShape
          shape.members.must_be_instance_of StructureShape
          shape.members.members[:property].must_be_instance_of StringShape
        end
      end

      describe StructureShape do
        it 'defaults to an empty members hash' do
          shape = StructureShape.new
          shape.members.must_equal({})
        end
      end
    end
  end
end
