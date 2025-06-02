module TopicsHelper
    def self.valid_linked linked_type, linked_id
        return linked_type.blank? || linked_id.blank? || (Topic::LINKED_TYPES.include?(linked_type) && linked_type.constantize.find_by(id: linked_id).present?)
    end
end
