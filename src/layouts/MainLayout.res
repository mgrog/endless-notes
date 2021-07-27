module Link = Next.Link

module Navigation = {
  @react.component
  let make = () =>
    <nav className="p-2 h-12 flex border-b border-gray-200 justify-between items-center text-sm bg-white">
      <Link href="/">
        <a className="flex items-center w-1/3">
          <img className="w-5" src="/static/zeit-black-triangle.svg" />
          <span className="text-xl ml-2 align-middle font-semibold">
            {React.string("Endless Notes")}
          </span>
        </a>
      </Link>
      <div className="flex w-2/3 justify-end">
        <Link href="/"> <a className="px-3"> {React.string("Notes")} </a> </Link>
        <Link href="/examples"> <a className="px-3"> {React.string("About")} </a> </Link>
        <a
          className="px-3 font-bold"
          target="_blank"
          href="https://github.com/ryyppy/nextjs-default">
          {React.string("Github")}
        </a>
      </div>
    </nav>
}

module Style = {
  open Emotion.Css
  let container = css({"height": "calc(100% - 4rem)"})
}

@react.component
let make = (~children) => {
  let minWidth = ReactDOM.Style.make(~minWidth="20rem", ())
  <div style=minWidth className="flex lg:justify-center h-screen">
    <div className="w-full text-gray-900 font-base h-full">
      <Navigation /> <main className=`mt-4 mx-4 ${Style.container}`> children </main>
    </div>
  </div>
}
