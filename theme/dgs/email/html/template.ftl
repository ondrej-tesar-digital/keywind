<#import "/components/atoms/document.ftl" as document>
<#import "/components/atoms/body.ftl" as body>

<#macro emailLayout link_expiration title emailBody linkMacro linkHref after_link_body gray_block is_logo_visible=false logo_height=32>
  <!DOCTYPE html>
  <html lang="cs" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
    <head>
      <@document.kw />
    </head>
    <@body.kw>
      <div lang="cs">
        <table class="sm-pt-12" style="font-family: IBM Plex Sans, -apple-system, 'Segoe UI', sans-serif; padding-top: 32px; width: 100%;" width="100%" cellpadding="0" cellspacing="0" role="presentation">
            <tr>
                <td align="center" style="background-color: #f4f4f4;" bgcolor="#f4f4f4">
                    <table class="sm-w-full" style="width: 600px;" width="600" cellpadding="0" cellspacing="0" role="presentation">
                        <tr>
                            <td align="center" class="sm-px-12">
                                <table style="width: 100%;" width="100%" cellpadding="0" cellspacing="0" role="presentation">
                                    <tr>
                                        <td class="sm-px-16" style="background-color: #ffffff; font-size: 16px; line-height: 20px; padding: 32px; text-align: left;" bgcolor="#ffffff" align="left">
                                            <#if isLogoVisible??>
                                                <table style="margin-bottom: 32px; width: 100%;" width="100%" cellpadding="0" cellspacing="0" role="presentation">
                                                    <tr>
                                                        <td>
                                                            <img
                                                                src="imageSource"
                                                                class="sm-mb-20"
                                                                height="${logoHeight}"
                                                                alt="Logo"
                                                                style="border: 0; max-width: 100%; line-height: 100%; vertical-align: middle;"
                                                            >
                                                        </td>
                                                    </tr>
                                                </table>
                                            </#if>
                                            <div style="font-size: 14px; line-height: 20px; color: #262626;">
                                                <div style="font-weight: 600; font-size: 24px; margin: 0 0 24px;">${title}</div>
                                                <div style="font-weight: normal; margin: 0 0 40px;">
                                                  <#if emailBody??>
                                                    <@emailBody />
                                                  </#if>
                                                </div>
                                                  <#if linkMacro??>
                                                    <@linkMacro linkText=linkHref linkExpiration=linkExpiration />
                                                  </#if>
                                                <div style="font-weight: normal; margin: 0 0 40px;">
                                                  <#if after_link_body??>
                                                    <@after_link_body />
                                                  </#if>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="sm-px-16" style="background-color: #e0e0e0; font-size: 14px; line-height: 20px; padding: 32px 32px 8px; text-align: left; color: #161616;" bgcolor="#e0e0e0" align="left">
                                          <#if gray_block??>
                                            <@gray_block />
                                          </#if>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="sm-px-16" style="font-size: 14px; padding: 32px; text-align: left; color: #161616;" align="left">
                                            <table style="max-width: 360px;" cellpadding="0" cellspacing="0" role="presentation">
                                                <tr>
                                                    <td style="line-height: 1.375;">
                                                        <div>
                                                          <img src="{{ email.image('@mailer/images/logo_gray.png') }}" class="sm-w-64" alt="logo" style="border: 0; max-width: 100%; line-height: 100%; vertical-align: middle; margin-bottom: 16px; width: 86px;" width="86">
                                                        </div>
                                                        <a href="https://www.digisign.cz" class="sm-text-xs" style="color: #161616; text-decoration: underline;">DigiSign</a> ${msg("digisignMoto")}
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
      </div>
    </@body.kw>
  </html>
</#macro>
