# -*- coding: utf-8 -*-

Plugin.create :mikutter_refresh_list_onload do
	Plugin[:list].fetch_list_of_service(Service.primary).next{
		Plugin[:list].timelines.values.each{ |list|
			Plugin[:list].list_modify_member(list)
		}
	}

	command(:open_my_profile,
		name: 'リストを更新する',
		condition: lambda{ |opt| true },
		visible: true,
		icon: File.dirname(__FILE__) + "/list.png",
		role: :window) do |opt|

		Plugin[:list].fetch_list_of_service(Service.primary).next{
			Plugin[:list].timelines.values.each{ |list|
				Plugin[:list].list_modify_member(list)
			}
		}
	end

end