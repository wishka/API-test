module Api
    module V1
      class UsersController < ApplicationController
        def create
          if @user.save
          render status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:name)
      end
      end
    end
end
