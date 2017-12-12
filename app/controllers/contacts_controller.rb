class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @company = Company.find(params[:company_id])
    @contact = @company.contacts.new(contact_params)
    if @contact.save
      flash[:success] = "You created a new contact for #{@company.name}!"
      redirect_to company_path(@company)
    else
      flash[:failure] = "We were unable to save your recent contact for #{@company.name}. Please try again"
      redirect_to company_path(@company)
    end
  end

  def destroy
    company = Company.find(params[:company_id])
    contact = Contact.find(params[:id])
    contact.destroy

    redirect_to company_path(company)
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :position, :email, :company_id)
  end

end
