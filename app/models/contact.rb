class Contact < MailForm::Base
  append :remote_ip, :user_agent
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :contact_number
  attribute :message
  validates :message,   length: { in: 15..2000 }
  attribute :nickname,  :captcha  => true


  def headers
    {
      subject: 'Contacto motortowncr.com',
      to: 'motor_uruca@watersonn.',
      from: %("#{name}" <#{email}>)
    }
  end
end
