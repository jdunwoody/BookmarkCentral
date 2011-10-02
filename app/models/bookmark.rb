class Bookmark < ActiveRecord::Base
  has_many :label
end
