<link rel="stylesheet" href="${ema:emanoteStaticLayerUrl}/stork/flat.css" />
<!-- Custom Stork-search styling for Emanote -->
<style>
  #stork-search-container {
    z-index: 1000;
    background-color: rgb(15 23 42/.8);
  }

  .stork-overflow-hidden-important {
    overflow: hidden !important;
  }

  .stork-wrapper-flat .stork-input {
    border-radius: 0;
    border: none;
  }
  .stork-wrapper-flat .stork-close-button svg {
    margin: 0 auto;
  }
  .stork-wrapper-flat .stork-output-visible{
    border: none;
  }
</style>


<script src="${ema:emanoteStaticLayerUrl}/stork/stork.js"></script>
<ema:metadata>
  <with var="template">
    <script data-emanote-base-url="${value:baseUrl}">
      window.emanote = {};
      window.emanote.stork = {
        searchShown: false,
        toggleSearch: function () {
          document.getElementById('stork-search-container').classList.toggle('hidden');
          window.emanote.stork.searchShown = document.body.classList.toggle('stork-overflow-hidden-important');
          if (window.emanote.stork.searchShown) {
            document.getElementById('stork-search-input').focus();
          }
        },
        clearSearch: function () {
          document.getElementById('stork-search-container').classList.add('hidden');
          document.body.classList.remove('stork-overflow-hidden-important');
          window.emanote.stork.searchShown = false;
        },

        init: function () {
          const indexName = 'emanote-search'; // used to match input[data-stork] attribute value
          const baseUrl = document.currentScript.getAttribute('data-emanote-base-url') || '/';
          const indexUrl = baseUrl + '-/stork.st';
          if (document.readyState !== 'complete') {
            window.addEventListener('load', function () {
              stork.initialize(baseUrl + '_emanote-static/stork/stork.wasm');
              stork.register(indexName, indexUrl);
            });

            document.addEventListener('keydown', event => {
              if (window.emanote.stork.searchShown && event.key === 'Escape') {
                window.emanote.stork.clearSearch();
                event.preventDefault();
              } else if ((event.key == 'k' || event.key == 'K') && (event.ctrlKey || event.metaKey)) {
                window.emanote.stork.toggleSearch();
                event.preventDefault();
              }
            });
          } else {
            // Override existing on Ema's hot-reload
            stork.register(indexName, indexUrl, { forceOverwrite: true });
          }
        }
      };

      window.emanote.stork.init();
    </script>
  </with>
</ema:metadata>