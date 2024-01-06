<!-- What goes in this file will appear on near the end of <head>-->
<script>
// A JS function to jump a level above the current directory using the window.location object
function goUpOneLevel(currentDirectory) {
  // if the current directory does not have a slash
  if (currentDirectory.lastIndexOf("/") == -1) {
    // go to the root url
    window.location.href = window.location.origin;
  } else {
      window.location.href = window.location.href.substring(0, window.location.href.lastIndexOf(currentDirectory) + currentDirectory.lastIndexOf("/"));
  }
}
</script>
<link href="https://fonts.cdnfonts.com/css/barlow" rel="stylesheet">
<link href="https://fonts.cdnfonts.com/css/liu-jian-mao-cao" rel="stylesheet">
<style>
html, body {
  height: 100%;
  width: 100%;
  margin: 0;
  overflow: hidden;
}
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

  body #container {
    margin-top: 0!important;
    height: calc(100% - 6em);
    border-radius: 8px!important;
    filter: url(#noiseFilter);
  }

  body #container:after{
    mix-blend-mode: darken;
    mix-blend-mode: difference;
    mix-blend-mode: exclusion;
    mix-blend-mode: multiply;
  }

  body .container {
    padding-top: 2em;
  }

  #sidebar {
    width: 350px!important;
    overflow-x: hidden;
    border-right: 0.25em double #E08183;
  }

  footer {
    font-size: calc(0.8rem + 0.25vw);
  }

  li {
    color: rgb(108, 108, 108);
  }

  .personal-touch {
    font-family: "Liu Jian Mao Cao";
    color: #AF3029!important;
  }

  #sidebar .sidebar-button {
    border: none;
    outline: none;
    cursor: pointer;
  }
  #sidebar .sidebar-folder-text {
    cursor: default;
  }

  .noise {
  }

</style>
