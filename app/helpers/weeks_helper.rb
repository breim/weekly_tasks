# frozen_string_literal: true

module WeeksHelper
	def priority_color(priority)
    case priority
    when 'High' then '#db3d52'
    when 'Medium' then '#9754d1'
    when 'Low' then '#4e91f5'
    when 'Best effort' then '#fa9f43'
    end
  end


	def status_color(status)
    case status
    when 'Done' then '#1fcf7a'
    when 'Working on it' then '#fa9f43'
    when 'Stuck' then '#db3d52'
    when 'Waiting for review' then '#4e91f5'
    when 'On hold' then '#0f7346'
    end
  end
end
