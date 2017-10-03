require "minitest/autorun"
require_relative "../../app/helpers/main_helper"

class TestImage < MiniTest::Test
    class Dummy
        attr_reader :description
        def initialize desc
            @description = desc
        end
    end

    # Runs before each test
    def setup
        @image_link = "http://www.gemsoul.com/images/articles/madagascar-ruby.jpg"
        @no_image_markdown = <<-MD
        # Hello!

        This is an example [markdown](https://daringfireball.net/projects/markdown/).
        MD

        @single_image_markdown = <<-MD
        # Hello!

        This is a [markdown](https://daringfireball.net/projects/markdown/) with a single image.

        ![ruby](#{@image_link})

        Here is a sample ruby for you.
        MD

        @multiple_images_markdown = <<-MD
        # Hello!

        This is a [markdown](https://daringfireball.net/projects/markdown/) with a single image.

        ![ruby](#{@image_link})

        Here is a sample ruby for you.

        ![opal](https://static.auctionmate.io/oa/uploads/images/600000-604999/604545/57a2c6b1decbe.jpg)

        Here is a sample opal for you.
        MD


        @no_image_project = Dummy.new @no_image_markdown
        @single_image_project = Dummy.new @single_image_markdown
        @multiple_image_project = Dummy.new @multiple_images_markdown
    end

    def test_returns_nil_where_there_is_no_image
        link = MainHelper.get_descriptive_image @no_image_project
        assert_equal nil, link
    end

    def test_returns_image_where_there_is_image
        assert_equal @image_link, MainHelper.get_descriptive_image(@single_image_project)
    end

    def test_returns_first_image_where_there_are_multiple_images
        assert_equal @image_link, MainHelper.get_descriptive_image(@multiple_image_project)
    end
end
