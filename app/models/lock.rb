class Lock < ActiveRecord::Base
  belongs_to :kind

  validates :name , presence: true
  validates :website , presence: true
  validates :username , presence: true
  validates :password , presence: true

  def self.search(search)
  	where("name LIKE ?", "%#{search}%")
  end
end
