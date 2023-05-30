<!-- TODO: Main navigation links (Home, index, tags, ...) -->

<!-- DoNotFormat -->
<bind tag="containerClass"><ema:metadata><value var="template.layout.note.containerClass" /></ema:metadata></bind>
<!-- DoNotFormat -->

<apply template="base">
  <bind tag="head-main">
    <link rel="stylesheet" href="${ema:emanoteStaticLayerUrl}/inverted-tree.css" />
  </bind>
  <bind tag="body-main">
    <div class="${containerClass}">
      <div class="mt-2 md:mt-4">
        <apply template="components/note-uptree" />
        <div class="relative md:shadow-2xl md:mb-8">
          <div class="absolute -top-6 right-1 md:right-0 flex flex-row items-center justify-center">
            <a title="Search (Ctrl+K)" class="cursor-pointer"
              onclick="window.emanote.stork.toggleSearch()">
              <apply template="components/stork/stork-icon" />
            </a>
          </div>
          <div class="flex-1 w-full overflow-x-auto bg-white">
            <main class="px-4 py-4">
              <apply template="components/note-title" />
              <apply template="components/note-body" />
              <div class="flex flex-col lg:flex-row lg:space-x-2">
                <apply template="components/timeline" />
                <apply template="components/backlinks" />
              </div>
              <apply template="components/metadata" />
              <apply template="/templates/hooks/note-end" />
            </main>
          </div>
        </div>
        <apply template="components/footer" />
      </div>
    </div>
  </bind>
</apply>