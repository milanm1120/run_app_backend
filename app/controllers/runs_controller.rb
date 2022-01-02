class RunsController < ApplicationController
    def index
        runs = Run.all
        render({json: runs, except: [:created_at, :updated_at]})
    end

    def create
        run = Run.new(run_params)
        # byebug
        if run.save
            render ({json: run})
        else
            render json: {error: "Run Not Saved"}
        end
    end

    def destroy
        run = Run.find_by_id(params[:id])
        run.destroy
        render json: {messsage: "Successfully Deleted"}
    end
    private

    def run_params
        params.require(:run).permit(:run_type, :time, :distance, :comments, :runner_id)
    end
end
