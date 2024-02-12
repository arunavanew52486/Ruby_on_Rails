class Article < ApplicationRecord
    #! VALIDATIONS [Example]: This will prevent from saving empty title
    validates :title, presence: true, length: {minimum:5, maximum:20}
    validates :description, presence: true, length: {maximum:50}
    belongs_to :user
end
