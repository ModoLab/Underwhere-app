class AvailabilityValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # Recherche des réservations :
    bookings = Booking.where(["user_id =?", record.user_id])
    # Création des plages de dates :
    date_ranges = bookings.map { |b| b.start_date..b.end_date }
    # Validation de la disponibilité : Itère sur chaque plage de dates et vérifie si la date à valider
    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end
