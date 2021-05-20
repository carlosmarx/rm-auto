class AdminController < ApplicationController
  before_action :authenticate_user!
  # before_action :build_profile
  layout 'admin'

  # def build_profile
  #   current_user.build_profile if current_user.profile.blank?
  # end
end
