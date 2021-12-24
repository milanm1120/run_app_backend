class RunsController < ApplicationController
    def index
        runs = Run.all
        render json: runs
    end

    def create
        run = Run.new(run_params)
        # byebug
        if run.save
            render json: run
        else
            render json: {error: "Run Not Saved"}
        end
    end

    def update
        run = Run.find_by_id(params[:id])
        if item.update(item_params)
            render json: runs
        else
            render json: {error: "Unable to Update"}
        end
    end
    private

    def run_params
        params.require(:run).permit(:run_type, :time, :distance, :comments, :runner_id)
    end
end
