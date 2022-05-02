# frozen_string_literal: true

RSpec.describe Druid::Client::Client do
  let(:url) { "https://druid.test.url" }
  let(:login) { "test_login" }
  let(:password) { "test_password" }

  subject { described_class.new(url: url, login: login, password: password) }

  describe "new" do
    it "returns a client instance" do
      expect(subject).to be_a described_class
    end
  end
end
