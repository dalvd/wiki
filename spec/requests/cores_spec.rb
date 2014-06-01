require 'spec_helper'

describe "Core" do

	let(:base_title) { "Wiki" }

  describe "Home page" do

    it "should have the content 'Wiki'" do
      visit '/core/home'
      expect(page).to have_content('Wiki')
    end
  
      it "should have the base title" do
      visit '/core/home'
      expect(page).to have_title("Wiki")
    end

    it "should not have a custom page title" do
      visit '/core/home'
      expect(page).not_to have_title('| Home')
    end
  end
 
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/core/help'
      expect(page).to have_content('Help')
    end
  

    it "should have the title 'Help'" do
      visit '/core/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

    describe "About page" do

    it "should have the content 'About Us'" do
      visit '/core/about'
      expect(page).to have_content('About Us')
    end
  
  
    it "should have the title 'About Us'" do
      visit '/core/about'
      expect(page).to have_title("#{base_title} | About Us")
     end
    end
	
    describe "About page" do

    it "should have the content 'Contact'" do
      visit '/core/contact'
      expect(page).to have_content('Contact')
    end
 
  
    it "should have the title 'Contact'" do
      visit '/core/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
   end
end
