# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: gitenv 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "gitenv".freeze
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon Oulevay (Alpha Hydrae)".freeze]
  s.date = "2021-07-19"
  s.description = "Gitenv sets up symlinks to your configuration files in a git repository.".freeze
  s.email = "git@alphahydrae.com".freeze
  s.executables = ["gitenv".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "VERSION",
    "bin/gitenv",
    "lib/gitenv.rb",
    "lib/gitenv/actions.rb",
    "lib/gitenv/actions/copy.rb",
    "lib/gitenv/actions/symlink.rb",
    "lib/gitenv/config.rb",
    "lib/gitenv/context.rb",
    "lib/gitenv/controller.rb",
    "lib/gitenv/files.rb",
    "lib/gitenv/files/all_files.rb",
    "lib/gitenv/files/dot_files.rb",
    "lib/gitenv/files/matcher.rb",
    "lib/gitenv/files/one_file.rb",
    "lib/gitenv/renderer.rb",
    "lib/gitenv/repository.rb",
    "lib/gitenv/status.rb",
    "lib/program.rb"
  ]
  s.homepage = "http://github.com/AlphaHydrae/gitenv".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.15".freeze
  s.summary = "Symlink manager for git repositories with configuration files.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<paint>.freeze, ["~> 2.2"])
    s.add_runtime_dependency(%q<commander>.freeze, ["~> 4.6"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<jeweler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<rake-version>.freeze, ["~> 1.0"])
  else
    s.add_dependency(%q<paint>.freeze, ["~> 2.2"])
    s.add_dependency(%q<commander>.freeze, ["~> 4.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake-version>.freeze, ["~> 1.0"])
  end
end

