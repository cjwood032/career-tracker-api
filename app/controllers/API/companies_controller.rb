class Api::CompaniesController < ApplicationController
      before_action :set_company, only: [:show, :update, :destroy]
    def create

       company= Company.new(company_params)
       if company.save
        render json: company
       else
        render json: {message: company.errors}, status: 400
       end 
    end

    def index
        @companies = Company.all
        render json: @companies
    end
    
    def show
        render json: @company
    end
    
    def update
        if @company.update(company_params)
            render json: @company
        else
            render json: {message: @company.errors}, status: 400
        end
    end
    
    def destroy
        if @company.destroy
            render status: 204
        else
            render json:{message: "There was an error deleting the company"}, status: 400
        end

    end
    private
    def company_params
        params.permit(
            :company_name,
            :company_link,
            :company_glassdoor,
            :location,
            :reviews
            )
        
    end
    
    def set_company
        @company = Company.find(params[:id])
    end

end
