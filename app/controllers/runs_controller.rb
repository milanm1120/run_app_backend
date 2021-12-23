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
        params.require(:run).permit(:run_type, :time, :distance, :comments, :runner_id)
    end
end
