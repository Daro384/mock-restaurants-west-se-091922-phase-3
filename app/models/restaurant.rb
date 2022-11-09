class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def fanciest
        Restaurant.group(:price).max
    end

    def all_reviews
        self.reviews.map do |review|
            "Review for #{self.name} by #{"#{review.customer.first_name} #{review.customer.last_name}"}: #{review.rating} stars."
        end
    end

end