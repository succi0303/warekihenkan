require 'spec_helper'

describe 'static_pages/about' do

  subject { render }

  it { should have_content('このサイトについて') }
end
