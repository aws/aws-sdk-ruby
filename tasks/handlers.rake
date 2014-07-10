def service_names
  line = "    "
  service_names = ""
  names = Aws::Api::Manifest.default_manifest.services.map(&:identifier)
  names.map(&:to_s).each do |name|
    if (line + name).size > 72
      service_names << line.sub(/, $/, '')
      service_names << "\n"
      line = "    "
    end
    line << (name + ", ")
  end
  service_names << line.sub(/, $/, '')
end

def client(svc)
  Aws.send(svc.identifier, {
    region: 'region',
    access_key_id: 'akid',
    secret_access_key: 'secret',
  })
end

def print_handlers(handlers)
  row = '%-6s %-11s %-9s %s'
  puts row % ['Order', 'Step', 'Priority', 'Handler Class']
  puts '---------------------------------------------------------'
  entries = handlers.entries.sort.reverse.select{ |e| e.operations.empty? }
  entries.each_with_index do |entry, n|
    puts row % [n + 1, entry.step, entry.priority, entry.handler_class]
  end
end

task :handlers do
  puts <<INSTRUCTIONS

Run this task again with a service name, for example:

    rake handlers:s3

Append an operation name to the task to list handler for a specific operation:

    rake handlers:s3:get_object

To list available operations for a service, run `rake operations:svc`, e.g.:

    rake operations:s3

Valid service names include:

#{service_names}

INSTRUCTIONS
end

desc "List default handlers applied to a service"
task "handlers:svc" => "handlers"

task :operations do
  puts <<INSTRUCTIONS

Run this task again with a service name, for example:

    rake operations:s3

Valid service names include:

#{service_names}

INSTRUCTIONS
end

desc "List availalbe operation names for a service"
task "operations:svc" => "operations"

begin
  Aws::Api::Manifest.default_manifest.services.each do |svc|

    task "handlers:#{svc.identifier}" do
      print_handlers(client(svc).handlers)
    end

    path = svc.versions.values.last['api']
    api = MultiJson.load(File.read(path))
    api = Seahorse::Model::Api.new(api)
    api.operation_names.each do |operation_name|
      task "handlers:#{svc.identifier}:#{operation_name}" do
        req = client(svc).build_request(operation_name)
        print_handlers(req.handlers)
      end
    end

    task "operations:#{svc.identifier}" do
      puts svc.operation_names
    end

  end
rescue; end
