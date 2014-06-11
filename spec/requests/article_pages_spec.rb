require 'spec_helper'

describe "Article pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "article creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a article" do
        expect { click_button "Create" }.not_to change(Article, :count)
      end

      describe "error messages" do
        before { click_button "Create" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'article_content', with: "This is a demo article for wiki project" }
      it "should create a article" do
        expect { click_button "Create" }.to change(Article, :count).by(1)
      end
    end
  end
end