class Author

    attr_accessor :name

    def initialize(name)
        @name = name

    end

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(name)
        new_post = Post.new(name)
        add_post(new_post)
        new_post
    end

    def self.post_count
        Post.all.length
    end

end