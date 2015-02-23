class Message < ActiveRecord::Base

  validates :content, presence: true, length: { minimum: 2 }
  validates :author, presence: true, length: { minimum: 5 }

end