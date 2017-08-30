class Card < ActiveRecord::Base
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    resourcify
end
