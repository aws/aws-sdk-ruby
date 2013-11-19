namespace :handlers do
  Aws.service_classes.each do |svc_name, svc_class|

    svc = svc_class.new

    # create a task for each service, e.g. handlers:s3
    desc "Prints default handlers for #{svc_name}, add :OPERATION_NAME for specific handlers" if ENV['ALL']
    task(svc_name) do
      print_handlers(svc.handlers)
    end

    # create a task for each operation, e.g. handlers:s3:put_object
    svc.operation_names.each do |operation_name|
      task("#{svc_name}:#{operation_name}") do
        print_handlers(svc.handlers.for(operation_name))
      end
    end

  end
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
