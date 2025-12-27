class PromoteInitialUserToAdmin < ActiveRecord::Migration[7.2]
  def up
    User.find_by(email: ENV["INITIAL_ADMIN_EMAIL"])&.update!(admin: true)
  end

  def down
    User.find_by(email: ENV["INITIAL_ADMIN_EMAIL"])&.update!(admin: false)
  end
end
