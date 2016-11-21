module Internal
  class Task < ApplicationRecord
    belongs_to :responsible, class_name: "::Internal::Staff", required: false

    enum priority:  ['alta', 'normal', 'baixa']
    enum situation: ['aguardando', 'em_progresso', 'feita', 'bloqueada']

    validates :title, :situation, :priority, :due, presence: true 

  end
end
