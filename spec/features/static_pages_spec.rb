require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"RoR Tutorial"}

  describe "Home page" do
    it "has the content 'Sample App'" do
      visit root_path
      expect(page).to have_selector('h1', text: 'Sample App')
    end
    it 'has the base title' do
      visit root_path
      expect(page).to have_title "#{base_title}"
    end
    it 'should not have custom title' do
      visit root_path
      expect(page).to_not have_title "| Home"
    end
  end

  describe 'Help page' do
    it "has the content 'Help'" do
      visit help_path
      expect(page).to have_selector('h1', text: 'Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title "#{base_title} | Help"
    end
  end

  describe 'About page' do
    it "has the content 'About us'" do
      visit about_path
      expect(page).to have_selector('h1', text: 'About us')
    end
    it 'has the right title' do
      visit about_path
      expect(page).to have_title "#{base_title} | About Us"
    end
  end

  describe 'Contact page' do
    it "has the content 'Contact us'" do
      visit contact_path
      expect(page).to have_selector('h1', text: 'Contact us')
    end
    it "has the right title" do
      visit contact_path
      expect(page).to have_title "#{base_title} | Contact Us"
    end
  end
end
