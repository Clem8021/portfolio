def new_message(contact)
  @contact = contact
  mail(
    to:       "clemence.marotte@gmail.com",
    reply_to: contact.email,
    subject:  "[Portfolio] Nouveau message de #{contact.name}"
  )
end