# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "snip/version"

Gem::Specification.new do |s|
  s.name        = "snip"
  s.version     = Snip::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Corey Woodcox"]
  s.email       = ["corey.woodcox@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Snip is a URL shortener for Rails.}
  s.description = %q{Snip allows your Rails app to shorten URLs on a custom domain or short site path.}

  s.rubyforge_project = "snip"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "lib/snip"]
end
