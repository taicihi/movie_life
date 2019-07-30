class Film < ApplicationRecord
    validates :film_name, presence: true
    validates :summary, presence: true
    validates :image, presence: true
    
    belongs_to :user
    mount_uploader :image, ImageUploader
end
