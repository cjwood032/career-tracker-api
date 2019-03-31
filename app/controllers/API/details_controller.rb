class Api::DetailsController < ApplicationController
    before_action :set_detail, only: [:show, :update, :destroy]
    def create
       detail= Detail.new(detail_params)
       detail.updated=Time.now.strftime("%m/%d/%Y")
       if detail.save
        render json: detail
       else
        render json: {message: detail.errors}, status: 400
       end 
    end

    def index
        @details=Detail.all
        render json: @details
    end
    
    def show
        render json: @detail
    end
    
    def update
        if @detail.update(detail_params)
            render json: @detail
        else
            render json: {message: @detail.errors}, status: 400
        end
    end
    
    def destroy
        if @detail.destroy
            render status: 204
        else
            render json:{message: "There was an error deleting the details"}, status: 400
        end

    end
    private
    def detail_params
        params.permit(
            :company,
            :step,
            :updated,
            :contacted,
            :email,
            :name,
            :role,
            :action,
            :method,
            :first,
            :referral,
            :jobTitle,
            :jobLink,
            :notes,
            :complete,
            :status
        )
    end
    
    def set_detail
        @detail = Detail.find(params[:id])
    end

end
