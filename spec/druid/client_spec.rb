# frozen_string_literal: true

RSpec.describe Druid::Client do
  it "has a version number" do
    expect(Druid::Client::VERSION).not_to be nil
  end

  describe "new" do
    let(:url) { "https://druid.url" }
    let(:client) { described_class.new(url: url) }

    it "returns a Client instance" do
      expect(client).to_not be nil
    end
  end
end
