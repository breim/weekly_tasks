# frozen_string_literal: true

module UsersHelper
  def gravatar_image(email)
    "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?s=150"
  end
end
