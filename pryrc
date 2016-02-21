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
