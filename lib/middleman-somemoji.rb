require 'middleman-core'

Middleman::Extensions.register :somemoji do
  require 'middleman-somemoji/extension'
  ::Middleman::Somemoji::Extension
end
