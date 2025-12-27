class CreateInitialAdminUser < ActiveRecord::Migration[7.2]
  def up
    User.reset_column_information

    User.find_or_create_by(email: ENV["INITIAL_ADMIN_EMAIL"]) do |user|
      user.password = ENV["INITIAL_ADMIN_PASSWORD"]
      user.password_confirmation = ENV["INITIAL_ADMIN_PASSWORD"]
      user.confirmed_at = Time.current # IMPORTANTE para Devise
    end
  end

  def down
    User.find_by(email: ENV["INITIAL_ADMIN_EMAIL"])&.destroy
  end
end
