class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, presence: true, format: { with: /\A\d{11}\z/ }
    validates :cpf, presence: true, format: { with: /\A\d{11}\z/ }
end
 