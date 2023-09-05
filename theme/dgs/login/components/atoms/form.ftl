<#macro kw rest...>
  <form
    class="m-0 flex flex-col gap-6"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </form>
</#macro>
