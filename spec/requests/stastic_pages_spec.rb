require 'spec_helper'

describe "StasticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App | "}

  describe "Home page" do

    it "should have the h1 'Sample App'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Sample App')
	end

	it "should have the base title" do
		visit '/static_pages/home'
		page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App")
	end

    it "should not have the title 'Home'" do
		visit '/static_pages/home'
		page.should_not have_selector('title',
				:text => "Home")
	end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('title', :text => 'Help')
	end

    it "should have the content 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('title',
				:text => "Help")
	end
  end

  describe "About" do

    it "should have the h1 'About'" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => 'About')
	end

	it "should have the title 'About'" do
		visit '/static_pages/about'
		page.should have_selector('title',
				:text => "About")
	end
  end

  describe "Contact" do
	it "should have the content 'Contact'" do
		visit '/static_pages/contact'
		page.should have_content('Contact')
	end
  end
end
