# frozen_string_literal: true

module Dashboard
  class WeeksController < Dashboard::DashboardController
    before_action :set_week, only: %i[show edit update destroy]

    respond_to :html

    def index
      @weeks = Week.paginate(page: params[:page]).order(created_at: :desc)
      respond_with(:dashboard, @weeks)
    end

    def show
      respond_with(:dashboard, @week)
    end

    def new
      @week = Week.new
      respond_with(:dashboard, @week)
    end

    def edit; end

    def create
      @week = Week.new(week_params)
      @week.user_id = current_user.id
      respond_with(:dashboard, @week)
    end

    def update
      @week.update(week_params)
      respond_with(:dashboard, @week)
    end

    def destroy
      @week.destroy
      respond_with(:dashboard, @week)
    end

    private

    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params.require(:week).permit(:name, :user_id, tasks_attributes: %i[id name status priority term user_id _destroy])
    end
  end
end
