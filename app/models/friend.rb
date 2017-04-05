class Friend < ApplicationRecord
  belongs_to :user
  belongs_to :friend_user, class_name: :User


  after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverses, if: :has_inverse?

    def create_inverse
      self.class.create(inverse_friend_options)
    end

    def destroy_inverses
      inverses.destroy_all
    end

    def has_inverse?
      self.class.exists?(inverse_friend_options)
    end

    def inverses
      self.class.where(inverse_friend_options)
    end

    def inverse_friend_options
      { friend_user_id: user_id, user_id: friend_user_id }
    end
end
# user = User.find(params[:id])
# current_user.friends.new(friend_id: params[:id])
# user.friends.new(friend_id: current_user.id)
