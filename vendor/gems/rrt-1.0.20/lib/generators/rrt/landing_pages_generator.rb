require "generators/rrt/page_generator"

module RRT
  module Generators
    class LandingPagesGenerator < PageGenerator
      view_name "frontend_pages/landing_pages", "landing_page"

      namespace "rrt:landing_pages"

      def set_layout
        controller_const_name = "#{name.camelize}Controller".constantize
        inject_into_class File.join('app/controllers', class_path, "#{file_name}_controller.rb"), controller_const_name, "  layout '_base'\n"
      end
    end
  end
end
