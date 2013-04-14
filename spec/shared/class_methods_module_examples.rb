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

module AWS

  shared_examples_for "class methods module" do

    let(:class_methods_module) { described_class.const_get(:ClassMethods) }

    context '.included' do

      it 'should extend with the class methods' do
        mod = Module.new
        mod.should_receive(:extend).
          with(class_methods_module)
        described_class.included(mod)
      end

    end

  end

end

