begin
  if Rails.env.production?
    ActionMailer::Base.smtp_settings = {
      address: 'smtp.sendgrid.net',
      port: '587',
      authentication: :plain,
      user_name: 'entropiacoletiva',
      password: 'Entropia.coletiva1',
      domain: 'entropiacoletiva.com'
    }
    ActionMailer::Base.delivery_method = :smtp
  end

  if Rails.env.staging?
    ActionMailer::Base.smtp_settings = {
      address: 'smtp.sendgrid.net',
      port: '587',
      authentication: :plain,
      user_name: 'entropiacoletiva',
      password: 'Entropia.coletiva1',
      domain: 'entropiacoletiva.com'
    }
    ActionMailer::Base.delivery_method = :smtp
  end

rescue
  nil
end

if Rails.env.sandbox?
  ActionMailer::Base.register_interceptor(SandboxMailInterceptor)
end
