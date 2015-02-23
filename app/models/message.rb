class Message < ActiveRecord::Base

  validates :content, presence: true, length: { minimum: 2 }
  validates :author, presence: true, length: { minimum: 5 }
#  validates :url, format: { with: /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/, message: "Not a valid url!" }

end