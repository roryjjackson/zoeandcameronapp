class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  # def home
  # end
  http_basic_authenticate_with name: "zoe", password: "scotland2023", except: :index

  # http_basic_authenticate_with name: "zoe", password: "scotland2023"
  # http_basic_authenticate_with :password => "Scotland2023", :username => "zoe"
  def home
    @photo_album = Album.first
    # @rsvp_link = ALbum.last
  end
end
