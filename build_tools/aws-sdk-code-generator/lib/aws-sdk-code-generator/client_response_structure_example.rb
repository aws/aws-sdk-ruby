require 'set'

module AwsSdkCodeGenerator
  class ClientResponseStructureExample

    # @option options [required, Hash] :shape_ref
    # @option options [required, Hash] :api
    def initialize(options = {})
      @shape_ref = options.fetch(:shape_ref)
      @api = options.fetch(:api)
    end

    def to_str
      "@example Response structure\n\n  #{entry(@shape_ref, "resp", Set.new).join("\n  ")}"
    end
    alias to_s to_str

    private

    def structure(ref, context, visited)
      lines = []
      shape = shape(ref)
      if shape['eventstream']
        event_types = []
        # Add event entry
        event_ctx = shape['members'].each.inject([]) do |ctx, (member_name, member_ref)|
          event_type = Underscore.underscore(member_name).to_sym
          event_types << event_type
          ctx << "For #{event_type.inspect} event available at #on_#{event_type}_event callback"\
            " and response eventstream enumerator:"
          event_entry = entry(member_ref, "event", Set.new).join("\n  ")
          ctx << (event_entry.empty? ? " #=> EmptyStruct" : event_entry + "\n")
        end
        # Add eventstream entry
        event_ctx.unshift("#{context}.event_types #=> #{event_types.inspect}\n")
        event_ctx.unshift("#{context} #=> Enumerator")
        event_ctx.unshift("All events are available at #{context}:")
        return event_ctx
      else
        shape['members'].each_pair do |member_name, member_ref|
          lines += entry(member_ref, "#{context}.#{underscore(member_name)}", visited)
        end
      end
      lines
    end

    def list(ref, context, visited)
      lines = []
      lines << "#{context} #=> Array"
      lines += entry(shape(ref)['member'], "#{context}[0]", visited)
      lines
    end

    def map(ref, context, visited)
      lines = []
      lines << "#{context} #=> Hash"
      lines += entry(shape(ref)['value'], "#{context}[#{map_key(ref)}]", visited)
      lines
    end

    def map_key(ref)
      shape(ref)['key']['shape'].inspect
    end

    def entry(ref, context, visited)
      if ref['shape'] == 'AttributeValue'
        return ["#{context} #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>"]
      elsif visited.include?(ref['shape'])
        return ["#{context} #=> Types::#{ref['shape']}"]
      else
        visited  = visited + [ref['shape']]
      end
      case shape(ref)['type']
      when 'structure' then structure(ref, context, visited)
      when 'list' then list(ref, context, visited)
      when 'map' then map(ref, context, visited)
      else ["#{context} #=> #{type(ref)}"]
      end
    end

    def type(ref)
      if shape(ref)['type'] == 'string'
        string(ref)
      else
        Api.ruby_type(ref, @api)
      end
    end

    def string(ref)
      if shape(ref)['enum']
        "String, one of #{shape(ref)['enum'].map(&:inspect).join(', ')}"
      else
        'String'
      end
    end

    def shape(ref)
      Api.shape(ref, @api)
    end

    def underscore(str)
      Underscore.underscore(str)
    end

  end
end
