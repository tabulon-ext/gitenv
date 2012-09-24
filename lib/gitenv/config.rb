
module Gitenv

  class Config
    include Context

    attr_reader :actions
    attr_accessor :repository
    attr_reader :home

    def initialize home
      @home = home
      @actions = []
    end

    def repo path
      @repository = File.expand_path path
    end

    def symlink file, options = {}
      Action.new(self, Symlink, enumerator(file), options).tap{ |a| @actions << a }
    end

    def copy file, options = {}
      Action.new(self, Copy, enumerator(file), options).tap{ |a| @actions << a }
    end

    def all_files
      :all_files
    end

    def dot_files
      :dot_files
    end

    private

    def enumerator file
      if file == :all_files
        AllFiles.new
      elsif file == :dot_files
        DotFiles.new
      else
        OneFile.new file
      end
    end
  end
end
