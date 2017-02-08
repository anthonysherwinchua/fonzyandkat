class ScrapeInstagramService

  def self.call
    last_image = Image.order(updated_at: :desc).first

    hashtags = ENV['INSTAGRAM_TAG'].split(',')

    items = []
    hashtags.each do |hashtag|
      items << InstaScrape.hashtag(hashtag).map(&:image)
    end

    items = items.flatten.uniq
    items.each do |item|
      Image.create(image_url: item)
    end

    Image.where('updated_at <= ?', last_image.updated_at).destroy_all if last_image
  end

end
