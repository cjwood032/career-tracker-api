class Api::CareersController < ApplicationController
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
        @careers = Career.all
        render json: @careers
    end
    
    def show
        render json: @career#, include: :details
    end
    
    def update
        if @career.update(career_params)
            render json: @career
        else
            render json: {message: @career.errors}, status: 400
        end
    end
    
    def destroy
        if @career.destroy
            render status: 204
        else
            render json:{message: "There was an error deleting the career"}, status: 400
        end

    end
    private
    def career_params
        params.permit(
            :title,
            :link,
            :company,
            :location,
            :description
            )
        
    end
    
    def set_career
        @career = Career.find(params[:id])
    end

end
