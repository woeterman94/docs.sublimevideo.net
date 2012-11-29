class ReleasesController < ApplicationController
  respond_to :html, :atom

  def index
    params[:page] = 'releases' # for trigger the menu 'active' class
    @releases = Release.all.reverse

    respond_with(@releases) # if stale?(@releases.first, public: true)
  end

end
