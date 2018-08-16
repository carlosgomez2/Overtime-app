require 'rails_helper'

describe 'AuditLog Feature' do
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let!(:audit_log) { FactoryBot.create(:audit_log) }
  
  describe 'index' do
    before do
      login_as(admin_user, scope: :user)
    end

    it 'has an index page that can be reached' do
      visit audit_logs_path
      expect(page.status_code).to eq(200)
    end

    it 'renders audit log content' do
      visit audit_logs_path
      expect(page).to have_content(/GOMEZ/)
    end

    it 'connot be accessed by a non admin users' do
      logout(:user)
      user = FactoryBot.create(:user)
      login_as(user, scope: :user)
      visit audit_logs_path
      expect(current_path).to eq(root_path)
    end
  end
end
