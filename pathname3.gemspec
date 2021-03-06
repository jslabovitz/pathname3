Gem::Specification.new do |s|
  s.author   = 'Stephen Touset'
  s.email    = 'stephen@touset.org'
  s.homepage = 'http://github.com/stouset/pathname3/'
  
  s.name        = 'pathname3'
  s.version     = '1.2.5'
  s.platform    = Gem::Platform::RUBY
  s.description = 'Faster replacement for pathname and pathname2'
  s.summary     = <<-DESC.strip.gsub(/\s+/, ' ')
    pathname3 is a third attempt at rewriting the eminently useful Pathname
    library in Ruby. The first version (packaged with Ruby) is extremely slow
    for many operations, as is the second one (by Daniel J. Berger).
    
    This version attempts to combine the best parts of both predecessors,
    while also maintaining speed. Namely, we use Daniel's String-based
    approach, while dumping Facade and sending messages to FileTest, File,
    Dir, and FileUtils explicitly (for clarity and predictability).
    
    Windows support will be provided in a later release. Donations of code
    toward this end would be appreciated.
  DESC
  
  s.files  = %w{ CHANGES README LICENSE }
  s.files += %w{ pathname3.gemspec }
  s.files += %w{ lib/pathname3.rb }
  s.files += %w{ test/lib/test_pathname.rb }
  s.files += %w{ test/lib/test_pathname3.rb }
  
  s.has_rdoc = true
end
