class RelationshipsController < ApplicationController
  def create
    following = current_user.relationships.build(follower_id: params[:user_id])
    following.save
    redirect_to request.referrer || root_path
  end

  def destory
    following = current_user.relationships.find_by(follower_id: params[:user_id])
    following.destory
    redirect_to request.referrer || root_path
  end
end
