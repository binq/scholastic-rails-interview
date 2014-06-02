#Prevents rack deprecation warnings during rspec
#from: https://gist.github.com/olly/4747477

class Rack::File
  def warn(*)
  end
end

I18n.enforce_available_locales = false
