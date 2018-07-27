require 'rails_helper'

describe 'navigate' do
  before do
    @user = User.create(email: "carlos@gmail.com", password: "123456789", password_confirmation: "123456789", first_name: "carlos", last_name: "gomez")
    login_as(@user, scope: :user)
  end

  describe 'index' do
    before do
      visit posts_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Post' do
      expect(page).to have_content(/Posts/)
    end

    it 'has a list of posts' do
      post1 = Post.create!(date: Date.today, rationale: "Hello", user_id: @user.id)
      post2 = Post.create!(date: Date.today, rationale: "World", user_id: @user.id)
      visit posts_path
      expect(page).to have_content(/Hello|World/)
    end
  end

  describe 'creation' do
    before do
      visit new_post_path
    end

    it 'has a form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from form page' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Some rationale"
      click_on "Save"
      expect(page).to have_content("Some rationale")
    end

    it 'will have the user associated it' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "User Association"
      click_on "Save"
      expect(User.last.posts.last.rationale).to eq("User Association")
    end
  end
end