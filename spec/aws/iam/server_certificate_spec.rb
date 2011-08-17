# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    describe ServerCertificate do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:cert) { ServerCertificate.new("certname", :config => config) }

      context '#initialize' do

        it 'should store the name' do
          described_class.new("name").name.should == "name"
        end

        it 'should store the upload date' do
          t = Time.now
          described_class.new("name", :upload_date => t).
            upload_date.should == t
        end

        it 'should store the id' do
          described_class.new("name", :id => "123abc").
            id.should == "123abc"
        end

      end

      context 'attributes' do

        let(:response_object) { double("response certificate",
                                       :server_certificate_metadata =>
                                       certificate_metadata) }

        let(:certificate_metadata) { double("certificate metadata",
                                            :server_certificate_name =>
                                            "certname") }

        let(:attributes)      { cert.attributes_from_response(response) }

        shared_examples_for "populated server certificate metadata" do

          it 'should include the certificate id' do
            certificate_metadata.stub(:server_certificate_id).and_return("abc123")
            attributes[:id].should == "abc123"
          end

          it 'should include the path' do
            certificate_metadata.stub(:path).and_return("/foo/")
            attributes[:path].should == "/foo/"
          end

          it 'should include the upload date' do
            now = Time.now
            certificate_metadata.stub(:upload_date).and_return(now)
            attributes[:upload_date].should == now
          end

          it 'should include the arn' do
            certificate_metadata.stub(:arn).and_return("arn:foo")
            attributes[:arn].should == "arn:foo"
          end

          it 'should not populate for a non-matching group' do
            certificate_metadata.stub(:server_certificate_name).
              and_return("foobar")
            attributes.should be_nil
          end

        end

        shared_examples_for "populated server certificate data" do

          it 'should include the certificate body' do
            response_object.stub(:certificate_body).and_return("FOO")
            attributes[:certificate_body].should == "FOO"
          end

          it 'should include the certificate chain' do
            response_object.stub(:certificate_chain).and_return("FOO")
            attributes[:certificate_chain].should == "FOO"
          end

        end

        context 'populated from get_server_certificate' do

          let(:response) { double("get_server_certificate",
                                  :request_type => :get_server_certificate,
                                  :server_certificate => response_object) }

          it_should_behave_like "populated server certificate metadata"
          it_should_behave_like "populated server certificate data"

        end

        context 'populated from upload_server_certificate' do

          let(:response) { double("upload_server_certificate",
                                  :request_type => :upload_server_certificate,
                                  :server_certificate_metadata =>
                                  certificate_metadata) }

          it_should_behave_like "populated server certificate metadata"

        end

        context 'populated from list_server_certificates' do

          let(:response) { double("list_server_certificates",
                                  :request_type => :list_server_certificates,
                                  :server_certificate_metadata_list =>
                                  [certificate_metadata]) }

          it_should_behave_like "populated server certificate metadata"

        end

      end

      context '#path=' do

        it 'should call update_server_certificate' do
          client.should_receive(:update_server_certificate).
            with(:server_certificate_name => "certname",
                 :new_path => "/foo/")
          cert.path = "/foo/"
        end

        it 'should automatically add a trailing slash to the path' do
          client.should_receive(:update_server_certificate).
            with(:server_certificate_name => "certname",
                 :new_path => "/foo/")
          cert.path = "/foo"
        end

        it 'should automatically add a trailing slash to the path' do
          client.should_receive(:update_server_certificate).
            with(:server_certificate_name => "certname",
                 :new_path => "/foo/")
          cert.path = "foo/"
        end

      end

      context '#name=' do

        it 'updates the cert name' do
          client.should_receive(:update_server_certificate).
            with(:server_certificate_name => "certname",
                 :new_server_certificate_name => "newname")
          cert.name = 'newname'
        end

        it 'modifies the name returned by #name' do
          client.should_not_receive(:get_server_certificate)
          cert.name = 'newname'
          cert.name.should == 'newname'
        end

      end

      context '#delete' do

        it 'should call delete_server_certificate' do
          client.should_receive(:delete_server_certificate).
            with(:server_certificate_name => "certname")
          cert.delete
        end

        it 'should return nil' do
          cert.delete.should be_nil
        end

      end

    end

  end
end
