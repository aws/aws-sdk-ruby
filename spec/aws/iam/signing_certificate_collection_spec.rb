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

    describe SigningCertificateCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      context '#create' do

        it 'is an alias of #upload' do
          certificates = SigningCertificateCollection.new
          certificates.method(:create).should == certificates.method(:upload)
        end

      end

      context 'with user' do

        let(:user) { User.new('username', :config => config) }

        let(:certificates) { SigningCertificateCollection.new(:user => user) }

        context '#user' do

          it 'returns the user passed to #new' do
            certificates.user.should == user
          end

        end

        context '#config' do

          it 'should be the users config' do
            certificates.config.should == user.config
          end

        end

        context '#upload' do

          let(:response) { client.stub_for(:upload_signing_certificate) }

          before(:each) do
            response.data[:certificate] = {
              :certificate_id => 'cert-id',
              :certificate_body => 'cert-body',
              :status => 'Active',
            }
          end

          it 'calls upload_signing_certificate on the client' do

            client.should_receive(:upload_signing_certificate).with({
              :user_name => user.name,
              :certificate_body => 'body',
            }).and_return(response)

            certificates.upload('body')

          end

          it 'returns a signing cerificate' do

            certificate = certificates.upload('body')
            certificate.id.should == 'cert-id'
            certificate.contents.should == 'cert-body'
            certificate.user.should == user
            certificate.config.should == config

          end
        end

        context '#[]' do

          it 'returns a certificate' do
            certificate = certificates['id']
            certificate.should be_a(SigningCertificate)
            certificate.id.should == 'id'
            certificate.user.should == user
            certificate.config.should == user.config
          end

        end

        it_behaves_like "a pageable collection with limits" do

          let(:collection)      { certificates }
          let(:client_method)   { :list_signing_certificates }
          let(:next_token_key)  { :marker }
          let(:limit_key)       { :max_items }
          let(:request_options) {{ :user_name => user.name }}

          def stub_n_members response, n
            response.data[:certificates] = (1..n).collect{|i|
              {
                :certificate_id => "id-#{i}",
                :certificate_body => "body-#{i}",
                :status => i % 2 == 1 ? 'Active' : 'Inactive',
              }
            }
          end

          it_behaves_like "a collection that yields models" do

            let(:member_class) { SigningCertificate }

            it 'yields certificates with populated ids' do
              certificates.collect{|c| c.id }.should == %w(id-1 id-2)
            end

            it 'yields certificates with populated bodies' do
              certificates.collect{|c| c.contents }.should == %w(body-1 body-2)
            end

          end

        end

      end

      context 'without user' do

        let(:certificates) { SigningCertificateCollection.new(:config => config) }

        context '#user' do

          it 'returns nil' do
            certificates.user.should == nil
          end

        end

        context '#config' do

          it 'should be the config passed to #new' do
            certificates.config.should == config
          end

        end

        context '#upload' do

          let(:response) { client.stub_for(:upload_signing_certificate) }

          before(:each) do
            response.data[:certificate] = {
              :certificate_id => 'cert-id',
              :certificate_body => 'cert-body',
              :status => 'Active',
            }
          end

          it 'calls upload_signing_certificate on the client' do

            client.should_receive(:upload_signing_certificate).with({
              :certificate_body => 'body'
            }).and_return(response)

            certificates.upload('body')

          end

          it 'returns a signing cerificate' do

            certificate = certificates.upload('body')
            certificate.id.should == 'cert-id'
            certificate.contents.should == 'cert-body'
            certificate.config.should == config

          end

        end

        context '#[]' do

          it 'returns a certificate' do
            certificate = certificates['id']
            certificate.should be_a(SigningCertificate)
            certificate.id.should == 'id'
            certificate.user.should == nil
            certificate.config.should == certificates.config
          end

        end

      end

    end

  end

end
