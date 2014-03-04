class User < ActiveRecord::Base
 before_save { self.email = email.downcase }
 validates :pseudo,  presence: true, length: { maximum: 50 }
 validates :name,  presence: true, length: { maximum: 50 }
 validates :prenom,  presence: true, length: { maximum: 50 }
 validates :sexe, presence: true
 validates :age, presence: true
 validates :ville, presence: true
 validates :pays, presence: true
 validates :departement, presence: true

 
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

has_secure_password
validates :password, length: { minimum: 8}


end
