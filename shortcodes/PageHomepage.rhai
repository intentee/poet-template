fn template(context, props, content) {
  context.assets.add("resources/css/page-homepage.css");

  component {
    <LayoutMinimal>
      <div class="homepage">
        <h1 class="homepage__title">
          Poet 🪶
        </h1>
          <h2 class="homepage__subtitle">
            This is a template project to help you get started quickly with Poet. Take a look at the example structure and content to explore what you can build.
          </h2>
          <div class="homepage__cta">
            <a href="https://poet.intentee.com/" class="homepage__cta__button homepage__cta__button--primary" target="_blank">
              Read the Documentation
            </a>
            <a href={context.link_to("#example-page")} class="homepage__cta__button">
              See example
            </a>
          </div>
      </div>
    </LayoutMinimal>
  }
}
