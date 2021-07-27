open Belt

type link = {
  text: string,
  url: string,
}

type note = {
  id: int,
  title: string,
  body: string,
  links: array<link>
}

let note = {
  id: 0,
  title: "title",
  body: "body",
  links: [],
}

let notes = {
  [0, 1, 2, 3, 4]
  -> Array.map((n) => {id: n, title: `Note ${Int.toString(n)}`, body: "body", links: []})
}

@react.component
let make = () => {
  let renderedNotes =
    notes
    -> Array.map((n) => {
      <NoteCard
        key={Int.toString(n.id)}
        title={React.string(n.title)}>
        {React.string(n.body)}</NoteCard>
      })
    -> React.array

  <div className="h-full pb-4"> {renderedNotes} </div>
}