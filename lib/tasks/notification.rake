namespace :notification do 
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    #1. Schedule to run at Sunday at 5pm
    #2. Iterate over all employees
    #3. Skip AdminUsers
    #4. Send a message that has instructions and a ling to log time
    # User.alleach do |user|
    #   SmsTool.send_sms()
    # end
  end

  desc "Sends MAIL notification to admin users each day to inform pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end
end