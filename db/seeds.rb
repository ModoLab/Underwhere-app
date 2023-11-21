# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Underwear.destroy_all


slip1 = {user_id: 1, title: "Slip Eminence", description: "Agreable à porter", url_photo: "https://i.ebayimg.com/images/g/1uMAAOSwj6RkLBRF/s-l1200.webp"}
slip2 = {user_id: 1, title: "Slip Kiabi", description: "100% coton bio", url_photo: "https://i.ebayimg.com/images/g/1uMAAOSwj6RkLBRF/s-l1200.webp" }
slip3 = {user_id: 1, title: "Slip Dim", description: "confortable et propre", url_photo: "https://i.ebayimg.com/images/g/1uMAAOSwj6RkLBRF/s-l1200.webp" }
slip4 = {user_id: 1, title: "Slip H&M", description: "slip kangourou", url_photo: "https://i.ebayimg.com/images/g/1uMAAOSwj6RkLBRF/s-l1200.webp"}
slip5 = {user_id: 1, title: "Slip Calvin Klein", description: "slip simple", url_photo: "https://i.ebayimg.com/images/g/1uMAAOSwj6RkLBRF/s-l1200.webp"}


[slip1, slip2, slip3, slip4, slip5].each do |attributes|
  underwear = Underwear.create!(attributes)
end
puts "Finished!"
