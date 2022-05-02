# frozen_string_literal: true

require_relative "rest_connector"
require_relative "api"

module Druid
  module Client
    # Druid Client instance
    #  main interface to Druid
    class Client
      attr_reader :url, :login, :password

      def initialize(url:, login: nil, password: nil)
        @url = url
        @login = login
        @password = password
      end

      def connector
        @connector ||= RestConnector.new(self)
      end

      def api
        @api ||= API.new(connector)
      end

      def tasks
        api.v1.tasks.get
      end
    end
  end
end
