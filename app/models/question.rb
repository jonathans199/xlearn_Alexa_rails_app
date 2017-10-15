class Question < ApplicationRecord
  belongs_to :course

  def question_tag
    "<audio src=\"#{question}\"/> #{answer}"
  end
end
