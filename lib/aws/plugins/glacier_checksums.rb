require 'openssl'

module Aws
  module Plugins
    class GlacierChecksums < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          if context.params[:body]
            hash, tree_hash = compute_checksums(context.params[:body])
            context.http_request.headers['X-Amz-Content-Sha256'] = hash
            context.params[:checksum] ||= tree_hash
          end
          @handler.call(context)
        end

        private

        # Computes two sha256 checksums in a single pass of the data:
        #
        # * a hash of the entire payload
        # * a tree hash of the entire payload
        #
        # The tree hash is required by Glacier operations that accept
        # a file payload.  The sha256 digest (non-tree-hash) is required
        # by sigv4.  We compute this at the same time to eliminate
        # an extra pass of reading the body.
        #
        def compute_checksums(data)

          data = StringIO.new(data) if data.is_a?(String)

          digest = OpenSSL::Digest::Digest.new('sha256')
          tree_digest = OpenSSL::Digest::Digest.new('sha256')
          tree_parts = []

          until data.eof?

            chunk = data.read(1024 * 1024) # read 1MB
            tree_parts << tree_digest.update(chunk).digest
            tree_digest.reset

            digest.update(chunk)

          end

          data.rewind

          [digest.to_s, compute_tree_hash(tree_parts)]

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

      handler(Handler, step: :initialize, operations: [
        :upload_archive,
        :upload_multipart_part,
        :complete_multipart_upload,
      ])

    end
  end
end
