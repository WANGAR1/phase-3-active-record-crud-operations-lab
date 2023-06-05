class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end
    
    def self.last_movie
        Movie.last 
    end

    def self.movie_count
        Movie.count 
    end

    def self.find_movie_with_id(movie_id)
        find_by(id: movie_id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        where('release_date > ?', 2002)
    end

    def update_with_attributes(attributes)
        update(attributes)
    end
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id(movie_id)
        movie = find_by(id: movie_id)
        movie.destroy if movie
    end

    def self.delete_all_movies
        delete_all
    end
end