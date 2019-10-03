class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        post = Post.create(params.require(:post).permit(:content).merge(event_id: session[:event_id], user_id: @current_user.id, post_date: Date.today.to_s, post_time: "10:00AM"))
        # Need to hard-code post_time for now and merge
        redirect_to event_path(post.event)
    end

    def destroy
        post = Post.find(params[:id])
        event = Event.find(post.event.id)
        post.destroy
        redirect_to event_path(event)
    end

end
