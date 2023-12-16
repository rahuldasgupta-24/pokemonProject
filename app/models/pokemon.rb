class Pokemon < ApplicationRecord
    has_one_attached :image

    has_many :pokemon_trainers, dependent: :destroy
    has_many :trainers, through: :pokemon_trainers

    enum typing: { Fire: 'Fire', Water: 'Water', Grass: 'Grass',
                   Rock: 'Rock', Ground: 'Ground', Steel: 'Steel',
                   Psychic: 'Psychic', Dark: 'Dark', Ghost: 'Ghost', 
                   Poison: 'Poison', Fighting: 'Fighting', Normal: 'Normal',
                   Flying: 'Flying', Bug: 'Bug', Ice: 'Ice',
                   Fairy: 'Fairy', Electric: 'Electric', Dragon: 'Dragon'}

    # Add a color attribute for each type
    def color
        case typing
        when 'Fire'
            '#EE8130'
        when 'Water'
            '#6390F0'
        when 'Grass'
            '#7AC74C'
        when 'Bug'
            '#A6B91A'
        when 'Dragon'
            '#6F35FC'
        when 'Electric'
            'Yellow'
        when 'Ice'
            '#96D9D6'
        when 'Normal'
            '#A8A77A'
        when 'Fighting'
            '#C22E28'
        when 'Poison'
            '#A33EA1'
        when 'Ground'
            '#E2BF65'
        when 'Flying'
            '#A98FF3'
        when 'Psychic'
            '#F95587'
        when 'Rock'
            '#B6A136'
        when 'Ghost'
            '#735797'
        when 'Dark'
            '#705746'
        when 'Steel'
            '#B7B7CE'
        when 'Fairy'
            '#D685AD'
        end
    end
end

