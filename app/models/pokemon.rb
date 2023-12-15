class Pokemon < ApplicationRecord
    has_one_attached :image

    enum typing: { Fire: 'Fire', Water: 'Water', Grass: 'Grass', Other: 'Other' }

    # Add a color attribute for each type
    def color
        case typing
        when 'Fire'
            'red'
        when 'Water'
            'blue'
        when 'Grass'
            'green'
        else
            'black' # Default to black for unknown types
        end
    end
end
  
