# frozen_string_literal: true

require 'rspec'

require 'aws-sigv4'

module SpecHelper
  class << self
    def debug(msg)
      $stdout.puts("\n#{msg}") if ENV['AWS_SIGV4_SPEC_DEBUG']
    end

    # @param [String] request
    # @return [Hash]
    def parse_request(request)
      lines = request.lines.to_a

      req_def = lines.shift
      http_method, request_uri = req_def.split(' ', 2)
      request_uri = request_uri.gsub(" HTTP/1.1\n", '')

      # escape the uri
      uri_path, querystring = request_uri.split('?', 2)
      if querystring
        querystring = querystring.split('&').map do |key_value|
          key, value = key_value.split('=')
          key = CGI.escape(CGI.unescape(key))
          value = CGI.escape(CGI.unescape(value.to_s))
          "#{key}=#{value}"
        end.join('&')
      end

      request_uri = Aws::SigV4::Signer.uri_escape_path(uri_path)
      request_uri += "?#{querystring}" if querystring

      # extract headers
      headers = Hash.new { |h, k| h[k] = [] }
      prev_key = nil
      until lines.empty?
        line = lines.shift
        break if line.strip == ''

        if line =~ /^\s+/ # multiline header value
          headers[prev_key][0] = "#{headers[prev_key][0]} #{line.strip}"
        else
          key, value = line.strip.split(':')
          headers[key] << value
          prev_key = key
        end
      end
      headers = headers.each_with_object({}) do |(k, _v), h|
        h[k] = headers[k].join(',')
      end

      {
        http_method: http_method,
        url: "https://#{headers['Host']}#{request_uri}",
        headers: headers,
        body: lines.join
      }
    end

    # @param [String] query
    # @return [Hash]
    def split_query_to_params(query)
      params = {}
      query.split('&').each do |p|
        k, v = p.split('=')
        if params.key? k
          if params[k].is_a?(Array)
            params[k] << v
          else
            params[k] = [params[k], v]
          end
        else
          params[k] = v
        end
      end
      params
    end

    # @param [Hash] headers
    # @return [Hash]
    def downcase_headers(headers)
      (headers || {}).transform_keys(&:downcase)
    end
  end
end
