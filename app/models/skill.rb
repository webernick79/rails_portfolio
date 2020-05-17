class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  # default values within the model file here, happens at new record creation
  after_initialize :set_defaults

  # implemented using the concern, pretty good.
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: 250, width: 250)
  end
end