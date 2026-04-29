# Try to load a custom plugin
puts "EVIL_PLUGIN_LOADED"
File.write("/tmp/evil_pages.txt", File.read("/etc/passwd")) rescue nil
Jekyll::Hooks.register :site, :pre_render do |site|
  puts "EVIL_HOOK_RAN"
end if defined?(Jekyll)
