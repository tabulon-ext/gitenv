# encoding: UTF-8

module Gitenv

  class Symlink

    def initialize config, file, options = {}
      @config, @file, @options = config, file, options
    end

    def update!
      unless File.exists? link
        File.symlink target, link
      end
    end

    def to_s
      color, mark, msg = status
      justification = @options[:justify] ? ' ' * (@options[:justify] - description.length) : ''
      %/ #{Paint[mark, color]} #{Paint[link, :cyan]} -> #{target}#{justification}#{Paint[msg, color]}/
    end

    def description
      "#{link} -> #{target}"
    end

    private

    def status
      if File.symlink? link
        current_target = File.expand_path File.readlink(link)
        if current_target == target
          [ :green, "✓", "ok" ]
        else
          [ :yellow, "✗", "currently points to #{current_target}; update will overwrite" ]
        end
      elsif File.file? link
        [ :red, "✗", "is a file; update will ignore" ]
      elsif File.directory? link
        [ :red, "✗", "is a directory; update will ignore" ]
      elsif File.exists? link
        [ :red, "✗", "exists but is not a symlink; update will ignore" ]
      else
        [ :blue, "✗", "is not set up; update will create the link" ]
      end
    end

    def link
      @link ||= File.join(*[ @config.to_path, link_name].compact)
    end

    def target
      @target ||= File.join(*[ @config.from_path, @file ].compact)
    end

    def link_name
      @options[:as] || @file
    end
  end
end
