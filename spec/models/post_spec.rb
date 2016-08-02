require 'rails_helper'

RSpec.describe Post, :type => :model do

  let(:post) { create(:post) }

  it "should be invalid when title is nil" do
    post.title = nil

    expect(post).to be_invalid
  end

  it "should be invalid when content is nil" do
    post.content = nil

    expect(post).to be_invalid
  end

  it "should be invalid when password is nil" do
    post.user_id = nil

    expect(post).to be_invalid
  end

end