if defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

Pry::Commands.create_command "generate-token" do
  description "Generate a CB Client Credentials token"
  command_options keep_retval: true

  def process
    require 'oauth2-wrapper'

    args = {
      grant_type: 'client_credentials',
      client_id: ENV['CB_ID'],
      client_secret: ENV['CB_SECRET'],
      shared_secret: ENV['CB_SECRET'],
      environment: 'production',
      options: {}
    }

    client = OAuth2Wrapper::OAuth2ClientFactory.getClient(args)
    token = client.get_token
  end
end


Pry::Commands.create_command "generate-token-test" do
  description "Generate a CB Client Credentials token for test"
  command_options keep_retval: true

  def process
    require 'oauth2-wrapper'

    args = {
      grant_type: 'client_credentials',
      client_id: ENV['CB_ID_TEST'],
      client_secret: ENV['CB_SECRET_TEST'],
      shared_secret: ENV['CB_SECRET_TEST'],
      environment: 'test',
      options: {}
    }

    client = OAuth2Wrapper::OAuth2ClientFactory.getClient(args)
    token = client.get_token
  end
end

Pry::Commands.create_command "setup-cb-client" do
  description "Configure CB API Client"

  def process
    Cb.configure do |config|
      config.dev_key = ENV['CB_DEV_KEY']
      config.base_uri = 'https://wwwtest.api.careerbuilder.com'
    end
  end
end

Pry::Commands.create_command "setup-cb-client-production" do
  description "Configure CB API Client"

  def process
    Cb.configure do |config|
      config.dev_key = ENV['CB_DEV_KEY']
      config.base_uri = 'https://api.careerbuilder.com'
    end
  end
end

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Hit Enter to repeat last command
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end
