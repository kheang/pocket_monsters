require 'rails_helper'

describe MonstersController do
  describe 'GET index' do
    let!(:monster) { Monster.create(name: 'Peekachoo') }

    it 'assigns @monsters' do
      get :index
      expect(assigns(:monsters)).to eq([monster])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
