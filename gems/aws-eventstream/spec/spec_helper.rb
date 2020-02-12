# encoding: UTF-8
$:.unshift(File.expand_path('../../lib', __FILE__))

require 'json'
require 'rspec'
require 'base64'
require 'aws-eventstream'

module SpecHelper
  class << self

    def expected_decoded_message(path)
       expect_path = File.join(
         File.expand_path('../fixtures/decoded/positive', __FILE__),
         File.basename(path)
       )
       convert_msg(expect_path)
    end

    def expected_decoded_error(path)
       expect_path = File.join(
         File.expand_path('../fixtures/decoded/negative', __FILE__),
         File.basename(path)
       )
       convert_error(expect_path)
    end

    def convert_msg(path)
      hash = JSON.load(File.read(path))
      Aws::EventStream::Message.new(
        headers: build_headers(hash['headers']),
        payload: StringIO.new(Base64.decode64(hash['payload']))
      )
    end

    def convert_error(path)
      file = File.open(path, 'r') {|f| f.read}
      file.lines.to_a[0]
    end

    private

    def build_headers(headers)
      headers.inject({}) do |hash, ctx|
        value = ctx['value']
        if ctx['value'].is_a? String
          value = Base64.decode64(ctx['value'])
        end
        hash[ctx['name']] = Aws::EventStream::HeaderValue.new(
          value: value,
          type: Aws::EventStream::Types.types[ctx['type']]
        )
        hash
      end
    end

  end

end
