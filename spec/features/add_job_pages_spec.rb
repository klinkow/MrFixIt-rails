require 'rails_helper'

describe "the add a job process" do

  before(:each) do
    User.destroy_all
  end

  it "adds a new job" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'user@user.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Add Your Job'
    fill_in 'Title', :with => 'Fix the bathroom sink.'
    fill_in 'Description', :with => 'It is dripping a lot.'
    click_on 'Create Job'
    expect(page).to have_content 'Fix the bathroom sink.'

  end
end
