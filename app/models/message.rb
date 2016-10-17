class Message < ApplicationRecord
  validates :text, :encryption_type, presence: true

  before_create :generate_link


  def generate_link
    self.link = loop do
      random_link = SecureRandom.urlsafe_base64(10)
      break random_link unless Message.exists?(link: random_link)
    end
  end
end
