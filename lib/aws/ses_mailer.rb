module AWS
  class SESMailer
    attr_reader :settings

    def initialize(options = {})
      @fog_mailer = Fog::AWS::SES.new(options)
      @settings = {}
    end

    delegate :send_raw_email, to: :@fog_mailer

    alias_method :deliver!, :send_raw_email
    alias_method :deliver, :send_raw_email
  end
end
