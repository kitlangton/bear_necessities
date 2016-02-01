require 'rails_helper'

describe 'Bears routes' do

  before do
    Bear.create(name: "Pacha", description: "Bacha")
  end

  # root
  describe 'GET /' do
    it 'does not raise error' do
      expect { visit '/' }.to_not raise_error
    end
  end


  # index
  describe 'GET /bears' do
    it 'does not raise error' do
      expect { visit '/bears' }.to_not raise_error
    end
  end

  # show
  describe 'GET /bears/1' do
    it 'does not raise error' do
      expect { visit '/bears/1/edit' }.to_not raise_error
    end
  end

  # new
  describe 'GET /bears/new' do
    it 'does not raise error' do
      expect { visit '/bears/new' }.to_not raise_error
    end
  end

  # edit
  describe 'GET /bears/1/edit' do
    it 'does not raise error' do
      expect { visit '/bears/1/edit' }.to_not raise_error
    end
  end
end

