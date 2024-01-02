<!-- What goes in this file will appear on near the end of <head>-->
<script>
// A JS function to jump a level above the current directory using the window.location object
function goUpOneLevel(currentDirectory) {
    window.location.href = window.location.href.substring(0, window.location.href.lastIndexOf(currentDirectory) + currentDirectory.lastIndexOf("/"));
}
</script>
<link href="https://fonts.cdnfonts.com/css/barlow" rel="stylesheet">
<link href="https://fonts.cdnfonts.com/css/liu-jian-mao-cao" rel="stylesheet">
<style>
  body {
    font-family: 'Barlow';
    font-variation-settings: 'wght'350;
    font-size: calc(1rem + 0.25vw);
    text-rendering: optimizeLegibility;
    line-height: 1.3em;
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
    font-weight: 500!important;
  }

  h1 {
    font-weight: 500!important;
  }

  h2 {
    font-weight: 400!important;
  }

  h3 {
    font-weight: 400!important;
  }

  .footnote-item-header {
    display: inline-block;
  }

  #stork-search-input {
    border-radius: 0%;
  }

  #container {
    height: 900px;
    overflow: scroll;
    border-radius: 8px;
  }

  #sidebar {
    width: 350px!important;
    overflow-x: hidden;
  }

  li {
    color: rgb(108, 108, 108);
  }

  .personal-touch {
    font-family: "Liu Jian Mao Cao";
    color: #AF3029!important;
  }
</style>
