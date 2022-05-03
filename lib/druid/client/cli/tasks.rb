# frozen_string_literal: true

require 'thor'

require_relative 'common'

module Druid
  module Client
    module Cli
      class Tasks < Thor
        extend Common
        set_common_options

      end
    end
  end
end
