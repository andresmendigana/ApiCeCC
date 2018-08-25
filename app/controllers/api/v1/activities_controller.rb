module Api
  module V1
    class ActivitiesController < ApplicationController
      def index
        @activities = Activity.order('created_at DESC')
        render json: @activities
      end
    end
  end
end
