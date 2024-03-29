# frozen_string_literal: true

class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]

  def index
    # user dashboard - post feed
    @posts = Post.active
  end

  def profile
    # user profile
    @posts = @account.posts.active
  end

  def set_account
    @account = Account.find_by_username(params[:username])
  end
end
