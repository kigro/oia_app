require 'spec_helper'

describe "StaticPages" do

# Test of pages
  describe "Home page" do
    it "should have the content 'Golf App'" do
      visit '/static_pages/home'
      page.should have_content('Golf App')
    end

    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', 
      	:text => 'Odd Ingar sin Golf App | Home')
    end

  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', 
      	:text => 'Odd Ingar sin Golf App | Help')
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the right title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', 
      	:text => 'Odd Ingar sin Golf App | About')
    end
  end
end
