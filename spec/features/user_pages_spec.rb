require 'spec_helper'

describe 'User pages' do

  subject { page }

  describe 'new user page' do
    before { visit new_user_path }

    it { should have_selector('h1', text: 'Sign up') }
    it { should have_title full_title('Sign up') }
  end
end