class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to root_path
      flash[:notice] = "Thanks for the message! I will get back to you soon. -Emily"
    else
      redirect_to root_path
      flash[:alert] = "An error occurred while delivering this message."
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
