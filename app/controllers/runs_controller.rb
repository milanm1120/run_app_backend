class RunsController < ApplicationController
    def index
        runs = Run.all
        render json: runs
    end

    def create
        run = Run.new(run_params)
    end

    private

    def run_params
        
    end
end
