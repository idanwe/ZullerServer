# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require jquery.ui.all
# require jquery.ui.addresspicker
#= require chosen-jquery
#= require_tree .
composeUrl = (imgUrl) ->
  convert = "/convert?fit=clip&h=160&w=160"
  "#{imgUrl}#{convert}"

$("document").ready ->
  $(".music-multiselect").chosen()
  $(".host-select").chosen
    allow_single_deselect: true
  editFilePicker()

editFilePicker = ->
  $(".image-picker").each (i, controlGroup) ->
    controls = $(controlGroup).find(".controls")
    input = controls.find("input")

    imgUrl = input.val()
    unless imgUrl is ""
      url = composeUrl imgUrl
      img = $("<img>").prop("src", url)
      controls.append(img)

window.onImageUpload = ->
  file = event.fpfile
  img = $(event.target).siblings("img")
  deleteImg(img) unless img.length == 0
  if file?
    url = composeUrl file.url
    img = $("<img>").prop("src", url)
    $(event.target).parent().append(img)

deleteImg = (img) ->
  console.log 'deleteImge'
  img.remove()
  imgUrl = img.prop("src")
  convert = "/convert?fit=clip&h=160&w=160"
  url = imgUrl.replace(convert, "")
  filepicker.remove url
