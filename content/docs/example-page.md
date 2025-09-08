+++
id = "example-page"
layout = "LayoutDocumentationPage"
title = "Example page"

[[collection]]
after = "docs/what-is-poet"
name = "docs"
parent = "docs/index"
+++

You can take a look at the content below for some useful components and examples.

## A note component

You'll find the code for this Note component in `shortcodes/Note.rhai`. You can use it in both markdown and layout files in the exacct same way.

<Note>
    Hello, I am a note.
</Note>

## Lef-side navigation

You can render the navigation to browse through the documentation pages. The navigation is generated based on the `[[collection]]` section in the front matter.

## Page headings

You can render the page headings as the page navigation. In this project example, the navigation is displayed on the right and includes only headings level 2. You can change the level in the `LayoutDocumentationPage.rhai` file.
