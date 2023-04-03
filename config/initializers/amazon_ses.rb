ActionMailer::Base.add_delivery_method :ses, AWS::SESMailer, use_iam_profile: true
