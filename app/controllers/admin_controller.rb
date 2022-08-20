class AdminController < ApplicationController
    def index
        @posts = Post.all
        @comments = Comment.all
    end
end
