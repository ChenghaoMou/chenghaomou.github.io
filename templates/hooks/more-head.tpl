<!-- What goes in this file will appear on near the end of <head>-->

<link href="https://fonts.cdnfonts.com/css/barlow" rel="stylesheet">
<style>
  body {
    font-family: 'Barlow';
    font-variation-settings: 'wght'350;
  }

  a.mavenLinkBold {
    font-variation-settings: 'wght'400;
  }

  a[data-linkicon="external"] {
    color: rgba(18, 159, 159, 0.688);
  }

  a[data-wikilink-type="WikiLinkNormal"] {
    color: rgba(128, 0, 128, 0.713);
  }

  a[data-wikilink-type="WikiLinkNormal"]::before {
    content: "[[";
  }
  a[data-wikilink-type="WikiLinkNormal"]::after {
    content: "]]";
  }

  strong {
    font-variation-settings: 'wght'500;
  }

  h1 {
    font-variation-settings: 'wght'500;
  }

  h2 {
    font-variation-settings: 'wght'400;
  }

  h3 {
    font-variation-settings: 'wght'300;
  }

  .footnote-item-header {
    display: inline-block;
  }

  #stork-search-input {
    border-radius: 0%;
  }
</style>