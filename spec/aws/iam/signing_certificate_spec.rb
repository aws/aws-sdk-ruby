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
  class IAM

    describe SigningCertificate do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:certificate) { SigningCertificate.new('id', :user => user) }

      context '#id' do

        it 'returns the certificate_id that was passed to #new' do
          certificate = SigningCertificate.new('id')
          certificate.id.should == 'id'
        end

      end

      context '#user' do

        it 'returns the user passed to #new' do
          certificate.user.should == user
        end

      end

      context '#config' do

        it 'should be the users config' do
          certificate.config.should == user.config
        end

      end

      context '#contents' do

        it 'returns the contents passed to #new' do
          certificate = SigningCertificate.new('id', :contents => 'body')
          certificate.contents.should == 'body'
        end

        it 'lists certificates to find missing contents' do

          response = client.stub_for(:list_signing_certificates)

          response.data[:certificates] = [
            {
              :user_name => user.name,
              :certificate_id => 'id',
              :certificate_body => 'body',
              :status => 'Active',
            }
          ]

          client.should_receive(:list_signing_certificates).
            with(:user_name => user.name).
            and_return(response)

          certificate.contents.should == 'body'

        end

      end

      context '#status' do

        it 'lists certificates to find the status' do

          response = client.stub_for(:list_signing_certificates)

          response.data[:certificates] = [
            {
              :user_name => user.name,
              :certificate_id => 'id',
              :certificate_body => 'body',
              :status => 'Inactive',
            }
          ]

          client.should_receive(:list_signing_certificates).
            with(:user_name => user.name).
            and_return(response)

          certificate.status.should == :inactive

        end

      end

      context '#active?' do

        it 'returns true if the status is :active' do
          certificate.stub(:status).and_return(:active)
          certificate.active?.should == true
        end

        it 'returns false if the status is :inactive' do
          certificate.stub(:status).and_return(:inactive)
          certificate.active?.should == false
        end

      end

      context '#inactive?' do

        it 'returns false if the status is :active' do
          certificate.stub(:status).and_return(:active)
          certificate.inactive?.should == false
        end

        it 'returns true if the status is :inactive' do
          certificate.stub(:status).and_return(:inactive)
          certificate.inactive?.should == true
        end

      end

      context '#activate!' do

        it 'calls update_signing_certificate on the client' do
          client.should_receive(:update_signing_certificate).with(
            :certificate_id => certificate.id,
            :user_name => user.name,
            :status => 'Active')
          certificate.activate!
        end

      end

      context '#deactivate!' do

        it 'calls update_signing_certificate on the client' do
          client.should_receive(:update_signing_certificate).with(
            :certificate_id => certificate.id,
            :user_name => user.name,
            :status => 'Inactive')
          certificate.deactivate!
        end

      end

      context '#delete' do

        it 'calls delete_signing_certificate on the client' do
          client.should_receive(:delete_signing_certificate).with(
            :certificate_id => certificate.id,
            :user_name => user.name)
          certificate.delete
        end

      end

    end

  end

end
