require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

  	it "should have the right title" do
  	  visit '/static_pages/home'
  	  expect(page).to have_title("Super Fun Awesome Test App | Home")
  	end 
  	
    it "should have the content 'Spike App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Spike App')
	end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  	  visit '/static_pages/help'
  	  expect(page).to have_content('Help')
  	end 
  end

  describe "About page" do
  	it "should have then content 'About'" do
  	  visit '/static_pages/about'
  	  expect(page).to have_content('About')
  	end
  end

end