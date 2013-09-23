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
  module Client
    describe ParamValidator do

      let(:rules) {{ 'type' => 'input', 'members' => {} }}

      def validate(params)
        shape = Model::Shapes::Shape.from_hash(rules)
        ParamValidator.new(shape).validate(params)
      end

      it 'returns a hash' do
        expect(validate({})).to be_kind_of(Hash)
      end

    end
  end
end
