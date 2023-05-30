<!-- What goes in this file will appear on near the end of <head>-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,100;0,200;0,300;0,400;1,100;1,200;1,300;1,400&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@200;300&display=swap" rel="stylesheet">
<style>

  body {
    background: none;
    font-size: 110%;
    min-width: max(60%, 400px);
    max-width: min(70%, 1300px);
    font-family: 'IBM Plex Sans';
    margin: 0 auto;
  }

  a.mavenLinkBold {
    font-variation-settings: 'wght'500;
  }

  strong {
    font-variation-settings: 'wght'500;
  }

  a:focus, button:focus {outline:0;}

  #breadcrumbs li:before{
    content: '';
    clear: both;
    visibility: hidden;
  }

  .footnotes div {
    margin: 0;
  }

  .query li:before, footer li:before{
    content: '';
    clear: both;
    visibility: hidden;
    padding:0;
  }

  .mavenLinkBold::before {
    content: "[[";
  }
  .mavenLinkBold::after {
    content: "]]";
  }
  .mavenLinkBold {
    background: linear-gradient(to top, rgba(0,255,255,0.1) 50%, transparent 50%);
    text-decoration: none;
  }
  .mavenLinkBold:hover {
    background: linear-gradient(to top, rgba(0,255,255,0.1) 50%, transparent 50%);
    text-decoration: none;
  }

  #sidebar {
    margin-right: 80px;
    padding-right: 20px;
  }

  footer li {
    list-style: disc inside;
  }

  .font-mono {
    font-family: 'JetBrains Mono';
    font-weight: 200;
  }

  footer .credit {
    margin-top: 10px;
  }

  h1 {
    margin-bottom: 40px!important;
  }

  .sidebar-title-link {
    overflow-wrap: break-word;
  }

  .sidebar-title-link:hover{
    background: rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    padding: 3px 5px;
  }

</style>

