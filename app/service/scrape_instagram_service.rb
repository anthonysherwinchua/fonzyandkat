class ScrapeInstagramService

  def self.call
    last_image = Image.order(updated_at: :desc).first

    items = InstaScrape.hashtag(ENV['INSTAGRAM_TAG'])
    items.each do |item|
      Image.create(image_url: item.image)
    end

    Image.where('updated_at <= ?', last_image.updated_at).destroy_all
  end

end
