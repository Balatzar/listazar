class ActivateItemsJob
  include Sidekiq::Worker

  def perform(*args)
    Item.activate_items
  end
end

Sidekiq::Cron::Job.create(name: "Activate items - every day at 02:00", cron: "0 2 * * *", class: "ActivateItemsJob")
