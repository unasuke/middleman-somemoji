require "middleman-core"

Middleman::Extensions.register :middleman-somemoji do
  require "my-extension/extension"
  MyExtension
end
