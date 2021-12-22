class RunSerializer < ActiveModel::Serializer
  attributes :id, :time, :distance, :run_type, :comments
  belongs_to :runner
end
