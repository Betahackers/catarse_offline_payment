module CatarseOfflinePayment
  class ContributionActions

    def initialize contribution
      @contribution = contribution
    end

    def refund
      refund_request = gateway.refund(nil, @contribution.payment_id)
      refund_request.success?
    end

    private

    def gateway
      @gateway ||= CatarseOfflinePayment::Gateway.instance
    end

  end
end
