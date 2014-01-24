require 'spec_helper'

describe 'static_pages/index.html.erb' do

  subject { render }

  it { should have_selector('h1', text: '和暦変換') }
end
