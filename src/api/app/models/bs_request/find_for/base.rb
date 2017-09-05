class BsRequest
  module FindFor
    class Base
      def initialize(parameters, relation = BsRequest.with_actions)
        @parameters = parameters
        @relation = relation
      end

      private

      def user_login
        @parameters[:user]
      end

      def group_title
        @parameters[:group]
      end

      def source_project_name
        @parameters[:source_project]
      end

      def package_name
        @parameters[:package]
      end

      def project_name
        @parameters[:project]
      end

      def subprojects
        @parameters[:subprojects]
      end

      def roles
        @parameters[:roles] || []
      end

      def states
        @parameters[:states] || []
      end

      def types
        @parameters[:types] || []
      end

      def review_states
        @parameters[:review_states] || [:new]
      end

      def quote(str)
        BsRequest.connection.quote(str)
      end
    end
  end
end
