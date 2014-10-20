class Player < ActiveRecord::Base
  after_create :set_rating_or_destroy

  default_scope -> { order(:rating) }

  private

  def set_rating_or_destroy
    # Go to the member url page
    # Fetch ello rating and asign
    # or destroy because user does not exist
  end
end
