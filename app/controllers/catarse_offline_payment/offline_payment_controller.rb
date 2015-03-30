class CatarseOfflinePayment::OfflinePaymentController < ApplicationController

  skip_before_filter :force_http

  SCOPE = "projects.contributions.checkout"
  layout :false

  def review
    @project = contribution.project if contribution
  end

  def pay
    begin
      contribution.update_attributes payment_method: 'OfflinePayment'
      contribution.waiting!
      flash[:success] = t('success', scope: SCOPE)
      redirect_to main_app.project_contribution_path(project_id: contribution.project.id, id: contribution.id)

    rescue Exception => e
      Rails.logger.info "-----> #{e.inspect}"
      flash[:failure] = t('offline_payment_error', scope: SCOPE)
      return redirect_to main_app.new_project_contribution_path(contribution.project)
    end
  end


  def cancel
    flash[:failure] = t('paypal_cancel', scope: SCOPE)
    redirect_to main_app.new_project_contribution_path(contribution.project)
  end

  def contribution
    @contribution ||= if params['id'] 
                        PaymentEngines.find_payment(id: params['id'])
                      end
  end

  def gateway
    @gateway ||= CatarseOfflinePayment::Gateway.instance
  end

end
