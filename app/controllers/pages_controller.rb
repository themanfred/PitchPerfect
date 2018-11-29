class PagesController < ApplicationController
layout 'landing', only: :home
skip_before_action :authenticate_user!, only: [:home]
  def home
  end
end
