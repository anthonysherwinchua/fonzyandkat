class ScrapeInstagramJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    ScrapeInstagramService.call
  end
end
