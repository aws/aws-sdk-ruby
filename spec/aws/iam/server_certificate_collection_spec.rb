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

    describe ServerCertificateCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:server_certificates) do
        described_class.new(:config => config)
      end

      context '#create' do

        let(:resp) { client.stub_for(:upload_server_certificate) }

        before(:each) do
          resp.data[:server_certificate_metadata] =
            { :server_certificate_name => "MyCert" }
          client.stub(:upload_server_certificate).and_return(resp)
        end

        it 'should call upload_server_certificate' do
          client.should_receive(:upload_server_certificate)
          server_certificates.create
        end

        it 'should pass :name as :server_certificate_name' do
          client.should_receive(:upload_server_certificate).
            with(:server_certificate_name => "MyServer")
          server_certificates.create(:name => "MyServer")
        end

        it 'should accept an optional path' do
          client.should_receive(:upload_server_certificate).
            with(hash_including(:path => "/foo/"))
          server_certificates.create(:path => "/foo/")
        end

        it 'should automatically add a trailing slash to the path' do
          client.should_receive(:upload_server_certificate).
            with(hash_including(:path => "/foo/"))
          server_certificates.create(:path => "/foo")
        end

        it 'should automatically add a leading slash to the path' do
          client.should_receive(:upload_server_certificate).
            with(hash_including(:path => "/foo/"))
          server_certificates.create(:path => "foo/")
        end

        it 'should pass additional options through to the client' do
          client.should_receive(:upload_server_certificate).
            with(hash_including(:foo => "bar"))
          server_certificates.create(:foo => "bar")
        end

        it 'should return a certificate object' do
          sc = server_certificates.create
          sc.should be_a(ServerCertificate)
          sc.config.should be(config)
          sc.name.should == "MyCert" # returned by the service
        end

      end

      context '#[]' do

        it 'should return a certificate object with the name populated' do
          g = server_certificates["SomeCert"]
          g.should be_a(ServerCertificate)
          g.name.should == "SomeCert"
          g.config.should be(config)
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)     { server_certificates }
        let(:client_method)  { :list_server_certificates }
        let(:next_token_key) { :marker }
        let(:limit_key)      { :max_items }
        let(:now)            { Time.now }

        def stub_n_members response, n
          response.data[:server_certificate_metadata_list] = (1..n).collect{|i|
            {
              :server_certificate_name => "cert#{i}",
              :server_certificate_id => "ABCXYZ#{i}",
              :upload_date => now,
              :arn => "awn:aws:iam::12345678901#{i}:cert:/path/#{i}/cert#{i}",
              :path => "/path/#{i}/",
            }
          }
        end

        it_behaves_like "a collection using a path prefix"

        it_behaves_like "a collection that yields models" do

          let(:member_class) { ServerCertificate }

          it 'yields server certificates with populated names' do
            server_certificates.collect{|u| u.name }.should == %w(cert1 cert2)
          end

          it 'yields server certificates with populated upload_date timestamps' do
            server_certificates.collect{|u| u.upload_date }.should == [now, now]
          end

          it 'yields server certificates with populated ids' do
            server_certificates.collect{|u| u.id }.should == %w(ABCXYZ1 ABCXYZ2)
          end

        end

      end

    end

  end
end
