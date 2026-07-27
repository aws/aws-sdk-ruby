require_relative '../spec_helper'

module Aws
  module S3
    module EncryptionV3
      describe KmsCipherProvider do
        let(:provider) do
          KmsCipherProvider.new(
            kms_key_id: 'kms-key-id',
            kms_client: KMS::Client.new(stub_responses: true),
            key_wrap_schema: :kms_context,
            content_encryption_schema: :alg_aes_256_gcm_hkdf_sha512_commit_key
          )
        end

        describe '#decryption_cipher' do
          # A malformed material description raises DecryptionError.
          ['=?utf-8?B?gA==?=', '=?utf-8?B?/w==?=', '=?utf-8?B?YWJj/w==?=', "abc\xFF", '123'].each do |matdesc|
            it "raises DecryptionError (#{matdesc.inspect})" do
              expect do
                provider.decryption_cipher('x-amz-w' => '12', 'x-amz-t' => matdesc)
              end.to raise_error(Errors::DecryptionError, /Malformed material description/)
            end
          end
        end
      end
    end
  end
end
