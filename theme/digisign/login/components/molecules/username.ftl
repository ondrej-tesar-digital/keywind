<#import "/assets/icons/arrow-top-right-on-square.ftl" as icon>
<#import "/components/atoms/link.ftl" as link>

<#macro kw linkHref="" linkTitle="" name="">
  <div class="flex flex-col gap-2">
    <span class="font-medium">${name}</span>
    <@link.kw
      color="primary"
      size="small"
      href=linkHref
      title=linkTitle
    >
      ${msg("differentUser")}
    </@link.kw>
  </div>
</#macro>
