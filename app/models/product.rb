class Product < ActiveRecord::Base

  belongs_to :user, class_name: 'User', foreign_key: :published

  def status
    self.active? ? 'Aktywny' : 'Nieaktywny'
  end


end
