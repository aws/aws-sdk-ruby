require 'erb'

module Aws
  module Api
    class Documenter

      def initialize(svc_module, docs_path)
        @svc_module = svc_module
        @svc_name = svc_module.name.split('::').last
        @client_class = svc_module.const_get(:Client)
        Aws::Api::Docstrings.apply(@client_class, docs_path)
        @api = @client_class.api
        @full_name = @api.metadata('serviceFullName')
        @error_names = @api.operations.map {|_,o| o.errors.map(&:name) }
        @error_names = @error_names.flatten.uniq.sort
        @namespace = YARD::Registry['Aws']
      end

      def apply
        document_service
        document_client
        document_errors
      end

      private

      def document_service
        yard_mod = YARD::CodeObjects::ModuleObject.new(@namespace, @svc_name)
        yard_mod.docstring = service_docstring
        yard_mod.docstring.add_tag(YARD::Tags::Tag.new(:service, @svc_name))
        @namespace = yard_mod
      end

      def service_docstring
        path = "doc-src/services/#{@svc_name}/service.md"
        path = 'doc-src/services/default/service.md' unless File.exists?(path)
        template = read(path)
        svc_name = @svc_name
        api = @api
        full_name = @full_name
        ERB.new(template).result(binding)
      end

      def document_errors
        yard_mod = YARD::CodeObjects::ModuleObject.new(@namespace, 'Errors')
        yard_mod.docstring = errors_docstring

        base_error = YARD::CodeObjects::ClassObject.new(yard_mod, 'ServiceError')
        base_error.docstring = "Base class for all Aws::#{@svc_name} errors."
        base_error.superclass = YARD::Registry['Aws::Errors::ServiceError']

        @error_names.each do |error_name|
          error_klass = YARD::CodeObjects::ClassObject.new(yard_mod, error_name)
          error_klass.superclass = base_error
        end
      end

      def errors_docstring
        path = "doc-src/services/#{@svc_name}/errors.md"
        path = 'doc-src/services/default/errors.md' unless File.exists?(path)
        template = read(path)
        svc_name = @svc_name
        api = @api
        full_name = @full_name
        known_errors = @error_names
        ERB.new(template).result(binding)
      end

      def document_client
        yard_class = YARD::CodeObjects::ClassObject.new(@namespace, 'Client')
        yard_class.superclass = YARD::Registry['Seahorse::Client::Base']
        yard_class.docstring = client_docstring
        document_client_constructor(yard_class)
        document_client_operations(yard_class)
        document_client_waiters(yard_class)
      end

      def client_docstring
        path = "doc-src/services/#{@svc_name}/client.md"
        path = 'doc-src/services/default/client.md' unless File.exists?(path)
        render(path)
      end

      def render(path)
        svc_name = @svc_name
        api = @api
        full_name = @full_name
        ERB.new(File.read(path)).result(binding)
      end

      def document_client_constructor(namespace)
        constructor = YARD::CodeObjects::MethodObject.new(namespace, :initialize)
        constructor.group = 'Constructor'
        constructor.scope = :instance
        constructor.parameters << ['options', '{}']
        constructor.docstring = client_constructor_docstring
      end

      def client_constructor_docstring
        <<-DOCS.strip
Constructs an API client.
#{client_constructor_options}
@return [#{@client_class.name}] Returns an API client.
        DOCS
      end

      def client_constructor_options
        options = {}
        @client_class.plugins.each do |plugin|
          if p = YARD::Registry[plugin.name]
            p.tags.each do |tag|
              if tag.tag_name == 'seahorse_client_option'
                option_name = tag.text.match(/.+(:\w+)/)[1]
                option_text = "@option options " + tag.text.split("\n").join("\n  ")
                options[option_name] = option_text +
                  "  See {#{plugin.name}} for more details."
              end
            end
          end
        end
        options.sort_by { |k,v| k }.map(&:last).join("\n")
      end

      def document_client_operations(namespace)
        @api.operations.each do |method_name, operation|
          document_client_operation(namespace, method_name, operation)
        end
      end

      def document_client_operation(namespace, method_name, operation)
        m = YARD::CodeObjects::MethodObject.new(namespace, method_name)
        m.group = 'Service Operations'
        m.scope = :instance
        m.parameters << ['params', '{}']
        m.docstring = operation_docstring(method_name, operation)
      end

      def operation_docstring(method_name, operation)

        documentor = OperationDocumenter.new(
          svc_var_name: @svc_name.downcase,
          method_name: method_name,
          operation: operation)

        tabs = Tabulator.new.tap do |t|
          t.tab(method_name, 'Formatting Example') do
            "<pre><code>#{documentor.example}</code></pre>"
          end
          t.tab(method_name, 'Request Parameters') do
            documentor.input
          end
          t.tab(method_name, 'Response Structure') do
            documentor.output
          end
        end

        errors = (operation.errors || []).map { |shape| shape.name }
        errors = errors.map { |e| "@raise [Errors::#{e}]" }.join("\n")

        docstring = <<-DOCSTRING.strip
<p>Calls the #{operation.name} operation.<p>
#{documentor.api_ref(operation)}
#{tabs}
@param [Hash] params ({})
@return [PageableResponse]
#{errors}
        DOCSTRING
      end

      def document_client_waiters(yard_class)
        m = YARD::CodeObjects::MethodObject.new(yard_class, :wait_until)
        m.scope = :instance
        m.parameters << ['waiter_name', nil]
        m.parameters << ['params', '{}']
        m.docstring = YARD::Registry['Aws::ClientWaiters#wait_until'].docstring

        waiters = @client_class.waiters.waiter_names.sort.inject('') do |w,name|
          waiter = @client_class.waiters.waiter(name)
          operation = waiter.poller.operation_name
          w << "<tr><td><tt>:#{name}</tt></td><td>{##{operation}}</td><td>#{waiter.delay}</td><td>#{waiter.max_attempts}</td></tr>"
        end
        docstring = <<-DOCSTRING
Returns the list of supported waiters. The following table lists the supported
waiters and the client method they call:
<table>
<thead>
<tr><th>Waiter Name</th><th>Client Method</th><th>Delay</th><th>Max Attempts</th></tr>
</thead>
<tbody>
#{waiters}
</tbody>
</table>
@return [Array<Symbol>] the list of supported waiters.
        DOCSTRING
        m = YARD::CodeObjects::MethodObject.new(yard_class, :waiter_names)
        m.scope = :instance
        m.docstring = docstring
      end

      class Tabulator

        def initialize
          @tabs = []
          @tab_contents = []
        end

        def tab(method_name, tab_name, &block)
          tab_class = tab_name.downcase.gsub(/[^a-z]+/i, '-')
          tab_id = "#{method_name.to_s.gsub(/_/, '-')}-#{tab_class}"
          class_names = ['tab-contents', tab_class]
          @tabs << [tab_id, tab_name]
          @tab_contents << "<div class=\"#{class_names.join(' ')}\" id=\"#{tab_id}\">"
          @tab_contents << yield
          @tab_contents << '</div>'
        end

        def to_html
          lines = []
          lines << '<div class="tab-box">'
          lines << '<ul class="tabs">'
          @tabs.each do |tab_id, tab_name|
            lines << "<li data-tab-id=\"#{tab_id}\">#{tab_name}</li>"
          end
          lines << '</ul>'
          lines.concat(@tab_contents)
          lines << '</div>'
          lines.join
        end
        alias inspect to_html
        alias to_str to_html
        alias to_s to_html

      end

      def read(path)
        File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
      end

    end
  end
end
