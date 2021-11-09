class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
    render({:template => "user_templates/index.html.erb"})
  end

  def show

    url_username = params.fetch("username")

    matching_usernames = User.where({ :username => url_username})

    @the_user = matching_usernames.first

    # if the_user == nil
    #  redirect_to("/404")
    # else
      render({:template => "user_templates/show.html.erb"})
    # end
  end

  def create
    the_username = params.fetch("input_username")
   
    new_user = User.new

    new_user.username = the_username
    new_user.private = false
    new_user.likes_count = 0
    new_user.comments_count = 0

    time = Time.now

    new_user.created_at = time
    new_user.updated_at = time

    new_user.save

    redirect_to("/users/" + the_username)
  end



  def update
    current_name = params.fetch("current_name")

    # current_username = User.where({ :id => current_id}).at(0).username

    new_username = params.fetch("input_username")

    matching_user = User.where({ :username => current_name})

    the_user = matching_user.at(0)

    the_user.username = new_username
    
    the_user.save
    redirect_to("/users/" + new_username)
  end
end