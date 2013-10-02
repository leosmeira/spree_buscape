class Spree::Admin::BuscapesController < Spree::Admin::BaseController

  def update
    SpreeBuscape::Config.set(params[:preferences])

    respond_to do |format|
      format.html {
        redirect_to admin_buscapes_path
      }
    end
  end

end



