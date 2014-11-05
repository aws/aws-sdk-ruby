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

  # experimental
  task :format do
    require 'json'
    Dir.glob("aws-sdk-core/apis/*.resources.json").each do |path|
      data = File.open(path, 'r', encoding:'UTF-8') { |f| f.read }
      data = ResourceDefinitionFormatter.new.format_json(JSON.load(data))
      File.open(path, 'w', encoding:'UTF-8') { |f| f.write(data) }
    end
  end

end

class ResourceDefinitionFormatter

  def format_json(hash)
    json = JSON.pretty_generate(hash, indent: '  ', space: ' ')
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

  def single_element?(frame)
    frame.size == 3 && !frame[1].match(/[{}]/)
  end

  def identifier?(frame)
    false
  end

  def source_target?(frame)
    frame.size == 5 &&
    frame[1].lines.first.match(/\s+"target"/) &&
    frame[2].lines.first.match(/\s+"sourceType"/) &&
    frame[3].lines.first.match(/\s+"source"/)
  end

  def should_reduce?(frame)
    single_element?(frame) ||
    identifier?(frame)
    source_target?(frame)
  end

  def reduce_whitespace(frame)
    (0..(frame.size-1)).each do |n|
      if n == 0
        frame[0] = frame[0].rstrip + ' '
      elsif n == (frame.size - 1)
        frame[n] = frame[n].lstrip
      else
        frame[n] = frame[n].strip + ' '
      end
    end
  end

end
