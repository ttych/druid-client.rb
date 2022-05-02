# frozen_string_literal: true

require_relative "client/version"
require_relative "client/client"

module Druid
  # Druid library entry-point
  module Client
    def self.new(url:, login: nil, password: nil)
      Druid::Client::Client.new(url: url, login: login, password: password)
    end
  end
end
