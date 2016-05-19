class Url < ActiveRecord::Base
  validates :long_url, presence: true, format: { with: /\Ahttp[s]?:\/\/www.[a-z]+.com\z/ }
  validates :short_url, presence: true

  def self.retrieve_short_url(long_url)
    result = self.find_by(long_url: long_url)
    result.nil? ? nil : result.short_url
  end

end
