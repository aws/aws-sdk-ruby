# frozen_string_literal: true

def javascripts
  (super + %w(js/tabs.js)).uniq
end
