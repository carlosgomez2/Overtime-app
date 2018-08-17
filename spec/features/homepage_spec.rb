require 'rails_helper'

describe 'Homepage' do
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let!(:post) { FactoryBot.create(:post) }

  before do
    login_as(admin_user, scope: :user)
  end

  it 'allows the admin approve post from the homepage' do
    visit root_path
    click_on("approve_#{post.id}")
    expect(post.reload.status).to eq('approved')
  end
end