module CatarseOfflinePayment
  class PaymentEngine

    def name
      'OfflinePayment'
    end

    def review_path contribution
      CatarseOfflinePayment::Engine.routes.url_helpers.review_offline_payment_path(contribution)
    end

    def can_do_refund?
      true
    end

    def direct_refund contribution
      CatarseOfflinePayment::ContributionActions.new(contribution).refund
    end

    def locale
      'en'
    end

  end
end
