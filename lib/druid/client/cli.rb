# frozen_string_literal: true

require 'irb'
require 'druid/client'
require_relative 'env_parser'
require_relative 'argv_parser'

module Druid
  module Client
    # Cli command
    #  provides interface for druidc cli
    class Cli
      def self.run(*args, **kwargs)
        self.new(*args, **kwargs).run
      end

      attr_reader :env, :argv

      def initialize(env: ENV, argv: ARGV)
        @env = env.clone
        @argv = argv.clone
      end

      def run
        IRB.start
      end

      private

      def args
        return @args if @args

        env_args = EnvParser.new(env).parse
        argv_args = ArgvParser.new(argv).parse
        @args = env_args.merge(argv_args)
      end
    end
  end
end
