class Advertisment < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true
  validates :description, length: {minimum: 10}


  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

end
