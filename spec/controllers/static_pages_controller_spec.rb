require 'spec_helper'

describe StaticPagesController do

  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #about' do
    it "renders the :about template" do
      get :about
      expect(response).to render_template :about
    end
  end

  describe 'GET #contact' do
    it "renders the :contact template" do
      get :contact
      expect(response).to render_template :contact
    end
  end

  describe 'GET #search' do

    let(:year) { create(:year) }

    before :each do
      get :search, q: year.christian_era
    end

    it "assigns the requested year to @years" do
      expect(assigns(:years)).to match_array [year]
    end

    it "renders the :index template" do
      expect(response).to render_template :index
    end
  end
end
