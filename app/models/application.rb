class Application < ApplicationRecord
  validates_presence_of :category,
                        :mlm_status,
                        :previous_vendor,
                        :previous_efforts,
                        :description,
                        :price_range

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
  enum booth_choice: {six_ft_table: 0, ten_by_ten: 1}
  belongs_to :user
  belongs_to :event
end
