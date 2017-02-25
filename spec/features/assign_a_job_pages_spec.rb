require 'rails_helper'

describe "assigns a job to a worker" do

  before(:each) do
    Worker.destroy_all
    Job.destroy_all
  end


  it "worker claims a job", js: true do
    job = FactoryGirl.create(:job)
    worker = FactoryGirl.create(:worker)
    visit root_path
    click_link 'Log In as Worker'
    fill_in 'Email', with: 'worker1@worker.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit root_path
    click_on 'See All Jobs'
    click_on 'Fix Sink'
    click_on 'Claim Job'
    expect(page).to have_content 'You have claimed the job!'
  end
end



# def worker_login
#   user = FactoryGirl.create(:worker)
#   visit root_path
#   click_link 'Log In'
#   fill_in 'Email', with: 'nobody@somewhere.com'
#   click_button 'Log in'
# end
