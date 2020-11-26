class PagesController < ApplicationController

    def create
        @journal = Journal.find(params[:journal_id])
        @page = @journal.pages.create(page_params)
        redirect_to journal_path(@journal)
    end
     
    private
    def page_params
        params.require(:page).permit(:pagetitle, :body)
    end

end
