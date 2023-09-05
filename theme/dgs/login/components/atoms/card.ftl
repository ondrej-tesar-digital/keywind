<#macro kw content="" footer="" header="">
  <div class="bg-white p-10 flex flex-col gap-10">
    <#if header?has_content>
      <div class="flex flex-col gap-10">
        ${header}
      </div>
    </#if>
    <#if content?has_content>
      <div class="flex flex-col gap-10">
        ${content}
      </div>
    </#if>
    <#if footer?has_content>
      <div class="flex flex-col gap-10">
        ${footer}
      </div>
    </#if>
  </div>
</#macro>
