class Comment < ApplicationRecord
  #uses models/concerns/visible.rb to hold alike code
  include Visible

  #association
  belongs_to :article

  #validation 
  validates :commenter, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  
end
