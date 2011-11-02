# -*- encoding: utf-8 -*-
# $:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "packager"
  s.version     = "0.1"
  s.authors     = ["Eric J. Holmes"]
  s.email       = ["eric@ejholmes.net"]
  s.homepage    = ""
  s.summary     = %q{Ruby gem for packaging css and javascript for force.com sites}
  s.description = %q{Ruby gem for packaging css and javascript for uploading to force.com sites}

  s.rubyforge_project = "packager"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.add_dependency "juicer"
end
