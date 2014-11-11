# class PhotosController < ApplicationController
#   def index
#     @photos = Photo.all
#   end
#   def new
#     @photo =Photo.new
#   end
#   def create
#     # Find our parent decision that we should attach to
#     @photo = posts.photos.new(photo_params)
#     @photo.date ||= DateTime.now
#     # Attach this criterion to a decision
#     if @photo.save
#       redirect_to post_path
#     else
#       render 'new'
#     end
#   end

#   def show

#   end

#   def photo_params
#     params.require(:photo).permit(:image)
#   end
# end