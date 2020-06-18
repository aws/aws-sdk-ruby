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
      end
    end
  end
end
