# Author:: Miron Cuperman (mailto:miron+cms@google.com)
# Copyright:: FixNix Inc. 2012
# License:: Apache 2.0

# Programs overview
class ProgramsDashController < ApplicationController
	include DashboardHelper

#  access_control :acl do
#    allow logged_in
#  end



layout 'dashboard'

	def index
		data_table = GoogleVisualr::DataTable.new 
		@programs = allowed_objs(Program.all, 'read')
		init_quick_find
		# data_table.new_column('datetime', 'created_at')
		# data_table.new_column('varchar', 'kind')
		# Program.all.each do |p|
		# 	data_table.add_row([p.created_at, p.kind])
		# end
		opts = { :width => 800, :height => 480, :title => 'Graph of Ratings overtime', :legend => 'bottom' }
		@chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)
	end
end