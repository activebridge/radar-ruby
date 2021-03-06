# frozen_string_literal: true

require 'dummy_environment'
require 'bugno/request_data_extractor'

RSpec.describe Bugno::RequestDataExtractor do
  include Bugno::RequestDataExtractor
  let(:env) { DummyEnv.new.env }

  describe '#headers' do
    let(:headers_list) { DummyEnv.new.headers }

    it 'returns hash' do
      expect(headers(env)).to be_a(Hash)
    end

    it 'returns specific headers' do
      expect(headers(env).keys).to eq(headers_list)
    end
  end

  describe '#request_url' do
    it 'returns string' do
      expect(request_url(env)).to be_a(String)
    end
  end
end
