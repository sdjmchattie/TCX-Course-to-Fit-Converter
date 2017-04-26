# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ox"
  s.version = "2.4.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Ohler"]
  s.date = "2017-04-21"
  s.description = "A fast XML parser and object serializer that uses only standard C lib.\n            \nOptimized XML (Ox), as the name implies was written to provide speed optimized\nXML handling. It was designed to be an alternative to Nokogiri and other Ruby\nXML parsers for generic XML parsing and as an alternative to Marshal for Object\nserialization. "
  s.email = "peter@ohler.com"
  s.extensions = ["ext/ox/extconf.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "ext/ox/extconf.rb"]
  s.homepage = "http://www.ohler.com/ox"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md", "--title", "Ox Documentation", "--exclude", "extconf.rb"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "ox"
  s.rubygems_version = "2.0.14.1"
  s.summary = "A fast XML parser and object serializer."
end
