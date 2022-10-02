class Tag < ApplicationRecord
  has_many :blogtags
  has_many :blogs,through: :blogtags
end
