class PagesController < ApplicationController
  def index
    @projects = Project.where(featured: true).order(position: :asc)
  end

  def about
  end

  def contact
    @contact_message = ContactMessage.new
  end

  def send_contact
    @contact_message = ContactMessage.new(contact_params)

    if @contact_message.valid?
      ContactMailer.new_message(@contact_message).deliver_now
      redirect_to contact_path, notice: "Votre message a bien été envoyé !"
    else
      render :contact, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact_message).permit(:name, :email, :project_type, :body)
  end
end
