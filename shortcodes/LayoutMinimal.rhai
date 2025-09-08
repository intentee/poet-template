fn template(context, props, content) {
  context.assets.add("resources/css/layout-minimal.css");

  if context.is_watching {
    context.assets.add("resources/ts/global-live-reload.ts");
  }

  component {
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <link rel="canonical" href={context.reference.canonical_link}>

        <meta charset="UTF-8">
        <meta name="turbo-refresh-method" content="morph">
        <meta name="turbo-refresh-scroll" content="preserve">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        {if !context.front_matter.description.is_empty() {
          component {
            <meta name="description" content={context.front_matter.description}>
          }
        }}

        <title>{
          let base_title = "Poet";

          if context.front_matter.title.is_empty() {
            base_title
          } else {
            `${context.front_matter.title} - ${base_title}`
          }
        }</title>
        {context.assets.render()}
      </head>
      <body>
        <div class="page">
          <nav class="page-navigation">
            <div class="page-navigation__track">
              <a class="page-navigation__link page-navigation__link--site-name" href={context.link_to("index")}>
                Your site name
              </a>
              <a class="page-navigation__link" href={context.link_to("#example-page")}>
                Example page
              </a>
            </div>
          </nav>
          <main class="page-main">
            {content}
          </main>
          <footer class="page-footer">
            <p>
              Made with ❤️ by <a href="https://intentee.com" target="_blank">Intentee</a>.
            </p>
          </footer>
        </div>
      </body>
    </html>
  }
}
