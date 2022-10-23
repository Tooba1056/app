module Maintenance
  class CheckPendingCompats < Services::Base
    def call
      check_uniqueness on_error: :return

      pending_compats = Compat.pending
                              .checked_before(2.hours.ago)

      if pending_compats.any?
        ReportError.call "Some compats have been pending for a long time.",
          count: pending_compats.size
      end
    end
  end
end
