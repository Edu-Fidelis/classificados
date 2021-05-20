class AdsController < ApplicationController
    before_action :required_logged_user

    def new
        @ad = Ad.new
    end

    def create
        #@ad = Ad.new(ad_params.merge(user_id: current_user.id))
        @ad = current_user.ads.build(ad_params)
        if @ad.save
            redirect_to root_path, notice: "Anúncio criado com sucesso"
    end

    def ad_params
        params.require(:ad).permit(:title, :description, :price)
    end
end