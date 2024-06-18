# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module Glacier
    describe Client do

      let(:client) { Client.new(stub_responses: true) }

      describe '#upload_archive' do
        # {
        #     id: "GlacierVersionHeader",
        #     documentation: "Glacier requires that a version header be set on all requests.",
        #     protocol: restJson1,
        #     method: "POST",
        #     uri: "/foo/vaults/bar/archives",
        #     headers: {
        #         "X-Amz-Glacier-Version": "2012-06-01",
        #     },
        #     body: "",
        #     params: {
        #         accountId: "foo",
        #         vaultName: "bar",
        #     },
        # },
        it 'GlacierVersionHeader' do
          resp = client.upload_archive(
            account_id: 'foo',
            vault_name: 'bar'
          )
          request = resp.context.http_request
          expect(request.headers['x-amz-glacier-version']).to eq('2012-06-01')
        end

        # {
        #     id: "GlacierChecksums",
        #     documentation: "Glacier requires checksum headers that are cumbersome to provide.",
        #     protocol: restJson1,
        #     method: "POST",
        #     uri: "/foo/vaults/bar/archives",
        #     headers: {
        #         "X-Amz-Glacier-Version": "2012-06-01",
        #         "X-Amz-Content-Sha256": "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9",
        #         "X-Amz-Sha256-Tree-Hash": "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9",
        #     },
        #     body: "hello world",
        #     params: {
        #         accountId: "foo",
        #         vaultName: "bar",
        #         body: "hello world"
        #     },
        #     appliesTo: "client",
        # },
        it 'GlacierChecksums' do
          resp = client.upload_archive(
            account_id: 'foo',
            vault_name: 'bar',
            body: 'hello world'
          )
          request = resp.context.http_request
          expect(request.headers['x-amz-glacier-version']).to eq('2012-06-01')
          expect(request.headers['x-amz-content-sha256'])
            .to eq('b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9')
          expect(request.headers['x-amz-sha256-tree-hash'])
            .to eq('b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9')
        end

        # {
        #     id: "GlacierAccountId",
        #     documentation: """
        #         Glacier requires that the account id be set, but you can just use a
        #         hyphen (-) to indicate the current account. This should be default
        #         behavior if the customer provides a null or empty string.""",
        #     protocol: restJson1,
        #     method: "POST",
        #     uri: "/-/vaults/bar/archives",
        #     headers: {
        #         "X-Amz-Glacier-Version": "2012-06-01",
        #     },
        #     body: "",
        #     params: {
        #         accountId: "",
        #         vaultName: "bar",
        #     },
        #     appliesTo: "client",
        # }
        it 'GlacierAccountId' do
          resp = client.upload_archive(
            account_id: '',
            vault_name: 'bar'
          )
          request = resp.context.http_request
          expect(request.headers['x-amz-glacier-version']).to eq('2012-06-01')
          expect(request.endpoint.path).to eq('/-/vaults/bar/archives')
        end
      end

      describe '#upload_multipart_part' do
        # {
        #     id: "GlacierMultipartChecksums",
        #     documentation: "Glacier requires checksum headers that are cumbersome to provide.",
        #     protocol: restJson1,
        #     method: "PUT",
        #     uri: "/foo/vaults/bar/multipart-uploads/baz",
        #     headers: {
        #         "X-Amz-Glacier-Version": "2012-06-01",
        #         "X-Amz-Content-Sha256": "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9",
        #         "X-Amz-Sha256-Tree-Hash": "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9",
        #     },
        #     body: "hello world",
        #     params: {
        #         accountId: "foo",
        #         vaultName: "bar",
        #         uploadId: "baz",
        #         body: "hello world"
        #     },
        #     appliesTo: "client",
        # }
        it 'GlacierMultipartChecksums' do
          resp = client.upload_multipart_part(
            account_id: 'foo',
            vault_name: 'bar',
            upload_id: 'baz',
            body: 'hello world'
          )
          request = resp.context.http_request
          expect(request.headers['x-amz-glacier-version']).to eq('2012-06-01')
          expect(request.headers['x-amz-content-sha256'])
            .to eq('b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9')
          expect(request.headers['x-amz-sha256-tree-hash'])
            .to eq('b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9')
        end
      end
    end
  end
end
