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
          ["abc\xFF", '=?utf-8?B?gA==?='].each do |matdesc|
            it "raises DecryptionError (#{matdesc.inspect})" do
              expect do
                provider.decryption_cipher('x-amz-matdesc' => matdesc)
              end.to raise_error(Errors::DecryptionError, /Malformed material description/)
            end
          end
        end
      end
    end
  end
end
