class Contact < MailForm::Base
  append :remote_ip, :user_agent
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  validates :message,   length: { in: 15..2000 }
  attribute :nickname,  :captcha  => true


  def headers
    {
      subject: 'Contact Form',
      to: 'your_email@example.org',
      from: %("#{name}" <#{email}>)
    }
  end
end
