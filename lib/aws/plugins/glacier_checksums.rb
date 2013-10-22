require 'openssl'

module Aws
  module Plugins

    # Computes the `:checksum` of the HTTP request body for operations
    # that require the `X-Amz-Sha256-Tree-Hash` header.  This includes:
    #
    # * `:complete_multipart_upload`
    # * `:upload_archive`
    # * `:upload_multipart_part`
    #
    # The `:upload_archive` and `:upload_multipart_part` operations
    # accept a `:checksum` request paramter.  If this param
    # is present, then the checksum is assumed to be the proper
    # tree hash of the file to be uploaded.  If this param is
    # not present, then the required tree hash checksum will
    # be generated.
    #
    # The `:complete_multipart_upload` operation does not accept
    # a checksum and this plugin will always compute this of the
    # HTTP request body on your behalf.
    class GlacierChecksums < Seahorse::Client::Plugin

      CHECKSUM_OPERATIONS = [
        :complete_multipart_upload,
        :upload_archive,
        :upload_multipart_part,
      ]

      class Handler < Seahorse::Client::Handler

        HASH = 'X-Amz-Content-Sha256'
        TREE_HASH = 'X-Amz-Sha256-Tree-Hash'

        def call(context)
          unless context.http_request.headers[TREE_HASH]
            populate_checksum_headers(context.http_request)
          end
          @handler.call(context)
        end

        private

        def populate_checksum_headers(http_req)
          compute_checksums(http_req.body) do |hash, tree_hash|
            http_req.headers[HASH] = hash
            http_req.headers[TREE_HASH] = tree_hash
          end
        end

        # Computes two checksums of the body.  The tree hash is required
        # by Glacier for operations where you upload a file.  The other
        # checksum is required by signature version 4.  We compute both
        # here so the sigv4 signer does not need to re-read the body.
        def compute_checksums(body, &block)

          digest = OpenSSL::Digest::Digest.new('sha256')
          tree_digest = OpenSSL::Digest::Digest.new('sha256')
          tree_parts = []

          until body.eof?

            chunk = body.read(1024 * 1024) # read 1MB
            tree_parts << tree_digest.update(chunk).digest
            tree_digest.reset

            digest.update(chunk)

          end

          body.rewind

          yield(digest.to_s, compute_tree_hash(tree_parts))

        end

        def compute_tree_hash hashes
          digest = OpenSSL::Digest::Digest.new('sha256')
          until hashes.count == 1
            hashes = hashes.each_slice(2).map do |h1,h2|
              digest.reset
              if h2
                digest.update(h1)
                digest.update(h2)
                digest.digest
              else
                h1
              end
            end
          end
          hashes.first.bytes.map{|x| x.to_i.to_s(16).rjust(2,'0')}.join('')
        end
      end

      handler(Handler, operations: CHECKSUM_OPERATIONS)

    end
  end
end
