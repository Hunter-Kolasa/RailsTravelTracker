module VacationsHelper
    def current_vacation
        @vacation ||= Vacation.find_by(params[:id])
    end
end
