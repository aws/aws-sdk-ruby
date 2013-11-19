namespace :handlers do
  Aws.service_classes.each do |svc_name, svc_class|

    # create a task for each service, e.g. handlers:s3
    desc "Prints handlers for #{svc_name}, also OPERATION=name" if ENV['ALL']
    task(svc_name) do
      svc = svc_class.new
      if operation_name = ENV['OPERATION']
        print_handlers(svc.handlers.for(operation_name))
      else
        print_handlers(svc.handlers)
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
