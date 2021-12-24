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
        if run.update(run_params)
            render json: run
        else
            render json: {error: "Unable to Update"}
        end
    end

    def destroy
        run = Run.find_by_id(params[:id])
        run.destroy
        render json: {messsage: "Successfully Deleted #{run.run_type}"}
    end
    private

    def run_params
        params.require(:run).permit(:run_type, :time, :distance, :comments, :runner_id)
    end
end
