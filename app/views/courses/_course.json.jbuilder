json.course do
  json.extract! course, :id, :course_name, :description
  json.url course_url(course, format: :json)
  json.questions @course.questions do |question|
    json.id question.id
    json.question "<audio src='#{question.question}'/> #{question.answer}"
    json.answer question.answer
  end
end

# '<audio src="https://xlearn-static.herokuapp.com/a_temp.mp3"/>'
