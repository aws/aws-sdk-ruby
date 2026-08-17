require_relative '../spec_helper'

module Aws
  module S3
    module EncryptionV2
      describe KmsCipherProvider do
        let(:provider) do
          KmsCipherProvider.new(
            kms_key_id: 'kms-key-id',
            kms_client: KMS::Client.new(stub_responses: true),
            key_wrap_schema: :kms_context,
            content_encryption_schema: :aes_gcm_no_padding
          )
        end

        describe '#decryption_cipher' do
          # A malformed material description raises DecryptionError.
          ['=?utf-8?B?gA==?=', '=?utf-8?B?/w==?=', '=?utf-8?B?YWJj/w==?=', "abc\xFF"].each do |matdesc|
            it "raises DecryptionError (#{matdesc.inspect})" do
              expect do
                provider.decryption_cipher('x-amz-matdesc' => matdesc)
              end.to raise_error(Errors::DecryptionError, /Malformed material description/)
            end
          end

          # Valid JSON that isn't an object, or an absent matdesc, is malformed.
          ['123', nil].each do |matdesc|
            it "raises DecryptionError (#{matdesc.inspect})" do
              envelope = {
                'x-amz-matdesc' => matdesc,
                'x-amz-wrap-alg' => 'kms+context',
                'x-amz-cek-alg' => 'AES/GCM/NoPadding'
              }
              expect do
                provider.decryption_cipher(envelope)
              end.to raise_error(Errors::DecryptionError, /Malformed material description/)
            end
          end
        end
      end
    end
  end
end
