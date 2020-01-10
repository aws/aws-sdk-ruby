require_relative 'spec_helper'
require 'base64'

module Aws
  module S3
    describe PresignedPost do
      let(:creds) { Credentials.new('akid', 'secret') }

      let(:region) { 'us-east-1' }

      let(:bucket) { 'bucket-name' }

      let(:options) { {} }

      let(:post) { PresignedPost.new(creds, region, bucket, options) }

      def decode(policy)
        Json.load(Base64.decode64(policy))
      end

      def policy(post)
        decode(post.fields['policy'])['conditions']
      end

      describe '#initialize' do
        it 'rejects unknown options' do
          expect do
            PresignedPost.new(creds, region, bucket, foo: 'bar')
          end.to raise_error(/undefined method `foo'/)
        end
      end

      describe '#url' do
        it 'puts dns compatible bucket names in the host' do
          post = PresignedPost.new(creds, 'us-east-1', 'bucket-name')
          expect(post.url).to eq('https://bucket-name.s3.amazonaws.com')
        end

        it 'puts dns compatible bucket name that contain dots in the path' do
          post = PresignedPost.new(creds, 'us-east-1', 'bucket.name')
          expect(post.url).to eq('https://s3.amazonaws.com/bucket.name')
        end

        it 'puts non-dns compatible bucket name in the path' do
          post = PresignedPost.new(creds, 'us-east-1', 'BucketName')
          expect(post.url).to eq('https://s3.amazonaws.com/BucketName')
        end

        it 'creates regionalized urls for other regions' do
          post = PresignedPost.new(creds, 'eu-central-1', 'bucket-name')
          expect(post.url).to eq(
            'https://bucket-name.s3.eu-central-1.amazonaws.com'
          )
        end
      end

      describe 'key' do
        it 'is required' do
          expect { post.fields }.to raise_error(/you must provide a key/)
        end

        it 'can be set via :key' do
          options[:key] = 'obj-key'
          expect(post.fields['key']).to eq('obj-key')
          expect(policy(post)).to include('key' => 'obj-key')
        end

        it 'can be set via :key_starts_with' do
          options[:key_starts_with] = 'prefix/'
          expect(post.fields['key']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$key', 'prefix/'])
        end

        it 'can be set via #key' do
          post.key('obj-key')
          expect(post.fields['key']).to eq('obj-key')
          expect(policy(post)).to include('key' => 'obj-key')
        end

        it 'can be set via #key_starts_with' do
          post.key_starts_with('prefix/')
          expect(post.fields['key']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$key', 'prefix/'])
        end

        it 'can be set via :allow_any' do
          options[:allow_any] = 'key'
          expect(post.fields['key']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$key', ''])
        end

        it 'can be set via #allow_any' do
          post.allow_any('key')
          expect(post.fields['key']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$key', ''])
        end
      end

      describe ':signature_expiration' do
        it 'defaults to one hour from now' do
          now = Time.now
          allow(Time).to receive(:now).and_return(now)
          policy = decode(post.key('key').fields['policy'])
          expect(policy['expiration']).to eq((now + 3600).utc.iso8601)
        end

        it 'can be set in the constructor' do
          now = Time.now
          options[:signature_expiration] = now
          policy = decode(post.key('key').fields['policy'])
          expect(policy['expiration']).to eq(now.utc.iso8601)
        end
      end

      describe 'fields' do
        before(:each) do
          post.key('key')
        end

        it 'provides methods for setting fields or fields starts with' do
          post = PresignedPost.new(creds, region, bucket).key('key')
          post.acl('public-read')
          expect(post.fields['acl']).to eq('public-read')
          expect(policy(post)).to include('acl' => 'public-read')

          post = PresignedPost.new(creds, region, bucket).key('key')
          post.acl_starts_with('')
          expect(post.fields['acl']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$acl', ''])
        end

        it 'formats the Expires time value as httpdate' do
          now = Time.now
          post.expires(now)
          expect(post.fields['Expires']).to eq(now.httpdate)
        end

        it 'allows prefixed Expires' do
          post.expires_starts_with('')
          expect(post.fields['Expires']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$Expires', ''])
        end

        it 'accepts a range for content_length_range' do
          post.content_length_range(10..20)
          expect(policy(post)).to include(['content-length-range', 10, 20])
        end

        it 'respects non-inclusive ranges' do
          post.content_length_range(10...20)
          expect(policy(post)).to include(['content-length-range', 10, 19])
        end

        it 'accepts a hash to :metadata' do
          post.metadata(foo: 'bar', 'mno' => 'xyz')
          expect(post.fields['x-amz-meta-foo']).to eq('bar')
          expect(post.fields['x-amz-meta-mno']).to eq('xyz')
          expect(policy(post)).to include('x-amz-meta-foo' => 'bar')
          expect(policy(post)).to include('x-amz-meta-mno' => 'xyz')
        end

        it 'accepts a hash to :metadata_starts_with' do
          post.metadata_starts_with(foo: 'foo/', 'mno' => 'mno/')
          expect(post.fields['x-amz-meta-foo']).to be(nil)
          expect(post.fields['x-amz-meta-mno']).to be(nil)
          expect(policy(post)).to include(
            ['starts-with', '$x-amz-meta-foo', 'foo/']
          )
          expect(policy(post)).to include(
            ['starts-with', '$x-amz-meta-mno', 'mno/']
          )
        end

        it 'computes a MD5 of the customer provided encryption key' do
          key = 'abcmnoxyz12345'
          encoded_key = Base64.strict_encode64(key)
          md5 = Base64.strict_encode64(OpenSSL::Digest::MD5.digest(key))
          post.server_side_encryption_customer_key(key)
          expect(
            post.fields['x-amz-server-side-encryption-customer-key']
          ).to eq(encoded_key)
          expect(
            post.fields['x-amz-server-side-encryption-customer-key-MD5']
          ).to eq(md5)
          expect(policy(post)).to include(
            'x-amz-server-side-encryption-customer-key' => encoded_key
          )
          expect(policy(post)).to include(
            'x-amz-server-side-encryption-customer-key-MD5' => md5
          )
        end

        it 'does not computes MD5 for starts with' do
          post.server_side_encryption_customer_key_starts_with('prefix')
          expect(
            post.fields['x-amz-server-side-encryption-customer-key']
          ).to be(nil)
          expect(
            post.fields['x-amz-server-side-encryption-customer-key-MD5']
          ).to be(nil)
          expect(policy(post)).to include(
            [
              'starts-with', '$x-amz-server-side-encryption-customer-key',
              'prefix'
            ]
          )
        end

        it 'accepts ${filename} to eq' do
          post.metadata('orig-filename' => '${filename}')
          expect(post.fields['x-amz-meta-orig-filename']).to eq('${filename}')
          expect(policy(post)).to include(
            ['starts-with', '$x-amz-meta-orig-filename', '']
          )
        end

        it 'accepts ${filename} and removes it from starts-with' do
          post = PresignedPost.new(creds, region, bucket)
          post.key('prefix/${filename}')
          expect(post.fields['key']).to eq('prefix/${filename}')
          expect(policy(post)).to include(['starts-with', '$key', 'prefix/'])
        end

        it 'requires ${filename} to be at the end of the value' do
          post = PresignedPost.new(creds, region, bucket)
          expect do
            post.key('${filename}/foo')
          end.to raise_error(ArgumentError)
        end

        it 'accepts a list of fields to white-list' do
          post.allow_any(['foo']).allow_any('Filename')
          expect(post.fields['foo']).to be(nil)
          expect(post.fields['Filename']).to be(nil)
          expect(policy(post)).to include(['starts-with', '$foo', ''])
          expect(policy(post)).to include(['starts-with', '$Filename', ''])
        end
      end

      describe '#fields' do
        it 'returns a hash with a policy document and signature' do
          now = Time.now
          allow(Time).to receive(:now).and_return(now)
          post.key('key')
          expect(post.fields.keys).to eq(
            [
              'key', 'policy', 'x-amz-credential', 'x-amz-algorithm',
              'x-amz-date', 'x-amz-signature'
            ]
          )
          expect(post.fields['x-amz-algorithm']).to eq('AWS4-HMAC-SHA256')
          expect(post.fields['x-amz-credential']).to eq(
            "akid/#{now.strftime('%Y%m%d')}/#{region}/s3/aws4_request"
          )
          expect(post.fields['x-amz-date']).to eq(
            now.strftime('%Y%m%dT%H%M%SZ')
          )
        end

        it 'generates a valid signature' do
          # test example from http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-post-example.html
          creds = Credentials.new(
            'AKIAIOSFODNN7EXAMPLE',
            'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY'
          )
          region = 'us-east-1'
          bucket = 'examplebucket'
          now = Time.parse('20130806T000000Z')
          allow(Time).to receive(:now).and_return(now)
          post = PresignedPost.new(creds, region, bucket, key: 'key')
          policy = <<-POLICY.strip
            eyAiZXhwaXJhdGlvbiI6ICIyMDEzLTA4LTA3VDEyOjAwOjAwLjAwMFoiLA0KICAiY29uZGl0aW9ucyI6IFsNCiAgICB7ImJ1Y2tldCI6ICJleGFtcGxlYnVja2V0In0sDQogICAgWyJzdGFydHMtd2l0aCIsICIka2V5IiwgInVzZXIvdXNlcjEvIl0sDQogICAgeyJhY2wiOiAicHVibGljLXJlYWQifSwNCiAgICB7InN1Y2Nlc3NfYWN0aW9uX3JlZGlyZWN0IjogImh0dHA6Ly9leGFtcGxlYnVja2V0LnMzLmFtYXpvbmF3cy5jb20vc3VjY2Vzc2Z1bF91cGxvYWQuaHRtbCJ9LA0KICAgIFsic3RhcnRzLXdpdGgiLCAiJENvbnRlbnQtVHlwZSIsICJpbWFnZS8iXSwNCiAgICB7IngtYW16LW1ldGEtdXVpZCI6ICIxNDM2NTEyMzY1MTI3NCJ9LA0KICAgIFsic3RhcnRzLXdpdGgiLCAiJHgtYW16LW1ldGEtdGFnIiwgIiJdLA0KDQogICAgeyJ4LWFtei1jcmVkZW50aWFsIjogIkFLSUFJT1NGT0ROTjdFWEFNUExFLzIwMTMwODA2L3VzLWVhc3QtMS9zMy9hd3M0X3JlcXVlc3QifSwNCiAgICB7IngtYW16LWFsZ29yaXRobSI6ICJBV1M0LUhNQUMtU0hBMjU2In0sDQogICAgeyJ4LWFtei1kYXRlIjogIjIwMTMwODA2VDAwMDAwMFoiIH0NCiAgXQ0KfQ==
          POLICY
          allow(post).to receive(:policy).and_return(policy)
          expect(post.fields['x-amz-signature']).to eq(
            '21496b44de44ccb73d545f1a995c68214c9cb0d41c45a17a5daeec0b1a6db047'
          )
        end

        it 'adds x-amz-security-token as appropriate' do
          creds = Credentials.new('key', 'secret', 'token')
          post = PresignedPost.new(creds, region, bucket).key('key')
          expect(post.fields['x-amz-security-token']).to eq('token')
          expect(policy(post)).to include('x-amz-security-token' => 'token')
        end

        it 'sets the storage class if requested' do
          creds = Credentials.new('key', 'secret', 'token')
          post = PresignedPost.new(
            creds,
            region,
            bucket
          ).key('key').storage_class('REDUCED_REDUNDANCY')
          expect(post.fields['x-amz-storage-class']).to eq('REDUCED_REDUNDANCY')
        end
      end
    end
  end
end
