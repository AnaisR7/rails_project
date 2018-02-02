class Post < ActiveRecord::Base
  validates :vignette, presence: true
  validates :titre, presence: true
  validates :date, presence: true
  validates :chapeau, presence: true
  validates :nomAuteur, presence: true

  mount_uploader :vignette, VignetteUploader

end
