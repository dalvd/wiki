require 'spec_helper'

describe Article do

  let(:user) { FactoryGirl.create(:user) }
  before { @article = user.articles.build(content: "This is first demo article") }

  subject { @article }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @article.user_id = nil }
    it { should_not be_valid }
  end
  
  describe "with blank content" do
    before { @article.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too small" do
    before { @article.content = "a" * 19 }
    it { should_not be_valid }
  end
end