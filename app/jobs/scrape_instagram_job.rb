class ScrapeInstagramJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ScrapeInstagramService.call
  end
end
