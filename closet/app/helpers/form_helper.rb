module FormHelper
	def setup_item(item)
		item.color_list ||= ColorList.new
		item
	end
end