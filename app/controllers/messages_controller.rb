class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_channel

  def create
    @message = @channel.messages.create(message_params)
  end

  private

  def set_channel
    @channel = current_user.channels.find(params[:channel_id])
    # this checks if the user is a member of the channel.
  end

  def message_params
    params.require(:message).permit(:body).merge(user: current_user)
    # forces the user of the message to be the current_user
  end

end
