class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
      redirect_to root_path, notice: "お問い合わせありがとうございました！"
      NoticeMailer.sendmail_contact(@contact).deliver
    else
      render 'new'
    end
  end

  def confirm
    @contact = Contact.new(contacts_params)
    render :new if @contact.invalid?
  end
  
  def new
  if params[:back]
    @contact = Contact.new(contacts_params)
  else
    @contact = Contact.new
  end
  end
  
  private
    def contacts_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
