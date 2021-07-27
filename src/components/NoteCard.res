module Styles = {
  open CssJs

  let container = style(. [
    padding(1.0 -> #ex),
    backgroundColor("FFFFFF" -> #hex),
    height(100.0 -> #percent),
  ])
}

@react.component
let make = (~title, ~children) => {
  <div className=`${Styles.container} lg:w-1/2 md:w-3/4 sm:w-full`>
    <div className="font-bold mb-6"> title </div>
    <p> children </p>
  </div>
}