# frozen_string_literal: true

module Druid
  module Client
    module Cli
      module Common
        def set_common_options
          class_option :verbose, :type => :boolean, aliases: "-v"
        end
      end
    end
  end
end
