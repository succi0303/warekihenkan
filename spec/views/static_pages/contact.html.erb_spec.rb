require 'spec_helper'

describe 'static_pages/contact.html.erb' do
  subject { render }

  it { should have_content('お問い合わせ') }
end
