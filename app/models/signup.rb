class Signup < ApplicationRecord
    validates_presence_of :firstname, :lastname, :email, :password
end
