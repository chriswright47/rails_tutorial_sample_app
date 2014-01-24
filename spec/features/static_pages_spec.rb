require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"RoR Tutorial"}

  describe "Home page" do
    before { visit root_path }
    it "has the content 'Sample App'" do
      expect(page).to have_selector('h1', text: 'Sample App')
    end
    it 'has the base title' do
      expect(page).to have_title "#{base_title}"
    end
    it 'should not have custom title' do
      expect(page).to_not have_title "| Home"
    end
  end

  describe 'Help page' do
    before { visit help_path }
    it "has the content 'Help'" do
      expect(page).to have_selector('h1', text: 'Help')
    end
    it "should have the title 'Help'" do
      expect(page).to have_title "#{base_title} | Help"
    end
  end

  describe 'About page' do
    before { visit about_path }
    it "has the content 'About us'" do
      expect(page).to have_selector('h1', text: 'About us')
    end
    it 'has the right title' do
      expect(page).to have_title "#{base_title} | About Us"
    end
  end

  describe 'Contact page' do
    before { visit contact_path }
    it "has the content 'Contact us'" do
      expect(page).to have_selector('h1', text: 'Contact us')
    end
    it "has the right title" do
      expect(page).to have_title "#{base_title} | Contact Us"
    end
  end
end
