class VerificationLevel < ApplicationRecord
  belongs_to :profile, index: true

  FACEBOOK_RATE = 10
  GOOGLE_RATE = 10
  EMAIL_RATE = 10
  DATE_OF_BIRTH_RATE = 15
  TELEGRAM_RATE = 10
  WHATSAPP_RATE = 10
  ADDRESS_RATE = 20
  IMAGE_RATE = 15


  def update_rating!
    rating = 0
    ver_level = VerificationLevel.find_by(id: params[:id])

    if ver_level.facebook
      rating += FACEBOOK_RATE
    end

    if ver_level.google
      rating += GOOGLE_RATE
    end

    if ver_level.email
      rating += EMAIL_RATE
    end

    if ver_level.date_of_birth
      rating += DATE_OF_BIRTH_RATE
    end

    if ver_level.telegram
      rating +=TELEGRAM_RATE
    end

    if ver_level.whatsapp
      rating += WHATSAPP_RATE
    end

    if ver_level.address
      rating += ADDRESS_RATE
    end

    if ver_level.image
      rating += IMAGE_RATE
    end

    ver_level.rating = rating
    ver_level.save
  end

end
