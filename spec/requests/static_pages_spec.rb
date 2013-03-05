require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Twitter Junior'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Twitter Junior')
    end
    it "should have the base title" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
                    :text => "Twitter Junior")
    end
    it "should not have a custom pqge title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end


	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
		it "should have the right title" do
  			visit '/static_pages/help'
  			page.should have_selector('title',
                    :text => "Twitter Junior | Help")
		end
	end

	describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
                    :text => "Twitter Junior | About")
	end
  end
end