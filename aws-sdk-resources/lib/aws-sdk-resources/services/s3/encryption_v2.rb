module Aws
  module S3
    module EncryptionV2

      AES_GCM_TAG_LEN_BYTES = 16
      EC_USER_AGENT = 'S3CryptoV2'

      autoload :Client, 'aws-sdk-resources/services/s3/encryptionV2/client'
      autoload :DecryptHandler, 'aws-sdk-resources/services/s3/encryptionV2/decrypt_handler'
      autoload :DefaultCipherProvider, 'aws-sdk-resources/services/s3/encryptionV2/default_cipher_provider'
      autoload :DefaultKeyProvider, 'aws-sdk-resources/services/s3/encryptionV2/default_key_provider'
      autoload :EncryptHandler, 'aws-sdk-resources/services/s3/encryptionV2/encrypt_handler'
      autoload :Errors, 'aws-sdk-resources/services/s3/encryptionV2/errors'
      autoload :IOEncrypter, 'aws-sdk-resources/services/s3/encryptionV2/io_encrypter'
      autoload :IOAuthDecrypter, 'aws-sdk-resources/services/s3/encryptionV2/io_auth_decrypter'
      autoload :IODecrypter, 'aws-sdk-resources/services/s3/encryptionV2/io_decrypter'
      autoload :KeyProvider, 'aws-sdk-resources/services/s3/encryptionV2/key_provider'
      autoload :KmsCipherProvider, 'aws-sdk-resources/services/s3/encryptionV2/kms_cipher_provider'
      autoload :Materials, 'aws-sdk-resources/services/s3/encryptionV2/materials'
      autoload :Utils, 'aws-sdk-resources/services/s3/encryptionV2/utils'

    end
  end
end
