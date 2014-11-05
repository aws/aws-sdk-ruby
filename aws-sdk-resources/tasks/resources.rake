namespace :resources do
  desc "Validates resource definitions"
  task :validate do

    require 'json-schema'
    require 'aws-sdk-resources'

    Dir.glob("aws-sdk-core/apis/#{ENV['PREFIX']}*.resources.json") do |path|
      definition = MultiJson.load(File.read(path))
      api = MultiJson.load(File.read(path.sub(/\.resources\./, '.api.')))
      errors = Aws::Resources::Validator.validate(definition, api)
      puts ['', "ERRORS: #{path}", *errors] unless errors.empty?
    end

  end

  desc "Formats resource definitions"
  task :format do
    require 'json'
    Dir.glob("aws-sdk-core/apis/*.resources.json").each do |path|
      data = File.open(path, 'r', encoding:'UTF-8') { |f| f.read }
      data = ResourceDefinitionFormatter.new.format_json(JSON.load(data))
      File.open(path, 'w', encoding:'UTF-8') { |f| f.write(data) }
    end
  end

end

# @api private
class ResourceDefinitionFormatter

  def format_json(data)
    json = JSON.pretty_generate(sort(data), indent: '  ', space: ' ')
    stack = [[]]
    json.lines.each do |line|
      if line.match(/({|\[)$/)
        stack.push([])
      end
      stack.last.push(line)
      if line.match(/(}|\]),?$/)
        frame = stack.pop
        reduce_whitespace(frame) if should_reduce?(frame)
        stack.last.push(frame.join)
      end
    end
    stack.last.join
  end

  private

  def sort(definition)
    ResourceDefinitionSorter.new.sort(definition)
  end

  def single_element?(frame)
    frame.size == 3 && !frame[1].match(/[{}]/)
  end

  def source_target?(frame)
    frame.size == 5 &&
    frame[1].lines.first.match(/^\s+"target"/) &&
    frame[2].lines.first.match(/^\s+"sourceType"/) &&
    frame[3].lines.first.match(/^\s+"source"/)
  end

  def should_reduce?(frame)
    single_element?(frame) || source_target?(frame)
  end

  def reduce_whitespace(frame)
    last = frame.size - 1
    frame[0] = frame[0].rstrip + ' '
    (1...last).each do |n|
      frame[n] = frame[n].strip + ' '
    end
    frame[last] = frame[last].lstrip
  end

end

# @api private
class ResourceDefinitionSorter

  class Path < Struct.new(:pattern, :keys); end

  def self.p(pattern, keys = [])
    Path.new('^' + pattern + '$', keys)
  end

  PATHS = [
    p('', %w(service resources)),
    p('service', %w(actions hasMany)),
    p('service/(actions|hasMany)'),
    p('service/(actions|hasMany)/\w+', %w(request resource)),
    p('service/(actions|hasMany)/\w+/request', %w(operation params)),
    p('service/(actions|hasMany)/\w+/request/params', %w(target sourceType source)),
    p('service/(actions|hasMany)/\w+/resource', %w(type identifiers path)),
    p('service/(actions|hasMany)/\w+/resource/identifiers', %w(target sourceType source)),
    p('resources'),
    p('resources/\w+', %w(identifiers shape load actions batchActions waiters hasMany hasSome hasOne subResources)),
    p('resources/\w+/identifiers', %w(name type memberName)),
    p('resources/\w+/load', %w(request path)),
    p('resources/\w+/load/request', %w(operation params)),
    p('resources/\w+/load/request/params', %w(target sourceType source)),
    p('resources/\w+/(actions|batchActions|hasMany|hasSome|hasOne)'),
    p('resources/\w+/(actions|batchActions|hasMany|hasSome|hasOne)/\w+', %w(request resource)),
    p('resources/\w+/(actions|batchActions|hasMany|hasSome|hasOne)/\w+/request', %w(operation params)),
    p('resources/\w+/(actions|batchActions|hasMany|hasSome|hasOne)/\w+/request/params', %w(target sourceType source)),
    p('resources/\w+/(actions|batchActions|hasMany|hasSome|hasOne)/\w+/resource', %w(type identifiers path)),
    p('resources/\w+/(actions|batchActions|hasMany|hasSome|hasOne)/\w+/resource/identifiers', %w(target sourceType source)),
    p('resources/\w+/waiters'),
    p('resources/\w+/waiters/\w+', %w(waiterName params path)),
    p('resources/\w+/waiters/\w+/params', %w(target sourceType source)),
    p('resources/\w+/subResources', %w(resources identifiers)),
    p('resources/\w+/subResources/resources'),
    p('resources/\w+/subResources/identifiers'),
  ]

  def sort(obj, context = [])
    case obj
    when Hash then sort_hash(obj, context)
    when Array then obj.map { |v| sort(v, context) }
    else obj
    end
  end

  private

  def sort_hash(hash, context)
    path = context.join('/')
    if p = PATHS.find { |p| path.match(p.pattern) }
      sort_keys(p.keys, hash.keys).each.with_object({}) do |key, sorted|
        sorted[key] = sort(hash[key], context + [key])
      end
    else
      raise "PATH NOT MATCHED: #{path}"
    end
  end

  def sort_keys(key_order, keys)
    if key_order.empty?
      keys.sort
    else
      keys.sort_by { |key| key_order.index(key) }
    end
  end

end
