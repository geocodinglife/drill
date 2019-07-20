class Item < ApplicationRecord
  belongs_to :user

  def user
    super || GuestUser.new
  end

  def user_signed_in?
    super && !current_user.is_a?(Guest)
  end

  def completed?
    !completed_at.blank?
  end

end
