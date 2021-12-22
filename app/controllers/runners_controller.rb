class RunnersController < ApplicationController
    def index
        runners = Runner.all
        render json: runners
    end
end
