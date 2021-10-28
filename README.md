# Internal Item ID Utility

This is a utility that allows you to easily manage items with complicated NBT with an internal ID system. 

## Use

### The basics
This system will automatically convert item entities, as well as items in containers and player inventories, from a formatted item into an item specified by an id in a function. You can also give items with one of the [utility functions](https://github.com/gibbsly/iiid#utility-functions) that are provided in this pack. 

### Ids
An id has to be a positive integer, to create an item with a specific id you create a [function](https://github.com/gibbsly/iiid/blob/main/data/iiid/functions/example.mcfunction) similar to this one, then add that function to the [`#iiid:generate_item`](https://github.com/gibbsly/iiid/blob/main/data/iiid/tags/functions/generate_item.json) function tag. You can add your function to the tag that is provided in this pack, or you can create an `iiid` namespace in your own datapack, with the tag, that calls your function directly. This is generally a better practice due to it avoiding cross-datapack function calls.

### Item format
Items with special nbt on them are automatically converted when on the ground or in [player inventories](https://github.com/gibbsly/iiid#player-inventories). The nbt formatting to do this is `{iiid:{action:<id>}}`. This is primary useful for [loot tables](https://github.com/gibbsly/iiid/blob/main/data/iiid/loot_tables/example.json) so you can have consistent items across different loot tables without having to maintain all of them.

## Copy Operations
If an item id object specifies no `id` or `Count`, or if `id`, `tag` or `Count` are `"copy"` some behavior is exhibited.

For `id` and `Count`, if `"copy"` is specified, or if the values don't exist, the item that had the action value specified will have that values inherited. So for example if the item entity or item in the player inventory has a `Count` of 12, and no `Count` is specified on the id that is being written, the resulting item will have a `Count` of 12.

If the `tag` object is specified to `"copy"` then the copying behavior will occur, if tag is not specified no tag will be written to the final item. 

## Utility Functions
`iiid:give`: This gives the item with the id corresponding to the `id` score on the `iiid.main` scoreboard to the player that this function is executed as. Any items that won't fit in the players inventory will be dropped on the ground. This can also be run through the `iiid.give` [trigger](https://github.com/gibbsly/iiid#give-trigger).

`iiid:summon`: This summons an item with the id corresponding to the `id` score on the `iiid.main` scoreboard on the ground

`iiid:util/generate_item`: This creates an item with the id corresponding to the `id` score on the `iiid.main` scoreboard in the storage `iiid:main item`

`iiid:util/place_item_in_shulker`: This copies the item from the storage `iiid:main item` into slot 0 of the shulker box at `6908260 0 29999999`. this is useful if you need to place an item into a specific slot in a players inventory or into slots of a container with use of the `item` command.

## Extra Notes
### Player Inventories
Not all items are checked in a player's inventory, for performance reasons, only items in this [item tag](https://github.com/gibbsly/iiid/blob/main/data/iiid/tags/items/player_inventory_item_action_check.json) will trigger the check that converts items in player inventories.

### Give trigger
if a player has the tag `iiid.allow_give` they can trigger the scoreboard `iiid.give`

Setting the value to an id will give that item to the player that triggers the score. 

To give more than 1 item, you have to set the value to a negative number with the count added. 

The formula for this is `trigger = ( ( id * 100 ) + count ) * -1`. 

So for example -216 gives 16 of the item with id 2

### Versioning
This only modifies an item once, once an item has had it's nbt applied the iiid data is removed.