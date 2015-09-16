require 'spec_helper'

RSpec.describe OmniAuth::Strategies::Onvedeo do
  let(:request) { double('Request', params: {}, cookies: {}, env: {}) }
  let(:raw_info_hash) do
    {
      id: 1234,
      email: 'user@onvedeo.com',
      name: 'Onvedeo User',
      first_name: 'Onvedeo',
      last_name: 'User',
      role: 'user',
      image: 'https://www.onvedeo.com/image.jpg',
      description: 'Description'
    }
  end

  subject do
    OmniAuth::Strategies::Onvedeo.new('app_id', 'secret').tap do |strategy|
      allow(strategy).to receive(:request) { request }
    end
  end

  describe 'client options' do
    it 'has correct name' do
      expect(subject.options.name).to eq('onvedeo')
    end

    it 'has correct site' do
      expect(subject.options.client_options.site).to eq('https://www.onvedeo.com')
    end

    it 'has correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('/oauth/authorize')
    end
  end

  describe 'info' do
    before do
      allow(subject).to receive(:raw_info).and_return(raw_info_hash)
    end

    %w(id email name first_name last_name role image description).each do |attr|
      it "returns #{attr}" do
        expect(subject.info[attr.to_sym]).to eq(raw_info_hash[attr])
      end
    end
  end

  describe 'extra' do
    before do
      allow(subject).to receive(:raw_info).and_return(raw_info_hash)
    end

    it 'returns raw info' do
      expect(subject.extra).to eq(raw_info: raw_info_hash)
    end
  end
end
