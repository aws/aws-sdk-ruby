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

class FormWow::Builder < ActionView::Helpers::FormBuilder

  attr_accessor :decorator
  
  def initialize *args
    super(*args)
    @grouping = false
    @decorator = FormWow.default_decorator
  end
    
  # Use this method to wrap multiple related form fields inside a single
  # row.  They will be displayed along side the same label.  Unlike normal
  # form rows that only display the short error message, 
  #
  # Example:
  #
  #   - wow_form_for @product do |form|
  #     = form.text_field :name
  #     - form.row 'Price' do
  #       = form.text_field :price
  #       = form.select :currency_id, currency_options
  #
  # Errors
  #
  # Fields wrapped in a form row block still report their errors, but instead
  # of the normal short error message, each error is prefixed with the titleized
  # field name.
  def row label = nil, options = {}, &block

    raise ArgumentError, 'block required' unless block_given?

    begin
      @grouping = true
      @errors = []

      content = @template.capture(&block)

      options[:id] = options.delete(:row_id) if options[:row_id]
      options[:class] = options.delete(:row_class) if options[:row_class]

      unless options.has_key?(:error) or @errors.blank?
        options[:error] = @errors.join(', ')
      end

      @template.send(@decorator, content, label, options)

    ensure
      @grouping = false
    end
  end

  # Calls to form fields inside this block will no decorate.
  #
  # Example:
  #
  #   - wow_form_for @product do |form|
  #     = form.text_field :name
  #     - form.basic do
  #       = form.text_field :price
  #       = form.select :currency_id, currency_options
  #
  # Form fields inside the block above are treated as standard form helpers
  # with no decoration (no errors, no labels, no hints, no required symbols,
  # etc).  Use this when you have a non-standard form field to markup.
  def basic &block
    begin
      @grouping = true
      @errors = [] # they are collected and then ignored
      @template.capture(&block)
    ensure
      @grouping = false
    end
  end

  # This method provides a FormWow upgraded version of any sub-class method.  
  # By default the following methods are upgraded:
  #
  # * text_field
  # * password_field
  # * file_field
  # * check_box
  # * radio_button
  # * text_area
  # * select
  # * date_select
  #
  # If you required a FormWow decorated version of any other method in
  # the FormBuilder class you can do the following:
  #
  #   FormWow.upgrade_helper_method(:min_max_select, 'min_max', false)
  #
  def self.upgrade_helper_method method_name, row_class, append_class_to_field

    define_method(method_name) do |field_name, *args|

      options = args.last.is_a?(Hash) ? args.pop : {}

      args.push({}) if method_name == 'select'
      args.push(options)

      # collect options intended for the form row decorator

      row_options = {}
      [:required, :required_symbol, :hint].each do |opt|
        row_options[opt] = options.delete(opt)
      end

      row_options[:id] = options.delete(:row_id) if options.has_key?(:row_id)

      # set the row class 

      @template.append_class_name!(row_options, options.delete(:row_class))
      @template.append_class_name!(row_options, field_name)
      @template.append_class_name!(row_options, row_class)

      # determine the dom id of the form field so we can use it in a label
      # for attribute

      if options.has_key?(:id)
        row_options[:label_for] = options[:id]
      else
        # generate a throw-away just so we can grab rails' prefered dom id
        self.label(field_name) =~ /<label for="(.+)">.+<\/label>/
        row_options[:label_for] = $1
      end

      # determine the label text

      field_title = field_name.to_s.titleize
      label = options.has_key?(:label) ? options.delete(:label) : field_title

      # look for field errors

      errors = Array(options.delete(:error))
      if errors.empty? and form_object
        errors = form_object.errors[field_name]
      end

      if errors.empty?
        errors = nil
      else
        errors = errors.collect{|e| "#{label} #{e}" }.join(', ')
      end

      row_options[:error] = errors
      row_options[:method] = field_name

      # build (and decorate?) the form field 

      @template.append_class_name!(options, row_class) if append_class_to_field
      @template.append_class_name!(options, 'invalid') if errors

      field = super(field_name, *args)

      if @grouping
        @errors << errors if errors
        field
      else
        @template.send(@decorator, field, label, row_options)
      end

    end
  end

  # Returns the object being represented by this form builder.  This might
  # return a nil value if the form was not given an object.
  def form_object #:nodoc:
    object || @template.instance_variable_get("@#{@object_name}")
  end
  protected :form_object

  # extend the following base from builder helpers
  [
    ['text_field',      'text',     true],
    ['password_field',  'password', true],
    ['file_field',      'file',     true],
    ['check_box',       'checkbox', true],
    ['radio_button',    'radio',    true],
    ['text_area',       'textarea', false],
    ['select',          'select',   false],
    ['date_select',     'date',     false],
    ['time_select',     'time',     false],
    ['datetime_select', 'datetime', false],
  ].each do |method_name, row_class, append_class_to_field|
    upgrade_helper_method(method_name, row_class, append_class_to_field)
  end
  
end
