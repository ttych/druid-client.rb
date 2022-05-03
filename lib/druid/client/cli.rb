# frozen_string_literal: true

require_relative 'cli/druidc'

module Druid
  module Client
    # Cli command
    #  provides interface for druidc cli
    module Cli
      # FIXME: legacy
      # DELETE: delete this legacy code
    #   def self.run(argv=ARGV)
    #     self.new(*args, **kwargs).run
    #   end

    #   attr_reader :env, :argv

    #   def initialize(env: ENV, argv: ARGV)
    #     @env = env.clone
    #     @argv = argv.clone
    #   end

    #   def run
    #     IRB.start
    #   end

    #   private

    #   def args
    #     return @args if @args

    #     env_args = EnvParser.new(env).parse
    #     argv_args = ArgvParser.new(argv).parse
    #     @args = env_args.merge(argv_args)
    #   end
    end
  end
end
