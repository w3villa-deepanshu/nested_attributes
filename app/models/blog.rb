class Blog < ApplicationRecord
  belongs_to :category
  has_many :blogtags
  has_many :tags,through: :blogtags

  accepts_nested_attributes_for :tags,allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? }
end
