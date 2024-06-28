require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    let(:post) { FactoryBot.build(:post) }  #.build creates the record in memory, .create creates a record in the db
    it "should have a title" do
      post.title = nil
      expect(post).not_to be_valid

      post.title = "Unit Test"
      expect(post).to be_valid
    end
  end
end
