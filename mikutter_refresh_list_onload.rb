# -*- coding: utf-8 -*-

Plugin.create :mikutter_refresh_list_onload do
    Plugin[:list].fetch_list_of_service(Service.primary).next{
        Plugin[:list].timelines.values.each{ |list|
          Plugin[:list].list_modify_member(list)
        }
    }
end