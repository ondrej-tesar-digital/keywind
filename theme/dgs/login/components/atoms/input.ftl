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
  <div class="flex flex-col gap-2">
    <label class="text-xs" for="${name}">
      ${label}
    </label>
    <input
      <#if autofocus>autofocus</#if>
      <#if disabled>disabled</#if>
      <#if required>required</#if>

      aria-invalid="${invalid?c}"
      class="block p-4 bg-gray-100 border-b border-gray-500 border-0 w-full focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50 sm:text-sm"
      id="${name}"
      name="${name}"
      placeholder="${label}"

      <#list rest as attrName, attrValue>
        ${attrName}="${attrValue}"
      </#list>
    >
    <#-- This still renders for some reason -->
    <#if invalid?? && message??>
      <div class="text-red-600 text-sm">
        ${message?no_esc}
      </div>
    </#if>
  </div>
</#macro>
