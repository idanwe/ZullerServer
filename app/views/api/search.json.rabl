collection @attractions => "Attractions"#, :object_root => false
# attributes :id, :name, :address, :logo_url#, :photos_url, :musics, :phone_number

@attractions.each do |attraction|
  extends "api/attraction"
end