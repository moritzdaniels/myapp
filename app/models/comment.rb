class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  scope :rating_desc, -> { order(rating: :desc) }
end

class CommentsController < ApplicationController

  def create
  end

  def destroy
  end

end