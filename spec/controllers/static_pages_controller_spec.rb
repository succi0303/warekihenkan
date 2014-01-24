require 'spec_helper'

describe StaticPagesController do

  subject { response }

  describe 'GET home' do
    before do
      get :index
    end

    it { should be_success }
    it { should render_template(:index) }
  end

  describe 'GET about' do

    before do
      get :about
    end

    it { should be_success }
    it { should render_template(:about) }
  end

  describe 'GET contact' do

    before do
      get :contact
    end

    it { should be_success }
    it { should render_template(:contact) }
  end

end
