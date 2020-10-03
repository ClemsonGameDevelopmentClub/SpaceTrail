return {
  version = "1.4",
  luaversion = "5.1",
  tiledversion = "1.4.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 3,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "Space",
      firstgid = 1,
      filename = "maps/Space.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "sprites/Test Art for Map/Space.png",
      imagewidth = 192,
      imageheight = 120,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 18,
      tiles = {}
    },
    {
      name = "Planets",
      firstgid = 19,
      filename = "maps/DKPlanets.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 7,
      image = "sprites/Test Art for Map/Planets.png",
      imagewidth = 250,
      imageheight = 250,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 49,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 67, 10, 10, 10, 10, 10, 10, 27, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 65, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 13, 10, 10, 10, 10, 10, 10, 18, 10, 10,
        10, 10, 10, 10, 13, 13, 13, 13, 10, 10, 10, 36, 10, 18, 10, 10,
        10, 10, 10, 10, 13, 10, 10, 10, 10, 10, 10, 10, 18, 18, 10, 10,
        10, 10, 10, 61, 10, 10, 10, 10, 10, 10, 10, 18, 18, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 7, 7, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 10, 7, 7, 10, 10, 10, 10, 10, 57, 10, 10, 10,
        10, 10, 10, 10, 7, 7, 10, 54, 10, 10, 10, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 7, 7, 10, 10, 10, 18, 10, 10, 10, 10, 10, 10,
        10, 33, 10, 10, 7, 7, 10, 10, 10, 18, 18, 10, 10, 10, 10, 10,
        10, 10, 10, 10, 7, 10, 10, 10, 10, 10, 18, 10, 10, 10, 10, 10,
        10, 10, 10, 7, 7, 10, 10, 10, 32, 10, 18, 18, 10, 10, 67, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
      }
    }
  }
}
