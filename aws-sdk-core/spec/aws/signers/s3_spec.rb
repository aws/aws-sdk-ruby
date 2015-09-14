require 'spec_helper'

module Aws
  module Signers
    describe S3 do
      describe '#canonicalized_resource' do

        it 'does not truncate the key when it is prefixed with the bucket name' do
          creds = Aws::Credentials.new('akid', 'secret')
          params = { bucket: 'bucket-name', key: 'bucket-name/key' }
          force_path_style = false
          signer = Aws::Signers::S3.new(creds, params, force_path_style)
          resource = signer.canonicalized_resource(URI.parse('http://bucket-name.s3.amazonaws.com/bucket-name/key'))
          expect(resource).to eq('/bucket-name/bucket-name/key')
        end

        it 'does not stutter the bucket name when using path style' do
          creds = Aws::Credentials.new('akid', 'secret')
          params = { bucket: 'bucket-name', key: 'bucket-name/key' }
          force_path_style = true
          signer = Aws::Signers::S3.new(creds, params, force_path_style)
          resource = signer.canonicalized_resource(URI.parse('http://s3.amazonaws.com/bucket-name/bucket-name/key'))
          expect(resource).to eq('/bucket-name/bucket-name/key')
        end

      end
    end
  end
end
