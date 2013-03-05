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

require 'spec_helper'

module AWS
  class CloudFormation
    describe StackOptions do
      class DummyClass
      end

      before do
        @dummy_class = DummyClass.new
        @dummy_class.extend(StackOptions)
      end

      describe '#apply_template' do

        let(:stack_options) { @dummy_class }

        context 'opts[:template] as a not url string' do

          let(:opts) { {:template => 'template' } }

          it 'has opts[:template_body]' do

            stack_options.send(:apply_template, opts)

            opts.should have_key(:template_body)

            opts.should_not have_key(:template_url)

          end

          context 'include "http"' do

            let(:opts) { {:template => '"Protocol": "http"' } }

            it 'has opts[:template_body]' do

              stack_options.send(:apply_template, opts)

              opts.should have_key(:template_body)

              opts.should_not have_key(:template_url)

            end

          end

        end

        context 'opts[:template] as a http url string' do

          let(:opts) { { :template => 'http://s3.amazon.com/bucket_name/key' } }

          it 'has opts[:template_url]' do

            stack_options.send(:apply_template, opts)

            opts.should_not have_key(:template_body)

            opts.should have_key(:template_url)

          end

        end

        context 'opts[:template] as a https url string' do

          let(:opts) { { :template => 'https://s3.amazon.com/bucket_name/key' } }

          it 'has opts[:template_url]' do

            stack_options.send(:apply_template, opts)

            opts.should_not have_key(:template_body)

            opts.should have_key(:template_url)

          end

        end

      end

    end
  end
end
