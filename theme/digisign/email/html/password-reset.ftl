<#import "template.ftl" as layout>
<#import "/partial/dont-share.ftl" as dontShare>
<#import "/partial/alternative-method.ftl" as alternativeMethod>

<@layout.emailLayout
    isLogoVisible = true
    title = msg("passwordResetTitle")
    ; section>
    <#if section = "linkBody">
        
        <table style="width: 100%;" width="100%" cellpadding="0" cellspacing="0" role="presentation">
        <tr>
            <td style="padding-bottom: 16px;">
                <table cellspacing="0" cellpadding="0" role="presentation">
                    <tr>
                        <td class="hover-bg-blue-650" style="background-color: #0f62fe;" bgcolor="#0f62fe">
                            <a href="${link}" style="padding: 20px 64px 20px 16px; font-size: 14px; border: 1px solid #0f62fe; background-color: #0f62fe; color: #ffffff; text-decoration: none; font-weight:400; display: inline-block;">
                                ${kcSanitize(msg("passwordResetContinueWithPasswordReset"))?no_esc}
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="font-size: 14px; color: #161616;">
                ${kcSanitize(msg("passwordResetLinkIsValidFor", linkExpirationFormatter(linkExpiration)))?no_esc}
            </td>
        </tr>
    </table>
    <p>
        
    </p>
    </#if>
    <#if section = "grayBlock">
        <div style="margin-bottom: 24px;">
        <p style="font-weight: 600; font-size: 14px; margin: 0 0 8px;">${msg('passwordResetWhyAreWeSendingThisMessage')}</p>
        <p style="margin: 0 0 0;">${msg('passwordResetYouReceivedThisMessageBecauseSomeoneRequestedIt')}</p>
        </div>
        <@dontShare.kw />
        <@alternativeMethod.kw link=link />
    </#if>
    <#if section = "emailBody">
        ${kcSanitize(msg('passwordResetIfYouWishToProceedWithPasswordResetClickTheButtonBellowHtml'))?no_esc}
    </#if>
    <#if section = "afterLinkBody">
        <br>
        ${kcSanitize(msg('passwordResetIfYouHaveAnyQuestionsReplyToThisMessageOrWriteToSupportHtml'))?no_esc}
    </#if>
</@layout.emailLayout>