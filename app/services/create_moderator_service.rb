class CreateModeratorService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.moderator_email) do |user|
      user.password = Rails.application.secrets.moderator_password
      user.password_confirmation = Rails.application.secrets.moderator_password
      user.name = 'Moderator'
      user.moderator = true
      user.confirm
      user.admin!
    end
  end
end
