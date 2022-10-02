class BlogtagsController < ApplicationController
  belongs_to :blog
  belongs_to :tag
end
