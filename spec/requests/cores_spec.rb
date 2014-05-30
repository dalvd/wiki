require 'spec_helper'

describe "Core" do

  describe "Home page" do

    it "should have the content 'Wiki'" do
      visit '/core/home'
      expect(page).to have_content('Wiki')
    end
  end
  
      it "should have the title 'Home'" do
      visit '/core/home'
      expect(page).to have_title("Wiki | Home")
    end


  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/core/help'
      expect(page).to have_content('Help')
    end
  end

    it "should have the title 'Help'" do
      visit '/core/help'
      expect(page).to have_title("Wiki | Help")
    end

  
    describe "About page" do

    it "should have the content 'About Us'" do
      visit '/core/about'
      expect(page).to have_content('About Us')
    end
  end
  
    it "should have the title 'About Us'" do
      visit '/core/about'
      expect(page).to have_title("Wiki | About Us")
  end
end
