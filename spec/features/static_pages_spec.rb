require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "has the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', text: 'Sample App')
    end
    it 'has the right title' do
      visit '/static_pages/home'
      expect(page).to have_title "RoR Tutorial | Home"
    end
  end

  describe 'Help page' do
    it "has the content 'Help'" do
      visit 'static_pages/help'
      expect(page).to have_selector('h1', text: 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title "RoR Tutorial | Help"
    end
  end

  describe 'About page' do
    it "has the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', text: 'About us')
    end
    it 'has the right title' do
      visit '/static_pages/about'
      expect(page).to have_title "RoR Tutorial | About Us"
    end
  end
end
