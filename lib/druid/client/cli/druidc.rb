# frozen_string_literal: true

require 'thor'
require 'irb'

require 'druid/client'
require_relative 'common'
require_relative 'tasks'

module Druid
  module Client
    module Cli
      # Druidc class for the druidc cli
      #  provides the entrypoint for the druidc cli
      class Druidc < Thor
        # class_option :verbose, :type => :boolean
        extend Common
        set_common_options

        desc "version", "display version"
        def version
          puts "#{$PROGRAM_NAME} #{Druid::Client::VERSION}"
        end
        map "--version" => :version

        desc "console", "start console"
        def console
          puts "creating client ..."
          client = nil
          puts "cleaning ARGV ..."
          ARGV.clear
          puts "starting console ..."
          IRB.start
        end
        map "c" => :console

        desc "tasks SUBCOMMAND ...ARGS", "manage tasks"
        subcommand "tasks", Tasks
      end
    end
  end
end
