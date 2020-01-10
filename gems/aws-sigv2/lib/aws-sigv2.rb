require_relative 'aws-sigv2/credentials'
require_relative 'aws-sigv2/signer'

module Aws
  # This is a legacy signer. You should AWS signature version
  # 4 instead, as provided by the `aws-sigv4` gem.
  #
  # This exists primarily to support SimpleDB which does not
  # accept version 4 signatures.
  #
  # ## Known Limitations
  #
  # * This signer is only compatible with AWS services that
  #   use the Query protocol. Only around 18 of the 80+
  #   AWS services use this protocol.
  #
  # * **This signer is not capable of producing a valid
  #   signature for Amazon S3.** It is not aware of
  #   S3 sub-resources and how to properly insert them
  #   into the URI path. Amazon S3 supports signature
  #   version 4 in every region, and so `aws-sigv4` should
  #   be used instead.
  #
  # * This signer does not provide a method to compute
  #   pre-signed URLs. This is available in the
  #   `aws-sigv4` gem.
  #
  module Sigv2
  end
end
