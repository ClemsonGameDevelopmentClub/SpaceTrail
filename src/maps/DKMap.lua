return {
  version = "1.4",
  luaversion = "5.1",
  tiledversion = "1.4.2",
  orientation = "hexagonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 2,
  nextobjectid = 1,
  hexsidelength = 16,
  staggeraxis = "y",
  staggerindex = "odd",
  properties = {},
  tilesets = {
    {
      name = "TempSpace",
      firstgid = 1,
      filename = "TileMap/DKSpace.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "TempTextures/TempSpace.png",
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
      filename = "TileMap/DKPlanets.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 7,
      image = "TempTextures/Planets.png",
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
    },
    {
      name = "Lazer",
      firstgid = 68,
      filename = "TileMap/Lazer.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 7,
      image = "TempTextures/Lazer.png",
      imagewidth = 233,
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
        16, 16, 16, 16, 16, 7, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 67, 81, 81, 7, 16, 81, 57, 81, 16, 16, 16, 81, 81, 34, 16,
        16, 16, 16, 7, 81, 81, 81, 16, 16, 81, 16, 16, 81, 16, 16, 16,
        16, 16, 7, 16, 16, 16, 7, 7, 16, 81, 81, 81, 16, 16, 16, 16,
        16, 16, 7, 16, 16, 16, 16, 7, 7, 16, 16, 81, 16, 16, 16, 16,
        7, 7, 16, 48, 81, 81, 16, 16, 7, 16, 32, 16, 7, 7, 16, 16,
        7, 7, 16, 81, 16, 16, 16, 66, 16, 16, 81, 16, 7, 7, 16, 16,
        16, 16, 81, 16, 18, 18, 16, 81, 16, 81, 16, 7, 16, 16, 16, 16,
        16, 16, 16, 81, 16, 7, 18, 16, 81, 81, 16, 7, 16, 16, 16, 16,
        16, 16, 16, 81, 16, 7, 18, 16, 67, 16, 16, 16, 81, 27, 16, 16,
        16, 16, 16, 81, 81, 16, 7, 16, 16, 81, 16, 81, 81, 16, 16, 16,
        16, 16, 81, 16, 81, 16, 7, 16, 16, 81, 81, 16, 16, 16, 16, 16,
        16, 16, 81, 16, 16, 61, 16, 7, 7, 16, 81, 16, 16, 18, 18, 16,
        16, 81, 16, 18, 16, 16, 16, 7, 7, 16, 29, 18, 18, 16, 16, 16,
        16, 46, 16, 16, 18, 18, 18, 16, 16, 16, 18, 18, 18, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 18, 16, 16, 16, 16, 16
      }
    }
  }
}
