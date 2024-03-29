class RsvpsController < ApplicationController
  http_basic_authenticate_with :name => "guest", :password => "scotland2023"

  def index
    @rsvps = Rsvp.all
    @total_participants = 0
    @rsvps.each do |rsvp|
      @total_participants += 1 if rsvp.attendance == "Yes"
    end
  end

  def edit
    @rsvp = Rsvp.find(:id)
  end

  def update
    @rsvp = Rsvp.find(:id)
    @vip.update(rsvp_params)
  end

  def new
    @rsvp = Rsvp.new
  end

  def destroy
    @rsvp = Rsvp.find(:id)
    @rsvp.destroy
    redirect_to root_path
  end

  def show
    @rsvps = Rsvp.all
  end

  def create
    # @wedding_guest = WeddingGuest.find(params[:wedding_guests_id])
    @rsvp = Rsvp.new(rsvp_params)
    # @rsvp.save
    # @wedding = Wedding.find(params[:wedding_id])
    # @rsvp.wedding_id = @wedding.id
    if @rsvp.save
      redirect_to root_path, notice: "Thank you for filling out our form!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :song, :attendance, :diet)
  end
end
