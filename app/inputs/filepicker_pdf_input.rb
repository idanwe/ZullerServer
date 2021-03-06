class FilepickerPdfInput < SimpleForm::Inputs::Base
  def input
    services = "COMPUTER, IMAGE_SEARCH, FACEBOOK, INSTAGRAM, GMAIL, GOOGLE_DRIVE, DROPBOX, WEBCAM"
    options = {
      button_class: 'btn',
      services: services,
      onchange: 'onImageUpload()',
      extension: '.pdf',
      dragdrop: true
    }
    @builder.filepicker_field(attribute_name, options).html_safe
  end
end