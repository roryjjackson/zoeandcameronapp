class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  # def home
  # end
  # http_basic_authenticate_with :password => "Scotland2023"
  def home
    @photo_album = Album.first
  end
end
