#DB設計

##seminarsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false,index:true,unique:true|
|date|date|index:true|
|time|time||
|subscription|integer||
|price|integer||
|cost|integer||
|other|text|

###Association



##roomsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false,unique:true|
|address|string|null:false|
|tel|sting||
|cost|integer||
|other|text|
|seminar_id|references|

###Association


##Customerテーブル
|Column|Type|Options|
|------|----|-------|
|name|stirng|null:false,unique:true|
|area|string||
|age|string||
|sex|string||
|other|text||
|seminar_id|references||

###Association

##Todoテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null:false|
|rank|string||
|deadline|datetime||
|seminar_id|references||

###Association