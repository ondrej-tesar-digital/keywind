<#import "template.ftl" as layout>

<#macro linkMacro linkText linkExpiration>
    <table style="width: 100%;" width="100%" cellpadding="0" cellspacing="0" role="presentation">
        <tr>
            <td style="padding-bottom: 16px;">
                <table cellspacing="0" cellpadding="0" role="presentation">
                    <tr>
                        <td class="hover-bg-blue-650" style="background-color: #0f62fe;" bgcolor="#0f62fe">
                            <a href="${linkText}" style="padding: 20px 64px 20px 16px; font-size: 14px; border: 1px solid #0f62fe; background-color: #0f62fe; color: #ffffff; text-decoration: none; font-weight:400; display: inline-block;">
                                Pokračovat s obnovením hesla
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="font-size: 14px; color: #161616;">
                Platnost odkazu je ${linkExpiration} hodin.
            </td>
        </tr>
    </table>
</#macro>

<#macro gray_block>
    <div style="margin-bottom: 24px;">
        <p style="font-weight: 600; font-size: 14px; margin: 0 0 8px;">Proč Vám posíláme tuto zprávu?</p>
        <p style="margin: 0 0 0;">Tuto zprávu jste obdrželi na základě požadavku na obnovení hesla ve službě digisign.org. V případě že se jedná o omyl nebo chybu, můžete ji ignorovat.</p>
    </div>
    do not share partial <br>
    alternative method partial with link
</#macro>

<#macro body>
    Dobrý den,<br/><br/>
    pokud si přejete pokračovat s obnovením hesla k účtu emailAddress, pokračujte kliknutím na tlačítko níže.
</#macro>

<#macro after_link_body>
    <br>
    Pokud máte jakékoli další dotazy, odpovězte na tuto zprávu nebo pište na podpora@digisign.cz.<br/><br/>
    S pozdravem<br/><br/>
    Digisign.cz
</#macro>


<@layout.emailLayout
    is_logo_visible = true
    title = msg("resetPassword")
    emailBody = body
    linkMacro = linkMacro
    linkHref = link
    link_expiration = linkExpiration
    gray_block = gray_block
    after_link_body = after_link_body
    ; section>
    <#if section = "text">
        ${msg("passwordResetBodyHtml", linkExpiration, realmName)?no_esc}
    </#if>
    <#if section = "linkText">
        ${msg("passwordResetLinkTextHtml")?no_esc}
    </#if>
</@layout.emailLayout>