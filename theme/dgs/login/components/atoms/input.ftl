<#macro
  kw
  autofocus=false
  disabled=false
  invalid=false
  label=""
  message=""
  name=""
  required=true
  rest...
>
  <div>
    <label for="${name}">
      ${label}
    </label>
    <input
      <#if autofocus>autofocus</#if>
      <#if disabled>disabled</#if>
      <#if required>required</#if>

      aria-invalid="${invalid?c}"
      class="block mt-1 bg-gray-200 border-b border-gray-400 border-0 w-full focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50 sm:text-sm"
      id="${name}"
      name="${name}"
      placeholder="${label}"

      <#list rest as attrName, attrValue>
        ${attrName}="${attrValue}"
      </#list>
    >
    <#if invalid?? && message??>
      <div class="mt-2 text-red-600 text-sm">
        ${message?no_esc}
      </div>
    </#if>
  </div>
</#macro>
