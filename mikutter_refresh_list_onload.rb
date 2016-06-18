# -*- coding: utf-8 -*-

Plugin.create :mikutter_refresh_list_onload do
	Service.each{|service|
		Plugin[:list].fetch_and_modify_for_using_lists(service)
	}

	command(:open_my_profile,
		name: 'リストを更新する',
		condition: lambda{ |opt| true },
		visible: true,
		icon: File.dirname(__FILE__) + "/list.png",
		role: :window) do |opt|
			Service.each{|service|
				Plugin[:list].fetch_and_modify_for_using_lists(service)
			}
	end

end
