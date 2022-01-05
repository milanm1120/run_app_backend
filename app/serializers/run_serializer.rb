class RunSerializer < ActiveModel::Serializer
  attributes :id, :time, :distance, :run_date, :run_type, :comments, :runner_id
  belongs_to :runner
end
