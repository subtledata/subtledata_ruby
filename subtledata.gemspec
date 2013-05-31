# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
    s.name              = "subtledata"
    s.version           = '0.0.5'
    s.date              = '2013-05-31'
    s.authors           = ["George Sibble"]
    s.email             = ["george.sibble@subtledata.com"]
    s.homepage          = "http://github.com/subtledata/subtledata_ruby"
    s.summary           = "Ruby Client Library for SubtleData",
    s.description       = "Ruby Client Library for SubtleData",
    s.rubyforge_project = "subtledata"
    s.files             = `find lib -name "*.rb"`.split("\n") + `find models -name "*.rb"`.split("\n")
=begin
    s.files             = `git ls-files`.split("\n")
    s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
    s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
=end
    s.require_paths     = ["lib", "models"]

    # specify any dependencies here; for example:
    %w{ addressable typhoeus }.each do |dep|
        s.add_runtime_dependency dep
    end
end

