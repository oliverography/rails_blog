require 'rails_helper'

RSpec.describe Comment, :type => :model do

  let(:comment) { create(:comment) }

  it "should be invalid when content is nil" do
    comment.content = nil

    expect(comment).to be_invalid
  end

  it "should be invalid when post_id is nil" do
    comment.post_id = nil

    expect(comment).to be_invalid
  end

  it "should be invalid when user_id is nil" do
    comment.user_id = nil

    expect(comment).to be_invalid
  end

end