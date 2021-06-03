class Application < ApplicationRecord
  validates_presence_of :website,
                        :facebook_link,
                        :instagram_link,
                        :short_description,
                        :category,
                        :mlm_status,
                        :description,
                        :best_gift,
                        :price_range,
                        :booth_choice,
                        :previous_vendor,
                        :previous_efforts

  enum category: {jewelry: 0,
                  fiber_arts: 1,
                  fine_art: 2,
                  ceramics: 3,
                  childrens_goods: 4,
                  household_goods: 5,
                  skincare: 6,
                  woodworking: 7,
                  paper_goods: 8
                  }
  enum application_status: { pending: 0, approved: 1, declined: 2 }

  enum booth_choice: {six_ft_table: 0, ten_by_ten: 1}
  belongs_to :user
  belongs_to :event
end
