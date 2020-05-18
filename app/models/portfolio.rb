class Portfolio < ApplicationRecord
  has_many :technologies

  validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image

  # database query using method named 'angular'
  def self.angular
    where(subtitle: 'Angular')
  end

  # database method for counting the records
  def self.record_counter
    all.count
  end

  # database query with custom scope
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  # default values within the model file here, happens at new record creation
  after_initialize :set_defaults

  # this is a great way to do this, it says if no image add this.
  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end

end
