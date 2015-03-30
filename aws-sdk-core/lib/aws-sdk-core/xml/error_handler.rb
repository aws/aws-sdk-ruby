require 'cgi'

module Aws
  module Xml
    class ErrorHandler < Seahorse::Client::Handler

      def call(context)
        @handler.call(context).on(300..599) do |response|
          response.error = error(context)
          response.data = nil
        end
      end

      private

      def error(context)
        if empty_body?(context)
          error_code = empty_body_error_code(context)
          error_message = ''
        else
          error_code, error_message = extract_error(context)
        end
        svc = context.client.class.name.split('::')[1]
        errors_module = Aws.const_get(svc).const_get(:Errors)
        errors_module.error_class(error_code).new(context, error_message)
      end

      def empty_body?(context)
        context.http_response.body_contents.empty?
      end

      def empty_body_error_code(context)
        status_code = context.http_response.status_code
        {
          302 => 'MovedTemporarily',
          304 => 'NotModified',
          400 => 'BadRequest',
          403 => 'Forbidden',
          404 => 'NotFound',
          412 => 'PreconditionFailed',
          413 => 'RequestEntityTooLarge',
        }[status_code] || "Http#{status_code}Error"
      end

      def extract_error(context)
        xml = context.http_response.body_contents
        code = xml.match(/<Code>(.+?)<\/Code>/)[1]
        message = xml.match(/<Message>(.+?)<\/Message>/)[1]
        message = CGI.unescape_html(message)
        [remove_prefix(context, code), message]
      end

      def remove_prefix(context, error_code)
        if prefix = context.config.api.metadata('errorPrefix')
          error_code.sub(/^#{prefix}/, '')
        else
          error_code
        end
      end

    end
  end
end
