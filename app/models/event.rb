class Event < ApplicationRecord
    validates :title, presence: true,
                    length: {minimum: 3, maximum: 200}
end
