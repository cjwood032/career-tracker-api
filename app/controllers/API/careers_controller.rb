class API::CareersController < ApplicationController
    before_action :set_career, only: [:show, :update, :destroy]
    def create
       career= Career.new(career_params)
       if career.save
        render json: career
       else
        render json: {message: career.errors}, status: 400
       end 
    end

    def index
        render json: Career.all, include: :descriptions
    end
    
    def show
    end
    
    def update
    end
    def destroy
    end
    private
    def career_params
        params.require(:career).permit(:body) #update later
    end
    
    def set_career
        @career = Career.find(params[:id])
    end

end
