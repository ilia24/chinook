class Track < ActiveRecord::Base
  SHORT = 180000
  LONG = 360000

  scope :short, -> {where('milliseconds < ?', SHORT)}
  scope :medium, -> {where('milliseconds >= ? AND milliseconds < ?', SHORT, LONG)}
  scope :long, -> {where('milliseconds >?', LONG)}

  scope :starts_with, -> (first_char){where('name ILIKE ?', "#{first_char}%")}

  scope :starts_with_a, -> {where('name ILIKE ?', 'a%')}

  # def self.short
  #   where('milliseconds < ?', SHORT)
  # end

end
