module Api
    module v1
        class PeopleController < ApplicationController
            def index()
                @people = Person.order('created_at DESC');
            end
        end
    end
end