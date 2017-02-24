require 'rails_helper'

describe "the add a job process" do
  it "adds a new job" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'user@user.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end
end
