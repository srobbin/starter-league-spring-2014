class Note < ActiveRecord::Base
  before_create :send_pusher

private
  def send_pusher
    Pusher['notes_channel'].trigger('new_note')
  end
end
