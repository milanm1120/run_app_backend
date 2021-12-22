class RunnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :height, :weight
  has_many :runs
end
