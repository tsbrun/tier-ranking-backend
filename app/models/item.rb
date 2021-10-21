class Item < ApplicationRecord
    belongs_to :category, optional: true
    accepts_nested_attributes_for :category
end
