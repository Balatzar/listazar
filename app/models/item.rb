class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user

  broadcasts_to :list

  def self.activate_items
    Item.where(done: true).where("done_at::date + reactivation_delay_days = '#{Date.today}'").update_all(done: false)
  end
end
