<!-- Variable bindings for this tree-->
<node:active>
  <bind tag="link-class">font-bold text-${theme}-600 tree-link</bind>
  <else />
  <tree:open>
    <has-children>
      <bind tag="link-class">font-bold tree-link</bind>
      <else />
      <bind tag="link-class">tree-link</bind>
    </has-children>
    <else />
    <bind tag="link-class">tree-link sidebar-title-link</bind>
  </tree:open>
</node:active>

<has-children>
  <bind tag="icon">
    <tree:open>
      <span style="cursor: pointer"> - </span>
      <else />
      <span style="cursor: pointer"> + </span>
    </tree:open>
  </bind>
  <else />
  <bind tag="icon">
  </bind>
</has-children>

<!-- Rendering of this tree -->

<div class="pl-6">
  <!-- Node's rootLabel-->
  <div class="flex items-center my-2 space-x-2 justify-left">
    <a class="${link-class}" title="${node:text}" href="${node:url}">
      <icon />
      <node:text />
    </a>
    <tree:open>
      <else />
      <node:terminal>
        <else />
        <span class="text-gray-300" title="${tree:childrenCount} children inside">
          <tree:childrenCount />
        </span>
      </node:terminal>
    </tree:open>
  </div>

  <!-- Node's children forest, displayed only on active trees
    TODO: Use <details> to toggle visibility?
  -->
  <!--
  <tree:open>
    <children>
      <apply template="sidebar-tree" />
    </children>
  </tree:open>
  -->
</div>
