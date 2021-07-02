module Api
    module V1
        class PeopleController < ApplicationController
            def index
                search = params.has_key?('search') && params[:search] ? params[:search] : ''
                limit = params.has_key?('limit') && params[:limit] ? params[:limit] : 30
                page = params.has_key?('page') && params[:page] ? params[:page] : 1
                @people = Person.where('LOWER(name) LIKE LOWER(:search) OR LOWER(email) LIKE LOWER(:search)', search: "%#{search}%").order('created_at DESC').paginate(:per_page => limit, :page => page)
                render json: {status: 'success', message: 'People retrieved successfully', data: @people}, :except =>  [:password_digest, :id], status: :ok
            end
        end
    end
end