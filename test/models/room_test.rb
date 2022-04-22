def test_search_for_room_using_id
  room = Room.find(315)
  assert_not_nil room, "Room #315 was not found"
end
