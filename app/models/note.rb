class Note < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :title, :name, presence: true
end
