class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[show]

  def show
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.all
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
