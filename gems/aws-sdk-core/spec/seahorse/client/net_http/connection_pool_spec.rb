# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module NetHttp
      describe ConnectionPool do
        describe "#http_proxy_parts (private)" do
          it "with a regular URI" do
            http_proxy = URI.parse('http://proxy.com:8080')
            pool = described_class.new(:http_proxy => http_proxy)
            expect(pool.send(:http_proxy_parts)).to eq ["proxy.com", 8080, nil, nil]
          end

          it "with a URI with username and password" do
            http_proxy = URI.parse('http://username:password@proxy.com:8080')
            pool = described_class.new(:http_proxy => http_proxy)
            expect(pool.send(:http_proxy_parts)).to eq ["proxy.com", 8080, "username", "password"]
          end

          it "with a URI with username and password with special characters" do
            http_proxy = URI.parse('http://%3A%40%2Fusername:password%3A%40%2F@proxy.com:8080')
            pool = described_class.new(:http_proxy => http_proxy)
            expect(pool.send(:http_proxy_parts)).to eq ["proxy.com", 8080, ":@/username", "password:@/"]
          end
        end

        describe ".for" do
          it "returns the same connection pool" do
            first_pool = described_class.for(:http_wire_trace => true)
            second_pool = described_class.for(:http_wire_trace => true)
            expect(first_pool).to eq second_pool
          end
        end

        describe "#session_for" do
          let(:pool) { described_class.new }
          let(:endpoint) { URI.parse('http://example.com') }

          describe "timeout error handling" do
            it "clears endpoint pool on Net::OpenTimeout" do
              mock_session = double('session')
              allow(pool).to receive(:start_session).and_return(mock_session)
              allow(mock_session).to receive(:read_timeout=)
              allow(mock_session).to receive(:continue_timeout=)
              allow(mock_session).to receive(:respond_to?).with(:continue_timeout=).and_return(false)
              allow(mock_session).to receive(:finish)

              # First call succeeds and session gets added to pool
              pool.session_for(endpoint) { |s| }
              expect(pool.size).to eq(1)

              # Second call raises Net::OpenTimeout
              expect(mock_session).to receive(:finish)
              expect do
                pool.session_for(endpoint) { |s| raise Net::OpenTimeout.new }
              end.to raise_error(Net::OpenTimeout)

              # Pool should be cleared for this endpoint
              expect(pool.size).to eq(0)
            end

            it "clears endpoint pool on Timeout::Error" do
              mock_session = double('session')
              allow(pool).to receive(:start_session).and_return(mock_session)
              allow(mock_session).to receive(:read_timeout=)
              allow(mock_session).to receive(:continue_timeout=)
              allow(mock_session).to receive(:respond_to?).with(:continue_timeout=).and_return(false)
              allow(mock_session).to receive(:finish)

              # First call succeeds and session gets added to pool
              pool.session_for(endpoint) { |s| }
              expect(pool.size).to eq(1)

              # Second call raises Timeout::Error
              expect(mock_session).to receive(:finish)
              expect do
                pool.session_for(endpoint) { |s| raise Timeout::Error.new }
              end.to raise_error(Timeout::Error)

              # Pool should be cleared for this endpoint
              expect(pool.size).to eq(0)
            end

            it "does not clear pool for other errors" do
              mock_session = double('session')
              allow(pool).to receive(:start_session).and_return(mock_session)
              allow(mock_session).to receive(:read_timeout=)
              allow(mock_session).to receive(:continue_timeout=)
              allow(mock_session).to receive(:respond_to?).with(:continue_timeout=).and_return(false)
              allow(mock_session).to receive(:finish)

              # First call succeeds and session gets added to pool
              pool.session_for(endpoint) { |s| }
              expect(pool.size).to eq(1)

              # Second call raises different error
              expect(mock_session).to receive(:finish)
              expect do
                pool.session_for(endpoint) { |s| raise SocketError.new }
              end.to raise_error(SocketError)

              # Pool should still have the session since it wasn't a timeout error
              expect(pool.size).to eq(1)
            end
          end
        end

        describe "#clear_endpoint!" do
          let(:pool) { described_class.new }
          let(:endpoint) { URI.parse('http://example.com') }

          it "clears sessions for a specific endpoint" do
            mock_session = double('session')
            allow(pool).to receive(:start_session).and_return(mock_session)
            allow(mock_session).to receive(:read_timeout=)
            allow(mock_session).to receive(:continue_timeout=)
            allow(mock_session).to receive(:respond_to?).with(:continue_timeout=).and_return(false)
            allow(mock_session).to receive(:finish)

            # Add session to pool
            pool.session_for(endpoint) { |s| }
            expect(pool.size).to eq(1)

            # Clear the endpoint
            expect(mock_session).to receive(:finish)
            pool.clear_endpoint!(endpoint)
            expect(pool.size).to eq(0)
          end

          it "handles non-existent endpoints gracefully" do
            endpoint = URI.parse('http://nonexistent.com')
            expect { pool.clear_endpoint!(endpoint) }.not_to raise_error
          end
        end
      end
    end
  end
end
