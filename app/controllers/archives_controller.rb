class ArchivesController < ApplicationController
  def index
    # day is defined in the Entry model
    @entries = Entry.order("created_at DESC").all.group_by(&:day)
  end
end
