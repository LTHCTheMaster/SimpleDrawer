
data remove storage simpledrawer:main temp.Items
data remove storage simpledrawer:main temp.GuiConnector
data modify storage simpledrawer:main temp.GuiConnector set from block ~ ~ ~ Items

execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:0b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:0b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:1b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:1b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:2b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:2b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:3b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:3b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:4b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:4b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:5b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:5b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:6b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:6b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:7b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:7b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:8b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:8b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:9b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:9b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:10b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:10b}]
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:11b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:11b}]
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:12b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:12b}]
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:13b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:13b}]
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:14b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:14b}]
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:15b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:15b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:16b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:16b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:17b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:17b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:18b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:18b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:19b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:19b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:20b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:20b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:21b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:21b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:22b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:22b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:23b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:23b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:24b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:24b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:25b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:25b}]
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:26b}].tag.simpledrawer.connector_gui run data modify storage simpledrawer:main temp.Items append from storage simpledrawer:main temp.GuiConnector[{Slot:26b}]

execute if data storage simpledrawer:main temp.Items[0] run function simpledrawer:drawer_connector/drop

execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:0b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.0 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:1b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.1 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:2b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.2 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:3b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.3 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:4b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.4 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:5b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.5 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:6b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.6 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:7b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.7 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:8b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.8 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:9b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.9 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:10b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.10 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:11b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.11 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:12b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.12 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:13b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.13 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:14b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.14 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
#execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:15b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.15 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:16b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.16 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:17b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.17 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:18b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.18 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:19b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.19 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:20b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.20 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:21b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.21 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:22b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.22 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:23b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.23 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:24b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.24 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:25b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.25 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}
execute unless data storage simpledrawer:main temp.GuiConnector[{Slot:26b}].tag.simpledrawer.connector_gui run item replace block ~ ~ ~ container.26 with stone{CustomModelData:1430000,simpledrawer:{gui:1b,connector_gui:1b},display:{Name:'{"text":""}'}}