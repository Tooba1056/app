class LockfileDependency < ApplicationRecord
  belongs_to :lockfile
  belongs_to :gemmy
end

# == Schema Information
#
# Table name: lockfile_dependencies
#
#  gemmy_id    :integer
#  lockfile_id :integer
#
