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
  class S3
    describe CORSRule do

      context 'scalar attributes' do

        [:id, :max_age_seconds].each do |attr|

          context "##{attr}" do

            it "defaults #{attr} to nil" do
              CORSRule.new.send(attr).should eq(nil)
            end

            it "can set #{attr}" do
              CORSRule.new(attr.to_sym => 'value').send(attr).should eq('value')
            end

          end

        end

      end

      context 'array attributes' do

        attributes = [
          :allowed_methods, :allowed_origins, :allowed_headers, :expose_headers,
        ]

        attributes.each do |attr|

          context "##{attr}" do

            it "defaults #{attr} to []" do
              CORSRule.new.send(attr).should eq([])
            end

            it "accepts :#{attr} as an option" do
              CORSRule.new(attr.to_sym => %w(a b)).send(attr).should eq(%w(a b))
            end

          end

        end

      end

      context '#to_h' do

        it 'returns the rule as a hash' do

          rule = {
            :allowed_methods => ['POST'],
            :allowed_origins => ['http://example.com'],
            :allowed_headers => ['header-1', 'header-2'],
            :max_age_seconds => 123,
            :expose_headers => ['content-type'],
          }

          CORSRule.new(rule).to_h.should eq(rule)

        end

        it 'omits empty values' do
          rule = CORSRule.new(:allowed_methods => ['GET'], :allowed_origins => ['*'])
          rule.to_h.should eq({
            :allowed_methods => ['GET'],
            :allowed_origins => ['*'],
          })

        end

      end

    end
  end
end
