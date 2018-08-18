require 'rails_helper'

describe 'Homepage' do
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let!(:post) { FactoryBot.create(:post) }
  
  let(:user) { FactoryBot.create(:user) }
  let!(:audit_log) { FactoryBot.create(:audit_log) }

  # before do
  #   login_as(admin_user, scope: :user)
  # end

  it 'allows the admin approve post from the homepage' do
    login_as(admin_user, scope: :user)
    visit root_path
    click_on("approve_#{post.id}")
    expect(post.reload.status).to eq('approved')
  end

  it 'allows the employee to change the audit log status from the homepage' do
    login_as(user, scope: :user)
    audit_log.update(user_id: user.id)
    visit root_path
    click_on("confirm_#{audit_log.id}")
    expect(audit_log.reload.status).to eq('confirmed')
  end
end