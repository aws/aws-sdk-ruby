module Aws
  module S3
    module Encryption

      autoload :Client, 'aws-sdk-resources/services/s3/encryption/client'
      autoload :CryptoMaterials, 'aws-sdk-resources/services/s3/encryption/crypto_materials'
      autoload :DecryptHandler, 'aws-sdk-resources/services/s3/encryption/decrypt_handler'
      autoload :DefaultKeyProvider, 'aws-sdk-resources/services/s3/encryption/default_key_provider'
      autoload :EncryptHandler, 'aws-sdk-resources/services/s3/encryption/encrypt_handler'
      autoload :Errors, 'aws-sdk-resources/services/s3/encryption/errors'
      autoload :IOEncrypter, 'aws-sdk-resources/services/s3/encryption/io_encrypter'
      autoload :IODecrypter, 'aws-sdk-resources/services/s3/encryption/io_decrypter'
      autoload :KeyProvider, 'aws-sdk-resources/services/s3/encryption/key_provider'
      autoload :KmsSecuredKeyCryptoMaterials, 'aws-sdk-resources/services/s3/encryption/kms_secured_key_crypto_materials'
      autoload :Materials, 'aws-sdk-resources/services/s3/encryption/materials'
      autoload :Utils, 'aws-sdk-resources/services/s3/encryption/utils'

    end
  end
end
