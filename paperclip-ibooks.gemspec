# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "paperclip-ibooks"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phill Kenoyer"]
  s.email       = ["phill@ors.bz"]
  s.homepage    = "http://github.com/OrangeRoomSoftware/paperclip-ibooks"
  s.summary     = %q{Get thumbnail from iBooks}
  s.description = %q{Get thumbnail from iBooks}

  s.rubyforge_project = "paperclip-ibooks"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('paperclip', '>=2.5.2')
  s.add_dependency('paperclip', '>=0.9.2')
end
