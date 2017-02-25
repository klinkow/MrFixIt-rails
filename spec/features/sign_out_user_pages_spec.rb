require 'rails_helper'

describe "the sign out user process" do

  before(:each) do
    User.destroy_all
  end

  it "signs out a user" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'user@user.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Log Out'
    expect(page).to have_content 'Signed out successfully'
  end
end
