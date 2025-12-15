# KDF KAT Generator

This directory contains tools for generating Known Answer Test (KAT) JSON entries for the HKDF encryption implementation.

## Files

- `generate_kdf_kat.rb` - Generator script for creating KAT entries
- `kdf_kat_spec.rb` - Test spec that validates KAT entries
- `kdf_kat.json` - KAT test vectors

## Usage

### Generate a Single Entry

```ruby
ruby fixtures/encryption/generate_kdf_kat.rb
```

This generates a new KAT entry with random keys and "Hello, World!" as plaintext.

### Generate Multiple Entries

```ruby
ruby -r './fixtures/encryption/generate_kdf_kat.rb' -e "
include Aws::S3::EncryptionV3
entries = KdfKatGenerator.generate_multiple(count: 2, plaintext: 'Test data')
KdfKatGenerator.print_json_array(entries)
"
```

### Generate Entry with Specific Keys

```ruby
ruby -r './fixtures/encryption/generate_kdf_kat.rb' -e "
include Aws::S3::EncryptionV3
data_key = KdfKatGenerator.from_hex('80d90dc4cc7e77d8a6332efa44eba56230a7fe7b89af37d1e501ab2e07c0a163')
message_id = KdfKatGenerator.from_hex('b8ea76bed24c7b85382a148cb9dcd1cfdfb765f55ded4dfa6e0c4c79')
entry = KdfKatGenerator.generate_kat_entry(
  plaintext: 'Your plaintext here',
  comment: 'Your comment here',
  data_key: data_key,
  message_id: message_id
)
KdfKatGenerator.print_json(entry)
"
```

## KAT JSON Format

Each KAT entry contains:

### Required Fields (for key derivation tests)

- `comment` - Description of the test case
- `data_key` - 32-byte data key (hex encoded)
- `message_id` - 28-byte message ID (hex encoded)
- `encryption_key` - 32-byte derived encryption key (hex encoded)
- `commitment_key` - 28-byte derived commitment key (hex encoded)

### Optional Fields (for encryption/decryption tests)

- `plaintext` - Plaintext data (hex encoded)
- `ciphertext` - Encrypted data (hex encoded)
- `auth_tag` - 16-byte GCM authentication tag (hex encoded)

## Test Behavior

The test spec `kdf_kat_spec.rb` has backward compatibility:

1. **All entries** are tested for correct key derivation (encryption_key and commitment_key)
2. **Only entries with plaintext** are additionally tested for:
   - Encryption: Verify that encrypting the plaintext produces the expected ciphertext and auth_tag
   - Decryption: Verify that decrypting the ciphertext recovers the original plaintext

This allows old KAT entries (without encryption fields) to continue passing while new entries can include full encryption tests.

## Algorithm Details

The generator uses:

- **Algorithm Suite**: `ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY`
- **Cipher**: AES-256-GCM
- **Key Derivation**: HKDF with SHA-512
- **IV**: All zeros (12 bytes) - as specified for this algorithm suite
- **Auth Data**: Algorithm suite ID (0x0073)

