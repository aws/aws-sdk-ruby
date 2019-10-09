# encoding: UTF-8
$:.unshift(File.expand_path('../../lib', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-eventstream/lib',  __FILE__))

require 'rspec'
require 'aws-sigv4'
require 'aws-eventstream'

module SpecHelper
  class << self

    def debug(msg)
      $stdout.puts("\n#{msg}") if ENV['DEBUG']
    end

    # @param [String] request
    # @return [Hash]
    def parse_request(request)
      lines = request.lines.to_a

      http_method, request_uri, _ = lines.shift.split

      # escape the uri
      uri_path, querystring = request_uri.split('?', 2)
      if querystring
        querystring = querystring.split('&').map do |key_value|
          key, value = key_value.split('=')
          key = Aws::Sigv4::Signer.uri_escape(key)
          value = Aws::Sigv4::Signer.uri_escape(value.to_s)
          "#{key}=#{value}"
        end.join('&')
      end

      request_uri = Aws::Sigv4::Signer.uri_escape_path(uri_path)
      request_uri += '?' + querystring if querystring

      # extract headers
      headers = Hash.new { |h,k| h[k] = [] }
      prev_key = nil
      until lines.empty?
        line = lines.shift
        if line.strip == ''
          break
        elsif line =~ /^\s+/ # multiline header value
          headers[prev_key] << line.strip
        else
          key, value = line.strip.split(':')
          headers[key] << value
          prev_key = key
        end
      end
      headers = headers.inject({}) do |h,(k,v)|
        h[k] = headers[k].join(',')
        h
      end

      {
        http_method: http_method,
        url: "https://#{headers['Host']}#{request_uri}",
        headers: headers,
        body: lines.join,
      }
    end
  end
end
