# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module H2

      describe Connection do
        let(:conn) { Connection.new }

        describe '#new_stream' do

          it 'returns a new HTTP2 stream' do
            expect(conn.new_stream).to be_kind_of(HTTP2::Stream)
          end

        end

        describe '#connect' do
          # Self-signed cert for `host`, trusted via ssl_ca_bundle.
          def connect_with_cert_for(host, **options)
            key = OpenSSL::PKey::RSA.new(2048)
            cert = OpenSSL::X509::Certificate.new
            cert.version = 2
            cert.subject = cert.issuer = OpenSSL::X509::Name.parse("/CN=#{host}")
            cert.public_key = key.public_key
            cert.not_before = Time.now - 60
            cert.not_after = Time.now + 60
            cert.add_extension(OpenSSL::X509::ExtensionFactory.new.create_extension('subjectAltName', "DNS:#{host}"))
            cert.sign(key, OpenSSL::Digest.new('SHA256'))
            ca_file = Tempfile.new('ca').tap { |f| f.write(cert.to_pem) && f.flush }
            server = OpenSSL::SSL::SSLServer.new(TCPServer.new('127.0.0.1', 0), OpenSSL::SSL::SSLContext.new.tap { |c| c.cert = cert; c.key = key })
            thread = Thread.new { server.accept rescue nil }
            conn = Connection.new(ssl_ca_bundle: ca_file.path, **options)
            conn.connect(URI("https://localhost:#{server.to_io.addr[1]}"))
          ensure
            conn&.close!
            server&.close
            thread&.join(5)
          end

          it 'accepts a certificate for the endpoint host' do
            expect { connect_with_cert_for('localhost') }.not_to raise_error
          end

          it 'rejects a certificate for a different host' do
            expect { connect_with_cert_for('example.com') }.to raise_error(OpenSSL::SSL::SSLError, /hostname/i)
          end

          it 'skips the hostname check when ssl_verify_peer is false' do
            expect { connect_with_cert_for('example.com', ssl_verify_peer: false) }.not_to raise_error
          end
        end

      end
    end
  end
end
