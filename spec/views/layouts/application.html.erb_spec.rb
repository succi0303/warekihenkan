require 'spec_helper'

describe 'layouts/application.html.erb' do
  
  subject { render }

end

describe 'layouts/_header.html.erb' do

  subject { render }

  it { should have_selector('header') }
  it { should have_selector('a.navbar-brand') }
  it { should have_link('Home', root_path) }
  it { should have_link('About', about_path) }
  it { should have_link('Contact', contact_path) }
end

describe 'layouts/_footer.html.erb' do

  subject { render }

  it { should have_selector('footer') }
  it { should have_content('Copyright') }
end
