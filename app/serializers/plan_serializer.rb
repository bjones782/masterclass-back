class PlanSerializer < ActiveModel::Serializer
  attributes :id, :topic, :objective, :direct, :guided, :independent, :cfu
end
