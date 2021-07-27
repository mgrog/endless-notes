module Css = {
  @bs.module("@emotion/css")
  external css: {..} => string = "css"
}

module Server = {
  @bs.module("@emotion/server")
  external renderStylesToString: string => string = "renderStylesToString"
}