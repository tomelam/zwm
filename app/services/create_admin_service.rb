class CreateAdminService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.moderator_email) do |user|
      puts Rails.application.secrets.moderator_password
      user.password = Rails.application.secrets.moderator_password
      user.password_confirmation = Rails.application.secrets.moderator_password
      user.name = 'Moderator'
      user.moderator = true
      user.confirm
      user.admin!
    end
    user2 = User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user2|
      user2.password = Rails.application.secrets.admin_password
      user2.password_confirmation = Rails.application.secrets.admin_password
      user2.name = 'Admin'
      user2.moderator = true
      user2.confirm
      user2.admin!
    end
  end
end
