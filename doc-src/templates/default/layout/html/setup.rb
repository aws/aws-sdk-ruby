# def stylesheets
#   # Load the existing stylesheets while appending the custom one
#   super + %w(css/custom.css)
# end

def javascripts
  (super + %w(js/tabs.js)).uniq
end
