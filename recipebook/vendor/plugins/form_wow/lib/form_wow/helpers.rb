# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module FormWow::Helpers

  def self.included base #:nodoc:
    # Create wow_ prefixed helpers for each std rails form method
    self.module_eval <<-EVAL

      def wow_form_for name, *args, &block

        # set the builder
        options = args.last.is_a?(Hash) ? args.pop : {}
        options[:builder] = ::FormWow::Builder

        # add the class name wow to the form tag
        wow_class = 'wow'
        if options.has_key?(:html)
          append_class_name!(options[:html], wow_class)
        elsif options.has_key?('html')
          append_class_name!(options['html'], wow_class)
        else
          options[:html] = { :class => wow_class }
        end

        args.push options
        form_for name, *args, &block

      end

      # set the builder
      def wow_fields_for name, *args, &block
        options = args.last.is_a?(Hash) ? args.pop : {}
        options[:builder] = ::FormWow::Builder
        args.push options
        fields_for name, *args, &block
      end

    EVAL
  end

  # Builds a fully-decorated form row with content (form field),
  # hints, label, required symbol, error message, etc. 
  #
  # This method requires two things, content and a label.  Content
  # can either be the first param or be passed in a block.
  # Here are two examples of how to call this method (using HAML markup):
  # 
  #   = row(content, label, options)
  #
  #  or
  #
  #   - row(label, options) do
  #     = text_field ...
  #     = select ...
  #
  # Options:
  #
  # * required : When true, the required symbol is placed in the label.
  # * required_symbol : A string to place in the label when the field is
  #   required.  Most commonly '*', defaults to FormWow.required_symbol 
  # * error : An error message string.  This error get wrapped in a span
  #   of class error.  When this option is set the class name 'invalid' is
  #   also added to the row div.
  # * hint : A short message or tip on how to fill out the form field.
  #   This tip can indicate what data format is expected (e.g. YYYY/MM/DD),
  #   or just be a short message on what the data is used for (e.g. when
  #   checked this object will be excluded from public search results ...)
  # * id : dom id to assign to the form row div.
  # * class : CSS class name to add to the form row div.
  # * label_for : An optional dom id of a form element that should 
  #   recieve focus when the label is clicked.
  #   
  def form_wow_row *args, &block

    options = args.last.is_a?(Hash) ? args.pop : {}
    content = block_given? ? capture(&block) : args.shift
    label = args.shift

    ## label

    if label
      req_symbol = nil
      if options[:required]
        req_symbol = options[:required_symbol] || FormWow.required_symbol
        req_symbol = content_tag('span', req_symbol, :class => 'required_symbol')
      end
      label = [req_symbol, label].join.html_safe
      label = content_tag('label', label, :class => 'row_label', :for => options[:label_for])
    end

    ## hint
  
    if hint = options[:hint]
      hint = content_tag('label', hint, :class => 'hint', :for => options[:label_for])
    end

    ## error message

    if error = options[:error]
      error = content_tag('p', error, :class => 'error')
    end

    ## form row div

    css = []
    css << 'invalid' if options[:error] 
    css << 'required' if options[:required] 
    css << options[:class] if options[:class] 
    css << FormWow.default_form_row_class

    parts = [label, content, error, hint]
    row = content_tag('div', parts.join.html_safe, :id => options[:id], :class => css.join(' '))

    # return / output the form row div

    if block_given?
      concat(row)
    else
      row
    end
  end

  # Safely appends a class name to a options hash.  The passed hash is modified.
  def append_class_name! options, class_name
    key = options.has_key?('class') ? 'class' : :class 
    unless options[key].to_s =~ /(^|\s+)#{class_name}(\s+|$)/
      options[key] = "#{options[key]} #{class_name}".strip
    end
    options
  end

end
