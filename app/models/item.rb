class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user

  broadcasts_to :list
end
