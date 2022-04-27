class Article < ApplicationRecord
    #uses models/concerns/visible.rb to hold alike code
    include Visible

    #association to comments, shows how to behave on comment deletion
    has_many :comments, dependent: :destroy

    #validation 
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }


    # attributes can be removed as they are kept in the active record
    # def change
    #     create_table :articles do |t|
    #         t.string :title
    #         t.text :body

    #         t.timestamps
    #     end
    # end
end
